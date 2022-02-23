# netlify build tests

This repo serves as an example repo to test builds and publishes to
netlify wired up via github sync.

As quarto cannot itself build R/python content in the build image, it is
expected all content with code would need to checked in to `_freeze`.

to see how the build works, check out: `_build.sh`

The general gist, is the build must currently:

* pull down a version of quarto
* run quarto render

and the site config itself must be set up to properly pick up the resulting
build directory.