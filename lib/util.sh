######################################################################
#<
#
# Function: str branch = p6_git_branch_get()
#
#  Returns:
#	str - branch
#
#>
######################################################################
p6_git_branch_get() {

    local str=$(p6_git_cmd symbolic-ref HEAD)
    local branch=${str#refs/heads/}

    p6_return_str "$branch"
}

######################################################################
#<
#
# Function: str repo = p6_git_org_repo_get()
#
#  Returns:
#	str - repo
#
#>
######################################################################
p6_git_org_repo_get() {

    local url=$(p6_git_cmd remote get-url origin 2>&1)
    local repo=${${url##*/}%.git}

    p6_return_str "$repo"
}

######################################################################
#<
#
# Function: str org = p6_git_org_org_get()
#
#  Returns:
#	str - org
#
#>
######################################################################
p6_git_org_org_get() {

    local url=$(p6_git_cmd remote get-url origin 2>&1)
    local org=${${url%/*}##*/}

    p6_return_str "$org"
}

######################################################################
#<
#
# Function: str sha = p6_git_sha_short_get()
#
#  Returns:
#	str - sha
#
#>
######################################################################
p6_git_sha_short_get() {

    local sha=$(p6_git_cmd rev-parse --short HEAD)

    p6_return_str "$sha"
}

######################################################################
#<
#
# Function: code rc = p6_git_dirty_get()
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_git_dirty_get() {

    local gstatus="$(p6_git_cmd status --porcelain 2>/dev/null | tail -1)"

    p6_string_blank "$gstatus"
    local rc=$?

    p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: code rc = p6_git_inside_tree()
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_git_inside_tree() {

    p6_git_cmd rev-parse --is-inside-git-dir > /dev/null 2>&1
    local rc=$?

    p6_return_code_as_code "$rc"
}