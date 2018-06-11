p6df::modules::p6git::version() { echo "0.0.1" }
p6df::modules::p6git::deps()    { }
p6df::modules::p6git::external::brew() { }

p6df::modules::p6git::init() {

    local dir=$P6_DFZ_DATA_PARENT/p6m7g8/p6git

    local file
    for file in $dir/lib/*.sh; do
         p6_file_load "$file"
    done
}

p6df::modules::p6git::init
