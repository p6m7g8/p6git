p6_git_branch_get() {

    local str=$(p6_git_symbolic_ref "HEAD")
    local branch=${str#refs/heads/}

    p6_return "$branch"
}

p6_git_org_repo_get() {

    p6_git_remote "get-url" "origin"
	cut -d: -f 2 | \
	sed -e 's,\.git$,,'
}

p6_git_sha_short_get() {

    p6_git_rev_parse "--short" "HEAD"
}

p6_git_dirty_get() {

    local gstatus="$(p6_git_status "--porcelain" 2>/dev/null | tail -1)"

     p6_string_blank "$gstatus" && p6_return_bool 1 || p6_return_bool 0
}
