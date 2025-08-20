# Extra git rebase commands

## Usage

In `git rebase -i` you have the usual commands:

* `p <commit>` = use commit
* `r <commit>` = use commit, but edit the commit message
* `e <commit>` = use commit, but stop for amending
* `s <commit>` = use commit, but meld into previous commit
* `f <commit>` = like "squash" but keep only the previous
* `x <command>` = run command (the rest of the line) using shell

...etc, and with this repository you gain new commands:

* `x f <commit>` = like "squash", but keep only this commit
* `x s <commit>` = like "pick", but put each file into a separate commit
* `x mark <message>` = insert an empty commit with given message
* `x meta <author-commit> <msg-commit>` = like `pick <msg-commit>`, but uses author of `<author-commit>`

## Installation

```sh
mkdir -p ~/.local/lib &&
git clone https://github.com/Mortal/git-rebase-utils ~/.local/lib/git-rebase-utils &&
cat >> ~/.bashrc <<'EOF'
alias git='PATH=~/.local/lib/git-rebase-utils:$PATH \git'
EOF
```
