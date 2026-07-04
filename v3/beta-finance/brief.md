# Agentic Audit Brief: Beta Finance

## Project Overview

- Project: Beta Finance (`beta-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.643Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: avalanche, bsc, ethereum
- Contract surface: 170 unique implementations (170 raw deployments)
- DeFi Llama TVL: $537,517.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 165 project-authored contract(s) across 3 chain(s); 34 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 52 common project-authored base contract(s) (erc165, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 170; live-surface contracts included: 170 (170 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/170 (4.7%)
- Deployed-live implementations: 170 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/170
- Verified + Unaudited implementations: 162
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 170
- Raw deployments: 170
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.7% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 7 | 4.1% | 2021-08 |
| Trail of Bits | Tier 1 | 7 | 4.1% | 2021-08 |
| PeckShield | Tier 2 | 6 | 3.5% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BetaBank | unknown | ethereum | n/a | [`0x42e1f3...f76d32`](./contracts/ethereum-1/0x42e1f3f490a6000f6f74f224151e38b371f76d32/) | ✅ Audited |
| BetaConfig | unknown | ethereum | n/a | [`0x59334e...f6b9c5`](./contracts/ethereum-1/0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5/) | ✅ Audited |
| BetaInterestModelV1 | unknown | ethereum | n/a | [`0x0e2021...8f8eb1`](./contracts/ethereum-1/0x0e20216a7b7bff9b60a4cc58a857ce85988f8eb1/) | ✅ Audited |
| BetaRunnerLending | unknown | ethereum | n/a | [`0x068af1...19005f`](./contracts/ethereum-1/0x068af1ec336344cd122b9811ef90d2384519005f/) | ✅ Audited |
| BetaToken | unknown | ethereum | n/a | [`0xbe1a00...c09d28`](./contracts/ethereum-1/0xbe1a001fe942f96eea22ba08783140b9dcc09d28/) | ✅ Audited |
| BToken | unknown | ethereum | n/a | [`0x01aa46...3f3a11`](./contracts/ethereum-1/0x01aa4629b756b1222cb5541da0255b4f473f3a11/) | ✅ Audited |
| BTokenDeployer | unknown | avalanche | n/a | [`0x24d8d4...6e7af5`](./contracts/avalanche-43114/0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5/) | ✅ Audited |
| WETHGateway | unknown | avalanche | n/a | [`0x02d516...240057`](./contracts/avalanche-43114/0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057/) | ✅ Audited |

### ⚠️ Verified + Unaudited (162)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABDKMath64x64 | unknown | ethereum | n/a | [`0x21a8d1...be0f32`](./contracts/ethereum-1/0x21a8d15322c257abd2b22a56edde758398be0f32/) | ⚠️ Unaudited |
| AddressQueueStorage | unknown | ethereum | n/a | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | ethereum | n/a | [`0x025c6d...205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | ⚠️ Unaudited |
| AlphaToken | unknown | ethereum | n/a | [`0xa1faa1...b40975`](./contracts/ethereum-1/0xa1faa113cbe53436df28ff0aee54275c13b40975/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | avalanche | n/a | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | avalanche | n/a | [`0xce1bff...2f7814`](./contracts/avalanche-43114/0xce1bffbd5374dac86a2893119683f4911a2f7814/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | ethereum | n/a | [`0x511d35...d89212`](./contracts/ethereum-1/0x511d35c52a3c244e7b8bd92c0c297755fbd89212/) | ⚠️ Unaudited |
| Astgik | unknown | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | ethereum | n/a | [`0x8e734e...6dae11`](./contracts/ethereum-1/0x8e734e30270292993dbe71c421ad2b128b6dae11/) | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| BancorBuyer | unknown | ethereum | n/a | [`0x77a77e...34d924`](./contracts/ethereum-1/0x77a77eca75445841875ebb67a33d0a97dc34d924/) | ⚠️ Unaudited |
| BancorChanger | unknown | ethereum | n/a | [`0xb72a0f...270468`](./contracts/ethereum-1/0xb72a0fa1e537c956dfca72711c468efd81270468/) | ⚠️ Unaudited |
| BancorConverter | unknown | ethereum | n/a | [`0x40a36b...252e16`](./contracts/ethereum-1/0x40a36b6d7f956f80d07e401a5f620c3a4f252e16/) | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | ethereum | n/a | [`0xf46002...9012f7`](./contracts/ethereum-1/0xf46002c37af6fb078ae1833fd447698a0c9012f7/) | ⚠️ Unaudited |
| BancorConverterFactory | unknown | ethereum | n/a | [`0x0a8079...f9b236`](./contracts/ethereum-1/0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236/) | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | ethereum | n/a | [`0xaebf10...7c3d5c`](./contracts/ethereum-1/0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c/) | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | [`0x4eeb95...c30cc5`](./contracts/ethereum-1/0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5/) | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | ethereum | n/a | [`0x8b0c11...3af6f2`](./contracts/ethereum-1/0x8b0c11e0df925387de1ce92504fe0e4af23af6f2/) | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | ethereum | n/a | [`0x7fd539...4daa6e`](./contracts/ethereum-1/0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e/) | ⚠️ Unaudited |
| BancorNetwork | unknown | ethereum | n/a | [`0x568e7c...3e5e07`](./contracts/ethereum-1/0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07/) | ⚠️ Unaudited |
| BancorPriceFloor | unknown | ethereum | n/a | [`0x7ec6a7...268549`](./contracts/ethereum-1/0x7ec6a713197fcbb4cfe7213800470b0940268549/) | ⚠️ Unaudited |
| BancorQuickConverter | unknown | ethereum | n/a | [`0xcf1cc6...49139b`](./contracts/ethereum-1/0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b/) | ⚠️ Unaudited |
| BandToken | unknown | ethereum | n/a | [`0xba11d0...6d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | ethereum | n/a | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0x0d3303...9b619f`](./contracts/ethereum-1/0x0d3303ffaf107cd732396570bf07b2dbd79b619f/) | ⚠️ Unaudited |
| BlurAirdrop | unknown | ethereum | n/a | [`0xee90e5...9833e1`](./contracts/ethereum-1/0xee90e5a180ff1be8894ff178bc75459da89833e1/) | ⚠️ Unaudited |
| BlurGovernor | unknown | ethereum | n/a | [`0xf7967b...845810`](./contracts/ethereum-1/0xf7967b43949fb0cec48e63e345512d5ea5845810/) | ⚠️ Unaudited |
| BlurToken | unknown | ethereum | n/a | [`0x5283d2...208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | ⚠️ Unaudited |
| BSCBridge | unknown | ethereum | n/a | [`0x6e4ae3...464ed6`](./contracts/ethereum-1/0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6/) | ⚠️ Unaudited |
| BSCWallet | unknown | ethereum | n/a | [`0x70266e...cf18ea`](./contracts/ethereum-1/0x70266e9b23dadead1210ff58b6723a6ca0cf18ea/) | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | ethereum | n/a | [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/) | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | ethereum | n/a | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | ethereum | n/a | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | ⚠️ Unaudited |
| CCTokenDelegate | unknown | ethereum | n/a | [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x011a01...230afa`](./contracts/ethereum-1/0x011a014d5e8eb4771e575bb1000318d509230afa/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x0e821d...11c2cb`](./contracts/ethereum-1/0x0e821d855f4fc427200484ae42369b8a6611c2cb/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0xd06527...2860ee`](./contracts/ethereum-1/0xd06527d5e56a3495252a528c4987003b712860ee/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | ⚠️ Unaudited |
| ContractFeatures | unknown | ethereum | n/a | [`0x563172...6ce699`](./contracts/ethereum-1/0x563172281800b139f69fb038cc2c08cad56ce699/) | ⚠️ Unaudited |
| ContractRegistry | unknown | ethereum | n/a | [`0x7148b1...e395e6`](./contracts/ethereum-1/0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | ⚠️ Unaudited |
| CreamLiquidate | unknown | ethereum | n/a | [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/) | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | ⚠️ Unaudited |
| CreamVotingPower | unknown | ethereum | n/a | [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/) | ⚠️ Unaudited |
| CrowdsaleController | unknown | ethereum | n/a | [`0xbbc797...f89710`](./contracts/ethereum-1/0xbbc79794599b19274850492394004087cbf89710/) | ⚠️ Unaudited |
| CSLPDelegate | unknown | ethereum | n/a | [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/) | ⚠️ Unaudited |
| CTokenAdmin | unknown | ethereum | n/a | [`0xa67b44...2a038d`](./contracts/ethereum-1/0xa67b44e37200e92e6da6249d8ae6d48f832a038d/) | ⚠️ Unaudited |
| CurrencyManager | unknown | ethereum | n/a | [`0xc881ad...b93d25`](./contracts/ethereum-1/0xc881addf409ee2c4b6bbc8b607c2c5cafab93d25/) | ⚠️ Unaudited |
| CurrencyManagerOwner | unknown | ethereum | n/a | [`0xb624e4...a84bd2`](./contracts/ethereum-1/0xb624e4148ef395458d361547c9fdb59b62a84bd2/) | ⚠️ Unaudited |
| EasyConverter | unknown | ethereum | n/a | [`0x50697a...224790`](./contracts/ethereum-1/0x50697a3a8698e36549db3e1e46ef136149224790/) | ⚠️ Unaudited |
| ENSToken | unknown | ethereum | n/a | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ⚠️ Unaudited |
| ePHTR | unknown | ethereum | n/a | [`0x3b9805...b799f5`](./contracts/ethereum-1/0x3b9805e163b3750e7f13a26b06f030f2d3b799f5/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | avalanche | n/a | [`0xe0560d...835705`](./contracts/avalanche-43114/0xe0560dfce5e73ccea36f0df586e5a07e07835705/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | avalanche | n/a | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | ethereum | n/a | [`0x154547...f96f11`](./contracts/ethereum-1/0x1545473701f011a5c977e48ac43e1404cdf96f11/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | avalanche | n/a | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ⚠️ Unaudited |
| EtherToken | unknown | ethereum | n/a | [`0xc08294...2ce315`](./contracts/ethereum-1/0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | ethereum | n/a | [`0xb22c1c...e6ad16`](./contracts/ethereum-1/0xb22c1c159d12461ea124b0deb4b5b93020e6ad16/) | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | ethereum | n/a | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | ⚠️ Unaudited |
| ExecutionManager | unknown | ethereum | n/a | [`0x9cc58b...5d62b2`](./contracts/ethereum-1/0x9cc58bf22a173c0fa8791c13df396d18185d62b2/) | ⚠️ Unaudited |
| ExtraReward | unknown | ethereum | n/a | [`0x4b8674...697392`](./contracts/ethereum-1/0x4b86747e4d5d664d5bc40bf317e66e1898697392/) | ⚠️ Unaudited |
| FactoryPortal | unknown | avalanche | n/a | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | ⚠️ Unaudited |
| FeeSharingSetter | unknown | ethereum | n/a | [`0x5924a2...81f3c1`](./contracts/ethereum-1/0x5924a28caaf1cc016617874a2f0c3710d881f3c1/) | ⚠️ Unaudited |
| FeeSharingSystem | unknown | ethereum | n/a | [`0xbcd725...cc12ce`](./contracts/ethereum-1/0xbcd7254a1d759efa08ec7c3291b2e85c5dcc12ce/) | ⚠️ Unaudited |
| FixedAmountVesting | unknown | ethereum | n/a | [`0x06cf01...ed31b7`](./contracts/ethereum-1/0x06cf019492f700f87d8d77bc5ec0ca7e76ed31b7/) | ⚠️ Unaudited |
| HODLCoin | unknown | ethereum | n/a | [`0xb45d7b...2b672c`](./contracts/ethereum-1/0xb45d7bc4cebcab98ad09babdf8c818b2292b672c/) | ⚠️ Unaudited |
| IBAgreement | unknown | ethereum | n/a | [`0x30f254...37f812`](./contracts/ethereum-1/0x30f254104a8a7b7779483eeef5560397a737f812/) | ⚠️ Unaudited |
| IBAgreementV2 | unknown | ethereum | n/a | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | ⚠️ Unaudited |
| IndexToken | unknown | ethereum | n/a | [`0x095490...464cab`](./contracts/ethereum-1/0x0954906da0bf32d5479e25f46056d22f08464cab/) | ⚠️ Unaudited |
| IRM | unknown | ethereum | n/a | [`0x1e8c0c...823128`](./contracts/ethereum-1/0x1e8c0ca03ca087160cb4bfd6f8904e50a4823128/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0xfecc2d...25736f`](./contracts/ethereum-1/0xfecc2d4689394202eabe6329acc1a0c6fe25736f/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x014872...d2e1a6`](./contracts/ethereum-1/0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6/) | ⚠️ Unaudited |
| LooksRareAirdrop | unknown | ethereum | n/a | [`0xa35dce...9b5970`](./contracts/ethereum-1/0xa35dce3e0e6ceb67a30b8d7f4aee721c949b5970/) | ⚠️ Unaudited |
| LooksRareExchange | unknown | ethereum | n/a | [`0x597285...17ce3a`](./contracts/ethereum-1/0x59728544b08ab483533076417fbbb2fd0b17ce3a/) | ⚠️ Unaudited |
| LooksRareToken | unknown | ethereum | n/a | [`0xf4d288...92421e`](./contracts/ethereum-1/0xf4d2888d29d722226fafa5d9b24f9164c092421e/) | ⚠️ Unaudited |
| ManagedIndex | unknown | ethereum | n/a | [`0x632806...cb8b48`](./contracts/ethereum-1/0x632806bf5c8f062932dd121244c9fbe7becb8b48/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| MultiPriceOracle | unknown | ethereum | n/a | [`0x4e064e...a50d3d`](./contracts/ethereum-1/0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d/) | ⚠️ Unaudited |
| MultiRewardsDistributor | unknown | ethereum | n/a | [`0x0554f0...638c72`](./contracts/ethereum-1/0x0554f068365ed43dcc98dcd7fd7a8208a5638c72/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x4f85a4...d12ed0`](./contracts/ethereum-1/0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | ethereum | n/a | [`0x005a4d...b19826`](./contracts/ethereum-1/0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826/) | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| OmniLens | unknown | ethereum | n/a | [`0x4f003a...aac507`](./contracts/ethereum-1/0x4f003a858644e085186dfbc991e872b8b4aac507/) | ⚠️ Unaudited |
| OmniOracle | unknown | ethereum | n/a | [`0x00dc65...5e15b3`](./contracts/ethereum-1/0x00dc65758993d8b2d89aef1f7163d7b10f5e15b3/) | ⚠️ Unaudited |
| OmniPool | unknown | ethereum | n/a | [`0x1150d3...47b07d`](./contracts/ethereum-1/0x1150d370c61cdd5d6f81c68783678382b447b07d/) | ⚠️ Unaudited |
| OmniToken | unknown | ethereum | n/a | [`0x0cc73d...3b11a0`](./contracts/ethereum-1/0x0cc73de3dfe19109a12ecf593b388d42193b11a0/) | ⚠️ Unaudited |
| OperatorControllerForRewards | unknown | ethereum | n/a | [`0xb6c40e...7ebe01`](./contracts/ethereum-1/0xb6c40eb22dbdc87fddf4b70d460934a44b7ebe01/) | ⚠️ Unaudited |
| OperatorControllerForRewardsV2 | unknown | ethereum | n/a | [`0x91cc8b...0f9ee3`](./contracts/ethereum-1/0x91cc8be3ddcb2d4cb27aab987e5b5675af0f9ee3/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x65d66c...a483a1`](./contracts/ethereum-1/0x65d66c76447ccb45daf1e8044e918fa786a483a1/) | ⚠️ Unaudited |
| OracleV1 | unknown | ethereum | n/a | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | ⚠️ Unaudited |
| OracleV2 | unknown | ethereum | n/a | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | ⚠️ Unaudited |
| OrderValidatorV1 | unknown | ethereum | n/a | [`0x69bab1...9fbcdd`](./contracts/ethereum-1/0x69bab1c0f26870751f79a9b73428235e8e9fbcdd/) | ⚠️ Unaudited |
| OrderValidatorV1B | unknown | ethereum | n/a | [`0xdc56de...eed395`](./contracts/ethereum-1/0xdc56de26c64b14f1a8e95582a16b6a9aefeed395/) | ⚠️ Unaudited |
| OwnedRegistrar | unknown | ethereum | n/a | [`0xa86ba3...db69cf`](./contracts/ethereum-1/0xa86ba3b6d83139a49b649c05dbb69e0726db69cf/) | ⚠️ Unaudited |
| OwnedResolver | unknown | ethereum | n/a | [`0x30200e...723b2b`](./contracts/ethereum-1/0x30200e0cb040f38e474e53ef437c95a1be723b2b/) | ⚠️ Unaudited |
| PHTR | unknown | ethereum | n/a | [`0xe1fc44...0622da`](./contracts/ethereum-1/0xe1fc4455f62a6e89476f1072530c20cf1a0622da/) | ⚠️ Unaudited |
| PHTRRouter | unknown | ethereum | n/a | [`0x571365...ceeb1c`](./contracts/ethereum-1/0x57136542bdc53aaf53bf519a6d28a6c8f7ceeb1c/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x01ae37...cab2b1`](./contracts/ethereum-1/0x01ae37a333d842428c668d6cc7130e552acab2b1/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1d8e38...61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/) | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | ethereum | n/a | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | ⚠️ Unaudited |
| PrivateSaleWithFeeSharing | unknown | ethereum | n/a | [`0x9571cd...dde65b`](./contracts/ethereum-1/0x9571cdd8acb71c83393290f0d63a46173ddde65b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x067341...2e5171`](./contracts/ethereum-1/0x0673418735981c0b54ecb483076f1de0372e5171/) | ⚠️ Unaudited |
| ProxyAdminContract | unknown | avalanche | n/a | [`0xe70f04...ac5a8f`](./contracts/avalanche-43114/0xe70f044633a81a636e134a9e0d7b4f5fbeac5a8f/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | ⚠️ Unaudited |
| Registrar | unknown | ethereum | n/a | [`0x328328...6bdf51`](./contracts/ethereum-1/0x328328ba09293a4002b4b7615cba2c816d6bdf51/) | ⚠️ Unaudited |
| RegistrarMigration | unknown | ethereum | n/a | [`0x6109dd...75c662`](./contracts/ethereum-1/0x6109dd117aa5486605fc85e040ab00163a75c662/) | ⚠️ Unaudited |
| ReserveManager | unknown | ethereum | n/a | [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/) | ⚠️ Unaudited |
| RocketTokenRPL | unknown | ethereum | n/a | [`0xd33526...21a51f`](./contracts/ethereum-1/0xd33526068d116ce69f19a9ee46f0bd304f21a51f/) | ⚠️ Unaudited |
| Root | unknown | ethereum | n/a | [`0x285088...e5284a`](./contracts/ethereum-1/0x285088c75a8508664ad77df63e2d60a408e5284a/) | ⚠️ Unaudited |
| RoyaltyFeeManager | unknown | ethereum | n/a | [`0x735818...ef4906`](./contracts/ethereum-1/0x7358182024c9f1b2e6b0153e60bf6156b7ef4906/) | ⚠️ Unaudited |
| RoyaltyFeeManagerV1B | unknown | ethereum | n/a | [`0x79a1c1...5d0c7a`](./contracts/ethereum-1/0x79a1c123b09f492591a61af642de12b4bb5d0c7a/) | ⚠️ Unaudited |
| RoyaltyFeeRegistry | unknown | ethereum | n/a | [`0x550104...8d8022`](./contracts/ethereum-1/0x55010472a93921a117aad9b055c141060c8d8022/) | ⚠️ Unaudited |
| RoyaltyFeeSetter | unknown | ethereum | n/a | [`0x664661...3c27a8`](./contracts/ethereum-1/0x66466107d9cae4da0176a699406419003f3c27a8/) | ⚠️ Unaudited |
| SetToken | unknown | ethereum | n/a | [`0x1494ca...ba3c2b`](./contracts/ethereum-1/0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b/) | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | ethereum | n/a | [`0x2d915c...97904c`](./contracts/ethereum-1/0x2d915c3e78767b123bf56ab2daa49f74bb97904c/) | ⚠️ Unaudited |
| ShortHelper | unknown | ethereum | n/a | [`0x3b4095...1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | ethereum | n/a | [`0x699c7f...919d17`](./contracts/ethereum-1/0x699c7f511c9e2182e89f29b3bfb68bd327919d17/) | ⚠️ Unaudited |
| ShortPowerPerp | unknown | ethereum | n/a | [`0xa653e2...863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ⚠️ Unaudited |
| SmartToken | unknown | ethereum | n/a | [`0x164a12...172153`](./contracts/ethereum-1/0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153/) | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | ethereum | n/a | [`0x9cf8dc...828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | ⚠️ Unaudited |
| StableConverter | unknown | ethereum | n/a | [`0xe649d8...489e30`](./contracts/ethereum-1/0xe649d8b63b8cfd92008edcf6baefd67ade489e30/) | ⚠️ Unaudited |
| StablePriceOracle | unknown | ethereum | n/a | [`0xb9d374...ae233a`](./contracts/ethereum-1/0xb9d374d0fe3d8341155663fae31b7beae0ae233a/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPrice | unknown | ethereum | n/a | [`0x86f909...e7e8f3`](./contracts/ethereum-1/0x86f909f70813cdb1bc733f4d97dc6b03b8e7e8f3/) | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPriceV1B | unknown | ethereum | n/a | [`0x09f936...49c69b`](./contracts/ethereum-1/0x09f93623019049c76209c26517acc2af9d49c69b/) | ⚠️ Unaudited |
| StrategyDutchAuction | unknown | ethereum | n/a | [`0x3e8079...43bae0`](./contracts/ethereum-1/0x3e80795cae5ee215ebbdf518689467bf4243bae0/) | ⚠️ Unaudited |
| StrategyPrivateSale | unknown | ethereum | n/a | [`0x58d835...4dd98c`](./contracts/ethereum-1/0x58d83536d3efedb9f7f2a1ec3bdaad2b1a4dd98c/) | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPrice | unknown | ethereum | n/a | [`0x56244b...190031`](./contracts/ethereum-1/0x56244bb70cbd3ea9dc8007399f61dfc065190031/) | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPriceV1B | unknown | ethereum | n/a | [`0x579af6...eb930c`](./contracts/ethereum-1/0x579af6fd30bf83a5ac0d636bc619f98dbdeb930c/) | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | ethereum | n/a | [`0xa9a4ee...63e3d2`](./contracts/ethereum-1/0xa9a4ee56d91985a886affce7eb407492d263e3d2/) | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | ethereum | n/a | [`0x0b0746...b0dbd1`](./contracts/ethereum-1/0x0b07463b30b302a98407d3e3df85ebc073b0dbd1/) | ⚠️ Unaudited |
| TickMathExternal | unknown | ethereum | n/a | [`0x4d9d7f...e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xa6a96f...3f2486`](./contracts/ethereum-1/0xa6a96fa698a6d5afcef6e8efeacaae7ee43f2486/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x5be718...e4be3f`](./contracts/ethereum-1/0x5be718621a3c63c7c585f57661d25431d5e4be3f/) | ⚠️ Unaudited |
| TokenDistributor | unknown | ethereum | n/a | [`0x465a79...e0d3b1`](./contracts/ethereum-1/0x465a790b428268196865a3ae2648481ad7e0d3b1/) | ⚠️ Unaudited |
| TokenLockup | unknown | ethereum | n/a | [`0x00a644...2663df`](./contracts/ethereum-1/0x00a64427d66cca0303e2f761a1310143682663df/) | ⚠️ Unaudited |
| TokenSplitter | unknown | ethereum | n/a | [`0xfec306...6c8203`](./contracts/ethereum-1/0xfec3069df398faaf689c559151e41fa8036c8203/) | ⚠️ Unaudited |
| TokenVault | unknown | ethereum | n/a | [`0xdfdb7f...635346`](./contracts/ethereum-1/0xdfdb7f72c1f195c5951a234e8db9806eb0635346/) | ⚠️ Unaudited |
| TradingRewardsDistributor | unknown | ethereum | n/a | [`0x453c12...fbc3cd`](./contracts/ethereum-1/0x453c1208b400fe47acf275315f14e8f9f9fbc3cd/) | ⚠️ Unaudited |
| TransferManagerERC1155 | unknown | ethereum | n/a | [`0xfed24e...b3a051`](./contracts/ethereum-1/0xfed24ec7e22f573c2e08aef55aa6797ca2b3a051/) | ⚠️ Unaudited |
| TransferManagerERC721 | unknown | ethereum | n/a | [`0xf42aa9...bca83e`](./contracts/ethereum-1/0xf42aa99f011a1fa7cda90e5e98b277e306bca83e/) | ⚠️ Unaudited |
| TransferManagerNonCompliantERC721 | unknown | ethereum | n/a | [`0x3e5381...0510a1`](./contracts/ethereum-1/0x3e538190635f51435298ee58a7984961120510a1/) | ⚠️ Unaudited |
| TransferSelectorNFT | unknown | ethereum | n/a | [`0x9ba628...cd9e2c`](./contracts/ethereum-1/0x9ba628f27aac9b2d78a9f2bf40a8a6df4ccd9e2c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxyContract | unknown | avalanche | n/a | [`0x186c6e...ec6e16`](./contracts/avalanche-43114/0x186c6e023858a552bbde12740b122c4963ec6e16/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | ethereum | n/a | [`0x1b0c25...747556`](./contracts/ethereum-1/0x1b0c2586df3daad42ac2fdcaa0f6b91623747556/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x3d5bc3...ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/) | ⚠️ Unaudited |
| ValueRouterImpl | unknown | ethereum | n/a | [`0x522cb8...a14aa0`](./contracts/ethereum-1/0x522cb8f25896691bdc5f69aabfccd50647a14aa0/) | ⚠️ Unaudited |
| ve_query | unknown | ethereum | n/a | [`0x443299...35e9ca`](./contracts/ethereum-1/0x443299d9b347ae68c42d4909efa1892caa35e9ca/) | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | ethereum | n/a | [`0x559d12...46c5f1`](./contracts/ethereum-1/0x559d12a014497f558a2020a89cda13983846c5f1/) | ⚠️ Unaudited |
| VestingContractWithFeeSharing | unknown | ethereum | n/a | [`0x332580...9744d8`](./contracts/ethereum-1/0x332580e0da5b5072ff5d5b73a494a65bb99744d8/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0ca0f0...6f6ace`](./contracts/ethereum-1/0x0ca0f068edad122f09a39f99e7e89e705d6f6ace/) | ⚠️ Unaudited |
| WBNBGateway | unknown | bsc | n/a | [`0x10cf42...a542dd`](./contracts/bsc-56/0x10cf42ee870f4c53ade1674b9e69b86ac3a542dd/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x521a06...59e88d`](./contracts/ethereum-1/0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d/) | ⚠️ Unaudited |
| WPowerPerp | unknown | ethereum | n/a | [`0xf1b99e...64e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OZ - Beta Finance Audit Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/OZ%20-%20Beta%20Finance%20Audit%20Report.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 7 | high |
| [Here](https://www.openzeppelin.com/news/beta-finance-audit) | OpenZeppelin | Audit | 2021-08 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-Beta-v1.0.pdf](https://github.com/beta-finance/beta/blob/master/audits/PeckShield-Audit-Report-Beta-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 6 | high |
| [ToB - Beta Finance Final Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/ToB%20-%20Beta%20Finance%20Final%20Report.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 170 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=27

Fork inheritance lineage and inherited audits are included when available.
