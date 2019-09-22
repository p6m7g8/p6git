######################################################################
#<
#
# Function:
#     $branch = p6_git_branch_get()
#
#
# Return(s):
#    $branch - 
#
#>
######################################################################
p6_git_branch_get() {

    local str=$(p6_git_symbolic_ref "HEAD")
    local branch=${str#refs/heads/}

    p6_return "$branch"
}

######################################################################
#<
#
# Function:
#     $repo = p6_git_org_repo_get()
#
#
# Return(s):
#    $repo - 
#
#>
######################################################################
p6_git_org_repo_get() {

    local url=$(p6_git_remote "get-url" "origin" 2>&1)
    local repo=${${url##*/}%.git}

    p6_return "$repo"
}

######################################################################
#<
#
# Function:
#     $org = p6_git_org_org_get()
#
#
# Return(s):
#    $org - 
#
#>
######################################################################
p6_git_org_org_get() {

    local url=$(p6_git_remote "get-url" "origin" 2>&1)
    local org=${${url%/*}##*/}

    p6_return "$org"
}

######################################################################
#<
#
# Function:
#      = p6_git_sha_short_get()
#
#
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
#     bool = p6_git_dirty_get()
#
#
# Return(s):
#     - 
#
#>
######################################################################
p6_git_dirty_get() {

    local gstatus="$(p6_git_status "--porcelain" 2>/dev/null | tail -1)"

    p6_string_blank "$gstatus" && p6_return_bool 1 || p6_return_bool 0
}