<div align="center">

# asdf-chromedriver [![Build](https://github.com/schinckel/asdf-chromedriver/actions/workflows/build.yml/badge.svg)](https://github.com/schinckel/asdf-chromedriver/actions/workflows/build.yml) [![Lint](https://github.com/schinckel/asdf-chromedriver/actions/workflows/lint.yml/badge.svg)](https://github.com/schinckel/asdf-chromedriver/actions/workflows/lint.yml)


[chromedriver](https://chromedriver.chromium.org) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add chromedriver
# or
asdf plugin add chromedriver https://github.com/schinckel/asdf-chromedriver.git
```

chromedriver:

```shell
# Show all installable versions
asdf list-all chromedriver

# Install specific version
asdf install chromedriver latest

# Set a version globally (on your ~/.tool-versions file)
asdf global chromedriver latest

# Now chromedriver commands are available
chromedriver --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/schinckel/asdf-chromedriver/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Matthew Schinckel](https://github.com/schinckel/)
