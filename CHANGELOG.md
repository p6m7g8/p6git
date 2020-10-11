# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [2.0.0](https://github.com/p6m7g8/p6git/compare/v1.0.7...v2.0.0) (2020-10-11)


### Features

* **p6_git_p6_log:** supports DETACHED HEAD wc ([#21](https://github.com/p6m7g8/p6git/issues/21)) ([bd90f89](https://github.com/p6m7g8/p6git/commit/bd90f89a04157a0ad2f8e22687c6f27f0422c01e))


### Bug Fixes

* **deps:** depends on `p6m7g8/p6common`, drop --porcelain, simplify _cmd() ([#22](https://github.com/p6m7g8/p6git/issues/22)) ([cf25e35](https://github.com/p6m7g8/p6git/commit/cf25e353b0675fca57e36d9b3ac073d7e403e373))
* **p6_git_branch_get:** works in detached head state ([#20](https://github.com/p6m7g8/p6git/issues/20)) ([03de640](https://github.com/p6m7g8/p6git/commit/03de64074b766b0f9c67ab4e93aeddf9407e5569))

### [1.0.7](https://github.com/p6m7g8/p6git/compare/v1.0.6...v1.0.7) (2020-09-20)


### Features

* **cli:** + p6_git_p6_restore() ([cc6ee78](https://github.com/p6m7g8/p6git/commit/cc6ee78cfd9390ab80b2938c898b01f5827cf116))
* **cli:** +p6_git_p6_add_all(), p6_git_p6_diff_head(), p6_git_p6_push_tags, p6_git_p6_push_tags() ([#19](https://github.com/p6m7g8/p6git/issues/19)) ([cf23391](https://github.com/p6m7g8/p6git/commit/cf233913c9ea2f27e440d96a8c04f712a00ff2da))

### [1.0.6](https://github.com/p6m7g8/p6git/compare/v1.0.5...v1.0.6) (2020-06-04)


### Features

* **cli:** +p6_git_p6_checkout_master ([#18](https://github.com/p6m7g8/p6git/issues/18)) ([9ecad31](https://github.com/p6m7g8/p6git/commit/9ecad31a2817d7cd803fc6600e78904305c3084e))
* **sync:** fixes function typos ([#17](https://github.com/p6m7g8/p6git/issues/17)) ([a20e9ba](https://github.com/p6m7g8/p6git/commit/a20e9badabf9eb6aa41881f5d7efd93d2171b665))

### [1.0.5](https://github.com/p6m7g8/p6git/compare/v1.0.4...v1.0.5) (2020-06-02)


### Features

* **api:** adds _add(), _remote() funcs ([#16](https://github.com/p6m7g8/p6git/issues/16)) ([411b954](https://github.com/p6m7g8/p6git/commit/411b95488acbe075a8b2d25e7f556f1e5a381b16))
* **log:** shows branch logs or just last 10 on master ([#15](https://github.com/p6m7g8/p6git/issues/15)) ([4d695fd](https://github.com/p6m7g8/p6git/commit/4d695fd9d06f4a2968cad336580ffe2747f66059))

### [1.0.4](https://github.com/p6m7g8/p6git/compare/v1.0.3...v1.0.4) (2020-06-02)


### Features

* **cli:** converts .gitconfig[aliases] -> p6 funcs ([#13](https://github.com/p6m7g8/p6git/issues/13)) ([cc778a3](https://github.com/p6m7g8/p6git/commit/cc778a35341de7e0e54e72f21ba8d4318ae9a58c))

### [1.0.3](https://github.com/p6m7g8/p6git/compare/v1.0.2...v1.0.3) (2020-06-02)


### Features

* **cicd:** setups semantic-version ([#9](https://github.com/p6m7g8/p6git/issues/9)) ([8713047](https://github.com/p6m7g8/p6git/commit/8713047c28379d241e6c4d24671d8e871d43bfb6))
* **cli:** adds p6_git_cmd() and uses internally ([#10](https://github.com/p6m7g8/p6git/issues/10)) ([486c89d](https://github.com/p6m7g8/p6git/commit/486c89de7a0b0953b83d67a9fc8bff3099315b5c))
* **util:** uses p6_git_cmd() ([#11](https://github.com/p6m7g8/p6git/issues/11)) ([3750e90](https://github.com/p6m7g8/p6git/commit/3750e901f341deb76cadeaedde3b2d19825f2ae7))

### [1.0.2](https://github.com/p6m7g8/p6git/compare/v1.0.1...v1.0.2) (2020-05-29)

### 1.0.1 (2020-05-29)


### Features

* **api:** p6_git_submit moved to p6github/p6_github_cli_submit() ([e06f259](https://github.com/p6m7g8/p6git/commit/e06f259a93adfbad5e0a46d045d7d2c7515e5476))
* **cicd:** setups Makefile and standard-version ([#7](https://github.com/p6m7g8/p6git/issues/7)) ([6123b8a](https://github.com/p6m7g8/p6git/commit/6123b8a56a4ddbe1f5af3daa54701fd3f8ba2031))


* **doc:** updates doc_inline.pl@current ([2737b8c](https://github.com/p6m7g8/p6git/commit/2737b8cc5f60a5d3199786016bf15e6c5a1de4a2))
* **doc:** updates doc_inline.pl@current ([#2](https://github.com/p6m7g8/p6git/issues/2)) ([01fef50](https://github.com/p6m7g8/p6git/commit/01fef50974e58b7fe9370cb7371fa0ec911b2cf5))
* **docs:** regen ([#4](https://github.com/p6m7g8/p6git/issues/4)) ([b62d5a0](https://github.com/p6m7g8/p6git/commit/b62d5a0022b2699fc05db838a2473e9a618ff666))
* **mergify:** adds config ([e1c804e](https://github.com/p6m7g8/p6git/commit/e1c804e54797d3fccd7f51edba3348c87e76c06e))
* **readme:** regen ([#5](https://github.com/p6m7g8/p6git/issues/5)) ([da535b2](https://github.com/p6m7g8/p6git/commit/da535b2a8a1e13a4f45a27053ba6492f647e45ab))
* **semqntic:** adds semantic.yml ([#1](https://github.com/p6m7g8/p6git/issues/1)) ([a44d3e6](https://github.com/p6m7g8/p6git/commit/a44d3e6995b849a27da60d9511ee4348a6743b78))
