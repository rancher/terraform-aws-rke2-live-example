# Changelog

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
