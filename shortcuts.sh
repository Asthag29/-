# Usage: source shortcuts.sh, then run `push` inside any git repo.

push() {
  git add . || return 1

  if git diff --cached --quiet; then
    echo "Nothing to commit."
    return 0
  fi

  git commit -m "okdokey" && git push
}
