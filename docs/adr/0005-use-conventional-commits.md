# Use Conventional Commits

* Status: accepted
* Date: 2020-03-31

## Context and Problem Statement

Content of commit messages can be unclear, incomplete or even confusing. It makes it
difficult to understand the code history and what the code does over time. It is also a
lost opportunity to harvest automatically information to create, for instance,
change logs as part of an automated release process.

## Considered Options

* [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
* (no other option known).

## Decision Outcome

Chosen option: "Conventional Commits", because it allows for (copied from
[here](https://www.conventionalcommits.org/en/v1.0.0/#why-use-conventional-commits)):

* Automatically generating CHANGELOGs.
* Automatically determining a semantic version bump (based on the types of commits
  landed).
* Communicating the nature of changes to teammates, the public, and other stakeholders.
* Triggering build and publish processes.
* Making it easier for people to contribute to your projects, by allowing them to
  explore a more structured commit history.
