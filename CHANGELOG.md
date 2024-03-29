# Changelog

## [0.1.12](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.11...v0.1.12) (2024-02-21)


### Bug Fixes

* destroy infra, manually fix state, add helpers ([#32](https://github.com/rancher/terraform-aws-rke2-live-example/issues/32)) ([ef6a103](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ef6a103f3f5b2bc1a569a0e80441c33ce410a212))
* setup ([#34](https://github.com/rancher/terraform-aws-rke2-live-example/issues/34)) ([cb40834](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cb40834bcbfb295fe441250699b03871642ca695))
* style from actionlint ([#35](https://github.com/rancher/terraform-aws-rke2-live-example/issues/35)) ([ba39fbb](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ba39fbbd21b4ee83ab1b0af130142193c7a0a1a9))

## [0.1.11](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.10...v0.1.11) (2024-02-17)


### Bug Fixes

* add ci access before destroying everything ([#30](https://github.com/rancher/terraform-aws-rke2-live-example/issues/30)) ([17ae763](https://github.com/rancher/terraform-aws-rke2-live-example/commit/17ae763cf434366a108476bfed700040c799ad8d))

## [0.1.10](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.9...v0.1.10) (2024-02-16)


### Bug Fixes

* add a workflow to destroy everything to save money ([#28](https://github.com/rancher/terraform-aws-rke2-live-example/issues/28)) ([fc22d0a](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fc22d0ab28ad84bdd16910b2ffd86e10b7f6dd10))

## [0.1.9](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.8...v0.1.9) (2024-02-16)


### Bug Fixes

* shut down servers by default to prevent charges ([#26](https://github.com/rancher/terraform-aws-rke2-live-example/issues/26)) ([37d464e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/37d464ea603b8efecbebe2f632d31316d38e175b))

## [0.1.8](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.7...v0.1.8) (2024-02-16)


### Bug Fixes

* only add backup state if it exists ([#24](https://github.com/rancher/terraform-aws-rke2-live-example/issues/24)) ([2c3d451](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2c3d451d040103144ea1bcf26f7cb64cb1c2b5b2))

## [0.1.7](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.6...v0.1.7) (2024-02-16)


### Bug Fixes

* move things around to be more reliable ([#22](https://github.com/rancher/terraform-aws-rke2-live-example/issues/22)) ([266a49c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/266a49c5942423a1d4f7d543918b598926f356ba))

## [0.1.6](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.5...v0.1.6) (2024-02-16)


### Bug Fixes

* add tfvars to gitignore and put state moves to backup in new line ([#20](https://github.com/rancher/terraform-aws-rke2-live-example/issues/20)) ([7451630](https://github.com/rancher/terraform-aws-rke2-live-example/commit/745163047b2f4d761630192e6fba47a2d025495e))

## [0.1.5](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.4...v0.1.5) (2024-02-16)


### Bug Fixes

* add docs and try release with new perms ([#17](https://github.com/rancher/terraform-aws-rke2-live-example/issues/17)) ([d978df0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d978df0e9ee5dcf31a2b153187bd5ecd4e4fac94))

## [0.1.4](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.3...v0.1.4) (2024-02-16)


### Bug Fixes

* use admin token instead of workflow token ([#15](https://github.com/rancher/terraform-aws-rke2-live-example/issues/15)) ([a3ccc23](https://github.com/rancher/terraform-aws-rke2-live-example/commit/a3ccc23a15a1e544dc90c0f360042b9afd92423d))

## [0.1.3](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.2...v0.1.3) (2024-02-16)


### Bug Fixes

* output vars and dont remove them ([#13](https://github.com/rancher/terraform-aws-rke2-live-example/issues/13)) ([3d1f727](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3d1f727d3edd4a4e9b472e8df68651bc7c1348b0))

## [0.1.2](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.1...v0.1.2) (2024-02-16)


### Bug Fixes

* save state to backup state ([#11](https://github.com/rancher/terraform-aws-rke2-live-example/issues/11)) ([349ae29](https://github.com/rancher/terraform-aws-rke2-live-example/commit/349ae298ac48b8e38c316a0d57ce2caf87fbdc5f))

## [0.1.1](https://github.com/rancher/terraform-aws-rke2-live-example/compare/v0.1.0...v0.1.1) (2024-02-16)


### Bug Fixes

* update docs ([#9](https://github.com/rancher/terraform-aws-rke2-live-example/issues/9)) ([da6cd79](https://github.com/rancher/terraform-aws-rke2-live-example/commit/da6cd79e64c7aa6712078aa3dda1de8ba2e74a79))

## 0.1.0 (2024-02-16)


### ⚠ BREAKING CHANGES

* reorganizing around lifecycles ([#128](https://github.com/rancher/terraform-aws-rke2-live-example/issues/128))

### Features

* add ci rotate job, manage state better, add aws role to secrets ([347d132](https://github.com/rancher/terraform-aws-rke2-live-example/commit/347d132460cd94c187a79f16ac42116153573bf4))
* initial ([cd6870a](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cd6870a50aaa68a40601587faba9412fbf306a15))


### Bug Fixes

* actionlint ([ef4ffb9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ef4ffb94a94226e7c34021b26d1e06991cb98121))
* add a proper initial tf state ([7fbbc75](https://github.com/rancher/terraform-aws-rke2-live-example/commit/7fbbc75331628dfd5cf1ca698cdccf153a7368c5))
* add access to allow user to login remotely ([#112](https://github.com/rancher/terraform-aws-rke2-live-example/issues/112)) ([cb94161](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cb941617a37d71feb1d03fbd5817350a46e44b09))
* add age encrypt alias to env ([#58](https://github.com/rancher/terraform-aws-rke2-live-example/issues/58)) ([fb1ec3e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fb1ec3ea0e847c4cf975619cd8033cb81620c186))
* add automated setup ([#73](https://github.com/rancher/terraform-aws-rke2-live-example/issues/73)) ([c9eebe3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c9eebe3dc426f2ae577ee19078646f692a6a576d))
* add aws to pre-release test ([66af7e4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/66af7e4884f2c2547adbd41a5cd84e4d456a550a))
* add awscli locally to make authentication easier ([d14a982](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d14a982fdb2c47dbc5905da587e5c4134580b506))
* add branch protections ([4a0f4bf](https://github.com/rancher/terraform-aws-rke2-live-example/commit/4a0f4bf4744c34f6cb0620698c4b433850053802))
* add cache for plugins and add backtick to plan ([#13](https://github.com/rancher/terraform-aws-rke2-live-example/issues/13)) ([5e96917](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5e96917ba5ea28f301d71cd927fed7b7a582e9f3))
* add cacheing to release action and only save state file ([#45](https://github.com/rancher/terraform-aws-rke2-live-example/issues/45)) ([5643f43](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5643f438d7fa28f292e6f51089e2ec30521fac19))
* add ci and myself to recipients ([#2](https://github.com/rancher/terraform-aws-rke2-live-example/issues/2)) ([3dcdfa4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3dcdfa4ef85f62daba08f658f5130271b5cd13d4))
* add comments to give user creation example ([1548600](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1548600f56bd81e13e522be1efb92ea62b3ef152))
* add docs for all the things, stop trying to stash nix ([#64](https://github.com/rancher/terraform-aws-rke2-live-example/issues/64)) ([2c9dca8](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2c9dca822450c3365b540e06b330080c30d4888a))
* add doctaxis style docs ([#66](https://github.com/rancher/terraform-aws-rke2-live-example/issues/66)) ([3f7de15](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3f7de155497f931e0e641d30323312fef3d04b27))
* add info about tools in warnings ([c729986](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c7299865025f4d9d2d2f4eeeae0523c39de18f04))
* add ip to pass plan ([850a6d2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/850a6d2b27803f4fd482f94599abbe8669d13b4d))
* Add key ([#29](https://github.com/rancher/terraform-aws-rke2-live-example/issues/29)) ([ccd6614](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ccd66140fa4b0dea46a40af9483fbb67526100e1))
* add manual apply and destroy workflows ([#16](https://github.com/rancher/terraform-aws-rke2-live-example/issues/16)) ([d6b097d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d6b097dffaba6df8d4a8d91332c4c5ba85d4b54a))
* Add my access ([#113](https://github.com/rancher/terraform-aws-rke2-live-example/issues/113)) ([f61d894](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f61d894939908436df6813e484b9c6ec0c190de7))
* add my email and fix kubectl path ([#94](https://github.com/rancher/terraform-aws-rke2-live-example/issues/94)) ([60072bd](https://github.com/rancher/terraform-aws-rke2-live-example/commit/60072bda8ac1a7a63a91889e94a1cf2365810728))
* add my key to recipients ([15e0404](https://github.com/rancher/terraform-aws-rke2-live-example/commit/15e04048f153b3814e41bd254d5c88e5a4b2e0fa))
* add my public key to recipients ([3a2e142](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3a2e142cfad34c91193591ce67a8841db80a2f8f))
* add nix to setup ([00d0935](https://github.com/rancher/terraform-aws-rke2-live-example/commit/00d0935c633fa46d453f389afdc91ae16c0c911f))
* add objects on first release ([#69](https://github.com/rancher/terraform-aws-rke2-live-example/issues/69)) ([1cb8f60](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1cb8f6048bff4acf15c7ffbfd5fd41455c3e301d))
* add output from plan to pr ([#7](https://github.com/rancher/terraform-aws-rke2-live-example/issues/7)) ([0370a03](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0370a0392b4c5c2e5a9b388f5af4d441bd7e9422))
* add plan to pre-release test ([c5c5bfd](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c5c5bfd7730fadbbdd59cfb8b76b508df3c7d7c5))
* add prototype key to phase 3 and clean up variables ([#145](https://github.com/rancher/terraform-aws-rke2-live-example/issues/145)) ([9258f1e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/9258f1e5063a005cd3cd3fcbc9a45a975964a0f3))
* add some docs and make ssh key local at apply time ([#65](https://github.com/rancher/terraform-aws-rke2-live-example/issues/65)) ([5d9def5](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5d9def5fa63716e8b1e5cad4a9bfb320a9d46430))
* add some docs, remove my name ([705ba92](https://github.com/rancher/terraform-aws-rke2-live-example/commit/705ba92f45d5e1e828b2e4583eb149552aa94162))
* add terraform init, make sure terraform.tfstate is removed. ([#9](https://github.com/rancher/terraform-aws-rke2-live-example/issues/9)) ([0b415e5](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0b415e54b534fafc86ca0a6feb7714167bc64069))
* add the tmp state file location to state list action ([#106](https://github.com/rancher/terraform-aws-rke2-live-example/issues/106)) ([8b7c38f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/8b7c38fd5cb87230dac80d119c9b315de2707e47))
* add token permissions ([#20](https://github.com/rancher/terraform-aws-rke2-live-example/issues/20)) ([fa8b04b](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fa8b04b83ccadc770705974fb7c3fcff2aad908c))
* add workstation age key ([#81](https://github.com/rancher/terraform-aws-rke2-live-example/issues/81)) ([b2c326c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b2c326cd8d47198d0f49d3a5d2df26c0a5b6e334))
* adding dependency chain and troubleshooting ([#77](https://github.com/rancher/terraform-aws-rke2-live-example/issues/77)) ([3262777](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3262777f408593834aa3a314d73e4bcf12779f59))
* age syntax in setup ([1777681](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1777681b8561352b5e2526af51bd9bec7ef262d9))
* always do the targeted applies ([344d655](https://github.com/rancher/terraform-aws-rke2-live-example/commit/344d655830fa7d33373dfdf6e89f026ff20366ee))
* always save changes in state ([#33](https://github.com/rancher/terraform-aws-rke2-live-example/issues/33)) ([b4bfd85](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b4bfd85c85c12f203ca691d1a82bc2a77a454de6))
* ami should depend on shutting down the prototype ([#147](https://github.com/rancher/terraform-aws-rke2-live-example/issues/147)) ([bf38823](https://github.com/rancher/terraform-aws-rke2-live-example/commit/bf38823d592089285fb105c2e4cb9a018c74261e))
* apply in plan ([840190a](https://github.com/rancher/terraform-aws-rke2-live-example/commit/840190a628070e1dbf14ca8dfd10f8c196c9ecdd))
* attempt to cache everything ([e94a6e4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/e94a6e4749a2ce6e318b0183e3f75b650802f42d))
* attempting specific permissions ([0634605](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0634605fdf782a00cb34588e5429ee6a0f633158))
* break down lines to get values ([ebece79](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ebece79fbcd5d33171f4c2d6c2e47c999e9828b0))
* bump actions/cache from 3 to 4 ([#118](https://github.com/rancher/terraform-aws-rke2-live-example/issues/118)) ([bfc99ee](https://github.com/rancher/terraform-aws-rke2-live-example/commit/bfc99eec8d43f59d2143841471cdc77ddc618e06))
* bump hashicorp/aws from 5.23.1 to 5.26.0 ([#40](https://github.com/rancher/terraform-aws-rke2-live-example/issues/40)) ([886c029](https://github.com/rancher/terraform-aws-rke2-live-example/commit/886c029bfcad48d35b0a98905f6de9eef510d37d))
* bump hashicorp/aws from 5.30.0 to 5.31.0 ([#63](https://github.com/rancher/terraform-aws-rke2-live-example/issues/63)) ([f11b20b](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f11b20b1af6dc1ca5d12d9eb95bc47a37a8f1942))
* bump hashicorp/http from 3.4.0 to 3.4.1 ([#68](https://github.com/rancher/terraform-aws-rke2-live-example/issues/68)) ([7c94cf4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/7c94cf434f4ff850e1c20e7e56cb91bc86ba10f7))
* bump hashicorp/local from 2.4.0 to 2.4.1 ([#76](https://github.com/rancher/terraform-aws-rke2-live-example/issues/76)) ([13261d2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/13261d288e114999c716fb86d49f742947c3c02a))
* bump hashicorp/null from 3.2.1 to 3.2.2 ([#50](https://github.com/rancher/terraform-aws-rke2-live-example/issues/50)) ([5279ab1](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5279ab1d9bff2b267985112c1ecbce9f5d7a1cd8))
* bump hashicorp/setup-terraform from 2 to 3 ([#1](https://github.com/rancher/terraform-aws-rke2-live-example/issues/1)) ([348920c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/348920c7f1a75c61b0f97c61003beccae5ac4167))
* bump hashicorp/tls from 4.0.4 to 4.0.5 ([#49](https://github.com/rancher/terraform-aws-rke2-live-example/issues/49)) ([14329fa](https://github.com/rancher/terraform-aws-rke2-live-example/commit/14329fa8bcba5782a79c0c68d1a827bc513bc374))
* bump terraform-linters/setup-tflint from 3 to 4 ([#2](https://github.com/rancher/terraform-aws-rke2-live-example/issues/2)) ([acbc8a3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/acbc8a3839e620e98e90290d3fc2ef6bda27c950))
* cd ([855fe6e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/855fe6ede91f960e715ef9cbafe33a479634949e))
* clean for copy ([d966cf9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d966cf9fb272ea4820157e739641807c29d3e22c))
* decrypt in setup ([464ccd2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/464ccd20d724881760724c51e9962afbfae5d039))
* default output to empty ([596da7d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/596da7dc6a75d135a96c22c2c4a2011444e8e2c8))
* don't fail out on delete ([6437151](https://github.com/rancher/terraform-aws-rke2-live-example/commit/64371517ad2a2d7677cc3949b8ae7209c25ce043))
* don't install authkeys and make idempotent ([8cd26b0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/8cd26b0a37069af9eab01d80be4da764a01f1d5a))
* don't rebase ([87bf509](https://github.com/rancher/terraform-aws-rke2-live-example/commit/87bf509215231a76211071188cb322860a859671))
* don't remove admin key ([a1bb150](https://github.com/rancher/terraform-aws-rke2-live-example/commit/a1bb1503bcf76209147b542374dd1e26ac3d63cf))
* dont cast output ([3a764c3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3a764c30e3a30b22aa65a85015853b0bb7e6ea6b))
* encrypt and decrypt state in ci ([#24](https://github.com/rancher/terraform-aws-rke2-live-example/issues/24)) ([b99dace](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b99dacec5f8fb3b2f3d20dea81713c88ea63de03))
* error is token not found ([832ce4f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/832ce4f2abaa08da9e2c04b857c0efd96a6f0afb))
* expand file path and make sure directory exists ([#32](https://github.com/rancher/terraform-aws-rke2-live-example/issues/32)) ([28077a5](https://github.com/rancher/terraform-aws-rke2-live-example/commit/28077a5af0ce61eeda745b769ffeed640b92da44))
* explicitly pass workspace ([c11ad53](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c11ad53566e7033992f09a3153d98e924286da71))
* extrap personal vars and add secret file list ([#108](https://github.com/rancher/terraform-aws-rke2-live-example/issues/108)) ([3c88b30](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3c88b30edcf6caf6ab10fb52863da172dccb2a0b))
* fail early without admin key ([bd9c823](https://github.com/rancher/terraform-aws-rke2-live-example/commit/bd9c823efc9c1494ffbc1958f71ce81c53f1f4df))
* fix directory names in types ([207b33f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/207b33fbe4f2406d566a46ae7585b7495cdab53f))
* fix job redirects ([#14](https://github.com/rancher/terraform-aws-rke2-live-example/issues/14)) ([c0d13bf](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c0d13bfb97ad65da00c753961b6535ae551139b7))
* fix mode ([9de40a6](https://github.com/rancher/terraform-aws-rke2-live-example/commit/9de40a6d3cb6f5f63c9aab71702d851554c9ab5e))
* fix output ([dacd6bd](https://github.com/rancher/terraform-aws-rke2-live-example/commit/dacd6bdb1903f95009c786c563fe75ca54c244c2))
* Fix workflow ([#34](https://github.com/rancher/terraform-aws-rke2-live-example/issues/34)) ([d2001aa](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d2001aa1da539e9e6440e16024a480ef9789025c))
* fix workflows ([559bf6e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/559bf6ee757d4bf9fa7777e442f7bf135711483c))
* force explicit compare ([b0a3f6d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b0a3f6df5ffc726cf36460cc9e7afc69d6776eba))
* force output to json ([f61e5c4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f61e5c4147a1adfd48c6184a618d77bd3e2d5c97))
* force output to strings and print ([d409376](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d409376d616c8d24ab3deaa829f223072d5cce6d))
* generate encrypted files ([482f264](https://github.com/rancher/terraform-aws-rke2-live-example/commit/482f264788c7719b2d3a1cf507186e37bcf8078f))
* generate state if necessary ([28d1927](https://github.com/rancher/terraform-aws-rke2-live-example/commit/28d1927222a6e4ad408c7659362d97c383695a43))
* get runner id in same job ([a443d44](https://github.com/rancher/terraform-aws-rke2-live-example/commit/a443d4453aba7ee11d7b2b8743be6120a57c6f92))
* get the IP from the env rather than the module ([#26](https://github.com/rancher/terraform-aws-rke2-live-example/issues/26)) ([3b4d01f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3b4d01fb589509706e9fa9be33eaffe1e3966a3f))
* gh cli required gh token ([2bcc787](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2bcc787e83d9cd6fd3f3bb33912a5e59b413cdf0))
* handle missing encrypted files ([#129](https://github.com/rancher/terraform-aws-rke2-live-example/issues/129)) ([8fccb28](https://github.com/rancher/terraform-aws-rke2-live-example/commit/8fccb286b855f00451334f00545bb5b642b956a7))
* initial apply ([#71](https://github.com/rancher/terraform-aws-rke2-live-example/issues/71)) ([b3dd717](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b3dd7171b7eb377fe79dc7c6f74cd16d7d1ba057))
* Introduce updatecli to repo and validate basic functionality ([#107](https://github.com/rancher/terraform-aws-rke2-live-example/issues/107)) ([f2f4d65](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f2f4d657d43a454bd121576872ec4709962d5f14))
* ip out ([bb24878](https://github.com/rancher/terraform-aws-rke2-live-example/commit/bb24878720050772878ab6453b296131db4369f8))
* isolating with single quotes ([03427bf](https://github.com/rancher/terraform-aws-rke2-live-example/commit/03427bfc0def17c2b6c36ef4a09666067cd47ec7))
* make future ssh command sensitive ([#15](https://github.com/rancher/terraform-aws-rke2-live-example/issues/15)) ([5522fca](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5522fca239d451a62cca8ca1e2f3daea999929e0))
* make reset commit idempotent ([7104776](https://github.com/rancher/terraform-aws-rke2-live-example/commit/71047768c1d81ef80e59446919f5e8b3cb12f358))
* make reset destroy properly ([ad864ea](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ad864ea6c9449df7bbf7b858838260c2b0cd23a1))
* make reset idempotent ([1237301](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1237301b5bc9bba7627295d0821d3566ff971da7))
* make setup idempotent ([#130](https://github.com/rancher/terraform-aws-rke2-live-example/issues/130)) ([96dae40](https://github.com/rancher/terraform-aws-rke2-live-example/commit/96dae4038f3bdbd29e153ba7b815cdff477c8760))
* make setup work ([#80](https://github.com/rancher/terraform-aws-rke2-live-example/issues/80)) ([cdbfb3e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cdbfb3e9cb4d41cf395a092a0a759761a52b5aa7))
* make sure agent is running and add token for dependabot ([#31](https://github.com/rancher/terraform-aws-rke2-live-example/issues/31)) ([40dfddb](https://github.com/rancher/terraform-aws-rke2-live-example/commit/40dfddbe0a29b80312e2ce28b8539552c4a874b0))
* make sure recipients uses full path ([618b24f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/618b24f2c73e86fb2beab214ba3f6c4e88f005b7))
* make sure remind is only when pr exists ([#36](https://github.com/rancher/terraform-aws-rke2-live-example/issues/36)) ([e2695e0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/e2695e040c4d82f748207580088ac988ae9f6017))
* make sure to base64 decode state and ssh keys ([240b069](https://github.com/rancher/terraform-aws-rke2-live-example/commit/240b069538ca9c1421888131c2f596f075faa5ff))
* manage ssh key in repo ([#35](https://github.com/rancher/terraform-aws-rke2-live-example/issues/35)) ([a78d9be](https://github.com/rancher/terraform-aws-rke2-live-example/commit/a78d9be78664464940ef5dc6b12c6604d8786b57))
* manually add encrypted files ([#5](https://github.com/rancher/terraform-aws-rke2-live-example/issues/5)) ([80cdb6d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/80cdb6dacf0e40ef33b8336d9069368843992e5d))
* move get runner ip to base level ([0535763](https://github.com/rancher/terraform-aws-rke2-live-example/commit/053576338e7c8b7866ca12054c3494d88b725ff8))
* move setup to workflowL ([#92](https://github.com/rancher/terraform-aws-rke2-live-example/issues/92)) ([87be7c8](https://github.com/rancher/terraform-aws-rke2-live-example/commit/87be7c8b0b4a44dedea44cf0f25e62badd03736c))
* no outputs in shell hook ([ff83b56](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ff83b5639eb6290c268972483f10aca987da0d88))
* no ssh key needed for reset ([c9f7a48](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c9f7a4843decd607bb91fd6311a687e76f3365ec))
* optional destroy ([680cbaa](https://github.com/rancher/terraform-aws-rke2-live-example/commit/680cbaa587215387f20ac4854157e47845bde425))
* output the proper info for image user and id ([#151](https://github.com/rancher/terraform-aws-rke2-live-example/issues/151)) ([16a9c3e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/16a9c3ee60cfee38520d0a1c8c2d6722a5dedc41))
* overwrite ([861a8d7](https://github.com/rancher/terraform-aws-rke2-live-example/commit/861a8d71fa1e93a0fbfa741a1ea676e1a8526b56))
* pass along ignores for plans on new deploys ([8de34a8](https://github.com/rancher/terraform-aws-rke2-live-example/commit/8de34a8e2d6cad5da480d0ae2f87feeae2b0b555))
* pass inputs more simply ([14519cb](https://github.com/rancher/terraform-aws-rke2-live-example/commit/14519cbbc911d03abbd2f7b2fc48960a19046212))
* pass workspace through env step ([55d1e09](https://github.com/rancher/terraform-aws-rke2-live-example/commit/55d1e090b9aa9caef6ec3e982bef07dab9ab8ba6))
* plan requires aws creds ([0240647](https://github.com/rancher/terraform-aws-rke2-live-example/commit/02406470bc43543281f277fe6dda970e0c7e8b05))
* plans default to running, apply defaults to skipping ([8f23fd0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/8f23fd009fa521577ba831c0a6fbe34465a172e5))
* pre-release ([7ba13a4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/7ba13a458b3ff75af34a2f3e715204294e357b53))
* quote tokens ([d4c406c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d4c406c4b325fadcfe4dce7fde78aab843c0e980))
* read the contents to output ([#10](https://github.com/rancher/terraform-aws-rke2-live-example/issues/10)) ([be04521](https://github.com/rancher/terraform-aws-rke2-live-example/commit/be04521712f7fddf47af6c8a37394a7252bcc725))
* Readd fix nix ([#6](https://github.com/rancher/terraform-aws-rke2-live-example/issues/6)) ([c7e729b](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c7e729b6af8a3a56738764fee1c14a953fd245a1))
* recursive remove ([d67fcec](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d67fcec37a1a529fea1b1871f2f112361c6287bf))
* redirect plan output to file ([#12](https://github.com/rancher/terraform-aws-rke2-live-example/issues/12)) ([761739c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/761739c55ff42e56bdfd0d35b7b0899360cdd6a2))
* remove all data processing ([de87116](https://github.com/rancher/terraform-aws-rke2-live-example/commit/de871162437d4c6a2cbd1d2006163869fb44bda8))
* remove bogus state ([296ff84](https://github.com/rancher/terraform-aws-rke2-live-example/commit/296ff84f4b43030fa489f99fad1b8391f5f4a3ad))
* remove bogus state ([c366449](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c366449fa3d6e1ed8518033dce1b988866060130))
* remove controller workflows ([#142](https://github.com/rancher/terraform-aws-rke2-live-example/issues/142)) ([2d5f631](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2d5f6318a79caaea50c4f6ff21aef059401863f3))
* remove environment ([#18](https://github.com/rancher/terraform-aws-rke2-live-example/issues/18)) ([5ee545e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5ee545ecb15beb26d3b6a0f86d5bbd6fd7592a1c))
* remove ignores and always continue on plan errors ([075b360](https://github.com/rancher/terraform-aws-rke2-live-example/commit/075b360d90f746010ccbcf02bd43ce37f790d91a))
* remove initial recipients ([effbee4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/effbee4a4ec8a3228498e54db737640c8e2877cb))
* remove initial state ([540f371](https://github.com/rancher/terraform-aws-rke2-live-example/commit/540f371193c720e731affc67db013e2cfb1013ab))
* remove initial state ([85cd6fd](https://github.com/rancher/terraform-aws-rke2-live-example/commit/85cd6fd7862e9aa1e52dc0e1be62d5085a889f28))
* remove initial state ([3594979](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3594979ece48259e9658601ebd2ba3080df54746))
* remove initial state ([ec86219](https://github.com/rancher/terraform-aws-rke2-live-example/commit/ec86219d817aca15ec64979b598e17e9ee22e771))
* remove my name ([f26bc26](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f26bc269b0ae72f45ae5d2ad7d2961b24ccd8817))
* remove output echo ([#8](https://github.com/rancher/terraform-aws-rke2-live-example/issues/8)) ([86cfca2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/86cfca2c6a44db276b95342150b1510db47ca1c0))
* remove scary tf cli args warnings ([71f24f8](https://github.com/rancher/terraform-aws-rke2-live-example/commit/71f24f80d13429604cb002dda3a46950cf0d1e71))
* rename some workflows and add warnings ([6b90ef6](https://github.com/rancher/terraform-aws-rke2-live-example/commit/6b90ef6cce09b3bd9bdbb666d5b9e9d4b117c641))
* replace ci ip with bogus ip to remove access ([4a5a458](https://github.com/rancher/terraform-aws-rke2-live-example/commit/4a5a458b5ac99ca3ac5c06f403b3674f4165237d))
* reset secret file list, add tfvars to list, encrypt tfvars in apply ([f2bf0f0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f2bf0f0044904c4a9c7c91ac8bc9282b7a959f39))
* sanitize output for gh ([fb404ad](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fb404ad0612a52c42bce6573611b8ae213ac33a7))
* save key as an encrypted file ([#88](https://github.com/rancher/terraform-aws-rke2-live-example/issues/88)) ([fae0ab5](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fae0ab516c86d76e65e124033d96cc043fa3965b))
* save state properly ([0782d48](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0782d48b83ac219b0b4cee9a7bb146d6655f2bdc))
* scripts expect file path ([cc97bd9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cc97bd97e3e17e120ff287c0471f804deacb1a1c))
* set gh_token ([465eda7](https://github.com/rancher/terraform-aws-rke2-live-example/commit/465eda7b8e540004b59b3e88eae6b1252f8823f1))
* set proper type ([fee564f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fee564f6ff46e09a61dbc246fcefe572e0ea7a0b))
* setup ([#1](https://github.com/rancher/terraform-aws-rke2-live-example/issues/1)) ([6e7f61c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/6e7f61c7cf04ca65df7b8dd4b12e1602cf6f3885))
* skip apply, force string eval on plans ([397609d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/397609dcd9a749d84ca92650aaf3c8952227adb1))
* skip manually in controllers ([30f5c65](https://github.com/rancher/terraform-aws-rke2-live-example/commit/30f5c65a4a61ac244fdda3b61421a17a4897a3ef))
* state file can be locally in the repo since the encryption is in place and working well ([3fd2d87](https://github.com/rancher/terraform-aws-rke2-live-example/commit/3fd2d871eb4f676da191d9ee74f49cd23a822f42))
* syntax ([2a30597](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2a30597bf9901966b0cbb50d320949e48f9f4c5e))
* taint post install ([2b71572](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2b715722639a29bf4ab4b902a08cd2cc179a3d9e))
* taint post install ([43fabfe](https://github.com/rancher/terraform-aws-rke2-live-example/commit/43fabfe63638b33a2ddde54a58c86fed02218649))
* target security group for tf runner in release and update ([#60](https://github.com/rancher/terraform-aws-rke2-live-example/issues/60)) ([5556ed7](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5556ed7fd465763149c28d31ced864911b3fbdc1))
* terraform not tf ([9ebe032](https://github.com/rancher/terraform-aws-rke2-live-example/commit/9ebe032019195695692c50a7f8eb043b6b91e68c))
* troubleshoot conditionals ([b5da4ea](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b5da4ea0cc0b8aee39560191cbcecca7b9596994))
* troubleshoot github provider ([#54](https://github.com/rancher/terraform-aws-rke2-live-example/issues/54)) ([5f483df](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5f483df41973c73a2ca282d4016a03d464911e8e))
* troubleshoot output format ([7b4dd0d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/7b4dd0df5738dd7ad037e7540dcd3915eefb4908))
* troubleshoot release ([1a726c4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1a726c46df4da675c81e8bceed4ceb3d6883510e))
* troubleshoot tfvars and conditionals ([1afcef8](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1afcef8d3bf50e79469e8ce5b7b6857370f0498d))
* try adding tokens to step ([9c6e407](https://github.com/rancher/terraform-aws-rke2-live-example/commit/9c6e4072ae9d26a01cd29b1376cea5b7c2f44e9d))
* try echo instead of redirect ([77c971e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/77c971e12f295851359cfc9c1fc3c11d7c531d83))
* try flipping one ([6f4b6d3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/6f4b6d341e6ae37353fcfc07a56bf6b7871968ef))
* try forcing output type ([2291ca3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2291ca3fc0dbab3e742f22afde36fbf63ac5cee3))
* try forcing output types ([412267d](https://github.com/rancher/terraform-aws-rke2-live-example/commit/412267d1aa42f43d01721a3b633bd38d30fe9a06))
* try implicit boolean values ([b82ecb0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b82ecb0be4587fe280fcdc64136db363b396d7a8))
* try sudo tee ([cc8f9df](https://github.com/rancher/terraform-aws-rke2-live-example/commit/cc8f9dfa22f557c9564b28778b863a0c17c7b18e))
* try to blackhole upstream cache ([00cf3e4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/00cf3e46260a0a53d2219badbfc8c28115cd99fe))
* try to cast output to json ([5f8d05a](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5f8d05a5486958d28407a5e6602c36d75faed624))
* try to sanitize outputs to json ([d318f29](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d318f29c573fc50afa32e9eb39816a19d5472fdb))
* try using a tmp file ([43128e9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/43128e946aa44b462c95062819daa4a9a00feb0f))
* typo ([f53aea2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f53aea2b61eac6a901eab97e838d530021d9e163))
* typo ([df6f0c3](https://github.com/rancher/terraform-aws-rke2-live-example/commit/df6f0c33d2085e9852635e050ecfccc99a322f76))
* typo ([926385f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/926385fc6eb9c59468f918eedaf82e2fee779280))
* update docs, update nix flake with proper shas for m1 macs ([f67b89e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/f67b89ea732cb4d9a33db371ea4cf1e6b06c63a9))
* update github provider version ([6d5ae4f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/6d5ae4fe2769e77fe3fa127de03b5c31548699e7))
* update mod and all workflows ([#52](https://github.com/rancher/terraform-aws-rke2-live-example/issues/52)) ([1dab454](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1dab45493f407fe7c90db245a7713cd27fb040ce))
* update mod to 0.1.9 ([#56](https://github.com/rancher/terraform-aws-rke2-live-example/issues/56)) ([6b4e873](https://github.com/rancher/terraform-aws-rke2-live-example/commit/6b4e87381ba4dea120115f288148586ddb73a9ae))
* update readme ([#131](https://github.com/rancher/terraform-aws-rke2-live-example/issues/131)) ([0f3fe74](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0f3fe74736a8e7f382302c75b64a066a861e9922))
* update rke2 mod version ([9f0ca0c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/9f0ca0c625ffa70b908f2677cf900f815dccece4))
* update setup ids to match repo and add branch protection ([#3](https://github.com/rancher/terraform-aws-rke2-live-example/issues/3)) ([477ad1c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/477ad1c1432b27bf227ba9514bce8f3790aa04a9))
* update updatecli config ([#27](https://github.com/rancher/terraform-aws-rke2-live-example/issues/27)) ([c189070](https://github.com/rancher/terraform-aws-rke2-live-example/commit/c189070671a5ffc1e3fe1f071ad853680523fa68))
* upgrade module ([#43](https://github.com/rancher/terraform-aws-rke2-live-example/issues/43)) ([5650b48](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5650b48c303f0e0271bf0471d1934b6fb182a90e))
* upgrade rke2 mod to get new install mod fix ([#41](https://github.com/rancher/terraform-aws-rke2-live-example/issues/41)) ([dd106f0](https://github.com/rancher/terraform-aws-rke2-live-example/commit/dd106f0d5450c42bb96125675ed24e0758adb95a))
* upgrade to new mod ([#67](https://github.com/rancher/terraform-aws-rke2-live-example/issues/67)) ([23762b7](https://github.com/rancher/terraform-aws-rke2-live-example/commit/23762b7f520adc19e384fdc662dd38018f9259bd))
* upgrade to rke2 1.7 ([#47](https://github.com/rancher/terraform-aws-rke2-live-example/issues/47)) ([d90bb3c](https://github.com/rancher/terraform-aws-rke2-live-example/commit/d90bb3c4d4af2bbf79eade047acdb26915952344))
* use an appropriate subnet for server, fix setup ([#149](https://github.com/rancher/terraform-aws-rke2-live-example/issues/149)) ([2fcc0b2](https://github.com/rancher/terraform-aws-rke2-live-example/commit/2fcc0b2220ebf1e157a740b06525c787980c7047))
* use default visibility ([4ef6567](https://github.com/rancher/terraform-aws-rke2-live-example/commit/4ef656715869eff17ee758712c774e795f730888))
* use destroy command ([#38](https://github.com/rancher/terraform-aws-rke2-live-example/issues/38)) ([e2d587f](https://github.com/rancher/terraform-aws-rke2-live-example/commit/e2d587f4bcd36f02b08e03ffd4eed541656808ae))
* use different aws auth based on secrets config ([#110](https://github.com/rancher/terraform-aws-rke2-live-example/issues/110)) ([1ecc030](https://github.com/rancher/terraform-aws-rke2-live-example/commit/1ecc0309aa647a40fa20b6f6012eb1a40f064a08))
* use github output ([#11](https://github.com/rancher/terraform-aws-rke2-live-example/issues/11)) ([0d522b4](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0d522b499a9341b3c79b8cdf6e78955d8bdef55f))
* use new version and add fake key ([4181a47](https://github.com/rancher/terraform-aws-rke2-live-example/commit/4181a47511136177815ee59bcba4aca24953f29d))
* use next ip because last is reserved ([#153](https://github.com/rancher/terraform-aws-rke2-live-example/issues/153)) ([7477e9e](https://github.com/rancher/terraform-aws-rke2-live-example/commit/7477e9eab863bb9c30474c7843405378bafe30e6))
* use PAT as admin token ([fe5bd29](https://github.com/rancher/terraform-aws-rke2-live-example/commit/fe5bd29c6968866a21167f38ed88fbaa52833202))
* use proper content ([b02f123](https://github.com/rancher/terraform-aws-rke2-live-example/commit/b02f1232bc509beebebcf337f4ac512cbcb5d033))
* use proper key ([11e8dd6](https://github.com/rancher/terraform-aws-rke2-live-example/commit/11e8dd66132480dadebc1f651088ab25a29e34dc))
* use proper location ([0fe6a74](https://github.com/rancher/terraform-aws-rke2-live-example/commit/0fe6a74d7146347d966d47462775fb74c16a5f3d))
* use sudo ([bdf5fcb](https://github.com/rancher/terraform-aws-rke2-live-example/commit/bdf5fcb303ba4fc8992066be20e67fd1889daa9e))
* use sudo and proper kubeconfig ([eb67cc9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/eb67cc9872bbb434d5ec855d93741f0b50b67a05))
* use value from outputs, try quoting json ([5de2561](https://github.com/rancher/terraform-aws-rke2-live-example/commit/5de256140d0064e49aea9fb58d1008eaf082137c))
* values are not env variable keys ([#105](https://github.com/rancher/terraform-aws-rke2-live-example/issues/105)) ([44170a9](https://github.com/rancher/terraform-aws-rke2-live-example/commit/44170a98f5d1b36e39e6667a2fe7b80a15051008))
* visibility should be public ([#4](https://github.com/rancher/terraform-aws-rke2-live-example/issues/4)) ([971c374](https://github.com/rancher/terraform-aws-rke2-live-example/commit/971c374293c31cd226cfc93f2ee1a2ee43f04f0b))


### Code Refactoring

* reorganizing around lifecycles ([#128](https://github.com/rancher/terraform-aws-rke2-live-example/issues/128)) ([e7a1939](https://github.com/rancher/terraform-aws-rke2-live-example/commit/e7a1939283835e58f1eb009c1d828d2100b2abbc))
