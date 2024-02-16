# Changelog

## [1.0.15](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.14...v1.0.15) (2024-02-16)


### Bug Fixes

* output the proper info for image user and id ([#151](https://github.com/matttrach/live-infra-aws-rke2/issues/151)) ([16a9c3e](https://github.com/matttrach/live-infra-aws-rke2/commit/16a9c3ee60cfee38520d0a1c8c2d6722a5dedc41))

## [1.0.14](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.13...v1.0.14) (2024-02-16)


### Bug Fixes

* use an appropriate subnet for server, fix setup ([#149](https://github.com/matttrach/live-infra-aws-rke2/issues/149)) ([2fcc0b2](https://github.com/matttrach/live-infra-aws-rke2/commit/2fcc0b2220ebf1e157a740b06525c787980c7047))

## [1.0.13](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.12...v1.0.13) (2024-02-15)


### Bug Fixes

* ami should depend on shutting down the prototype ([#147](https://github.com/matttrach/live-infra-aws-rke2/issues/147)) ([bf38823](https://github.com/matttrach/live-infra-aws-rke2/commit/bf38823d592089285fb105c2e4cb9a018c74261e))

## [1.0.12](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.11...v1.0.12) (2024-02-15)


### Bug Fixes

* add prototype key to phase 3 and clean up variables ([#145](https://github.com/matttrach/live-infra-aws-rke2/issues/145)) ([9258f1e](https://github.com/matttrach/live-infra-aws-rke2/commit/9258f1e5063a005cd3cd3fcbc9a45a975964a0f3))
* bump actions/cache from 3 to 4 ([#118](https://github.com/matttrach/live-infra-aws-rke2/issues/118)) ([bfc99ee](https://github.com/matttrach/live-infra-aws-rke2/commit/bfc99eec8d43f59d2143841471cdc77ddc618e06))
* rename some workflows and add warnings ([6b90ef6](https://github.com/matttrach/live-infra-aws-rke2/commit/6b90ef6cce09b3bd9bdbb666d5b9e9d4b117c641))

## [1.0.11](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.10...v1.0.11) (2024-02-15)


### Bug Fixes

* troubleshoot output format ([7b4dd0d](https://github.com/matttrach/live-infra-aws-rke2/commit/7b4dd0df5738dd7ad037e7540dcd3915eefb4908))

## [1.0.10](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.9...v1.0.10) (2024-02-15)


### Bug Fixes

* default output to empty ([596da7d](https://github.com/matttrach/live-infra-aws-rke2/commit/596da7dc6a75d135a96c22c2c4a2011444e8e2c8))
* dont cast output ([3a764c3](https://github.com/matttrach/live-infra-aws-rke2/commit/3a764c30e3a30b22aa65a85015853b0bb7e6ea6b))
* force output to json ([f61e5c4](https://github.com/matttrach/live-infra-aws-rke2/commit/f61e5c4147a1adfd48c6184a618d77bd3e2d5c97))
* remove controller workflows ([#142](https://github.com/matttrach/live-infra-aws-rke2/issues/142)) ([2d5f631](https://github.com/matttrach/live-infra-aws-rke2/commit/2d5f6318a79caaea50c4f6ff21aef059401863f3))

## [1.0.9](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.8...v1.0.9) (2024-02-15)


### Bug Fixes

* get runner id in same job ([a443d44](https://github.com/matttrach/live-infra-aws-rke2/commit/a443d4453aba7ee11d7b2b8743be6120a57c6f92))
* terraform not tf ([9ebe032](https://github.com/matttrach/live-infra-aws-rke2/commit/9ebe032019195695692c50a7f8eb043b6b91e68c))

## [1.0.8](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.7...v1.0.8) (2024-02-15)


### Bug Fixes

* actionlint ([ef4ffb9](https://github.com/matttrach/live-infra-aws-rke2/commit/ef4ffb94a94226e7c34021b26d1e06991cb98121))
* sanitize output for gh ([fb404ad](https://github.com/matttrach/live-infra-aws-rke2/commit/fb404ad0612a52c42bce6573611b8ae213ac33a7))

## [1.0.7](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.6...v1.0.7) (2024-02-15)


### Bug Fixes

* use value from outputs, try quoting json ([5de2561](https://github.com/matttrach/live-infra-aws-rke2/commit/5de256140d0064e49aea9fb58d1008eaf082137c))

## [1.0.6](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.5...v1.0.6) (2024-02-15)


### Bug Fixes

* set proper type ([fee564f](https://github.com/matttrach/live-infra-aws-rke2/commit/fee564f6ff46e09a61dbc246fcefe572e0ea7a0b))
* try to cast output to json ([5f8d05a](https://github.com/matttrach/live-infra-aws-rke2/commit/5f8d05a5486958d28407a5e6602c36d75faed624))

## [1.0.5](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.4...v1.0.5) (2024-02-15)


### Bug Fixes

* force explicit compare ([b0a3f6d](https://github.com/matttrach/live-infra-aws-rke2/commit/b0a3f6df5ffc726cf36460cc9e7afc69d6776eba))
* force output to strings and print ([d409376](https://github.com/matttrach/live-infra-aws-rke2/commit/d409376d616c8d24ab3deaa829f223072d5cce6d))
* plans default to running, apply defaults to skipping ([8f23fd0](https://github.com/matttrach/live-infra-aws-rke2/commit/8f23fd009fa521577ba831c0a6fbe34465a172e5))
* remove ignores and always continue on plan errors ([075b360](https://github.com/matttrach/live-infra-aws-rke2/commit/075b360d90f746010ccbcf02bd43ce37f790d91a))
* try flipping one ([6f4b6d3](https://github.com/matttrach/live-infra-aws-rke2/commit/6f4b6d341e6ae37353fcfc07a56bf6b7871968ef))
* try forcing output type ([2291ca3](https://github.com/matttrach/live-infra-aws-rke2/commit/2291ca3fc0dbab3e742f22afde36fbf63ac5cee3))
* try forcing output types ([412267d](https://github.com/matttrach/live-infra-aws-rke2/commit/412267d1aa42f43d01721a3b633bd38d30fe9a06))
* try to sanitize outputs to json ([d318f29](https://github.com/matttrach/live-infra-aws-rke2/commit/d318f29c573fc50afa32e9eb39816a19d5472fdb))
* typo ([f53aea2](https://github.com/matttrach/live-infra-aws-rke2/commit/f53aea2b61eac6a901eab97e838d530021d9e163))

## [1.0.4](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.3...v1.0.4) (2024-02-15)


### Bug Fixes

* skip apply, force string eval on plans ([397609d](https://github.com/matttrach/live-infra-aws-rke2/commit/397609dcd9a749d84ca92650aaf3c8952227adb1))
* skip manually in controllers ([30f5c65](https://github.com/matttrach/live-infra-aws-rke2/commit/30f5c65a4a61ac244fdda3b61421a17a4897a3ef))
* troubleshoot conditionals ([b5da4ea](https://github.com/matttrach/live-infra-aws-rke2/commit/b5da4ea0cc0b8aee39560191cbcecca7b9596994))

## [1.0.3](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.2...v1.0.3) (2024-02-15)


### Bug Fixes

* troubleshoot tfvars and conditionals ([1afcef8](https://github.com/matttrach/live-infra-aws-rke2/commit/1afcef8d3bf50e79469e8ce5b7b6857370f0498d))
* try implicit boolean values ([b82ecb0](https://github.com/matttrach/live-infra-aws-rke2/commit/b82ecb0be4587fe280fcdc64136db363b396d7a8))

## [1.0.2](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.1...v1.0.2) (2024-02-15)


### Bug Fixes

* move get runner ip to base level ([0535763](https://github.com/matttrach/live-infra-aws-rke2/commit/053576338e7c8b7866ca12054c3494d88b725ff8))

## [1.0.1](https://github.com/matttrach/live-infra-aws-rke2/compare/v1.0.0...v1.0.1) (2024-02-15)


### Bug Fixes

* fix output ([dacd6bd](https://github.com/matttrach/live-infra-aws-rke2/commit/dacd6bdb1903f95009c786c563fe75ca54c244c2))
* troubleshoot release ([1a726c4](https://github.com/matttrach/live-infra-aws-rke2/commit/1a726c46df4da675c81e8bceed4ceb3d6883510e))

## [1.0.0](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.7...v1.0.0) (2024-02-15)


### ⚠ BREAKING CHANGES

* reorganizing around lifecycles ([#128](https://github.com/matttrach/live-infra-aws-rke2/issues/128))

### Bug Fixes

* add nix to setup ([00d0935](https://github.com/matttrach/live-infra-aws-rke2/commit/00d0935c633fa46d453f389afdc91ae16c0c911f))
* decrypt in setup ([464ccd2](https://github.com/matttrach/live-infra-aws-rke2/commit/464ccd20d724881760724c51e9962afbfae5d039))
* explicitly pass workspace ([c11ad53](https://github.com/matttrach/live-infra-aws-rke2/commit/c11ad53566e7033992f09a3153d98e924286da71))
* fix directory names in types ([207b33f](https://github.com/matttrach/live-infra-aws-rke2/commit/207b33fbe4f2406d566a46ae7585b7495cdab53f))
* generate encrypted files ([482f264](https://github.com/matttrach/live-infra-aws-rke2/commit/482f264788c7719b2d3a1cf507186e37bcf8078f))
* handle missing encrypted files ([#129](https://github.com/matttrach/live-infra-aws-rke2/issues/129)) ([8fccb28](https://github.com/matttrach/live-infra-aws-rke2/commit/8fccb286b855f00451334f00545bb5b642b956a7))
* ip out ([bb24878](https://github.com/matttrach/live-infra-aws-rke2/commit/bb24878720050772878ab6453b296131db4369f8))
* make setup idempotent ([#130](https://github.com/matttrach/live-infra-aws-rke2/issues/130)) ([96dae40](https://github.com/matttrach/live-infra-aws-rke2/commit/96dae4038f3bdbd29e153ba7b815cdff477c8760))
* pass along ignores for plans on new deploys ([8de34a8](https://github.com/matttrach/live-infra-aws-rke2/commit/8de34a8e2d6cad5da480d0ae2f87feeae2b0b555))
* pass inputs more simply ([14519cb](https://github.com/matttrach/live-infra-aws-rke2/commit/14519cbbc911d03abbd2f7b2fc48960a19046212))
* pass workspace through env step ([55d1e09](https://github.com/matttrach/live-infra-aws-rke2/commit/55d1e090b9aa9caef6ec3e982bef07dab9ab8ba6))
* update readme ([#131](https://github.com/matttrach/live-infra-aws-rke2/issues/131)) ([0f3fe74](https://github.com/matttrach/live-infra-aws-rke2/commit/0f3fe74736a8e7f382302c75b64a066a861e9922))
* use proper key ([11e8dd6](https://github.com/matttrach/live-infra-aws-rke2/commit/11e8dd66132480dadebc1f651088ab25a29e34dc))
* use proper location ([0fe6a74](https://github.com/matttrach/live-infra-aws-rke2/commit/0fe6a74d7146347d966d47462775fb74c16a5f3d))


### Code Refactoring

* reorganizing around lifecycles ([#128](https://github.com/matttrach/live-infra-aws-rke2/issues/128)) ([e7a1939](https://github.com/matttrach/live-infra-aws-rke2/commit/e7a1939283835e58f1eb009c1d828d2100b2abbc))

## [0.2.7](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.6...v0.2.7) (2024-01-17)


### Bug Fixes

* add info about tools in warnings ([c729986](https://github.com/matttrach/live-infra-aws-rke2/commit/c7299865025f4d9d2d2f4eeeae0523c39de18f04))

## [0.2.6](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.5...v0.2.6) (2024-01-17)


### Bug Fixes

* add awscli locally to make authentication easier ([d14a982](https://github.com/matttrach/live-infra-aws-rke2/commit/d14a982fdb2c47dbc5905da587e5c4134580b506))
* remove scary tf cli args warnings ([71f24f8](https://github.com/matttrach/live-infra-aws-rke2/commit/71f24f80d13429604cb002dda3a46950cf0d1e71))

## [0.2.5](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.4...v0.2.5) (2024-01-17)


### Bug Fixes

* state file can be locally in the repo since the encryption is in place and working well ([3fd2d87](https://github.com/matttrach/live-infra-aws-rke2/commit/3fd2d871eb4f676da191d9ee74f49cd23a822f42))

## [0.2.4](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.3...v0.2.4) (2024-01-17)


### Bug Fixes

* add access to allow user to login remotely ([#112](https://github.com/matttrach/live-infra-aws-rke2/issues/112)) ([cb94161](https://github.com/matttrach/live-infra-aws-rke2/commit/cb941617a37d71feb1d03fbd5817350a46e44b09))
* Add my access ([#113](https://github.com/matttrach/live-infra-aws-rke2/issues/113)) ([f61d894](https://github.com/matttrach/live-infra-aws-rke2/commit/f61d894939908436df6813e484b9c6ec0c190de7))
* use different aws auth based on secrets config ([#110](https://github.com/matttrach/live-infra-aws-rke2/issues/110)) ([1ecc030](https://github.com/matttrach/live-infra-aws-rke2/commit/1ecc0309aa647a40fa20b6f6012eb1a40f064a08))

## [0.2.3](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.2...v0.2.3) (2024-01-16)


### Bug Fixes

* extrap personal vars and add secret file list ([#108](https://github.com/matttrach/live-infra-aws-rke2/issues/108)) ([3c88b30](https://github.com/matttrach/live-infra-aws-rke2/commit/3c88b30edcf6caf6ab10fb52863da172dccb2a0b))
* Introduce updatecli to repo and validate basic functionality ([#107](https://github.com/matttrach/live-infra-aws-rke2/issues/107)) ([f2f4d65](https://github.com/matttrach/live-infra-aws-rke2/commit/f2f4d657d43a454bd121576872ec4709962d5f14))

## [0.2.2](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.1...v0.2.2) (2024-01-16)


### Bug Fixes

* add the tmp state file location to state list action ([#106](https://github.com/matttrach/live-infra-aws-rke2/issues/106)) ([8b7c38f](https://github.com/matttrach/live-infra-aws-rke2/commit/8b7c38fd5cb87230dac80d119c9b315de2707e47))
* don't remove admin key ([a1bb150](https://github.com/matttrach/live-infra-aws-rke2/commit/a1bb1503bcf76209147b542374dd1e26ac3d63cf))
* fail early without admin key ([bd9c823](https://github.com/matttrach/live-infra-aws-rke2/commit/bd9c823efc9c1494ffbc1958f71ce81c53f1f4df))
* values are not env variable keys ([#105](https://github.com/matttrach/live-infra-aws-rke2/issues/105)) ([44170a9](https://github.com/matttrach/live-infra-aws-rke2/commit/44170a98f5d1b36e39e6667a2fe7b80a15051008))

## [0.2.1](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.2.0...v0.2.1) (2024-01-12)


### Bug Fixes

* always do the targeted applies ([344d655](https://github.com/matttrach/live-infra-aws-rke2/commit/344d655830fa7d33373dfdf6e89f026ff20366ee))
* apply in plan ([840190a](https://github.com/matttrach/live-infra-aws-rke2/commit/840190a628070e1dbf14ca8dfd10f8c196c9ecdd))
* save state properly ([0782d48](https://github.com/matttrach/live-infra-aws-rke2/commit/0782d48b83ac219b0b4cee9a7bb146d6655f2bdc))

## [0.2.0](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.40...v0.2.0) (2024-01-12)


### Features

* add ci rotate job, manage state better, add aws role to secrets ([347d132](https://github.com/matttrach/live-infra-aws-rke2/commit/347d132460cd94c187a79f16ac42116153573bf4))


### Bug Fixes

* replace ci ip with bogus ip to remove access ([4a5a458](https://github.com/matttrach/live-infra-aws-rke2/commit/4a5a458b5ac99ca3ac5c06f403b3674f4165237d))

## [0.1.40](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.39...v0.1.40) (2024-01-12)


### Bug Fixes

* taint post install ([2b71572](https://github.com/matttrach/live-infra-aws-rke2/commit/2b715722639a29bf4ab4b902a08cd2cc179a3d9e))

## [0.1.39](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.38...v0.1.39) (2024-01-12)


### Bug Fixes

* recursive remove ([d67fcec](https://github.com/matttrach/live-infra-aws-rke2/commit/d67fcec37a1a529fea1b1871f2f112361c6287bf))

## [0.1.38](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.37...v0.1.38) (2024-01-12)


### Bug Fixes

* taint post install ([43fabfe](https://github.com/matttrach/live-infra-aws-rke2/commit/43fabfe63638b33a2ddde54a58c86fed02218649))

## [0.1.37](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.36...v0.1.37) (2024-01-12)


### Bug Fixes

* don't install authkeys and make idempotent ([8cd26b0](https://github.com/matttrach/live-infra-aws-rke2/commit/8cd26b0a37069af9eab01d80be4da764a01f1d5a))

## [0.1.36](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.35...v0.1.36) (2024-01-12)


### Bug Fixes

* overwrite ([861a8d7](https://github.com/matttrach/live-infra-aws-rke2/commit/861a8d71fa1e93a0fbfa741a1ea676e1a8526b56))
* try sudo tee ([cc8f9df](https://github.com/matttrach/live-infra-aws-rke2/commit/cc8f9dfa22f557c9564b28778b863a0c17c7b18e))

## [0.1.35](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.34...v0.1.35) (2024-01-12)


### Bug Fixes

* use sudo and proper kubeconfig ([eb67cc9](https://github.com/matttrach/live-infra-aws-rke2/commit/eb67cc9872bbb434d5ec855d93741f0b50b67a05))

## [0.1.34](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.33...v0.1.34) (2024-01-12)


### Bug Fixes

* add aws to pre-release test ([66af7e4](https://github.com/matttrach/live-infra-aws-rke2/commit/66af7e4884f2c2547adbd41a5cd84e4d456a550a))
* add my email and fix kubectl path ([#94](https://github.com/matttrach/live-infra-aws-rke2/issues/94)) ([60072bd](https://github.com/matttrach/live-infra-aws-rke2/commit/60072bda8ac1a7a63a91889e94a1cf2365810728))
* add plan to pre-release test ([c5c5bfd](https://github.com/matttrach/live-infra-aws-rke2/commit/c5c5bfd7730fadbbdd59cfb8b76b508df3c7d7c5))
* pre-release ([7ba13a4](https://github.com/matttrach/live-infra-aws-rke2/commit/7ba13a458b3ff75af34a2f3e715204294e357b53))

## [0.1.33](https://github.com/matttrach/live-infra-aws-rke2/compare/v0.1.32...v0.1.33) (2024-01-12)


### Bug Fixes

* add a proper initial tf state ([7fbbc75](https://github.com/matttrach/live-infra-aws-rke2/commit/7fbbc75331628dfd5cf1ca698cdccf153a7368c5))
* add my public key to recipients ([3a2e142](https://github.com/matttrach/live-infra-aws-rke2/commit/3a2e142cfad34c91193591ce67a8841db80a2f8f))
* remove bogus state ([296ff84](https://github.com/matttrach/live-infra-aws-rke2/commit/296ff84f4b43030fa489f99fad1b8391f5f4a3ad))
