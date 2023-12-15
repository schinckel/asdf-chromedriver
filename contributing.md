# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test chrome-for-testing https://github.com/fabiokr/asdf-chrome-for-testing.git "chrome-for-testing --help"
```

Tests are automatically run in GitHub Actions on push and PR.
