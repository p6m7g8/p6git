p6_git_init() {

    p6_log_or_run git init "$@"
}

p6_git_checkout() {

    p6_log_or_run git checkout "$@"
}

p6_git_reset() {

    p6_log_or_run git reset "$@"
}

p6_git_commit() {

    p6_log_or_run git commit "$@"
}

p6_git_add() {

    p6_log_or_run git add "$@"
}

p6_git_status() {

    p6_log_and_run git status "$@"
}

p6_git_push() {

    p6_log_or_run git push "$@"
}

p6_git_remote() {

    p6_log_or_run git remote "$@"
}

p6_git_symbolic_ref() {

    p6_log_and_run git symbolic-ref "$@"
}

p6_git_rev_parse() {

    p6_log_and_run git rev-parse "$@"
}
