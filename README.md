
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Reproducible Example of Test for Target Version and Mermaid Rendering Issues

## Problem

A mermaid graph embedded in an Rmarkdown document that is rendered via a
targets workflow is erroring with the following message:

``` r
`store` required but no default
```

This document used to render properly without issues at earlier stages
of project but after a few months and a few targets versions later, the
error above was encountered.

Hence the suspicion that maybe `targets` version was the culprit more so
that there is discussion online that a specific version of `targets` has
had some major bugs with regard to mermaid graph rendering within
Rmarkdown documents.

## Test

We recreated a targets workflow in the repository using example created
by Will Landau [here](https://github.com/ropensci/targets/pull/802)
which is also an example in the function documentation for
`tar_mermaid()`.

We added a target for rendering an Rmarkdown report found inside a
specific library called `reports` which mimics the structure of the
project in which the issue/problem was occurring.

To be able to control the version of `targets` used, this repository
uses `renv`.

We first installed `targets` version 1.3.2:

``` r
renv::install("targets@1.3.2")
```

and then ran the workflow with `targets::tar_make()`

This reproduced the same error we were encountering in existing project.

Then, we installed `targets` version 1.4.1:

``` r
renv::install("targets@1.4.1")
```

and then ran the workflow.

Workflow completed without errors and HTML output in `reports` directory
was produced as expected.
