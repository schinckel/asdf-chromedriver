#!/usr/bin/env bash

set -euo pipefail

# TODO: Ensure this is the correct GitHub homepage where releases can be downloaded for chromedriver.
SOURCE="https://googlechromelabs.github.io/chrome-for-testing/known-good-versions-with-downloads.json"
TOOL_NAME="chromedriver"
TOOL_TEST="chromedriver --help"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

platform() {
  ARCH=$(uname -m)
  PLATFORM=$(uname)

  if [[ $ARCH = "arm64" && $PLATFORM = "Darwin" ]]; then
    NAME=mac-arm64
  elif [[ $ARCH = "x86_64" && $PLATFORM = "Darwin" ]]; then
    NAME=mac-x64
  else
    NAME=linux64
  fi
  echo "$NAME"
}

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -n -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_all_versions() {
  curl -s "$SOURCE" | jq -r '.versions[].version' | sort_versions
}

release_url() {
  local version platform
  version="$1"
  platform="$2"

  curl -s "$SOURCE" | jq -r ".versions[] | select(.version == \"$version\") | .downloads.chromedriver[] | select(.platform == \"$platform\") | .url"
}

download_release() {
  local version filename url
  version="$1"
  filename="$2"

  # TODO: Adapt the release URL convention for chromedriver
  # url="${SOURCE}/${version}/$(platform).zip"
  url=$(release_url $version $(platform))

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="${3%/bin}/bin"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    mkdir -p "$install_path"
    cp -r "$ASDF_DOWNLOAD_PATH"/chromedriver-$(platform)/* "$install_path"

    # TODO: Assert chromedriver executable exists.
    local tool_cmd
    tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}
