# Use 0.0.0 as initial unreleased version number

* Status: approved
* Date: 2020-03-31

## Context and Problem Statement

Approaches like semantic versioning use the presence or absence of an initial version
to determine the next version to publish. So determining this initial unreleased version
upon repository creation determines what the first release version will be.

## Considered Options

* No version, and the first version released will be `1.0.0`.
* `0.0.0`, and the first version released will be `0.1.0`.

## Decision Outcome

Chosen option: `0.0.0`, because `1.0.0` strongly indicates a mature code that is ready
for general use. One might eventually (and exceptionally) break the semantic versioning
rule by upgrading the first mature version to `1.0.0` (as done by
[`poetry`](https://python-poetry.org/history/)), but must follow strictly the
versioning rules afterwards.
