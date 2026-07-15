# Agentic Audit Brief: Seer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, gnosis, optimism
- Contract surface: 259 unique implementations (400 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $983,763.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across base, ethereum, gnosis, optimism. Structural roles: 9 supporting, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (7)
- Contract kinds: contract (16)
- Detected standards: erc165 (5)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ba2db...44d9b5`, chain 1)
- UnnamedContract (`0x201803...4f85ad`, chain 1)
- UnnamedContract (`0x179d8f...2d05dd`, chain 10)
- UnnamedContract (`0x3124e9...c77a73`, chain 10)
- UnnamedContract (`0x44921b...a79f00`, chain 10)
- UnnamedContract (`0x886ef0...af8bc6`, chain 10)
- UnnamedContract (`0xab797c...7a87fc`, chain 10)
- UnnamedContract (`0xd19431...10b79f`, chain 10)
- UnnamedContract (`0xfe8bf5...4a46b2`, chain 10)
- UnnamedContract (`0xd19431...10b79f`, chain 100)
- UnnamedContract (`0x179d8f...2d05dd`, chain 8453)
- UnnamedContract (`0x3124e9...c77a73`, chain 8453)
- UnnamedContract (`0x886ef0...af8bc6`, chain 8453)
- UnnamedContract (`0xc72f73...a0ca9e`, chain 8453)
- UnnamedContract (`0xd19431...10b79f`, chain 8453)
- UnnamedContract (`0xf5ccbf...7723b9`, chain 8453)
- UnnamedContract (`0xfe8bf5...4a46b2`, chain 8453)
- ConditionalRouter (`0x774284...13c29c`, chain 100)
- FutarchyFactory (`0xe789e4...f6b792`, chain 100)
- FutarchyRouter (`0xe2996f...c9f74e`, chain 100)
- GnosisRouter (`0xec9048...c70fb8`, chain 100)
- MainnetRouter (`0x886ef0...af8bc6`, chain 1)
- MarketFactory (`0x1f728c...7b7904`, chain 1)
- MarketFactory (`0x83183d...5cdcf1`, chain 100)
- RealityProxy (`0xc260ad...0f2d6c`, chain 100)
- Wrapped1155Factory (`0xd19431...10b79f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 226 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 33 of 259 unique; 226 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 188
- Unique implementations: 259
- Raw deployments: 400
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x607bbf...96674b` | ⚠️ Unaudited |
| AlgebraFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa0864c...7da766` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa01e27...7811f2` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1b576...8ddb47` | ⚠️ Unaudited |
| CentralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x0ec662...c2b84d`; gnosis `0x4f49a8...f0f82b`; gnosis `0x7f2265...d57894`; gnosis `0xde8d8f...249995` | ⚠️ Unaudited |
| ConditionalRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392419 | `0x774284...13c29c` | ⚠️ Unaudited |
| ConditionalTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc59b0e...407e0c`; gnosis `0xceafdd...43c0ce` | ⚠️ Unaudited |
| CreditsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x17592e...ea8a61`; gnosis `0x43bd67...43af17`; gnosis `0xb29d0c...4d2d70`; gnosis `0xfeb801...c9768b` | ⚠️ Unaudited |
| Disbursement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2e23...377370` | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22d7...1cfcd6` | ⚠️ Unaudited |
| DutchXSellerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ebeb...0aa84d` | ⚠️ Unaudited |
| Enum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e1ae...2f43ee` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xde51dd...579106` | ⚠️ Unaudited |
| FarmingCenterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf18a78...66f00a` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6d6...3805f3` | ⚠️ Unaudited |
| ForesightCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09e701...2c94f9` | ⚠️ Unaudited |
| FPMMDeterministicFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9083a2...a3eef0` | ⚠️ Unaudited |
| FutarchyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xf9369c...9d3678`; gnosis `0xa6cb18...30a345`; gnosis `0xecfbc2...30942f` | ⚠️ Unaudited |
| FutarchyFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392426 | `0xe789e4...f6b792` | ⚠️ Unaudited |
| FutarchyProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0956b7...2d8a1c`; gnosis `0xbba6c5...05be7d`; gnosis `0xd342be...5eab66` | ⚠️ Unaudited |
| FutarchyProposal | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392427 | `0xec4fb9...5b484c` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa638f2...5280dc`; gnosis `0xb5786f...438e7b`; gnosis `0xc64c75...025d0f` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392418 | `0x03e1fc...a61cfc` | ⚠️ Unaudited |
| FutarchyRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xac9bf8...3f98dc`; gnosis `0x7495a5...e1228f`; gnosis `0x74c4df...c19c7c` | ⚠️ Unaudited |
| FutarchyRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392425 | `0xe2996f...c9f74e` | ⚠️ Unaudited |
| GnosisRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: gnosis `0x1c6761...18ea9a`; gnosis `0x1cc00a...d75b61`; gnosis `0x2070b8...59e140`; gnosis `0x790510...90509f`; gnosis `0x7babb8...eb281d`; gnosis `0x7e9757...d7f72a`; gnosis `0x8046a0...77fa79`; gnosis `0xacf776...9c6a70`; gnosis `0xe94d65...837389`; gnosis `0xf68ff4...349d07`; gnosis `0xfe8bf5...4a46b2` | ⚠️ Unaudited |
| GnosisRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392428 | `0xec9048...c70fb8` | ⚠️ Unaudited |
| GovernedRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: gnosis `0x126afb...ca2dc4`; gnosis `0x5693ca...7d6872`; gnosis `0x6beae2...558350`; gnosis `0x8da08a...d4792a`; gnosis `0x9e850e...667b19`; gnosis `0xa53544...32e0a6`; gnosis `0xa70f53...777a2a`; gnosis `0xceeb6a...583183` | ⚠️ Unaudited |
| LiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x031778...ecabd7` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37186b...256c4b` | ⚠️ Unaudited |
| MainnetRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392406 | `0x886ef0...af8bc6` | ⚠️ Unaudited |
| MainnetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8bf5...4a46b2` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392407 | `0x8bdc50...d27b93` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 31 deployments: gnosis `0x0b5f90...59d93a`; gnosis `0x0d479a...a3ac09`; gnosis `0x20a3b1...1bc2d2`; gnosis `0x21a72f...d1d6a3`; gnosis `0x225030...117711`; gnosis `0x232474...fa5ca8`; gnosis `0x60eb95...c110bf`; gnosis `0x612f80...07bc1e`; gnosis `0x61cdb9...32f459`; gnosis `0x6ac12e...4ef581`; gnosis `0x829c91...88dbcb`; gnosis `0x87aabb...e0baf7`; gnosis `0x87cf5c...d0173c`; gnosis `0x8b8de5...454778`; gnosis `0x9510c9...9e8aeb`; gnosis `0x9b6cca...7d8de1`; gnosis `0x9baeee...cda933`; gnosis `0x9e2272...24ad10`; gnosis `0x9ef70c...80bc7f`; gnosis `0xab903c...3f98ac`; gnosis `0xabe35c...4802f9`; gnosis `0xbbf8f7...bcc32e`; gnosis `0xc57764...088e17`; gnosis `0xc72f73...a0ca9e`; gnosis `0xe0d285...f51915`; gnosis `0xe820d0...4bb647`; gnosis `0xf27989...bb134e`; gnosis `0xf444a3...8423fd`; gnosis `0xfbebbb...cd2df0`; gnosis `0xfc5e55...cb63ce`; gnosis `0xfe414d...4b7c36` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392421 | `0x8f76bc...a9636a` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392404 | `0x1f728c...7b7904` | ⚠️ Unaudited |
| MarketFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 21 deployments: ethereum `0x3124e9...c77a73`; ethereum `0x336695...38f348`; gnosis `0x1246c7...f58e90`; gnosis `0x2dbe07...582467`; gnosis `0x2e3937...ecb68e`; gnosis `0x47fc00...3a78fb`; gnosis `0x4c98aa...8e6ed0`; gnosis `0x69ad60...b792b3`; gnosis `0x724478...d86c09`; gnosis `0x846f8f...92e6c5`; gnosis `0x8dd6fa...96e949`; gnosis `0x9498d2...c7bcc8`; gnosis `0xa99121...12ce33`; gnosis `0xaa43e7...a82ed7`; gnosis `0xab797c...7a87fc`; gnosis `0xc73323...b1131c`; gnosis `0xd1220e...821948`; gnosis `0xe619f5...14a2e6`; gnosis `0xe61f8c...13a788`; gnosis `0xeb0214...c20e6d`; gnosis `0xf365be...9818bf` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392420 | `0x83183d...5cdcf1` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392408 | `0xb2ab74...84771a` | ⚠️ Unaudited |
| MarketView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 15 deployments: ethereum `0x44921b...a79f00`; ethereum `0xab797c...7a87fc`; gnosis `0x0427d4...916d9f`; gnosis `0x3e202f...57142a`; gnosis `0x4ba0c4...dd4cc4`; gnosis `0x5f26f0...a5bbba`; gnosis `0x783b4b...2244ae`; gnosis `0x995dc9...27626f`; gnosis `0xbb85ca...dfdf8d`; gnosis `0xd1f885...36414a`; gnosis `0xd34b07...e849e2`; gnosis `0xd45d4b...5d35e7`; gnosis `0xda834f...9d9dbf`; gnosis `0xe1834d...475172`; gnosis `0xfe6f08...a56aa0` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392422 | `0x95493f...90f59c` | ⚠️ Unaudited |
| MultiDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: gnosis `0x0838bc...b704ef`; gnosis `0x08ed8d...b0fb2a`; gnosis `0x0c556a...a2e795`; gnosis `0x129de2...c9c29e`; gnosis `0x28abd3...1810d5`; gnosis `0x39c06a...55cb6c`; gnosis `0x3c918d...8905d4`; gnosis `0x42a305...7bb10b`; gnosis `0x53dfb9...ab33c6`; gnosis `0x714615...5d1953`; gnosis `0x8eca58...c6b74e`; gnosis `0x91a495...e8d95f` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x586c7b...31b545` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x91fd59...817834` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x023b8c...08866e`; gnosis `0x215694...2f7525` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x3f03d5...37b2fd`; gnosis `0x63f698...5fb658` | ⚠️ Unaudited |
| ParimutuelVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x506dcc...0b6137`; gnosis `0x659a90...2810c9`; gnosis `0x9627ae...ecdf69` | ⚠️ Unaudited |
| PickemSlateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x2a9fa7...5b0cad`; gnosis `0x4df41e...1612f5`; gnosis `0xa2cd7c...d9bb67`; gnosis `0xfe5754...aac3c3` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbad9f...eda0f7` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179d8f...2d05dd` | ⚠️ Unaudited |
| RealitioArbitratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12bb49...4ce346` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ccbf...7723b9` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9fc6f...8f1d3c` | ⚠️ Unaudited |
| RealitioProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x57d020...10afca` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392409 | `0xc72f73...a0ca9e` | ⚠️ Unaudited |
| RealityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x132bcf...4037dd`; gnosis `0x41ab65...6aa10c`; gnosis `0x691215...2c7d63`; gnosis `0xdec7c0...c4a210`; gnosis `0xee30cb...503490`; gnosis `0xf7e648...e6e9af` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392423 | `0xc260ad...0f2d6c` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8be71...ae4316` | ⚠️ Unaudited |
| Seer_LP_Point | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 6 deployments: gnosis `0x26427d...47eb4f`; gnosis `0x270912...5659ab`; gnosis `0x85e39f...a9edb3`; gnosis `0xb477c4...7b92ad`; gnosis `0xbc9a94...174d66`; gnosis `0xef1169...42a86f` | ⚠️ Unaudited |
| SeerCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x3a0d86...dc607c`; gnosis `0xedd48e...51acaf`; gnosis `0xf67736...cd466b` | ⚠️ Unaudited |
| SlateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x206865...edad3e`; gnosis `0x31ac36...6ecbac`; gnosis `0xb5a01f...22f1d9` | ⚠️ Unaudited |
| SportsSlateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: gnosis `0x293dfe...4640d1`; gnosis `0x6938ef...dc070a`; gnosis `0x7e53af...a732d8`; gnosis `0x8a670a...7f2999`; gnosis `0x931fc6...3fc6c4`; gnosis `0x96f61c...2a3619`; gnosis `0xca6dba...0340a3` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffb643...a04ee1` | ⚠️ Unaudited |
| SwaprSavingsXDaiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4f774e...8a09aa` | ⚠️ Unaudited |
| TradeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x14a3f8...0a4bd0` | ⚠️ Unaudited |
| TradeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7a797a...0607c1` | ⚠️ Unaudited |
| TradingCredits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x02d727...e2e5c2`; gnosis `0x075b4c...decc15`; gnosis `0x122f6b...ca35a8` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9843...31f984` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3af2ae...2157c9`; ethereum `0x5250b9...d8ae7d` | ⚠️ Unaudited |
| Wrapped1155Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392410 | `0xd19431...10b79f` | ⚠️ Unaudited |
| WrappedERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x383753...f2887a`; gnosis `0x5bc8dd...e3b557`; gnosis `0x940b60...b3c2f1`; gnosis `0xb105c8...dcae3c`; gnosis `0xd0ee78...6d6c40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (188)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392403 | `0x1ba2db...44d9b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392405 | `0x201803...4f85ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392411 | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392412 | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392413 | `0x44921b...a79f00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392414 | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392415 | `0xab797c...7a87fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392416 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392417 | `0xfe8bf5...4a46b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00ca76...0dede3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x016e62...f7dd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x023652...90b191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02b547...1dcbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x030e3b...67269d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03835b...3017c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03cb70...43acf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03d034...d5e012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x04cdb6...ceccde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0791e8...497408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x07dd32...a23981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0956b7...2d8a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x099efd...b91ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09e84c...cd9ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0bd271...53d101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d3273...4015c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0db8c3...d0534f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x100d17...2f4460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x12bb49...4ce346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x13ba6a...a3d070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x14662a...4c1443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x16a434...42e2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17181c...77b6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x177375...ad9b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x189d70...9e33ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19b1a7...947319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19ecfa...b40065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b2a23...3f3ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b780d...b72dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ba2db...44d9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ea2e0...ad0825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f728c...7b7904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ff0e9...8596ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x204a20...2f8be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x221456...775c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2342b8...496041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25a3e5...c9da05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2831df...0f391d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x28f293...ceb77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2a5961...16c241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2b8ad6...1a4ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2cb70f...408120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2db41e...180a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e51bf...0cea37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3038ad...6ff0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3332bb...08550a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x336695...38f348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34578a...449f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x38801c...2fbb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3a4634...58ccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3dc2a2...a196e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4115c9...59618f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43a365...2a9ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43c1a3...ab3e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43f306...4f6e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44921b...a79f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x478189...e8023d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4cf647...76368d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4f547e...92fb86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x55bae1...ac426a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5759c0...099735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5817da...561d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x591af1...2d2843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x592e6d...a6b232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5a8638...8cf9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be39c...5f8965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5eaa42...d486e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6082be...1b5f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x615fbb...82018a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x643752...5a2d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64a4f9...3b2134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x654e8e...0fd3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x70664c...da8900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73f989...dc42b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7563c9...15eaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x769578...b8305d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e1acb...dfd1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ece77...ed3b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7f4026...a3a41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8030a0...4fe3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x806d57...4ee9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x821d40...8528e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x841f32...18076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x84c6fc...2aee5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x85306c...ea3598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8819f2...0cca73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89038b...274273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x894f1e...b304e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89527d...a76910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8a9647...eac6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b4ad9...3f9db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e81fe...3f7261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f83a8...23cc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8ffdef...32ac58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x978494...dd2b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x98a164...0b4245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x99dd9b...4b4474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9aea5a...88ccad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9b1f03...f49ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9d2166...11f7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9da1fd...000ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1a986...beb0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2a7b2...e5da5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa48b4d...904a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa59180...8fa1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa638f2...5280dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa6e428...0c6f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa7f711...333a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa834cc...a75e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8457b...f61e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xab964d...b8ea92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac9bf8...3f98dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xace2c6...6ec7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae3002...347dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xafc6fd...ede6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb0f1d2...01270b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb19126...50e141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb2ab74...84771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb43721...1a7394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb5330e...154573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb745fe...5b3202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb89733...9450b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb917d7...522476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xba333a...877970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbaabc8...706fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbb6061...04759b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbdf422...b511f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe0034...c8af7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc2d432...9d063d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc7b072...34cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbbbab...1c69fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcbec93...ed59ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcd07b0...a1550b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392424 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd1f878...215143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd24880...02d415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd4e7f4...b8eac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd6cc87...5a5ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7e119...7f6917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd90546...900cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdacc76...1fb78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdd193f...849bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdeb5dc...0b3791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe1e55a...1647d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe36967...71007e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe5a4df...add300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe81c8b...162568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe939dd...aec4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9d43d...4414e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb311c...9dcf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xefa6cb...f0f485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf06f41...6f99bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1e315...461fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf5ccbf...7723b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf8b24d...63ff82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf9369c...9d3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfafaf0...33cd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb4c45...3c16b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdafab...d5aad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xff62fb...015199` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392429 | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392430 | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392431 | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392432 | `0xc72f73...a0ca9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392433 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392434 | `0xf5ccbf...7723b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392435 | `0xfe8bf5...4a46b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-reports.md](https://seer-3.gitbook.io/seer-documentation/other/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21122] audit-reports.md — no match: The provided text is a documentation index page listing audit reports for a 'Core' module, but it does not contain the actual audit report content. No contract names, file paths, or audit dates are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x774284...13c29c` | ConditionalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe789e4...f6b792` | FutarchyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec4fb9...5b484c` | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x03e1fc...a61cfc` | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe2996f...c9f74e` | FutarchyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec9048...c70fb8` | GnosisRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x886ef0...af8bc6` | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8bdc50...d27b93` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8f76bc...a9636a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f728c...7b7904` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x83183d...5cdcf1` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2ab74...84771a` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95493f...90f59c` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc72f73...a0ca9e` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc260ad...0f2d6c` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd19431...10b79f` | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 188 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [21122] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
