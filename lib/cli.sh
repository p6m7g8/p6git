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

    local log_type
    case $cmd in
        *) log_type=p6_run_write_cmd ;;
    esac    
    
    p6_run_code "$log_type git $cmd $@"
    local rc=$?

    p6_return_code_as_code "$rc";
}

p6_git_p6_status() {

  p6_git_cmd status --ignore-submodules="${_git_status_ignore_submodules}" "$@"
}

p6_git_p6_diff() {

  p6_git_cmd diff --no-ext-diff "$@"
}

p6_git_p6_log() {

  p6_git_cmd log log \
    --graph \
    --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
    --abbrev-commit \
    --date=relative \
    "$@"
}

p6_git_p6_checkout() {

  p6_git_cmd checkout "$@"
}

p6_git_p6_branch() {

  p6_git_cmd branch git branch --verbose --verbose "$@"
}

p6_git_p6_branch_create() {

    p6_git_p6_checkout -b "$@"
}

p6_git_p6_pull() {

    p6_git_cmd pull --rebase --autostash --ff-only "$@"
}

p6_git_p6_push() {

    p6_git_cmd push -u "$@"
}

p6_git_p6_push_tags(){ 

    p6_git_cmd push --tags "$@"
}

p6_git_p6_sync() {

  p6_git_pull && \
    p6_git_push    
}

p6_git_p6_merge() {

    p6_git_cmd merge "$@"
}

p6_git_p6_reset_head_hard() {

    p6_git_cmd reset HEAD --hard "$@"
}

p6_git_p6_reset_head_one_ago() {

    p6_git_cmd reset HEAD^ "$@"
}

p6_git_p6_commit() {

    p6_git_cmd commit --verbose "$@"
}

p6_git_p6_commit_edit_last() {

    p6_git_p6_commit --amend "$@"
}

p6_git_p6_fetch() {

    p6_git_cmd fetch --all "$@"
}

p6_git_p6_clone() {

    p6_git_cmd clone --resurse-submodules "$@"
}

p6_git_p6_revert() {

    p6_git_cmd revert "$@"
}

p6_git_p6_grep_files() {

    p6_git_cmd grep --files-with-match "$@"
}

p6_git_p6_grep() {

    p6_git_cmd grep --word-regexp "$@"
}
