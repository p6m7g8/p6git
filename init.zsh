p6df::modules::p6git::version() { echo "0.0.1" }
p6df::modules::p6git::deps()    { }
p6df::modules::p6git::external::brew() { }

p6df::modules::p6git::init() {

    local dir=$P6_DFZ_SRC_DIR/p6m7g8/p6git
    p6_bootstrap "$dir"
}
