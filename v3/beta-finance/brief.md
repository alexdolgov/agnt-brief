# Agentic Audit Brief: Beta Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Beta Finance (`beta-finance`)
- Website: [https://betafinance.gitbook.io/betafinance](https://betafinance.gitbook.io/betafinance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum
- Contract surface: 188 unique implementations (188 raw deployments)
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
- Outside the address book: 165 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 23 of 188 unique; 165 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/170
- Verified + Unaudited implementations: 169
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 188
- Raw deployments: 188
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
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x011a014d5e8eb4771e575bb1000318d509230afa` | ⚠️ Unaudited |
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
| OmniPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1150d370c61cdd5d6f81c68783678382b447b07d` | ⚠️ Unaudited |
| OmniToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc73de3dfe19109a12ecf593b388d42193b11a0` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x186c6e023858a552bbde12740b122c4963ec6e16` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c2586df3daad42ac2fdcaa0f6b91623747556` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258` | ⚠️ Unaudited |
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

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230217 | `0x06f12b17d97ef27152b68cba208e3415ea65369b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230218 | `0x28130d2f98c3130a04d338df6081ef607664a0b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230221 | `0x74cac868f2254f1a6b7ca951f0d86eac4a65c132` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230222 | `0x885a58b151cfa0a1af467bd246022de6ebcd2626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230223 | `0x9136dfac5435cd0bc627b9400415a19690134a63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230224 | `0x972a785b390d05123497169a04c72de652493be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230225 | `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230226 | `0xbf3e3e6c558102f52057b87d385e03ea064c904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230227 | `0xfb4beadab802560ba29d575211cd4bf8f477f405` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230230 | `0x7044fd52b3ccd1deba9abab31d2cd0fb763ed47b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230231 | `0x7e5dab815356fa8a0832bb97ea3c0aba295b2949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230232 | `0x908e5cec102ef33d7feaafd655f83cbe7a0206ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230233 | `0xae00e5908540e6b3ce3df4b6301ab0b88ad2cb9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230234 | `0xe0447249aeaaa28fbf5e991ad59876c9265da025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230235 | `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230236 | `0xf3a82ddd4fbf49a35eccf264997f82d40510f36b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230237 | `0xf75ff3987339aa395c7d60359dcb0e59609be6db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-230238 | `0xfe8fe83fa75d4ce1244f59ed65f26672453d6648` | ❓ Unverified |

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
| OZ - Beta Finance Audit Report.pdf | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3987339aa395c7d60359dcb0e59609be6db` — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4beadab802560ba29d575211cd4bf8f477f405` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OZ - Beta Finance Audit Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| OZ - Beta Finance Audit Report.pdf | BetaToken | unmatched — not counted | — | listed in scope | no |
| Here | BToken | unmatched — not counted | — | listed in scope | no |
| Here | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Here | BetaInterestModelV1 | ambiguous — not counted | 0xf75ff3… (alternative) `0xf75ff3987339aa395c7d60359dcb0e59609be6db` — liveness: live (current_address_book_code)<br>0xfb4bea… (alternative) `0xfb4beadab802560ba29d575211cd4bf8f477f405` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BTokenDeployer | ambiguous — not counted | 0xaf1523… (alternative) `0xaf152394f6928d40678ee7bbdd59ec83b3f166ae` — liveness: live (current_address_book_code)<br>BTokenDeployer (alternative) `0x24d8d4e3a2cf53b884e02e3f0131a05d0e6e7af5` — deployed 2021-12-20 21:31:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Here | BetaOracleUniswapV2 | unmatched — not counted | — | listed in scope | no |
| Here | BetaToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BToken | unmatched — not counted | — | Target in finding PVE-003, PVE-004 | no |
| PeckShield-Audit-Report-Beta-v1.0.pdf | BetaRunnerBase | unmatched — not counted | — | Mentioned in finding PVE-002 as containing _buy()/_repay()/short() | no |
| ToB - Beta Finance Final Report.pdf | BetaBank | own contract | BetaBank (selected) `0x42e1f3f490a6000f6f74f224151e38b371f76d32` — deployed 2021-08-11 16:45:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BToken | unmatched — not counted | — | Coverage section: 'BToken contracts enable the lending and borrowing of assets in the Beta Finance system.' | no |
| ToB - Beta Finance Final Report.pdf | BetaOracleUniswapV2 | unmatched — not counted | — | Coverage section: 'This contract fetches raw prices from Uniswap V2...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunner | unmatched — not counted | — | Coverage section: 'The BetaRunner contracts are helper contracts...' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerBase | unmatched — not counted | — | Finding TOB-BFI-001 target: 'BetaRunnerBase.constructor' | no |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV2 | own contract | 0x9136df… (selected) `0x9136dfac5435cd0bc627b9400415a19690134a63` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerUniswapV3 | own contract | 0x06f12b… (selected) `0x06f12b17d97ef27152b68cba208e3415ea65369b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB - Beta Finance Final Report.pdf | BetaRunnerLending | ambiguous — not counted | 0x7044fd… (alternative) `0x7044fd52b3ccd1deba9abab31d2cd0fb763ed47b` — liveness: live (current_address_book_code)<br>BetaRunnerLending (alternative) `0x068af1ec336344cd122b9811ef90d2384519005f` — deployed 2021-08-11 18:12:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | BetaConfig | ambiguous — not counted | 0xf0f8a7… (alternative) `0xf0f8a728d061cc994b60c6fd2aaacf50ea018247` — liveness: live (current_address_book_code)<br>BetaConfig (alternative) `0x59334e2693168c3f8c9e0fcbe029dab9daf6b9c5` — deployed 2021-08-11 16:24:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ToB - Beta Finance Final Report.pdf | WETHGateway | ambiguous — not counted | WETHGateway (alternative) `0x02d516d7f4f4cfe8c0b0b29f8f774556a2240057` — deployed 2021-12-20 21:38:52+03 — liveness: live (current_address_book_code)<br>0xbf3e3e… (alternative) `0xbf3e3e6c558102f52057b87d385e03ea064c904b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| native | 163 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 18 |

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
