# Use Conventional Changelog format for Conventional Commits

* Status: accepted
* Date: 2020-04-02

## Context and Problem Statement

There are different ways to implement Conventional Commit as decided in
[ADR-0005](docs/adr/0005-use-conventional-commits.md). We need to choose one that will
allows to use tools that generate automatically various artifacts during a release.

## Considered Options

* [Conventional Changelog](https://github.com/conventional-changelog/conventional-changelog)
* Various other options as listed [here in the `Adapter` section](http://commitizen.github.io/cz-cli/)

## Decision Outcome

Chosen option: "Conventional Changelog", because it is mature, is widely used and has
a large ecosystem.

### Positive Consequences

* Tools can automate the creation of well formed commits (for instance
  [`commitizen`](http://commitizen.github.io/cz-cli/) with the
  [`cz-conventional-changelog](adapter))
* Availability of [plugins](https://github.com/conventional-changelog/conventional-changelog#plugins-supporting-conventional-changelog)
* Makes it possible to completely automate the release process, with tools like
  [Semantic Release](https://semantic-release.gitbook.io/semantic-release/)

### Negative Consequences

* Cannot see any
