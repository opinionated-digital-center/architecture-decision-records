# Use semantic versioning

* Status: accepted
* Date: 2020-03-31

## Context and Problem Statement

All software needs to be versioned to identify changes made to it. We also want that the
versioning bring within itself information about the nature of the change.

## Considered Options

* [Semantic versioning](https://semver.org/)
* [Explicit versioning](https://medium.com/sapioit/why-having-3-numbers-in-the-version-name-is-bad-92fc1f6bc73c)

## Decision Outcome

Chosen option: "Semantic versioning", because it carries basic information on how the
code evolved (Major = Breaking change, Minor = New feature, Patch = fix). It also allows for
identification of pre-releases (example 1.0.0-alpha < 1.0.0-alpha.1 < 1.0.0-alpha.beta
< 1.0.0-beta < 1.0.0-beta.2 < 1.0.0-beta.11 < 1.0.0-rc.1 < 1.0.0). Finally, it is the
most used and tool supported versioning approach.
