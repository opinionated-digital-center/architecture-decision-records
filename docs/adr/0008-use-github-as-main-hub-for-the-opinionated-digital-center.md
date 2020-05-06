# Use GitHub as main hub for the Opinionated Digital Center

* Status: accepted
* Date: 2020-05-06

## Context and Problem Statement

We want to share the Opinionated Digital Center's (ODC) opinions, code, templates,
pipelines and tools with the community. We want to make it as easy as possible to access
and to contribute to, either by exchanging ideas, submitting issues and Pull/Merge
Requests. Hence, we need to choose a hub.

## Decision Drivers

* Our main audience target are organisations and companies using self-hosted or
  cloud versions of [GitLab](https://gitlab.com) or [GitHub](https://github.com)
  for hosting the code, and
  [GitLab CI](https://about.gitlab.com/stages-devops-lifecycle/continuous-integration/)
  for pipelines. To our knowledge, GitHub Actions is not yet widely available/used in
  the companies we worked with, especially since it requires a product update,
  which is often infrequent in these environments.
* Having said that, [GitHub Actions](https://github.com/features/actions) is fully
  available on the cloud and will no doubt arrive in companies sooner or later.
* Popularity and acceptance of the hub solution is key, so as not to deter
  participation.

*Note:* Whatever the option used, our templates will aim at making pipeline code and
setup code available for both GitLab CI and GitHub Actions. The projects holding the
templates and all other ODC projects will be using the chosen option's pipeline.

*Note 2:* We purposely eliminated [Jenkins](https://www.jenkins.io/) from the list of
candidates mainly because it requires extra and specific installations, increasing the
need for maintenance, especially with its plugins based management structure. This
also makes it complex to have a single, generic solution for the whole enterprise.

## Considered Options

* Main hub: GitLab; pipeline: GitLab CI; mirroring: GitHub, pull only.
* Main hub: GitHub; pipeline: GitLab CI; mirroring: GitLab, pull only.
* Main hub: GitHub; pipeline: GitLab CI; mirroring: GitLab, bi-directional.
* Main hub: GitHub; pipeline: GitHub Actions; mirroring: GitLab, pull only.

## Decision Outcome

Chosen option: "Main hub: GitHub; pipeline: GitHub Actions; mirroring: GitLab, pull
only", because the team could quickly enough get up to speed with GitHub Actions and
it is sufficiently mature and reliable to use.

## Pros and Cons of the Options

### Main hub: GitLab; pipeline: GitLab CI; mirroring: GitHub, pull only

* Good, because:
  * Everything is in one place and fully integrated.
* Bad, because:
  * GitLab's popularity amongst the community is not as high as GitHub's. More
    specifically, GitHub is the first name that springs to mind when looking for free,
    open source projects. Even our contributors, who are using GitLab daily
    (and liking it) at their workplace turn first to GitHub for finding code and,
    most importantly, interacting around it.

### Main hub: GitHub; pipeline: GitLab CI; mirroring: GitLab, pull only

* Good, because:
  * GitHub is the most popular hub amongst the community.
* Bad, because:
  * Automated release and git updates are non-trivial on GitLab when code is hosted on
    GitHub, since GitLab pushes code changes to its pulled mirror, not GitHub's
    source repository.

### Main hub: GitHub; pipeline: GitLab CI; mirroring: GitLab, bi-directional

* Good, because:
  * GitHub is the most popular hub amongst the community.
  * It is a workaround to the problem in second option.
* Bad, because:
  * Bi-directional mirroring
    [can create conflict](https://docs.GitLab.com/ee/user/project/repository/repository_mirroring.html#bidirectional-mirroring-starter).

### Main hub: GitHub; pipeline: GitHub Actions; mirroring: GitLab, pull only

* Good, because:
  * Everything is in one place and fully integrated.
* Bad, because:
  * GitHub Actions is relatively recent and is less widely available/used.
  * The current members of ODC have less experience in GitHub Actions and
    would need to go through the learning curve earlier than wanted, making first
    deliveries slower than wished for.
