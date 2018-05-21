p6_git_branch_get() {

    local str=$(p6_git_symbolic_ref "HEAD")

    local branch=${str#refs/heads/}

    echo $branch
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
    if [ -n "$gstatus" ]; then
	echo 1
	return 1
    else
	echo 0
	return 0
    fi
}
