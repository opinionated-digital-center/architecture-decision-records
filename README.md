# Opinionated Digital Center's Architecture Decision Record Repository

The Opinionated Digital Center's team has decided to use the Architecture Decision
Record approach to record the reasoning behind its opinionated choices
(see [ADR-0000](docs/adr/0000-record-architecture-decisions.md)).

## What is an Architecture Decision Record (ADR)?
To learn about ADR, see:

* [Joel Parker Henderson's page](https://github.com/joelparkerhenderson/architecture_decision_record)
* The [original article from Michael Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)


## Process for proposing a new ADR

1. Create a feature branch from `master`.
1. Create a new file in `docs/adr/` using the template in place.
   * The file name should follow the convention as detailed in
     [ADR-0001](docs/adr/0001-use-markdown-architectural-decision-records.md)
     ("Positive consequences" section), with `XXXX` in place of its unique number.
     For example `XXXX-use-markdown-architectural-decision-records.md`.
   * The status of the ADR should be set to `proposed`.
1. Create a PR.
1. Once the PR has been reviewed (whether accepted of rejected), just before merging to
   `master`:
   * `XXXX` has to be replaced with the next unique number.
   * Update the date to the current date.
   * If the ADR has been accepted, the status should be set to `accepted`.
   * If the ADR has been rejected, the status should be set to `rejected`.
1. Merge to `master`.
1. Delete the feature branch.
