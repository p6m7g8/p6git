p6_git_init() {

    p6_run_write_cmd git init "$@"
}

p6_git_checkout() {

    p6_run_write_cmd git checkout "$@"
}

p6_git_reset() {

    p6_run_write_cmd git reset "$@"
}

p6_git_commit() {

    p6_run_write_cmd git commit "$@"
}

p6_git_add() {

    p6_run_write_cmd git add "$@"
}

p6_git_status() {

    p6_run_read_cmd git status "$@"
}

p6_git_push() {

    p6_run_write_cmd git push "$@"
}

p6_git_remote() {

    p6_run_write_cmd git remote "$@"
}

p6_git_symbolic_ref() {

    p6_run_read_cmd git symbolic-ref "$@"
}

p6_git_rev_parse() {

    p6_run_read_cmd git rev-parse "$@"
}
