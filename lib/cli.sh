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

