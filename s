#!/bin/bash
set -euo pipefail
C="$1"
shift
M="$*"
git show --pretty=format: --name-only $C | while read p; do
	git checkout $C -- "$p" || git rm -f -- "$p"
	git commit --quiet -C $C -n -- "$p"
	git commit --quiet --amend -m "$p $M" -n
done
