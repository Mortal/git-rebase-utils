#!/bin/sh
case "$1" in
	[0-9][0-9]*)
		;;
	*)
		echo "First argument must be a number"
		exit 1
esac
set -euo pipefail
git reset --soft "@^" && git commit -C @@{1}
