# Agentic Audit Brief: Convex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Convex Finance (`convex-finance`)
- Website: [https://www.convexfinance.com/](https://www.convexfinance.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fraxtal, polygon
- Contract surface: 257 unique implementations (431 raw deployments)
- Coverage basis: 10/66 confirmed own live verified implementations (15.2%); conservative 15.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $569,504,311.64
- On-chain TVL (included contracts): $177,851,413.24
- TVL by chain: Ethereum $177,851,413.24

## Project Description

This brief describes the observed EVM deployment and audit surface for Convex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 72 contract row(s) across arbitrum, ethereum, fraxtal, polygon. Structural roles: 34 core, 30 unclassified, 8 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 72
- Structural roles: core (34), unclassified (30), supporting (8)
- Contract kinds: contract (72)
- Detected standards: erc20 (11), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (37), boringcrypto (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

4 of 88 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**Booster** (`0xaffe96...c762f8`, chain 1)
Origin: frax-finance (`0x2b8b30...2ffc95`)
Containment: 69.2% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- claimBoostFees()
- setFeeToken(address,address)
- setTokenMinter(address,bool)

Removals (removed from original):
- addProxyOwner(address,address)
- castVote(address,uint256,bool)
- checkpointFeeRewards(address)
- claimFees(address,address)
- setFeeClaimer(address)
- setFeeClaimPair(address,address,bool)
- setOnChainDelegate(address,address)
- setVeFXSProxy(address,address)

**Booster** (`0xf403c1...8aae31`, chain 1)
Origin: aura (`0xf403c1...8aae31`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLocker** (`0xd18140...94af50`, chain 1)
Origin: frax-finance (`0x5ae0fc...ce56a1`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLockerV2** (`0x72a193...2db86e`, chain 1)
Origin: abracadabra (`0x72a193...2db86e`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x138938...541bb7`, chain 1)
- UnnamedContract (`0x25e124...c21616`, chain 1)
- UnnamedContract (`0x27445d...a7a04b`, chain 1)
- UnnamedContract (`0x3c995e...147ab9`, chain 1)
- UnnamedContract (`0x3ce640...80f1e6`, chain 1)
- UnnamedContract (`0x41a588...851a69`, chain 1)
- UnnamedContract (`0x5f4701...5c5c1b`, chain 1)
- UnnamedContract (`0x5fba69...8e5cd1`, chain 1)
- UnnamedContract (`0x60bd3d...f6738b`, chain 1)
- UnnamedContract (`0x782bce...a37f95`, chain 1)
- UnnamedContract (`0x877288...47de75`, chain 1)
- UnnamedContract (`0x8f55d7...a3181e`, chain 1)
- UnnamedContract (`0x92cf9e...a65070`, chain 1)
- UnnamedContract (`0x989aeb...24ad80`, chain 1)
- UnnamedContract (`0x9b622f...fab702`, chain 1)
- UnnamedContract (`0xa1bc2c...142991`, chain 1)
- UnnamedContract (`0xa2cf21...a86ee5`, chain 1)
- UnnamedContract (`0xadd2f5...29c673`, chain 1)
- UnnamedContract (`0xb5bbc8...586a4e`, chain 1)
- UnnamedContract (`0xba9801...20272d`, chain 1)
- UnnamedContract (`0xd20904...91d1e1`, chain 1)
- UnnamedContract (`0xdd49a9...5ec82b`, chain 1)
- UnnamedContract (`0xdecc7d...79360d`, chain 1)
- UnnamedContract (`0xe98984...e28fcc`, chain 1)
- UnnamedContract (`0xedccb3...08aa8d`, chain 1)
- UnnamedContract (`0xf3bd66...50d973`, chain 1)
- UnnamedContract (`0xfcb28d...0749cf`, chain 1)
- BaseRewardPool (`0x3fe656...a7587e`, chain 1)
- BoostDelegate (`0x806d47...6ade60`, chain 1)
- Booster (`0x79a50f...c3799e`, chain 1)
- Booster (`0xf403c1...8aae31`, chain 137)
- Booster (`0xf403c1...8aae31`, chain 42161)
- BoosterPlaceholder (`0xd363d1...bbf4e0`, chain 42161)
- BoostFeeClaimer (`0x394bfb...1847b6`, chain 1)
- Burner (`0xcfc7b3...1896e5`, chain 1)
- ClaimZap (`0x3f29cb...cf2516`, chain 1)
- ConvexMasterChef (`0x5f465e...d60605`, chain 1)
- ConvexRewardPool (`0x65eee1...68a1f5`, chain 137)
- ConvexRewardPool (`0xf2afb3...044c23`, chain 42161)
- ConvexToken (`0x4e3fbd...5b9d2b`, chain 1)
- CrvDepositor (`0x801459...dc86ae`, chain 1)
- CvxCrvStakingWrapper (`0xaa0c3f...dbe434`, chain 1)
- cvxCrvToken (`0x62b9c7...810aa7`, chain 1)
- cvxFpisStaking (`0xfa87db...6bc483`, chain 1)
- cvxFpisToken (`0xa28473...427df6`, chain 1)
- cvxFxnStaking (`0xec60cd...e06bef`, chain 1)
- cvxFxnToken (`0x183395...fffcb3`, chain 1)
- cvxFxsStaking (`0x49b4d1...37e31a`, chain 1)
- cvxFxsToken (`0xfeef77...4bdf74`, chain 1)
- cvxPrismaStaking (`0x0c73f1...0be108`, chain 1)
- cvxPrismaToken (`0x346352...e78185`, chain 1)
- cvxRewardPool (`0xcf50b8...139332`, chain 1)
- DropMinter (`0x886418...76d712`, chain 1)
- DropMinter (`0x9c4d60...ec9292`, chain 1)
- ExtraRewardPool (`0xa46944...7c861b`, chain 137)
- ExtraRewardPool (`0x665d4b...8c6ad4`, chain 42161)
- FeeDeposit (`0x665d4b...8c6ad4`, chain 137)
- FeeDeposit (`0xe7cdd5...5b878a`, chain 42161)
- FeeDepositV2 (`0x4b33e9...1fb5d5`, chain 1)
- FeeDepositV2 (`0x7a527d...a0d769`, chain 1)
- FeeDepositV2 (`0x8133f7...01395d`, chain 1)
- FeeDepositV2 (`0xe91861...b63efa`, chain 1)
- FeeReceiverCvxPrisma (`0xaf9240...76cf3f`, chain 1)
- FraxVoterProxy (`0x59cfcd...66800b`, chain 1)
- FxnDepositor (`0x56b3c8...b82b91`, chain 1)
- FxnVoterProxy (`0xd11a4e...7b7881`, chain 1)
- MerkleAirdrop (`0x2e088a...e4accd`, chain 1)
- PoolManager (`0xfc0a2f...2f8017`, chain 137)
- PoolManager (`0x98ece0...2faa8b`, chain 42161)
- PoolRewardHook (`0xedccb3...08aa8d`, chain 137)
- PoolRewardHook (`0xedccb3...08aa8d`, chain 42161)
- PoolUtilities (`0xb20e68...76eb42`, chain 42161)
- PrismaVoterProxy (`0x8ad7a9...dfdd5b`, chain 1)
- Proxy (`0xa3c5a1...3de2fb`, chain 1)
- RewardFactory (`0xcf50b8...139332`, chain 137)
- RewardFactory (`0x801459...dc86ae`, chain 42161)
- RewardManager (`0x3c995e...147ab9`, chain 137)
- RewardManager (`0x972794...519bd7`, chain 42161)
- TreasuryManager (`0xbb48c2...b09ea7`, chain 1)
- UniswapV2Pair (`0x05767d...3de906`, chain 1)
- UniswapV2Pair (`0x33f6dd...df4007`, chain 1)
- VoterProxy (`0x989aeb...24ad80`, chain 137)
- VoterProxy (`0x989aeb...24ad80`, chain 42161)
- VoterProxyOwner (`0xb1d7c7...0e69e8`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 72; live-surface rows included: 72 (71 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 98/101 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/66 (15.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 93 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 163 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 93 of 257 unique; 164 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/214
- Verified + Unaudited implementations: 204
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 257
- Raw deployments: 431
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $141,367,329.15
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 2.8% | 2021-04 |
| yAudit | Tier 2 | 4 | 1.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232837 | `0x3fe656...a7587e` | ✅ Audited |
| cvxRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232921 | `0xcf50b8...139332` | ✅ Audited |
| cvxFxsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232952 | `0xfeef77...4bdf74` | ✅ Audited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232946 | `0xf403c1...8aae31` | ✅ Audited |
| Booster | core_logic | project_anchor | own_core | 0 | polygon | n/a | 15 deployments: ethereum `0x2a465a...ca0a74`; ethereum `0x8694d0...3f47b5`; ethereum `0x91e575...a821c6`; ethereum `0x98a0b2...672340`; ethereum `0xcce10d...a2de96`; ethereum `0xd8bd5c...f28659`; polygon `0x138938...541bb7`; polygon `0x42e878...1c795b`; polygon `0x4e3fbd...5b9d2b`; polygon `0xf403c1...8aae31`; fraxtal `0xd3327c...270389`; arbitrum `0x138938...541bb7`; arbitrum `0x42e878...1c795b`; arbitrum `0x4e3fbd...5b9d2b`; arbitrum `0xf403c1...8aae31` | ✅ Audited |
| CrvDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232874 | `0x801459...dc86ae` | ✅ Audited |
| CvxCrvStakingWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232905 | `0xaa0c3f...dbe434` | ✅ Audited |
| FraxVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232849 | `0x59cfcd...66800b` | ✅ Audited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-232980 | `0x801459...dc86ae` | ✅ Audited |
| VoterProxy | unknown | project_anchor | own_core | 0 | polygon | n/a | 22 deployments: polygon `0x072022...5bfb73`; polygon `0x124e37...9bf781`; polygon `0x372516...096b7a`; polygon `0x6a226c...9955d0`; polygon `0x8dcba0...028881`; polygon `0x989aeb...24ad80`; polygon `0xa0718d...11e147`; fraxtal `0x072022...5bfb73`; fraxtal `0x124e37...9bf781`; fraxtal `0x372516...096b7a`; fraxtal `0x6a226c...9955d0`; fraxtal `0x6b8d22...c9c107`; fraxtal `0x8dcba0...028881`; fraxtal `0x989aeb...24ad80`; arbitrum `0x072022...5bfb73`; arbitrum `0x124e37...9bf781`; arbitrum `0x372516...096b7a`; arbitrum `0x6a226c...9955d0`; arbitrum `0x6b8d22...c9c107`; arbitrum `0x8dcba0...028881`; arbitrum `0x989aeb...24ad80`; arbitrum `0xa0718d...11e147` | ✅ Audited |

### ⚠️ Verified + Unaudited (204)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConvexToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232845 | `0x4e3fbd...5b9d2b` | ⚠️ Unaudited |
| cvxCrvToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232861 | `0x62b9c7...810aa7` | ⚠️ Unaudited |
| PrismaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4786...afd71c` | ⚠️ Unaudited |
| cvxFpisToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232901 | `0xa28473...427df6` | ⚠️ Unaudited |
| cvxFxnToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232813 | `0x183395...fffcb3` | ⚠️ Unaudited |
| cvxPrismaToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232823 | `0x346352...e78185` | ⚠️ Unaudited |
| DebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4591db...9fbb28` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367...1892b6`; ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x695350...6bb6ed`; ethereum `0xed8b26...9993ba` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5d...ee45ed` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e6746...e5521b`; ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907...8a6784` | ⚠️ Unaudited |
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6ecfa3...0122e8`; ethereum `0xab709e...952473` | ⚠️ Unaudited |
| AddLiquidityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33163e...5cb074` | ⚠️ Unaudited |
| AdminVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc53baa...696734`; ethereum `0xc5f876...648139` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bd112...b99c62`; ethereum `0xd49d86...14b817` | ⚠️ Unaudited |
| AirdropDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c5333...5578af`; ethereum `0x3ea032...419bee` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9...c73f86` | ⚠️ Unaudited |
| AllocationVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72bc1...436a0f` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31ae4c...5a8fa3`; ethereum `0xf89e51...f224e4` | ⚠️ Unaudited |
| BoostDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x058a5b...a4ff63`; ethereum `0x1933c9...42cca8`; ethereum `0x6d5d7e...2ca7d2`; ethereum `0xce899e...75350f`; ethereum `0xd44a7a...b894f8`; ethereum `0xfa3a2f...ec5bb6` | ⚠️ Unaudited |
| BoostDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232876 | `0x806d47...6ade60` | ⚠️ Unaudited |
| BoostDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b470b...fe2367`; ethereum `0x793961...54fc34` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232868 | `0x79a50f...c3799e` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232911 | `0xaffe96...c762f8` | ⚠️ Unaudited |
| BoosterOwner | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232976 | `0x2ca775...4c5558` | ⚠️ Unaudited |
| BoosterOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe98d9b...993377` | ⚠️ Unaudited |
| BoosterPlaceholder | core_logic | project_anchor | own_supporting | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xca4b02...6136c6`; arbitrum `0xd363d1...bbf4e0` | ⚠️ Unaudited |
| BoostFeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5578...93722f` | ⚠️ Unaudited |
| BoostFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232825 | `0x394bfb...1847b6` | ⚠️ Unaudited |
| BoostViewVoodoo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cddd5...d79586`; ethereum `0x6d325a...d46b12` | ⚠️ Unaudited |
| BoostViewVoodoo2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3d2...d371b2` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72c590...542719`; ethereum `0xecabcf...9a70a1` | ⚠️ Unaudited |
| BridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb31a34...7bcafd` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232809 | `0x0f6e12...421e94` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b80c3...916e57` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232923 | `0xcfc7b3...1896e5` | ⚠️ Unaudited |
| ClaimZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232833 | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063907...4a5ca5` | ⚠️ Unaudited |
| ConvexDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x000ca0...227de9`; ethereum `0x838a35...218fa1`; ethereum `0xcf139d...744a96` | ⚠️ Unaudited |
| ConvexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3da992...4bc867`; ethereum `0xd7ba31...465732` | ⚠️ Unaudited |
| ConvexMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232851 | `0x5f465e...d60605` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232958 | 2 deployments: polygon `0x65eee1...68a1f5`; arbitrum `0xf2afb3...044c23` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 10 deployments: polygon `0x43353a...19a8fa`; polygon `0x698b7c...e43d15`; fraxtal `0x25e124...c21616`; fraxtal `0xc5158d...522d7b`; arbitrum `0x3b2d30...135a9c`; arbitrum `0x489097...3e6fa2`; arbitrum `0x758631...93dc67`; arbitrum `0xa46944...7c861b`; arbitrum `0xd155b6...b255d6`; arbitrum `0xfdc630...039383` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ba207...9072a4`; ethereum `0xd92494...e51008` | ⚠️ Unaudited |
| CurveDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x572a4a...0c9d2a`; ethereum `0x6fa697...345590`; ethereum `0x924eca...8c7322`; ethereum `0xdc6932...d52498` | ⚠️ Unaudited |
| CurveDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8e659f...80729e`; ethereum `0xd9093a...dab57b`; ethereum `0xdbc54e...937f4e` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2664a7...d1569f`; ethereum `0x60af2b...9759e9` | ⚠️ Unaudited |
| CurveLendMinterFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391...76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e29...9cb8f5` | ⚠️ Unaudited |
| CurveProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x490b8c...5d2f7e` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903a...8fb777` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2f...d1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232948 | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFXB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x6a5a26...8212bc`; fraxtal `0x8301a2...423390` | ⚠️ Unaudited |
| cvxFXBRateCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x11c8cc...bf39c9`; fraxtal `0x13aa6c...5b8364`; fraxtal `0x6972dd...b04b09`; fraxtal `0xafe07c...87485f`; fraxtal `0xc93ab3...bd700a` | ⚠️ Unaudited |
| cvxFXBSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x0160cb...beef0f`; fraxtal `0xbc8923...a3a0ef` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac6...349545` | ⚠️ Unaudited |
| cvxFxnStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232940 | `0xec60cd...e06bef` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232842 | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232926 | `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232864 | `0x72a193...2db86e` | ⚠️ Unaudited |
| cvxPrismaStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232807 | `0x0c73f1...0be108` | ⚠️ Unaudited |
| cvxToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 8 deployments: fraxtal `0x3a562a...9e08e0`; fraxtal `0x3fc86c...d5dac9`; fraxtal `0x4e3fbd...5b9d2b`; fraxtal `0x62b9c7...810aa7`; fraxtal `0xa28473...427df6`; fraxtal `0xba9801...20272d`; fraxtal `0xefb4b2...6adab9`; fraxtal `0xfeef77...4bdf74` | ⚠️ Unaudited |
| DebtReducer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ac0a3...8e7cb4`; ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| DelegationFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39164...137748` | ⚠️ Unaudited |
| DropMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84f987...a13569`; ethereum `0xaa8d67...5635cb` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232883 | `0x886418...76d712` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232897 | `0x9c4d60...ec9292` | ⚠️ Unaudited |
| eETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa259...9c2603` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906e0d...851f42` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | n/a | 5 deployments: polygon `0xa46944...7c861b`; fraxtal `0x757c23...b9137c`; fraxtal `0xcf50b8...139332`; fraxtal `0xde6b40...858d20`; arbitrum `0x4223aa...587c0f` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232978 | `0x665d4b...8c6ad4` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70b66e...59b7e1`; ethereum `0xdb2222...6aea2a` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11651...245681` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43024...1410e9` | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b459...6bd576` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726251...804333` | ⚠️ Unaudited |
| FeeDeposit | unknown | project_anchor | own_supporting | 0 | polygon | unit-232960 | 2 deployments: polygon `0x665d4b...8c6ad4`; arbitrum `0xe7cdd5...5b878a` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5dccd...539776` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 3 deployments: ethereum `0x30575f...b835f7`; ethereum `0x35b6d1...ffa7a0`; ethereum `0x8133f7...01395d` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232843 | `0x4b33e9...1fb5d5` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232870 | `0x7a527d...a0d769` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232936 | `0xe91861...b63efa` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62253f...e21d4a` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae02...fa81c6` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce02...e9cbf8` | ⚠️ Unaudited |
| FeeReceiverCvxFxn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8259d9...b62937` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232827 | `0x3c716e...2efe6a` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232909 | `0xaf9240...76cf3f` | ⚠️ Unaudited |
| FeeRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f258f...089611` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a3a8...11d9fa` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239732...43cf51` | ⚠️ Unaudited |
| FpisMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcde8b5...602ecf` | ⚠️ Unaudited |
| FRAXShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3432b6...c964d0` | ⚠️ Unaudited |
| FxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b9...f06d9b` | ⚠️ Unaudited |
| FxnDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232847 | `0x56b3c8...b82b91` | ⚠️ Unaudited |
| FxnVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232925 | `0xd11a4e...7b7881` | ⚠️ Unaudited |
| FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c35...cecb43` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9...c0ce01` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07d171...945f9a` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51...a7a851` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0598d...8cab61` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8...6d7f37` | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a8...c02956` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-233006 | `0xa3c5a1...3de2fb` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bca...86e1e7` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8df0...2e850c` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5...bc14f7` | ⚠️ Unaudited |
| InterimAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a62a6...9d341e`; ethereum `0xbd665a...51465a` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c62...964e6a` | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786...fdaad1` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5de309...f8e9e2`; ethereum `0xfe847e...a06db9` | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x231928...4b3f79`; ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| LpRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f6d9...cd30a4` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232818 | `0x2e088a...e4accd` | ⚠️ Unaudited |
| MigrateTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1371c1...4f9047`; ethereum `0x5c15ce...1fce1c`; ethereum `0xc3eaf0...16b5d5`; ethereum `0xcc7218...bee9ee` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5871...47a9cd` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36ecde...13a1ae`; ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbe7f...889282` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fa55...a1eb1c` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6440e2...97c3db` | ⚠️ Unaudited |
| PlatformFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232820 | `0x2f30ef...4b9ba8` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0084c2...63d703` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2be95a...d26f7f`; ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0d73d3...7d4c3a`; ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9`; fraxtal `0x3b2d30...135a9c`; fraxtal `0xa7a4df...1dabd1`; fraxtal `0xf7758d...3859f4`; arbitrum `0x3ceead...a39ae3`; arbitrum `0x83d128...1fb565` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232972 | `0xfc0a2f...2f8017` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232987 | `0x98ece0...2faa8b` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a38...b423de` | ⚠️ Unaudited |
| PoolRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb95d6...c1f5af` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232968 | `0xedccb3...08aa8d` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x3e3427...9e6db6`; fraxtal `0x5ad968...6ac3ec` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-233000 | `0xedccb3...08aa8d` | ⚠️ Unaudited |
| PoolUtilities | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x7abe78...8caa72`; ethereum `0x7ec3df...0216de`; ethereum `0x91b6d8...9937b2`; ethereum `0xcc8bba...b1e65a`; ethereum `0xcdd65f...9d7c21`; polygon `0xba0756...31dbb0`; fraxtal `0xa20ca8...f334e6`; fraxtal `0xbf7af1...b95f16`; fraxtal `0xc4b44c...686cff`; arbitrum `0x87ca40...c56b5c` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232954 | `0x25e124...c21616` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232991 | `0xb20e68...76eb42` | ⚠️ Unaudited |
| PoolUtilities | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-232994 | `0xcf50b8...139332` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fdb73...870799`; ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c...8b3cff` | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f8444...82ea93`; ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x543a89...a884ed`; ethereum `0x5b0398...864d38` | ⚠️ Unaudited |
| PriceFeedNoPrevious | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e410...1d3e86` | ⚠️ Unaudited |
| PrismaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d17ea...64ccf8` | ⚠️ Unaudited |
| PrismaDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232859 | `0x61404f...c2d5b8` | ⚠️ Unaudited |
| PrismaDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa88a7f...f29ce9` | ⚠️ Unaudited |
| PrismaSnapshotMockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3030...0acc56` | ⚠️ Unaudited |
| PrismaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bdf2...7eb02c` | ⚠️ Unaudited |
| PrismaVoterProxy | unknown | project_anchor | own_core | 0 | ethereum | n/a | 5 deployments: ethereum `0x2fd521...7d2671`; ethereum `0x3fce07...333ca9`; ethereum `0x85fd46...885b39`; ethereum `0x8ad7a9...dfdd5b`; ethereum `0x8fbb0d...539872` | ⚠️ Unaudited |
| ProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xf53173...fc7a2b`; arbitrum `0xf53173...fc7a2b` | ⚠️ Unaudited |
| ProxyVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232913 | `0xb20b38...37674a` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x05c630...da5653`; ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b` | ⚠️ Unaudited |
| rETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f9...6e2cb2` | ⚠️ Unaudited |
| RewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x47aaec...3c5709`; fraxtal `0x858847...750361` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-232966 | `0xcf50b8...139332` | ⚠️ Unaudited |
| RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x2d82ce...c5bea5`; fraxtal `0xe02988...4177cd` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1...7b9c30` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | polygon | unit-232956 | `0x3c995e...147ab9` | ⚠️ Unaudited |
| RewardManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: fraxtal `0x52500e...5c33db`; fraxtal `0xb8691f...eab914`; fraxtal `0xfc0a2f...2f8017`; arbitrum `0x1f3718...67c40a`; arbitrum `0x33b7fb...08899e`; arbitrum `0x3c995e...147ab9`; arbitrum `0xc76e11...fc3414` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-232982 | `0x972794...519bd7` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe09...b130f5` | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26...476665` | ⚠️ Unaudited |
| SdPendleCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x606462...c7fecf` | ⚠️ Unaudited |
| ShortPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0055e2...be82fa`; ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x218b68...d99801`; ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d35dc...174a74`; ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8...72aa3e` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bab3f...8bbb50`; ethereum `0x5c4543...1a1464` | ⚠️ Unaudited |
| SpotOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0eaeca...79fa51`; ethereum `0x8c2e50...38f64d`; ethereum `0x9da2a3...381e47` | ⚠️ Unaudited |
| SpotOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcdaa...9ba14b` | ⚠️ Unaudited |
| SpotOracleAggregatorUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf40c...eaa071` | ⚠️ Unaudited |
| StakedCvxFxs | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8c279f...216892` | ⚠️ Unaudited |
| StakeNTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x195115...3fdb83`; ethereum `0x4761bc...844d52`; ethereum `0x925acc...a00ee6`; ethereum `0xbe6004...f45217` | ⚠️ Unaudited |
| StakingProxyERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2aa801...dc0b04`; ethereum `0x359c1e...c1fc81` | ⚠️ Unaudited |
| StakingProxyRebalancePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x54eadf...5a9266`; ethereum `0x55decf...ebc55f`; ethereum `0xc39f8c...3af528`; ethereum `0xd6da2a...24cea8`; ethereum `0xdb1a3e...4b9d7b` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b8...a96da2` | ⚠️ Unaudited |
| SwapDebtForCollZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x114785...342a1a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863f...e4e61a` | ⚠️ Unaudited |
| Token Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194...f71def` | ⚠️ Unaudited |
| TokenLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7854...22829d` | ⚠️ Unaudited |
| TreasuryFunds | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe967cd...c48bed` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97...bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x148e58...238cf8`; ethereum `0xeb8121...6de6b3` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232919 | `0xbb48c2...b09ea7` | ⚠️ Unaudited |
| TreasuryManagerFrax | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b...055f80` | ⚠️ Unaudited |
| TreasuryManagerFxGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be4ec...57edcc` | ⚠️ Unaudited |
| TreasuryManagerPrisma | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232930 | `0xd60cd4...726dfd` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17...e74316` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14a3b7...05f7a6`; ethereum `0x297b70...e4cd3f`; ethereum `0x4482bd...861cf5`; ethereum `0x50c4d6...648d0e` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbba100...b1ac01`; ethereum `0xc9c2d0...03e9c4` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232805 | 2 deployments: ethereum `0x05767d...3de906`; ethereum `0x33f6dd...df4007` | ⚠️ Unaudited |
| Utilities | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232835 | `0x3fc264...8f7951` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41...64b503` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c...b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a7...1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647...e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e...1fa872` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2290ee...c10bdb` | ⚠️ Unaudited |
| VestingClaim | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232872 | `0x7e2ca1...9065e7` | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e4f31...c54ced` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96b678...4af030` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232989 | `0xb1d7c7...0e69e8` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a...f1d469` | ⚠️ Unaudited |
| VulnerableTroveRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e07cf...7d0438` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3669c4...fce737`; ethereum `0xc8418a...adc5b0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007fd0...ad89cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232811 | `0x138938...541bb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232815 | `0x25e124...c21616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232817 | `0x27445d...a7a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343ad5...306550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232829 | `0x3c995e...147ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232831 | `0x3ce640...80f1e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232840 | `0x41a588...851a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232853 | `0x5f4701...5c5c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232855 | `0x5fba69...8e5cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232857 | `0x60bd3d...f6738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232866 | `0x782bce...a37f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232881 | `0x877288...47de75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232887 | `0x8f55d7...a3181e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232889 | `0x92cf9e...a65070` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232893 | `0x989aeb...24ad80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232894 | `0x9b622f...fab702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232899 | `0xa1bc2c...142991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232903 | `0xa2cf21...a86ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232907 | `0xadd2f5...29c673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48390...6cbe8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232915 | `0xb5bbc8...586a4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232917 | `0xba9801...20272d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232928 | `0xd20904...91d1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232932 | `0xdd49a9...5ec82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232934 | `0xdecc7d...79360d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232938 | `0xe98984...e28fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232942 | `0xedccb3...08aa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232944 | `0xf3bd66...50d973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232950 | `0xfcb28d...0749cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5f3b5d...94e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67082f...c5812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa46944...7c861b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf10546...a7104d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf403c1...8aae31` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Convex Platform Security Audit Report.pdf](https://github.com/convex-eth/platform/blob/main/audit/Convex%20Platform%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 14 | high |
| [PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf](https://github.com/convex-eth/platform/blob/main/audit/PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf](https://github.com/convex-eth/platform/blob/main/audit/Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [convex-cvxcrv-staking-wrapper.pdf](https://github.com/convex-eth/platform/blob/main/audit/convex-cvxcrv-staking-wrapper.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf](https://github.com/convex-eth/frax-cvx-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | medium |
| [convex-sidechain-audit-nomoi.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/convex-sidechain-audit-nomoi.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12945] Convex Platform Security Audit Report.pdf — matched: All contracts listed in the 'FILES LISTING' section are in scope.
- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf — no match: Only one contract in scope: ConvexStakingWrapperOhmSync. Audit date from cover page and latest audit report date.
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf — no match: Scope includes contracts under contracts/priceProviders/curve/*, contracts/priceProviders/curveLPTokens/*, contracts/external/convex/*, contracts/wrappers/*, ForwarderPriceProvider.sol, and SiloRouterV2.sol. Version 2 removed curve/* and renamed convex wrappers. Version 4 added reentrancy check files. The audit date is April 4, 2023 from the cover page.
- [12948] convex-cvxcrv-staking-wrapper.pdf — matched: No reason recorded
- [12949] PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf — matched: Extracted contract names from findings targets and mentions. No explicit scope table, but contracts are clearly audited targets.
- [12950] PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf — matched: No explicit scope table; contracts extracted from findings targets and descriptions.
- [12951] convex-sidechain-audit-nomoi.pdf — no match: No explicit scope section found; contracts inferred from findings. No date found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Convex Platform Security Audit Report.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | BaseRewardPool | own contract | BaseRewardPool (selected) `0x3fe656...a7587e` — deployed 2021-05-17 12:20:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | CrvDepositor | own contract | CrvDepositor (selected) `0x801459...dc86ae` — deployed 2021-05-17 12:15:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | StashFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Cvx | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV2 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Booster | own contract | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-05-17 was 28d from audit; next candidate 575d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | ManagedRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | RewardFactory | ambiguous — not counted | RewardFactory (alternative) `0x801459...dc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b8...139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | cCrv | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DebugInterfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cCrvRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | TokenFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV1 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cvxRewardPool | own contract | cvxRewardPool (selected) `0xcf50b8...139332` — deployed 2021-05-17 12:21:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf | ConvexStakingWrapperOhmSync | unmatched — not counted | — | listed in scope table and throughout report | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ForwarderPriceProvider | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | SiloRouterV2 | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | CurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveHackyPool | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSilo | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapper in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSiloFactory | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapperFactory in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapper | unmatched — not counted | — | renamed from ConvexStakingWrapperSilo in version 2 | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapperFactory | unmatched — not counted | — | renamed from ConvexStakingWrapperSiloFactory in version 2 | no |
| convex-cvxcrv-staking-wrapper.pdf | CvxCrvStakingWrapper | own contract | CvxCrvStakingWrapper (selected) `0xaa0c3f...dbe434` — deployed 2023-01-20 04:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FxsDepositor | unmatched — not counted | — | Target in finding PVE-001 and mentioned in PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | IVoteEscrow | unmatched — not counted | — | Interface mentioned in finding PVE-001 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyERC20 | unmatched — not counted | — | Target in finding PVE-002 and mentioned in PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyUniV3 | unmatched — not counted | — | Target in finding PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | cvxFxsToken | own contract | cvxFxsToken (selected) `0xfeef77...4bdf74` — deployed 2021-12-22 12:09:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FeeRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | MultiRewards | unmatched — not counted | — | Mentioned in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | PoolRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FraxVoterProxy | own contract | FraxVoterProxy (selected) `0x59cfcd...66800b` — deployed 2021-12-21 10:21:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb3...044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee1...68a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | VoterProxy | own contract | VoterProxy (selected) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | Booster | own contract | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardManager | ambiguous — not counted | RewardManager (alternative) `0x972794...519bd7` — deployed 2023-02-27 07:12:16+03 — liveness: live (current_address_book_code)<br>RewardManager (alternative) `0x3c995e...147ab9` — deployed 2023-03-08 08:38:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardFactory | own contract | RewardFactory (selected) `0x801459...dc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b8...139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | TokenFactory | unmatched — not counted | — | Mentioned in description of PVE-003 | no |
| convex-sidechain-audit-nomoi.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb3...044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee1...68a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f...c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe96...c762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c1...8aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb...24ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | ExtraRewardPool | ambiguous — not counted | ExtraRewardPool (alternative) `0xa46944...7c861b` — deployed 2023-03-08 08:39:08+03 — liveness: live (code_present_context)<br>ExtraRewardPool (alternative) `0x665d4b...8c6ad4` — deployed 2022-11-17 16:55:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4e3fbd...5b9d2b` | ConvexToken | token | $105,466,529.64 | Verified native implementation with $105,466,529.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62b9c7...810aa7` | cvxCrvToken | token | $31,331,091.33 | Verified native implementation with $31,331,091.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa28473...427df6` | cvxFpisToken | token | $2,129,509.33 | Verified native implementation with $2,129,509.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x183395...fffcb3` | cvxFxnToken | token | $2,054,177.22 | Verified native implementation with $2,054,177.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x346352...e78185` | cvxPrismaToken | token | $386,021.62 | Verified native implementation with $386,021.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x806d47...6ade60` | BoostDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79a50f...c3799e` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaffe96...c762f8` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ca775...4c5558` | BoosterOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xca4b02...6136c6` | BoosterPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x394bfb...1847b6` | BoostFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f6e12...421e94` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfc7b3...1896e5` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f29cb...cf2516` | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f465e...d60605` | ConvexMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x65eee1...68a1f5` | ConvexRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa87db...6bc483` | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec60cd...e06bef` | cvxFxnStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49b4d1...37e31a` | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd18140...94af50` | CvxLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72a193...2db86e` | CvxLockerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c73f1...0be108` | cvxPrismaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x886418...76d712` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c4d60...ec9292` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4223aa...587c0f` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665d4b...8c6ad4` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x665d4b...8c6ad4` | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30575f...b835f7` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b33e9...1fb5d5` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a527d...a0d769` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe91861...b63efa` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c716e...2efe6a` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf9240...76cf3f` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56b3c8...b82b91` | FxnDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd11a4e...7b7881` | FxnVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e088a...e4accd` | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f30ef...4b9ba8` | PlatformFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfc0a2f...2f8017` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98ece0...2faa8b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xedccb3...08aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xedccb3...08aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x25e124...c21616` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb20e68...76eb42` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61404f...c2d5b8` | PrismaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fd521...7d2671` | PrismaVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb20b38...37674a` | ProxyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcf50b8...139332` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3c995e...147ab9` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x972794...519bd7` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb48c2...b09ea7` | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd60cd4...726dfd` | TreasuryManagerPrisma | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fc264...8f7951` | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e2ca1...9065e7` | VestingClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb1d7c7...0e69e8` | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 201 |
| upstream | 11 |
| standard_library | 2 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 30 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1, medium=1
- Match method counts: temporal_name=4, unique_name=6

Zero-match audit list:

- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf
- [12951] convex-sidechain-audit-nomoi.pdf

Fork inheritance lineage and inherited audits are included when available.
