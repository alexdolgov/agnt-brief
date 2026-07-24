# Agentic Audit Brief: Beta Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Beta Finance (`beta-finance`)
- Website: [https://betafinance.gitbook.io/betafinance](https://betafinance.gitbook.io/betafinance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, bsc, ethereum
- Contract surface: 582 unique implementations (587 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $537,517.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Beta Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche, bsc, ethereum. Structural roles: 4 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06f12b17d97ef27152b68cba208e3415ea65369b`, chain 1)
- UnnamedContract (`0x28130d2f98c3130a04d338df6081ef607664a0b9`, chain 1)
- UnnamedContract (`0x74cac868f2254f1a6b7ca951f0d86eac4a65c132`, chain 1)
- UnnamedContract (`0x885a58b151cfa0a1af467bd246022de6ebcd2626`, chain 1)
- UnnamedContract (`0x9136dfac5435cd0bc627b9400415a19690134a63`, chain 1)
- UnnamedContract (`0x972a785b390d05123497169a04c72de652493be1`, chain 1)
- UnnamedContract (`0xaf152394f6928d40678ee7bbdd59ec83b3f166ae`, chain 1)
- UnnamedContract (`0xbf3e3e6c558102f52057b87d385e03ea064c904b`, chain 1)
- UnnamedContract (`0xfb4beadab802560ba29d575211cd4bf8f477f405`, chain 1)
- UnnamedContract (`0x7044fd52b3ccd1deba9abab31d2cd0fb763ed47b`, chain 43114)
- UnnamedContract (`0x7e5dab815356fa8a0832bb97ea3c0aba295b2949`, chain 43114)
- UnnamedContract (`0x908e5cec102ef33d7feaafd655f83cbe7a0206ba`, chain 43114)
- UnnamedContract (`0xae00e5908540e6b3ce3df4b6301ab0b88ad2cb9d`, chain 43114)
- UnnamedContract (`0xe0447249aeaaa28fbf5e991ad59876c9265da025`, chain 43114)
- UnnamedContract (`0xf0f8a728d061cc994b60c6fd2aaacf50ea018247`, chain 43114)
- UnnamedContract (`0xf3a82ddd4fbf49a35eccf264997f82d40510f36b`, chain 43114)
- UnnamedContract (`0xf75ff3987339aa395c7d60359dcb0e59609be6db`, chain 43114)
- UnnamedContract (`0xfe8fe83fa75d4ce1244f59ed65f26672453d6648`, chain 43114)
- BetaBank (`0x42e1f3f490a6000f6f74f224151e38b371f76d32`, chain 1)
- BetaConfig (`0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5`, chain 1)
- BetaRunnerLending (`0x068af1ec336344cd122b9811ef90d2384519005f`, chain 1)
- BTokenDeployer (`0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5`, chain 43114)
- WETHGateway (`0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 559 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 23 of 582 unique; 559 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/170
- Verified + Unaudited implementations: 169
- Verified by bytecode match: 0
- Unverified implementations: 412
- Unique implementations: 582
- Raw deployments: 587
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 20.0% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 0.6% | 2021-08 |
| PeckShield | Tier 2 | 1 | 0.6% | 2021-05 |
| Trail of Bits | Tier 1 | 1 | 0.6% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BetaBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230219 | `0x42e1f3f490a6000f6f74f224151e38b371f76d32` | ✅ Audited |

### ⚠️ Verified + Unaudited (169)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a8d15322c257abd2b22a56edde758398be0f32` | ⚠️ Unaudited |
| AddressQueueStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f` | ⚠️ Unaudited |
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1faa113cbe53436df28ff0aee54275c13b40975` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce1bffbd5374dac86a2893119683f4911a2f7814` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x511d35c52a3c244e7b8bd92c0c297755fbd89212` | ⚠️ Unaudited |
| Astgik | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e734e30270292993dbe71c421ad2b128b6dae11` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77eca75445841875ebb67a33d0a97dc34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72a0fa1e537c956dfca72711c468efd81270468` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a36b6d7f956f80d07e401a5f620c3a4f252e16` | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002c37af6fb078ae1833fd447698a0c9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8079ce1fd9b1ae682d9f1b709609a05bf9b236` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb95a68c7382217ccdf9d4d1c89f3986c30cc5` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11e0df925387de1ce92504fe0e4af23af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07` | ⚠️ Unaudited |
| BancorPriceFloor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a713197fcbb4cfe7213800470b0940268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b` | ⚠️ Unaudited |
| BandToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba11d00c5f74255f56a5e366f4f77f5a186d7f55` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac7bea255a6990f749363002136af6556b31e04` | ⚠️ Unaudited |
| BetaConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230220 | `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` | ⚠️ Unaudited |
| BetaInterestModelV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e20216a7b7bff9b60a4cc58a857ce85988f8eb1` | ⚠️ Unaudited |
| BetaRunnerLending | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230216 | `0x068af1ec336344cd122b9811ef90d2384519005f` | ⚠️ Unaudited |
| BetaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1a001fe942f96eea22ba08783140b9dcc09d28` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303ffaf107cd732396570bf07b2dbd79b619f` | ⚠️ Unaudited |
| BlurAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee90e5a180ff1be8894ff178bc75459da89833e1` | ⚠️ Unaudited |
| BlurGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7967b43949fb0cec48e63e345512d5ea5845810` | ⚠️ Unaudited |
| BlurToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5283d291dbcf85356a21ba090e6db59121208b44` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e9b23dadead1210ff58b6723a6ca0cf18ea` | ⚠️ Unaudited |
| BToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01aa4629b756b1222cb5541da0255b4f473f3a11` | ⚠️ Unaudited |
| BTokenDeployer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230229 | `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd01c92f0390670cce399b532017cdb2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041f188ffecc499e8d4d0f08dd31b0f41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08008ef178929e3866f1aeea75beaa8b909b9e` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00e5c0774a5f065c285068170b20393925c84bf3` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x011a014d5e8eb4771e575bb1000318d509230afa`; ethereum `0xc9d8a3b9c39b71969280fc249c87b5d0cb77f3c9` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e821d855f4fc427200484ae42369b8a6611c2cb` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06527d5e56a3495252a528c4987003b712860ee` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592f78db6436527729929aaf6c908497cb200` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172281800b139f69fb038cc2c08cad56ce699` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6` | ⚠️ Unaudited |
| CreamEth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e3973900a195a155a46441f0c08179fdb64` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64` | ⚠️ Unaudited |
| CreamLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75ad0b02afeb6039672e6a6cede7447a8b45` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf59f30a54750209ef529a766d952720d0f9` | ⚠️ Unaudited |
| CrowdsaleController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc79794599b19274850492394004087cbf89710` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722779a0ed7d79101c0d251987e76d4151ffb` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44e37200e92e6da6249d8ae6d48f832a038d` | ⚠️ Unaudited |
| CurrencyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc881addf409ee2c4b6bbc8b607c2c5cafab93d25` | ⚠️ Unaudited |
| CurrencyManagerOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb624e4148ef395458d361547c9fdb59b62a84bd2` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a3a8698e36549db3e1e46ef136149224790` | ⚠️ Unaudited |
| ENSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18360217d8f7ab5e7c516566761ea12ce7f9d72` | ⚠️ Unaudited |
| ePHTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9805e163b3750e7f13a26b06f030f2d3b799f5` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0560dfce5e73ccea36f0df586e5a07e07835705` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994e89c92b03df6c15fb8340f624aec1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1545473701f011a5c977e48ac43e1404cdf96f11` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964` | ⚠️ Unaudited |
| EtherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22c1c159d12461ea124b0deb4b5b93020e6ad16` | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32659651d137a18b79925449722855aa327231d` | ⚠️ Unaudited |
| ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc58bf22a173c0fa8791c13df396d18185d62b2` | ⚠️ Unaudited |
| ExtraReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b86747e4d5d664d5bc40bf317e66e1898697392` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03bf434db503f6f5f85c3954773731fc3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb1967b36c318510cc06ab901b428a166bb6dda` | ⚠️ Unaudited |
| FeeSharingSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5924a28caaf1cc016617874a2f0c3710d881f3c1` | ⚠️ Unaudited |
| FeeSharingSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcd7254a1d759efa08ec7c3291b2e85c5dcc12ce` | ⚠️ Unaudited |
| FixedAmountVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06cf019492f700f87d8d77bc5ec0ca7e76ed31b7` | ⚠️ Unaudited |
| HODLCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45d7bc4cebcab98ad09babdf8c818b2292b672c` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254104a8a7b7779483eeef5560397a737f812` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff` | ⚠️ Unaudited |
| IndexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0954906da0bf32d5479e25f46056d22f08464cab` | ⚠️ Unaudited |
| IRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8c0ca03ca087160cb4bfd6f8904e50a4823128` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecc2d4689394202eabe6329acc1a0c6fe25736f` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6` | ⚠️ Unaudited |
| LooksRareAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35dce3e0e6ceb67a30b8d7f4aee721c949b5970` | ⚠️ Unaudited |
| LooksRareExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59728544b08ab483533076417fbbb2fd0b17ce3a` | ⚠️ Unaudited |
| LooksRareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d2888d29d722226fafa5d9b24f9164c092421e` | ⚠️ Unaudited |
| ManagedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632806bf5c8f062932dd121244c9fbe7becb8b48` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06091717521c2002f2859c75f53987eaf1e5aa2f` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73d845d481fe790787f535618457921a7e85` | ⚠️ Unaudited |
| MultiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d` | ⚠️ Unaudited |
| MultiRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0554f068365ed43dcc98dcd7fd7a8208a5638c72` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005a4d6edd48ef4cf1354cb4b6f6bc6dc2b19826` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8` | ⚠️ Unaudited |
| OmniLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f003a858644e085186dfbc991e872b8b4aac507` | ⚠️ Unaudited |
| OmniOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00dc65758993d8b2d89aef1f7163d7b10f5e15b3` | ⚠️ Unaudited |
| OmniPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1150d370c61cdd5d6f81c68783678382b447b07d`; ethereum `0xc550c87b33c0519d8e0aa24bd8691a9c040f7711` | ⚠️ Unaudited |
| OmniToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0cc73de3dfe19109a12ecf593b388d42193b11a0`; ethereum `0x58cb0db93e229abace0119764d9efbce4dcb1d7c` | ⚠️ Unaudited |
| OperatorControllerForRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c40eb22dbdc87fddf4b70d460934a44b7ebe01` | ⚠️ Unaudited |
| OperatorControllerForRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91cc8be3ddcb2d4cb27aab987e5b5675af0f9ee3` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d66c76447ccb45daf1e8044e918fa786a483a1` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f75eecfa4293abcafc02d68e79bd4167f53` | ⚠️ Unaudited |
| OrderValidatorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bab1c0f26870751f79a9b73428235e8e9fbcdd` | ⚠️ Unaudited |
| OrderValidatorV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc56de26c64b14f1a8e95582a16b6a9aefeed395` | ⚠️ Unaudited |
| OwnedRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86ba3b6d83139a49b649c05dbb69e0726db69cf` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30200e0cb040f38e474e53ef437c95a1be723b2b` | ⚠️ Unaudited |
| PHTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc4455f62a6e89476f1072530c20cf1a0622da` | ⚠️ Unaudited |
| PHTRRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57136542bdc53aaf53bf519a6d28a6c8f7ceeb1c` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37a333d842428c668d6cc7130e552acab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8f1db258fbc64827b0926e14a0f90525cf7` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8e3881cc063e593673625bbb9e5191be61ae3c` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5a7cf029275be9cec538e81aa298e297266` | ⚠️ Unaudited |
| PrivateSaleWithFeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9571cdd8acb71c83393290f0d63a46173ddde65b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0673418735981c0b54ecb483076f1de0372e5171` | ⚠️ Unaudited |
| ProxyAdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe70f044633a81a636e134a9e0d7b4f5fbeac5a8f` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226159d592e2b063810a10ebf6dcbada94ed68b8` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328328ba09293a4002b4b7615cba2c816d6bdf51` | ⚠️ Unaudited |
| RegistrarMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109dd117aa5486605fc85e040ab00163a75c662` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed` | ⚠️ Unaudited |
| RocketTokenRPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33526068d116ce69f19a9ee46f0bd304f21a51f` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285088c75a8508664ad77df63e2d60a408e5284a` | ⚠️ Unaudited |
| RoyaltyFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7358182024c9f1b2e6b0153e60bf6156b7ef4906` | ⚠️ Unaudited |
| RoyaltyFeeManagerV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a1c123b09f492591a61af642de12b4bb5d0c7a` | ⚠️ Unaudited |
| RoyaltyFeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55010472a93921a117aad9b055c141060c8d8022` | ⚠️ Unaudited |
| RoyaltyFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66466107d9cae4da0176a699406419003f3c27a8` | ⚠️ Unaudited |
| SetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b` | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d915c3e78767b123bf56ab2daa49f74bb97904c` | ⚠️ Unaudited |
| ShortHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b4095d5ff0e629972caaa50bd3004b09a1632c5` | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699c7f511c9e2182e89f29b3bfb68bd327919d17` | ⚠️ Unaudited |
| ShortPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa653e22a963ff0026292cc8b67941c0ba7863a38` | ⚠️ Unaudited |
| SmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164a1229f4826c9dd70ee3d9f4f3d7b68a172153` | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe649d8b63b8cfd92008edcf6baefd67ade489e30` | ⚠️ Unaudited |
| StablePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d374d0fe3d8341155663fae31b7beae0ae233a` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150` | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f909f70813cdb1bc733f4d97dc6b03b8e7e8f3` | ⚠️ Unaudited |
| StrategyAnyItemFromCollectionForFixedPriceV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f93623019049c76209c26517acc2af9d49c69b` | ⚠️ Unaudited |
| StrategyDutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e80795cae5ee215ebbdf518689467bf4243bae0` | ⚠️ Unaudited |
| StrategyPrivateSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d83536d3efedb9f7f2a1ec3bdaad2b1a4dd98c` | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56244bb70cbd3ea9dc8007399f61dfc065190031` | ⚠️ Unaudited |
| StrategyStandardSaleForFixedPriceV1B | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x579af6fd30bf83a5ac0d636bc619f98dbdeb930c` | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a4ee56d91985a886affce7eb407492d263e3d2` | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b07463b30b302a98407d3e3df85ebc073b0dbd1` | ⚠️ Unaudited |
| TickMathExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a96fa698a6d5afcef6e8efeacaae7ee43f2486` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be718621a3c63c7c585f57661d25431d5e4be3f` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465a790b428268196865a3ae2648481ad7e0d3b1` | ⚠️ Unaudited |
| TokenLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a64427d66cca0303e2f761a1310143682663df` | ⚠️ Unaudited |
| TokenSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfec3069df398faaf689c559151e41fa8036c8203` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdfdb7f72c1f195c5951a234e8db9806eb0635346` | ⚠️ Unaudited |
| TradingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453c1208b400fe47acf275315f14e8f9f9fbc3cd` | ⚠️ Unaudited |
| TransferManagerERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed24ec7e22f573c2e08aef55aa6797ca2b3a051` | ⚠️ Unaudited |
| TransferManagerERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42aa99f011a1fa7cda90e5e98b277e306bca83e` | ⚠️ Unaudited |
| TransferManagerNonCompliantERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e538190635f51435298ee58a7984961120510a1` | ⚠️ Unaudited |
| TransferSelectorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba628f27aac9b2d78a9f2bf40a8a6df4ccd9e2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0b6fc8769b76ee48773111554c9855e090d685a2`; avalanche `0x186c6e023858a552bbde12740b122c4963ec6e16` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c2586df3daad42ac2fdcaa0f6b91623747556` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258`; ethereum `0x7aa375f1fe5e04e18a6b02b4294cfd57ca9f53ba` | ⚠️ Unaudited |
| ValueRouterImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x522cb8f25896691bdc5f69aabfccd50647a14aa0` | ⚠️ Unaudited |
| ve_query | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443299d9b347ae68c42d4909efa1892caa35e9ca` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559d12a014497f558a2020a89cda13983846c5f1` | ⚠️ Unaudited |
| VestingContractWithFeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332580e0da5b5072ff5d5b73a494a65bb99744d8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca0f068edad122f09a39f99e7e89e705d6f6ace` | ⚠️ Unaudited |
| WBNBGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10cf42ee870f4c53ade1674b9e69b86ac3a542dd` | ⚠️ Unaudited |
| WETHGateway | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230228 | `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d` | ⚠️ Unaudited |
| WPowerPerp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (412)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01da76dea59703578040012357b81ffe62015c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04be8ea0c82ad864a01f977e07692afca8984766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054b7ed3f45714d3091e82aad64a1588dc4096ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06db50da11b56be469bc68b6e07fd2c97033c15a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230217 | `0x06f12b17d97ef27152b68cba208e3415ea65369b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081fe64df6dc6fc70043aedf3713a3ce6f190a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09bdcce2593f0bef0991188c25fb744897b6572d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09db988a691dc2ed8afd69884975da45f6c7b472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a7d7cf778ca3b0aa83136c228c1d8805861b20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d627ca04a97219f182dab0dc2a23fb4a5b02a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f58793e8cf39d6b60919ffaf773a7f95a568146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a3da2bb0fae4d591476fd97d6636fd172923a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f6d74277468ce678c401b045dee3d3eeeea7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fdbd1e48ee2fd9336a482d746138ae19e649db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1232b1601419b8b9874683f680e793343f8cbda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136d6f80bb3a853d151686bfed2c9309aea6ddec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e45140ab7067d812ccbca506f032f384268a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1533ba49dd0a5c8cd9e2e3666dd11128e70b2bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1676fc274b65966ed0c6438a26d34c6c92a5981c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17107f40d70f4470d20cb3f138a052cae8ebd4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17373b63809f817d2f7fc09032a18e5ffb1172a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197070723ce0d3810a0e47f06e935c30a480d4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19940fa6926d7b1ee937b3987970d48820781fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d1666f543d42ef17f66e376944a22aea1a8e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a122348b73b58ea39f822a89e6ec67950c2bbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9e503562ce800ea8e68e2cf0cfa0aec2edb509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bcafa2c1b3a522e41baa60c2e318981ea8d1eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8645bec146ae9a3489fc5821b69c9191577331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5fe7bad3672d0d0cc041b7154331ee461c3349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eee7ec51083228869b95b2ad2d7cc105e7b5539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9b4756b008106c806c7e64322d7ed3b72cb284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff8cdb51219a8838b52e9cac09b71e591bc998e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209a6919956c35201c1488addcd8dc5a1d5c3c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21011bc93d9e515b9511a817a1ed1d6d468f49fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2124dc71859fb57687c18651ddbe2b6200f61296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f34af6557a6598dbda9aa11cc556f5ae264b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218e5bbc524479d5c593931692019bb026ff6117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x224061756c150e5048a1e4a3e6e066db35037462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226f3738238932ba0db2319a8117d9555446102f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b243b96495c547598d9042b6f94b01c22b2e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250fb308199fe8c5220509c1bf83d21d60b7f74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25555933a8246ab67cbf907ce3d1949884e82b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c325c8880ffe5a5744ff667ba7d8651b868710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26e316f5b3819264df013ccf47989fb8c891b088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27260eeb2a6c382a6e7d14b8991892790ca929bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230218 | `0x28130d2f98c3130a04d338df6081ef607664a0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28526bb33d7230e65e735db64296413731c5402e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2939f9236574cd6658c18b35a8aaf6b7e9ccff07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29791bef310305d15b8fa4cd57953bd8db805305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297d4da727fbc629252845e96538fc46167e453a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x299e254a8a165bbeb76d9d69305013329eea3a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a495b6c4e4c028e48c755041833c0d755811a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a867fd776b83e1bd4e13c6611afd2f6af07ea6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab765c2b4a4e197fbae769f86870f2310a04d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d20d56b8f3ce115036bf510957efd3c06c50772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4ad359d49164d2b794cc7d0324540d22accadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30190a3b52b5ab1daf70d46d72536f5171f22340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3077e108825167ace1fae031d23e53bb7ea88c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3225e3c669b39c7c8b3e204a8614bb218c5e31bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x338286c0bc081891a4bda39c7667ae150bf5d206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339308b7c56bd4a6776380499a3d8bd2ed3734b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3562d6e1820401df802ff67d130e7478fba7448f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3623387773010d9214b10c551d6e7fc375d31f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371fb61d214a2fcaca1eace2bc6a9f8a78a331df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f27c03d6609a86ff7716ad03038881320be4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986425b96f11972d31c78ff340908832c5c0043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d46629a897ba85fb575bcf9d890dcccd5064bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4b89e371e9f1209fbffb4914087d0760eeafa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba3c0e8a9e5f4a01ce8e086b3d8e8a603a2129e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6c553a95910f9fc81c98784736bd628636d296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9f5385c288ce438ed55620938a4b967c080101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f1be79ab382f21c284008df07e3d169867db647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4112a717edd051f77d834a6703a1ef5e3d73387f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4202d97e00b9189936edf37f8d01cff88bdd81d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4250a6d3bd57455d7c6821eecb6206f507576cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a8ece49718e22d21077000768aff91849bceff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bf8dd4edbe9d0d34415c979bae787bc534846f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a420700aac02c1f10b16152f93acb3aadff193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fbebd2f576670a6c33f6fc0b00aa8c5753b322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45406ba53bb84cd32a58e7098a2d4d1b11b107f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460ea730d204c822ce709f00a8e5959921715adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4745b6e828de3fd3199a730b81ee39f7ef7eacb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48dd663c0eafb50d7e7da84e465e99ac147784c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa560d1eb33a55bd6210364fa588bda132970a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b147984b0314260fda782a7f508749df4e5a083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7dba23bea9d1a2d652373bcd1b78b0e9e0188a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4baa77013ccd6705ab0522853cb0e9d453579dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c11dfd35a4fe079b41d5d9729ed34c00d487712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3a36a633f63aee0ab57b5054ec78867cb3c0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5b673ee671f66996855964ca852ec863a72d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f12c9dabb5319a252463e6028ca833f1164d045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f624dcf0cbfd73fc800b99965f756c3fb3a3cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe11bc316b6d7a345493127fbe298b95adaad85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51297aecbda0048f97acd379aa62cca28fd5ff8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f48b638f82e8765f7a26373a2cb4ccb10c07af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523854223c224e376d21dae73f054943c0576816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523effc8bfefc2948211a05a905f761cba5e8e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54704b1b81b66634fb48979a04cef969fcef0dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581e27c21ce60a946f0e866436a025bc89f3fb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58da9c9fc3eb30abbcbbab5ddabb1e6e2ef3d2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59089279987dd76fc65bf94cb40e186b96e03cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9c32194e5d2fea334fd968f5d2bfddc466422a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c291bc83d15f71fb37805878161718ea4b6aee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c29aa6761803bcfda7f683eaa0ff9bddda3649d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d62020528f76bfdbd2b0ee2caa1f4c3cf2117c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecad8a75216cea7dff978525b2d523a251eea92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61e9a6ab4923f5046c0fb80e5c9f98afc9995fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64187ae08781b09368e6253f9e94951243a493d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647a539282e8456a64dfe28923b7999b66091488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64caa08249041c36eba725f72bcba5fe48c64961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653f72f57418132136609cd638d0603990823cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65883978ada0e707c3b2be2a6825b1c4bdf76a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65bc20147e2ca6f3bf0819c38e519f8792043b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a7d781828b03ee1ae678cd3fe2d595ba3b6000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66fb6cf0af2cb8f967f2439ea855387cb431fed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672473908587b10e65dab177dbaeadcbb30bf40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6757f73cddf4c16171281ff869e620c6ce30e12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697256caa3ccafd62bb6d3aa1c7c5671786a5fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1c08df7fc23bda6937c2c586bc857d82005c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ada0e02763ede6cb428caebc5f5aa3080fda83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b96c414ce762578c3e7930da9114cffc88704cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba0c66c48641e220cf78177c144323b3838d375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1b9e01af17dd08d6dec08e210dfd5984ff1c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2ba9cc8a72b6297e98dd7863ffbcdd3768e513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d419c6f391596f219aa97ea47b9564fa85c5b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea8eab7d77f062989ab65f2bc3394e2be68505b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70339079ac505bbe46fcf5365c87809585e69112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71449a65f4bc1e2e4086bf0996f6468d39a4e425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a808fd21171d992ebc17678e8ae139079922d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71cefcd324b732d4e058afacba040d908c441847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71f2b246f270c6af49e2e514ca9f362b491fbbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72dbf592fb7add76911450058324d6e512db74a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f6cba38922960b7092175c0add22ab8d0e81fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742f5ea935c0fbf312a594f2a663c966107ed0d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230221 | `0x74cac868f2254f1a6b7ca951f0d86eac4a65c132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7589c9e17bcfce1ccaa1f921196fda177f0207fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766175eac1a99c969ddd1ebdbe7e270d508d8fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b34af6394f3b98e21eb9b16c89434caa063828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76eb2fe28b36b3ee97f3adae0c69606eedb2a37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7736ffb07104c0c400bb0cc9a7c228452a732992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78962e442181bc1178fbdd1f0af3fa5467892963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7930275241970149be9bf22ce96320eb4ccb16bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79757e7f37b84993345693f298155440735a86c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797aab1ce7c01eb727ab980762ba88e7133d2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a17fe9058a071d2ebcde1c49f9b669784b06ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa323d7e398be4128c7042d197a2545f0f1fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3297cfb4c4bbd5f44b450c0872e0ada5203112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d506f872760fa016554595cef4b17ee78ef9902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea9c63e216d5565c3940a2b3d150e59c2907db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec77932a5816b432dfe2f94e25c51ea25746817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80438cb8f2e695b307c1dca44f2f55a6dea3371a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a1ff0fa66b14d526930cb36e610f555eb9cd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b1e6b0dfb7b683ce36b9fa17f9875460740922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e346729723c4d15d0fb1c5679b9f2926ff13c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823498fee1d55cbf0581e589c2eb242394239367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8341f17660148ebc9a738e138db2b6b15f42b56f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8379baa817c5c5ab929b03ee8e3c48e45018ae41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852dc31074d42beb1ee8fba7829cb5bd4d68aaf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85759961b116f1d36fd697855c57a6ae40793d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86bbd9ac8b9b44c95ffc6baae58e25033b7548aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c2bb2407fc215c009d4f3df04067881c2e4fe9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230222 | `0x885a58b151cfa0a1af467bd246022de6ebcd2626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e79e39a4f630be09efa4bf473388ab2636370d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x892b14321a4fcba80669ae30bd0cd99a7ecf6ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e42987c39f72e2ead95a8a5bc92114323d5828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2707e93c9cee3e46a97c2637546988ede4e088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3ff1ed4f36c2c2be675afb13cc3aa5d73685a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b950f43fcac4931d408f1fcda55c6cb6cbf3096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c37ed7ac3ba0e8cf3640d31fef6335af84306f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c3b7a4320ba70f8239f83770c4015b5bc4e6f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc840cead11a46f59c65b1697698a2b60fa0789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e595470ed749b85c6f7669de83eae304c2ec68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ec370ea274748620f3f7aab026ccc31b474c4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f06fba4684b5e0988f215a47775bb611af0f986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc8bfd80d6a9f17fb98a373023d72531792b431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fcb0ca2e16cab45f8f0c6304d2a022b6dcda3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903560b1cce601794c584f58898da8a8b789fc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9079dc0140c43081696f353ccf71af6f791c9ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b280489d773a4e08c87107ad322148d02feb59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230223 | `0x9136dfac5435cd0bc627b9400415a19690134a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b767185fb3b04f881e3ac8e5b0662a027a1d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950027632fbd6adadfe82644bfb64647642b6c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9517593d84324e9669174976a98b19c3d2dd9bf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230224 | `0x972a785b390d05123497169a04c72de652493be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97683a370239817cf33ec2c2ad3b3a1884571f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e329eb5aae2125af273102f3440de19094b77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990f82875664bc6eb0e1e8e825ec0f91757e8047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9925f2f869048934e62720120798e7cce7e777bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a5135157a74b753d11197a821e7f199f5b2fed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a975fe93cff8b0387b958adb9082b0ed0659ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ac75fc3cb8a631f4ecf4c16a89ee95d847b64a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b4048d7f0d75937ae07d205a80b2ab9192e4a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b7f980e5b37e46d0dc5d0f1a9a6e452809e56c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baf8a5236d44ac410c0186fe39178d5aad0bb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d029cd7cedcb194e2c361948f279f1788135bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2850c3112b5fb851c4aae23c1e97c1736898cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d77680d75ab51d8f889f45770d3d3c14bd2664d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8a0526219838ca50726ab4a579ddeb8b38fd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e8e207083ffd5bdc3d99a1f32d1e6250869c1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa05e35136ed8ebdd8d620806cc003ebae3a7e88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d8116a3354f1daa2ca99440f32957356790d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e5a19e091bbe241e655997e50da82da676b083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fb1867ac95b21603a6fc8fa4f438df5df341ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2782757aa0e3791abca3f6768398e482901b875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34c4f2e3d5f81db3e2c21a3942ae0e60dccd612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa741bc0ade4b6cd2257e913f23fd024e9f0190eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c4054afd3dbbbf5bfe80f41862b89ea05c9806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d4f888014c6f80bff622f18c9485633e34708b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87e8e61dfac8af5944d353cd26b96b20d5f4d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8caea564811af0e92b1e044f3edd18fa9a73e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e2abccc65e94f3d867b0a9a6ce29fce623f9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96153b6f35883367f3a8ee3846de3b011d50684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa964ed4077ad3ba1946d118ce90544657bb4003b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d052ab8aba3a0726d4a6b8026b7eee427b86d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaedafc0a2550c8d25a881904b85d91931ba6992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab10586c918612ba440482db77549d26b7abf8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1c342c7bf5ec5f02adea1c2270670bca144cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac862105a7ca6906d10c56fe5cf61587a04ddff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf2b5085873c747f68036f3ae64ae0a7db5501a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae76e0d0c4767e94eb2898f42a96696ae0061cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230225 | `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb036141f1b6b317147784186c93979310164df27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb092b4601850e23903a42eacbc9d8a0eec26a4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ec68bea6224b46924b06e750341d0b9974f6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3401ebd96aa036af3b8bf16d28eacf2baab48bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424bebf463648d0594239dce71df0eb4f33e95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4cf50e2e7dc2ee44890ce5214718a9bb538f957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c7aaf07c438a33027dc19d903af775a229be3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72cf0b8aa920e8e3cf7c9097732c3f7a4c3aaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84ad7455adab0c56146e560f9069a9148cebaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c3a282de181889ef20488e73e7a149a8c1bfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c5af54bbdcc61453144cf472a9276ae36109f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9074ddbba7372fa5b89946bdf728d9bf3d8d6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9910c6fabbdbda7f060772f62b7a2471f54d8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb4b067cc612494914a902217cb6078ab4728e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd95e9e1fd1cc5012a1162af9a034ace03179905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc3372161dfd0361161e06083ee5d52a9ce7595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbddeb563e90f6cbf168a7cda4927806477e5b6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf447b39d152d6a234b4c02772b8ab5d1783f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdfe6079b50df618e81983dd6ad31cfa6d45d41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe86e8918dfc7d3cb10d295fc220f941a1470c5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230226 | `0xbf3e3e6c558102f52057b87d385e03ea064c904b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08f48abef36aeeabc5e707b8dc504ae946762ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15a2b4bc7ca71808f557906cb328abfde42b17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25eae724f189ba9030b2556a1533e7c8a732e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29e89845fa794aa0a0b8823de23b760c3d766f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dc50ae4af10d1e27fa74bd1e0c60878813721b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc36080892c64821fa8e396bc1bd8678fa3b82b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc489f7a77cfea584d0077db77a56c35331fc4b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4b2f8c896058e85bbc675283f9551f0100efa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ff0ab6883ddd0216bb2cde2104ea462cd0c4e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68251421edda00a10815e273fa4b1191fac651b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc75ade13e9988bba500227c4f0adcfa7ed800f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78cad9f1a1ff360fc6d2c07a2919b116750da23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fd8dcee4697ceef5a2fd4608a7bd6a94c77480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc855b3a339392abac4e5f89ba5a29c984edd2dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c3c68ea11aedbe647d123d4868d27c429f1ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca55f9c4e77f7b8524178583b0f7c798de17fd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbae0a83f4f9926997c8339545fb8ee32edc6b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb626f91df8057a7ee4bf65cf10d97884e4111c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbfeba41c3e69d24b5c8b04ed60c42cc5d883620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc44572b57372dac502bcd784705e083779b2afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5f8ca88caba27f15746aeb481f0c446991f863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd5cb3401704af8462a4ffe708a180d3c5c4da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd22c4110c12ac41acefa0091c432ef44efaafa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdca6103791210495a2369021e980fb6118d5aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddba405f8129e5bae101045aa45aca11c03b1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3c6312385fcf233ab0de574b0cb1a588566c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4fe9b4b8ff61949dcfeb7e03bc9faca59d2eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf679b2e16498a866bd4cbda60d42f208084c6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc7acaed9a12e9db812083a77a2e4c5e3b67036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd032bfedc68ce5067e3e0b766dbcf653ceea541a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd073e970cabfdeffe518c51e24910f887b5808a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ffed8872ddb99d868e92dcd264b22f94dab8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd34137fc9f6754bcdfce907d06f4d10e897b3eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd369e8eaa0d2665dfea6eb51ff2adfca4eaa7891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37295796c8b885783bd0a4a6c890e3ddeae6705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5103afcd0b3fa865997ef2984c66742c51b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd532944df6dfd5dd629e8772f03d4fc861873abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64f8d48cf67a939824b56e2de374327653de086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd692ac3245bb82319a31068d6b8412796ee85d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c04cf463a52a9c929d434f9f84ee70c1c0ac6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d9e4c301cc548b92ec2745a6aba9a8af44938b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7394428536f63d5659cc869ef69d10f9e66314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7de27e74f1ca2ce413e19a0b30fcc95395bfcd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89c642e52bd9c72bcc0778bcf4de307cc48e75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd931ab1c9df3eb507edd074c8182017b6f1e672b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96c52375a63506d3e3fdcfbcc640dccc076367d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb5e3081def4b6cdd8864ac2aeda4cbf778fecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd111f0fc07f4d89ed6ff96dbab19a61450b8435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde8310a8a266191a7718b553a6b66ac07f8fe53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfff11dfe6436e42a17b86e7f419ac8292990393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe293a96b37cc855e3afb07d8f1f1c68258f76e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d39aed396f03c7bcfab396af33a74cac4bbd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376ed92fe72125aa1f6eb9e113da7483dd11bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d7a35cc516f383dbab40ad169ec41e1c287a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe407e96042c1a581dd81daa36d018429e6df882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c1e5d96360847de7dff72d2bd1c4b3d4284e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe539416a21f6d7ef7e143f1435484d333c274480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe585c76573d7593abf21537b607091f76c996e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe618c25f580684770f2578faca31fb7acb2f5945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c2d3b5c08738970acc4625e3113a5b6e38772e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c3120f38f56deb38b69b65cc7dcaf916373963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7bff2da8a2f619c2586fb83938fa56ce803aa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89a6d0509faf730bd707bf868d9a2a744a363c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e202d6773f50562c0fb73cf18248d621a96c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe923060c48266e6ba0993a8d214fd64a5f103979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9e0ad069325234035ac21bbff76b557b4d52689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ea58efb13733d413365f02ea52b21d25f0ceb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecab2c76f1a8359a06fab5fa0ceea51280a97ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb0b5f5387732085a952714be391965c7dc1886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff039c3c1d668f408d09dd7b63008622a77532c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047d4be569fb770db143a6a90ef203fc1295922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04ce2e71d32d789a259428ddcd02d3c9f97fb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ad5cad05e10572efceb849f6ff0c68f9700455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1cd0056fb74de307f4302a9dadaa486d8f494f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25fb0897580e61420d38945051bb1cda861249f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2d15c0a89428c9251d71a0e29b39ff1e86bce25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf330c109dd91d391b5cd654b7fa595fa1a8ac470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55bbe0255f7f4e70f63837ff72a577fbddbe924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64d061106054fe63b0aca68916266182e77e9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74f976841209efed472ae9e447fa96765b6cd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7aecf4d4e2215ee2b6b83a3884acd2e0d9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c5314806bb349744cf5e721f4d3395259b8531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8062eedf80d8d2527ce89435f670cb996ab4e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8445c529d363ce114148662387eba5e62016e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3472f7319477c9bfecdd66e4b948569e7621b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230227 | `0xfb4beadab802560ba29d575211cd4bf8f477f405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfb922aa45f8e45d7f05bf83a15b4b6723f0aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd42f5e741dd747749d220804eeb96c3f0d4c304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd609a03b393f1a1cfcacedabf068cad09a924e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeeb92386a055e2ef7c2b598c872a4047a7db59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x102ede1a0a0ee5bffec459dcfe38b6fca6980f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x122ffc0c5ff637e4f0e804d2e2af90541dad513e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14451624ac2f1e1b15263b859fa7f994866f3041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14d3c1ea5ff60a2c799e99707f27e27fe88fac94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a8791074204d1066119adcf7d86246c81456883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x362152c2a9be347b45551875c7cb6a8a3382fb04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3626ccc376b4a4228b2841619d45443264d8b71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x453a9ecd2c17afedece1154fce222d4871e8ab21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5434349c61d8812b57a1fa3cb9faca54cde5da08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f579336b1959a4a51782b61ce8e877ff6171a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6494c96c29bc7d073f0306efbb511eb825157973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c087f90491ab681c72f5b72948a6fe48e75033b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x728e8be7782bf25581e3baf4ede9521ab09c30b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72e51910b1118ea587a4be7e2f1b534c67fb7255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7311c298103e87bf0e44959b26631374144c17fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x736f15c718169649bfe6dfe60c0749a1370bac1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x747150feb61a583f55bfd6a4c009f9297f82b486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x753a52a98cf624ac83c143b892009e8f3afed1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79485bd5a1dafb23c4de5b56bcc75629a4de8690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799b01caefb4df19e5c1a75cd213cd1d33601725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ceac61ca6c29af40a776d97532a1f6932eb0bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e99830c7476e690540e54e912fba171d5f63deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x809b3ce60eb1fec2f76663107fa8fc7f11808c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8253ccff722874e026c1dad1cd0dab362f79a934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c1b13a3879cf4fa1493334d6476ac5f0986133a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac8950e3524c75e4edd4706f01f5c85de929eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae9650830d7449ce492ae3750e530b2d20628899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb501c720746a46c4b93a9d8d4fa45ac9d04546be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba4b8dcfeb94fb3d13f7ce834d6c1fc711d06112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3e9afb15c5325808842d71640b839632dbe30e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc9b1ca58dd104c0bc87ed534d6ed1fcda21f022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6615ff6083d1a302054574282882afdd04c2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce89ddcec4f92879e9460209204f358e9d98ac76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf0f6ea89a6191a9fe588dc9234a17f3e7dbf4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2942993c6eea98e3537e0bf96e32c801046acd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd736f9cadc7a7bd14d50797cc3ed2f446a39d5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc790064bc4bd95dd0aa6966d5b736e6395b90e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe255176a7af8d53913f5f220aa4b4ebc87b45bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6eae2a8834165f3b9b7ce01b430b55558d5fa8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee30834e043a32cbb0dd42a1afc5b3d1ab102993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf59b7c2992ec49433bc81b562cf26fcc5d51bd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc019448f666025945b8c727c3632dc517cfbf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07a82068058708ca93c39118be7bc3a3e5724fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x227b1da67b7132f773b8aa41da88e6784c984880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e329dc1ec393b018fb77b697053adac941bc715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40514c9b5018c0715eb082c2b2a66a268026827d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x517de7202608428f54da739764b114a320b6cdab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x697cc83b04037d87817a5a33b9c4a3c4680c67cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230230 | `0x7044fd52b3ccd1deba9abab31d2cd0fb763ed47b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230231 | `0x7e5dab815356fa8a0832bb97ea3c0aba295b2949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230232 | `0x908e5cec102ef33d7feaafd655f83cbe7a0206ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4b84a1ea11daa89266052a8927ebb757232334b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230233 | `0xae00e5908540e6b3ce3df4b6301ab0b88ad2cb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0e90ec690ba5abb11bcc8de967840eb0edc8585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce01cbafb4179c6d38ba99452052babb2cbadaff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230234 | `0xe0447249aeaaa28fbf5e991ad59876c9265da025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230235 | `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf385e8fc2d8a6d1f97348b4a8e87242c9332196a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230236 | `0xf3a82ddd4fbf49a35eccf264997f82d40510f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230237 | `0xf75ff3987339aa395c7d60359dcb0e59609be6db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230238 | `0xfe8fe83fa75d4ce1244f59ed65f26672453d6648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffc4852c80c3fe07aed9342f776a14b42e2cdc65` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 399
- Live contracts: 0
- Unknown liveness contracts: 399
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=399

Showing first 200 of 399 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01da76dea59703578040012357b81ffe62015c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x04be8ea0c82ad864a01f977e07692afca8984766` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x054b7ed3f45714d3091e82aad64a1588dc4096ed` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x06db50da11b56be469bc68b6e07fd2c97033c15a` | non_address_book | unknown | unknown | unverified | n/a | `0x38a466b5c0f1d09918fc8e795945bf3ad32d0080` |
| unverified unclassified | UnnamedContract<br>`0x081fe64df6dc6fc70043aedf3713a3ce6f190a21` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x09bdcce2593f0bef0991188c25fb744897b6572d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x09db988a691dc2ed8afd69884975da45f6c7b472` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x0a7d7cf778ca3b0aa83136c228c1d8805861b20f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x0d627ca04a97219f182dab0dc2a23fb4a5b02a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x0f58793e8cf39d6b60919ffaf773a7f95a568146` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x10a3da2bb0fae4d591476fd97d6636fd172923a8` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x10f6d74277468ce678c401b045dee3d3eeeea7de` | non_address_book | unknown | unknown | unverified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| unverified unclassified | UnnamedContract<br>`0x10fdbd1e48ee2fd9336a482d746138ae19e649db` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1232b1601419b8b9874683f680e793343f8cbda6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x136d6f80bb3a853d151686bfed2c9309aea6ddec` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x14e45140ab7067d812ccbca506f032f384268a96` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1533ba49dd0a5c8cd9e2e3666dd11128e70b2bcb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1676fc274b65966ed0c6438a26d34c6c92a5981c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x17107f40d70f4470d20cb3f138a052cae8ebd4be` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x17373b63809f817d2f7fc09032a18e5ffb1172a9` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x197070723ce0d3810a0e47f06e935c30a480d4fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x19940fa6926d7b1ee937b3987970d48820781fc3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x19d1666f543d42ef17f66e376944a22aea1a8e46` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1a122348b73b58ea39f822a89e6ec67950c2bbd0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1a9e503562ce800ea8e68e2cf0cfa0aec2edb509` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1bcafa2c1b3a522e41baa60c2e318981ea8d1eb5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1c8645bec146ae9a3489fc5821b69c9191577331` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1e5fe7bad3672d0d0cc041b7154331ee461c3349` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1eee7ec51083228869b95b2ad2d7cc105e7b5539` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1f9b4756b008106c806c7e64322d7ed3b72cb284` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x1ff8cdb51219a8838b52e9cac09b71e591bc998e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x209a6919956c35201c1488addcd8dc5a1d5c3c53` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x21011bc93d9e515b9511a817a1ed1d6d468f49fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2124dc71859fb57687c18651ddbe2b6200f61296` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x215f34af6557a6598dbda9aa11cc556f5ae264b1` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x218e5bbc524479d5c593931692019bb026ff6117` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x224061756c150e5048a1e4a3e6e066db35037462` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x226f3738238932ba0db2319a8117d9555446102f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x22b243b96495c547598d9042b6f94b01c22b2e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x250fb308199fe8c5220509c1bf83d21d60b7f74a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x25555933a8246ab67cbf907ce3d1949884e82b55` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x26c325c8880ffe5a5744ff667ba7d8651b868710` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x26e316f5b3819264df013ccf47989fb8c891b088` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x27260eeb2a6c382a6e7d14b8991892790ca929bb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x28526bb33d7230e65e735db64296413731c5402e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2939f9236574cd6658c18b35a8aaf6b7e9ccff07` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x29791bef310305d15b8fa4cd57953bd8db805305` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x297d4da727fbc629252845e96538fc46167e453a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x299e254a8a165bbeb76d9d69305013329eea3a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2a495b6c4e4c028e48c755041833c0d755811a22` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2a867fd776b83e1bd4e13c6611afd2f6af07ea6d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2ab765c2b4a4e197fbae769f86870f2310a04d61` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x2d20d56b8f3ce115036bf510957efd3c06c50772` | non_address_book | unknown | unknown | unverified | n/a | `0x80106198dc662f5e02e79de2be10052e5ae016c2` |
| unverified unclassified | UnnamedContract<br>`0x2f4ad359d49164d2b794cc7d0324540d22accadb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x30190a3b52b5ab1daf70d46d72536f5171f22340` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3077e108825167ace1fae031d23e53bb7ea88c9e` | non_address_book | unknown | unknown | unverified | n/a | `0x38a466b5c0f1d09918fc8e795945bf3ad32d0080` |
| unverified unclassified | UnnamedContract<br>`0x3225e3c669b39c7c8b3e204a8614bb218c5e31bc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x338286c0bc081891a4bda39c7667ae150bf5d206` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x339308b7c56bd4a6776380499a3d8bd2ed3734b9` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x3562d6e1820401df802ff67d130e7478fba7448f` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x3623387773010d9214b10c551d6e7fc375d31f58` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x371fb61d214a2fcaca1eace2bc6a9f8a78a331df` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x38f27c03d6609a86ff7716ad03038881320be4ad` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3986425b96f11972d31c78ff340908832c5c0043` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x39d46629a897ba85fb575bcf9d890dcccd5064bb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3a4b89e371e9f1209fbffb4914087d0760eeafa1` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3ba3c0e8a9e5f4a01ce8e086b3d8e8a603a2129e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3c6c553a95910f9fc81c98784736bd628636d296` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3c9f5385c288ce438ed55620938a4b967c080101` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x3f1be79ab382f21c284008df07e3d169867db647` | non_address_book | unknown | unknown | unverified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| unverified unclassified | UnnamedContract<br>`0x4112a717edd051f77d834a6703a1ef5e3d73387f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4202d97e00b9189936edf37f8d01cff88bdd81d4` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4250a6d3bd57455d7c6821eecb6206f507576cd2` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x43a8ece49718e22d21077000768aff91849bceff` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x43bf8dd4edbe9d0d34415c979bae787bc534846f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x44a420700aac02c1f10b16152f93acb3aadff193` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x44fbebd2f576670a6c33f6fc0b00aa8c5753b322` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x45406ba53bb84cd32a58e7098a2d4d1b11b107f6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x460ea730d204c822ce709f00a8e5959921715adc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4745b6e828de3fd3199a730b81ee39f7ef7eacb2` | non_address_book | unknown | unknown | unverified | n/a | `0x38a466b5c0f1d09918fc8e795945bf3ad32d0080` |
| unverified unclassified | UnnamedContract<br>`0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x48dd663c0eafb50d7e7da84e465e99ac147784c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41` | non_address_book | unknown | unknown | unverified | n/a | `0x0904dac3347ea47d208f3fd67402d039a3b99859` |
| unverified unclassified | UnnamedContract<br>`0x4aa560d1eb33a55bd6210364fa588bda132970a5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4b147984b0314260fda782a7f508749df4e5a083` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4b7dba23bea9d1a2d652373bcd1b78b0e9e0188a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4baa77013ccd6705ab0522853cb0e9d453579dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4c11dfd35a4fe079b41d5d9729ed34c00d487712` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x4e3a36a633f63aee0ab57b5054ec78867cb3c0b8` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4e5b673ee671f66996855964ca852ec863a72d91` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4f12c9dabb5319a252463e6028ca833f1164d045` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4f624dcf0cbfd73fc800b99965f756c3fb3a3cea` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x4fe11bc316b6d7a345493127fbe298b95adaad85` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x51297aecbda0048f97acd379aa62cca28fd5ff8c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x51f48b638f82e8765f7a26373a2cb4ccb10c07af` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x523854223c224e376d21dae73f054943c0576816` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x523effc8bfefc2948211a05a905f761cba5e8e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x54704b1b81b66634fb48979a04cef969fcef0dde` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x581e27c21ce60a946f0e866436a025bc89f3fb26` | non_address_book | unknown | unknown | unverified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| unverified unclassified | UnnamedContract<br>`0x58cb0db93e229abace0119764d9efbce4dcb1d7c` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x58da9c9fc3eb30abbcbbab5ddabb1e6e2ef3d2ef` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x59089279987dd76fc65bf94cb40e186b96e03cb3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x5a9c32194e5d2fea334fd968f5d2bfddc466422a` | non_address_book | unknown | unknown | unverified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| unverified unclassified | UnnamedContract<br>`0x5c291bc83d15f71fb37805878161718ea4b6aee9` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x5c29aa6761803bcfda7f683eaa0ff9bddda3649d` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x5d62020528f76bfdbd2b0ee2caa1f4c3cf2117c8` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x5ecad8a75216cea7dff978525b2d523a251eea92` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x61e9a6ab4923f5046c0fb80e5c9f98afc9995fad` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x64187ae08781b09368e6253f9e94951243a493d5` | non_address_book | unknown | unknown | unverified | n/a | `0xa3cb04d8bd927eec8826bd77b7c71abe3d29c081` |
| unverified unclassified | UnnamedContract<br>`0x647a539282e8456a64dfe28923b7999b66091488` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x64caa08249041c36eba725f72bcba5fe48c64961` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x653f72f57418132136609cd638d0603990823cae` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x65883978ada0e707c3b2be2a6825b1c4bdf76a90` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x65bc20147e2ca6f3bf0819c38e519f8792043b36` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x66a7d781828b03ee1ae678cd3fe2d595ba3b6000` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x66fb6cf0af2cb8f967f2439ea855387cb431fed8` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x672473908587b10e65dab177dbaeadcbb30bf40b` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6757f73cddf4c16171281ff869e620c6ce30e12b` | non_address_book | unknown | unknown | unverified | n/a | `0xff6c307226343fcf96af2f6b5b05f63f717e68cb` |
| unverified unclassified | UnnamedContract<br>`0x697256caa3ccafd62bb6d3aa1c7c5671786a5fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6a1c08df7fc23bda6937c2c586bc857d82005c2c` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x6ada0e02763ede6cb428caebc5f5aa3080fda83c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6b96c414ce762578c3e7930da9114cffc88704cb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6ba0c66c48641e220cf78177c144323b3838d375` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6d1b9e01af17dd08d6dec08e210dfd5984ff1c20` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6d2ba9cc8a72b6297e98dd7863ffbcdd3768e513` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6d419c6f391596f219aa97ea47b9564fa85c5b40` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x6ea8eab7d77f062989ab65f2bc3394e2be68505b` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x70339079ac505bbe46fcf5365c87809585e69112` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x71449a65f4bc1e2e4086bf0996f6468d39a4e425` | non_address_book | unknown | unknown | unverified | n/a | `0x0904dac3347ea47d208f3fd67402d039a3b99859` |
| unverified unclassified | UnnamedContract<br>`0x71a808fd21171d992ebc17678e8ae139079922d0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x71cefcd324b732d4e058afacba040d908c441847` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x71f2b246f270c6af49e2e514ca9f362b491fbbe1` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x72dbf592fb7add76911450058324d6e512db74a5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x73f6cba38922960b7092175c0add22ab8d0e81fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x742f5ea935c0fbf312a594f2a663c966107ed0d6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7589c9e17bcfce1ccaa1f921196fda177f0207fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x766175eac1a99c969ddd1ebdbe7e270d508d8fff` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x76b34af6394f3b98e21eb9b16c89434caa063828` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x76eb2fe28b36b3ee97f3adae0c69606eedb2a37c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7736ffb07104c0c400bb0cc9a7c228452a732992` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x78962e442181bc1178fbdd1f0af3fa5467892963` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7930275241970149be9bf22ce96320eb4ccb16bd` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x79757e7f37b84993345693f298155440735a86c7` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x797aab1ce7c01eb727ab980762ba88e7133d2157` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7a17fe9058a071d2ebcde1c49f9b669784b06ea8` | non_address_book | unknown | unknown | unverified | n/a | `0xe4200e3f4bef0e382937d4c6ae4c54814ffa829c` |
| unverified unclassified | UnnamedContract<br>`0x7aa375f1fe5e04e18a6b02b4294cfd57ca9f53ba` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7aaa323d7e398be4128c7042d197a2545f0f1fea` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7c3297cfb4c4bbd5f44b450c0872e0ada5203112` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7d506f872760fa016554595cef4b17ee78ef9902` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7ea9c63e216d5565c3940a2b3d150e59c2907db3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x7ec77932a5816b432dfe2f94e25c51ea25746817` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x80438cb8f2e695b307c1dca44f2f55a6dea3371a` | non_address_book | unknown | unknown | unverified | n/a | `0x38a466b5c0f1d09918fc8e795945bf3ad32d0080` |
| unverified unclassified | UnnamedContract<br>`0x81a1ff0fa66b14d526930cb36e610f555eb9cd5e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x81b1e6b0dfb7b683ce36b9fa17f9875460740922` | non_address_book | unknown | unknown | unverified | n/a | `0x0904dac3347ea47d208f3fd67402d039a3b99859` |
| unverified unclassified | UnnamedContract<br>`0x81e346729723c4d15d0fb1c5679b9f2926ff13c6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x823498fee1d55cbf0581e589c2eb242394239367` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8341f17660148ebc9a738e138db2b6b15f42b56f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8379baa817c5c5ab929b03ee8e3c48e45018ae41` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x852dc31074d42beb1ee8fba7829cb5bd4d68aaf3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x85759961b116f1d36fd697855c57a6ae40793d9b` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x86bbd9ac8b9b44c95ffc6baae58e25033b7548aa` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x86c2bb2407fc215c009d4f3df04067881c2e4fe9` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x88e79e39a4f630be09efa4bf473388ab2636370d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x892b14321a4fcba80669ae30bd0cd99a7ecf6ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x89e42987c39f72e2ead95a8a5bc92114323d5828` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8a2707e93c9cee3e46a97c2637546988ede4e088` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8b3ff1ed4f36c2c2be675afb13cc3aa5d73685a5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8b950f43fcac4931d408f1fcda55c6cb6cbf3096` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8c37ed7ac3ba0e8cf3640d31fef6335af84306f4` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8c3b7a4320ba70f8239f83770c4015b5bc4e6f91` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8dc840cead11a46f59c65b1697698a2b60fa0789` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8e595470ed749b85c6f7669de83eae304c2ec68f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8ec370ea274748620f3f7aab026ccc31b474c4db` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8f06fba4684b5e0988f215a47775bb611af0f986` | non_address_book | unknown | unknown | unverified | n/a | `0xe501d177fe2172e1da8a6d338a44d9f89705ed5c` |
| unverified unclassified | UnnamedContract<br>`0x8fc8bfd80d6a9f17fb98a373023d72531792b431` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x8fcb0ca2e16cab45f8f0c6304d2a022b6dcda3f3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x903560b1cce601794c584f58898da8a8b789fc5d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x9079dc0140c43081696f353ccf71af6f791c9ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x90b280489d773a4e08c87107ad322148d02feb59` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x92b767185fb3b04f881e3ac8e5b0662a027a1d9f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x950027632fbd6adadfe82644bfb64647642b6c09` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x9517593d84324e9669174976a98b19c3d2dd9bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x97683a370239817cf33ec2c2ad3b3a1884571f69` | non_address_book | unknown | unknown | unverified | n/a | `0x0904dac3347ea47d208f3fd67402d039a3b99859` |
| unverified unclassified | UnnamedContract<br>`0x98e329eb5aae2125af273102f3440de19094b77c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x990f82875664bc6eb0e1e8e825ec0f91757e8047` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x9925f2f869048934e62720120798e7cce7e777bb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| unverified unclassified | UnnamedContract<br>`0x9a5135157a74b753d11197a821e7f199f5b2fed0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OZ - Beta Finance Audit Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/OZ%20-%20Beta%20Finance%20Audit%20Report.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Here](https://www.openzeppelin.com/news/beta-finance-audit) | OpenZeppelin | Audit | 2021-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Beta-v1.0.pdf](https://github.com/beta-finance/beta/blob/master/audits/PeckShield-Audit-Report-Beta-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [ToB - Beta Finance Final Report.pdf](https://github.com/beta-finance/beta/blob/master/audits/ToB%20-%20Beta%20Finance%20Final%20Report.pdf) | Trail of Bits | Audit | 2021-08 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16843] OZ - Beta Finance Audit Report.pdf — matched: Contracts explicitly listed in scope section. No audit date found in the provided text.
- [16844] Here — matched: All contracts listed in the 'Scope' section of the audit report.
- [16845] PeckShield-Audit-Report-Beta-v1.0.pdf — matched: Extracted contract names from findings targets and mentions. Audit date from cover page and version history.
- [16846] ToB - Beta Finance Final Report.pdf — matched: Extracted from the 'Coverage' section and findings targets. The audit date is from the cover page: 'August 23, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OZ - Beta Finance Audit Report.pdf | BToken | unmatched — not counted | — | listed in scope | no |
| OZ - Beta Finance Audit Report.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OZ - Beta Finance Audit Report.pdf | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3987339aa395c7d60359dcb0e59609be6db` — deployed 2021-12-20 21:26:10+03 — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4beadab802560ba29d575211cd4bf8f477f405` — deployed 2021-08-11 16:23:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — deployed 2021-08-11 18:10:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` — deployed 2021-08-11 16:43:23+03 — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — deployed 2021-12-20 21:26:48+03 — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| OZ - Beta Finance Audit Report.pdf | BetaToken | unmatched — not counted | — | listed in scope | no |
| Here | BToken | unmatched — not counted | — | listed in scope | no |
| Here | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Here | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3987339aa395c7d60359dcb0e59609be6db` — deployed 2021-12-20 21:26:10+03 — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4beadab802560ba29d575211cd4bf8f477f405` — deployed 2021-08-11 16:23:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — deployed 2021-08-11 18:10:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` — deployed 2021-08-11 16:43:23+03 — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — deployed 2021-12-20 21:26:48+03 — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| Here | BetaToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — deployed 2021-12-20 21:26:48+03 — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BToken | unmatched — not counted | — | Target in finding PVE-003, PVE-004 | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaRunnerBase | unmatched — not counted | — | Mentioned in finding PVE-002 as containing _buy()/_repay()/short() | no |
| ToB - Beta Finance Final Report.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BToken | unmatched — not counted | — | Coverage section: 'BToken contracts enable the lending and borrowing of assets in the Beta Finance system.' | no |
| ToB - Beta Finance Final Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | Coverage section: 'This contract fetches raw prices from Uniswap V2...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunner | unmatched — not counted | — | Coverage section: 'The BetaRunner contracts are helper contracts...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerBase | unmatched — not counted | — | Finding TOB-BFI-001 target: 'BetaRunnerBase.constructor' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV2 | own contract | 0x9136df… (selected) `0x9136dfac5435cd0bc627b9400415a19690134a63` — deployed 2021-08-11 18:14:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV3 | own contract | 0x06f12b… (selected) `0x06f12b17d97ef27152b68cba208e3415ea65369b` — deployed 2021-08-24 07:13:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerLending | ambiguous — not counted | 0x7044fd… (alternative) `0x7044fd52b3ccd1deba9abab31d2cd0fb763ed47b` — deployed 2021-12-20 21:39:36+03 — liveness: live (current_address_book_code)<br>BetaRunnerLending (alternative) `0x068af1ec336344cd122b9811ef90d2384519005f` — deployed 2021-08-11 18:12:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — deployed 2021-12-20 21:26:48+03 — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — deployed 2021-08-11 18:10:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | BetaToken | unmatched — not counted | — | Finding TOB-BFI-003 target: 'beta-contract/contracts/BetaToken.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` | BetaConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x068af1ec336344cd122b9811ef90d2384519005f` | BetaRunnerLending | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` | BTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` | WETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 162 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 413 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 12 ambiguous, 13 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
