<div align="center">

# asdf-chrome-for-testing [![Build](https://github.com/fabiokr/asdf-chrome-for-testing/actions/workflows/build.yml/badge.svg)](https://github.com/fabiokr/asdf-chrome-for-testing/actions/workflows/build.yml) [![Lint](https://github.com/fabiokr/asdf-chrome-for-testing/actions/workflows/lint.yml/badge.svg)](https://github.com/fabiokr/asdf-chrome-for-testing/actions/workflows/lint.yml)


[chrome-for-testing](https://googlechromelabs.github.io/chrome-for-testing/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `zip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add chrome-for-testing
# or
asdf plugin add chrome-for-testing https://github.com/fabiokr/asdf-chrome-for-testing.git
```

chrome-for-testing:

```shell
# Show all installable versions
asdf list-all chrome-for-testing

# Install specific version
asdf install chrome-for-testing latest

# Set a version globally (on your ~/.tool-versions file)
asdf global chrome-for-testing latest

# Now chrome-for-testing commands are available
chrome-for-testing --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/fabiokr/asdf-chrome-for-testing/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Matthew fabiokr](https://github.com/fabiokr/)
