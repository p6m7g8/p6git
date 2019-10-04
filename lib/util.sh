######################################################################
#<
#
# Function:
#	unkown branch = p6_git_branch_get()
#
#  Returns:
#	unkown - branch
#
#>
######################################################################
p6_git_branch_get() {

    local str=$(p6_git_symbolic_ref "HEAD")
    local branch=${str#refs/heads/}

    p6_return_str "$branch"
}

######################################################################
#<
#
# Function:
#	unkown repo = p6_git_org_repo_get()
#
#  Returns:
#	unkown - repo
#
#>
######################################################################
p6_git_org_repo_get() {

    local url=$(p6_git_remote "get-url" "origin" 2>&1)
    local repo=${${url##*/}%.git}

    p6_return_str "$repo"
}

######################################################################
#<
#
# Function:
#	unkown org = p6_git_org_org_get()
#
#  Returns:
#	unkown - org
#
#>
######################################################################
p6_git_org_org_get() {

    local url=$(p6_git_remote "get-url" "origin" 2>&1)
    local org=${${url%/*}##*/}

    p6_return_str "$org"
}

######################################################################
#<
#
# Function:
#	p6_git_sha_short_get()
#
#>
######################################################################
p6_git_sha_short_get() {

    p6_git_rev_parse "--short" "HEAD"
}

######################################################################
#<
#
# Function:
#	p6_git_dirty_get()
#
#>
######################################################################
p6_git_dirty_get() {

    local gstatus="$(p6_git_status "--porcelain" 2>/dev/null | tail -1)"

    local rc=$(p6_string_blank "$gstatus")

    p6_return_bool "$rc"
}
