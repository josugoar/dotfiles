# -*- mode: sh; mode: sh-bash -*-


##-----------------------------------------------------------------------------
## Line editor settings


## "edit_marker" and "edit_marker_error" define the default styles of the
## markers [ble: ...] used by ble.sh.  "edit_marker" is used for the normal
## notifications, and "edit_marker_error" is used for the error information.
## When they are set to an empty string, those markers are disabled (unless
## additional information other than the markers needs to be output after the
## markers).  Those default styles can be overridden by specific mark settings,
## such as `exec_errexit_mark`, `exec_elapsed_mark`, and `exec_exit_mark`.

bleopt edit_marker=
bleopt edit_marker_error=


## The following setting controls the exit when jobs are remaining. When an
## empty string is set, the shell will never exit with remaining jobs through
## widgets. When an non-empty value is set, the shell will exit when exit is
## attempted twice consecutively.

bleopt allow_exit_with_jobs=1
