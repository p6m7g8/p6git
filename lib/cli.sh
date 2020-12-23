# shellcheck shell=sh
######################################################################
#<
#
# Function: code rc = p6_git_cmd(cmd, ...)
#
#  Args:
#	cmd -
#	... - 
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_git_cmd() {
    local cmd="$1"
    shift 1

    p6_run_code "git $cmd $*"
    local rc=$?

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: p6_git_p6_restore()
#
#>
######################################################################
p6_git_p6_restore() {

    p6_git_cmd restore --staged "$@"
}
######################################################################
#<
#
# Function: p6_git_p6_status()
#
#>
######################################################################
p6_git_p6_status() {

    p6_git_cmd status --ignore-submodules="${_git_status_ignore_submodules:-}" "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_diff()
#
#>
######################################################################
p6_git_p6_diff() {

    p6_git_cmd diff --no-ext-diff "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_diff_master()
#
#>
######################################################################
p6_git_p6_diff_master() {

    p6_git_p6_diff "master" "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_diff_previous()
#
#>
######################################################################
p6_git_p6_diff_previous() {

    p6_git_p6_diff "HEAD^" "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_rebase()
#
#>
######################################################################
p6_git_p6_rebase() {

    p6_git_cmd rebase "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_rebase_continue()
#
#>
######################################################################
p6_git_p6_rebase_continue() {

    p6_git_p6_rebase --continue
}

######################################################################
#<
#
# Function: p6_git_p6_rebase_abort()
#
#>
######################################################################
p6_git_p6_rebase_abort() {

    p6_git_p6_rebase --abort
}

######################################################################
#<
#
# Function: p6_git_p6_reset()
#
#>
######################################################################
p6_git_p6_reset() {

    p6_git_cmd reset "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_clean()
#
#>
######################################################################
p6_git_p6_clean() {

    p6_git_cmd clean "-fdx" "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_git_reset_head_hard()
#
#>
######################################################################
p6_git_p6_git_reset_head_hard() {

    p6_git_p6_reset --head --hard
}

######################################################################
#<
#
# Function: p6_git_p6_diff_head()
#
#>
######################################################################
p6_git_p6_diff_head() {

    p6_git_p6_diff "HEAD" "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_log()
#
#>
######################################################################
p6_git_p6_log() {

    local branch
    branch=$(p6_git_branch_get)
    local base
    base=$(p6_git_base_branch)

    local count
    if p6_string_eq "master" "$branch"; then
        count=-10
    elif p6_string_eq "main" "$branch"; then
        count=-10
    elif p6_string_eq "DETACHED" "$branch"; then
        count=-10
    else
        count="${base}..${branch}"
    fi

    git log \
        --graph \
        --abbrev-commit \
        --date=relative \
        --decorate \
        --pretty="format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'" \
        "$count" \
        "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_symbolic_ref(ref)
#
#  Args:
#	ref -
#
#>
######################################################################
p6_git_p6_symbolic_ref() {
    local ref="$1"

    p6_git_cmd symbolic-ref "$ref" 2>/dev/null
}

######################################################################
#<
#
# Function: p6_git_p6_checkout()
#
#>
######################################################################
p6_git_p6_checkout() {

    p6_git_cmd checkout "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_checkout_master()
#
#>
######################################################################
p6_git_p6_checkout_master() {

    p6_git_p6_checkout "master"
}

######################################################################
#<
#
# Function: p6_git_p6_branch()
#
#>
######################################################################
p6_git_p6_branch() {

    p6_git_cmd branch --verbose --verbose "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_branch_create()
#
#>
######################################################################
p6_git_p6_branch_create() {

    p6_git_p6_checkout -b "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_pull()
#
#>
######################################################################
p6_git_p6_pull() {

    p6_git_cmd pull --rebase --autostash --ff-only
}

######################################################################
#<
#
# Function: p6_git_p6_push()
#
#>
######################################################################
p6_git_p6_push() {

    p6_git_cmd push -u "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_push_f()
#
#>
######################################################################
p6_git_p6_push_f() {

    p6_git_p6_push -f
}
######################################################################
#<
#
# Function: p6_git_p6_push_tags()
#
#>
######################################################################
p6_git_p6_push_tags() {

    p6_git_cmd push --tags "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_sync()
#
#>
######################################################################
p6_git_p6_sync() {

    p6_git_p6_pull &&
        p6_git_p6_push
}

######################################################################
#<
#
# Function: p6_git_p6_merge()
#
#>
######################################################################
p6_git_p6_merge() {

    p6_git_cmd merge "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_reset_head_hard()
#
#>
######################################################################
p6_git_p6_reset_head_hard() {

    p6_git_cmd reset HEAD --hard "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_reset_head_ago_one()
#
#>
######################################################################
p6_git_p6_reset_head_ago_one() {

    p6_git_cmd reset HEAD^ "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_stash_list()
#
#>
######################################################################
p6_git_p6_stash_list() {

    p6_git_cmd stash list
}

######################################################################
#<
#
# Function: p6_git_p6_remote()
#
#>
######################################################################
p6_git_p6_remote() {

    p6_git_cmd remote --verbose
}

######################################################################
#<
#
# Function: p6_git_p6_add()
#
#>
######################################################################
p6_git_p6_add() {

    p6_git_cmd add "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_add_all()
#
#>
######################################################################
p6_git_p6_add_all() {

    p6_git_p6_add .
}

######################################################################
#<
#
# Function: p6_git_p6_commit(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_git_p6_commit() {
    local msg="$1"

    git commit --verbose -m "$msg"
}

######################################################################
#<
#
# Function: p6_git_p6_commit_last_edit()
#
#>
######################################################################
p6_git_p6_commit_last_edit() {

    p6_git_p6_commit --amend "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_fetch()
#
#>
######################################################################
p6_git_p6_fetch() {

    p6_git_cmd fetch --all "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_clone()
#
#>
######################################################################
p6_git_p6_clone() {

    p6_git_cmd clone --resurse-submodules "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_revert()
#
#>
######################################################################
p6_git_p6_revert() {

    p6_git_cmd revert "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_grep_files()
#
#>
######################################################################
p6_git_p6_grep_files() {

    p6_git_cmd grep --files-with-match "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_grep()
#
#>
######################################################################
p6_git_p6_grep() {

    p6_git_cmd grep --word-regexp "$@"
}

######################################################################
#<
#
# Function: p6_git_p6_update()
#
#>
######################################################################
p6_git_p6_update() {

    local base
    base=$(p6_git_base_branch)

    p6_git_cmd "fetch" "upstream"
    p6_git_p6_merge "upstream/$base" "$base"
    p6_git_p6_push
}