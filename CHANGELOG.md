# Changelog

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
