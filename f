#!/bin/sh
set -euo pipefail
git cherry-pick -n "$1" && git commit --amend -nC "$1"
