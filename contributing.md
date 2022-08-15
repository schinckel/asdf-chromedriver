# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test chromedriver https://github.com/schinckel/asdf-chromedriver.git "chromedriver --help"
```

Tests are automatically run in GitHub Actions on push and PR.
