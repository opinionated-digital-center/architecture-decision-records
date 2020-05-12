# Opinionated Digital Center's Architecture Decision Record Repository

![version](https://img.shields.io/github/v/release/opinionated-digital-center/architecture-decision-record?sort=semver)
![license](https://img.shields.io/github/license/opinionated-digital-center/architecture-decision-record?sort=semver)

The Opinionated Digital Center's team has decided to use the Architecture Decision
Record approach to record the reasoning behind the opinionated choices it makes
(see [ADR-0000](docs/adr/0000-record-architecture-decisions.md)).

Cross-cutting decisions are held in this repository (see
[table of content](docs/adr/index.md)), whereas project specific ADRs are held in
each project's `docs/adr` directory.

## What is an Architecture Decision Record (ADR)?
To learn about ADRs, see:

* [Joel Parker Henderson's page](https://github.com/joelparkerhenderson/architecture_decision_record).
* The [original article from Michael Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions).

## Proposing a new ADR

Please note that:

* ADR uses the [MADR template](docs/adr/template.md).
* Only one ADR must be proposed per feature branch (one file with name starting with
  `XXXX`).

The process is as follows:

1. Create a feature branch from `master`:

   ```bash
   git switch master
   git switch -c <your-feature-branch>
   ```

1. Create a new file in `docs/adr/` using the template in place:
   * The file name should follow the convention as detailed in
     [ADR-0001](docs/adr/0001-use-markdown-architectural-decision-records.md)
     ("Positive consequences" section), with `XXXX` in place of its unique number
     (For example `XXXX-use-markdown-architectural-decision-records.md`).
1. Fill your ADR:
   * Status line exists and is set to `proposal`.
   * Date line exists and is set to current date.
1. Once finish, commit your work with message either (title follows
   [MADR-0005-format](https://github.com/adr/madr/blob/2.1.2/docs/adr/0005-use-dashes-in-filenames.md)):
   * When working on a repo dedicated to ADRs:

     ```bash
     git commit -m 'feat(adr): <adr-title-in-lowercase>'
     ```

   * OR when working on a project's repo:

     ```bash
     git commit -m 'docs(adr): <adr-title-in-lowercase>'
     ```

1. Push feature branch to Github:

   ```bash
   git push --set-upstream origin <your-feature-branch>
   ```

1. Create a PR.

Once the PR is created, it will be reviewed and discussed.

## ADR approval/rejection process flow

### Before PR merge
On the PR branch:

1. Make sure you are on the correct feature branch and rebase to master:

   ```bash
   git switch -c <your-feature-branch>
   git rebase master
   ```

1. Squash commits and rewrite commit message with (title follows
   [MADR-0005-format](https://github.com/adr/madr/blob/2.1.2/docs/adr/0005-use-dashes-in-filenames.md)):
   * When working on a repo dedicated to ADRs:

     ```bash
     git reset --soft master && git commit -m 'feat(adr): <adr-title-in-lowercase>'
     ```

   * When working on a project's repo:

     ```bash
     git reset --soft master && git commit -m 'docs(adr): <adr-title-in-lowercase>'
     ```

1. Update the following ADR content:
   * Change ADR status to `approved` or `rejected`.
   * Change ADR date to current date.
1. Change ADR `.md` file name from `XXXX-<whatever-is-here>` to
   `<next-available-id>-<adr-title-in-lowercase>` (follows
   [MADR-0005-format](https://github.com/adr/madr/blob/2.1.2/docs/adr/0005-use-dashes-in-filenames.md)).
1. Force push your feature branch:

   ```bash
   git push -f
   ```

1. merge the PR.

### After PR merge

Pull merge code from GitHub and remove your feature branch:

```bash
git switch master
git pull origin
git remote prune origin
git branch -D <your-feature-branch>
```
