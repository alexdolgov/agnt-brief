# Agentic Audit Brief: Cooler Loans

## Export Authority

- Production state: **published scope**
- Raw selected rows: 20 across 7 audit(s)
- Eligible audit results: 9 (7 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Cooler Loans (`cooler-loans`)
- Website: [https://app.olympusdao.finance/#/lending/cooler](https://app.olympusdao.finance/#/lending/cooler)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, boba, ethereum, fantom, goerli, optimism, polygon, sepolia
- Contract surface: 337 unique implementations (337 raw deployments)
- Coverage basis: 12/75 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $440,168,046.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cooler Loans. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 86 contract row(s) across arbitrum, avalanche, base, berachain, boba, ethereum, fantom, goerli, optimism, polygon, sepolia. Structural roles: 74 core, 11 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 86
- Structural roles: core (74), supporting (11), infra (1)
- Contract kinds: contract (86)
- Detected standards: erc165 (12), erc20 (7), erc20permit (5), erc1967proxy (2), ownable (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (47), solmate (29), foundry (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

5 of 153 contracts are derived from known codebases. 148 contracts have no detected origin.

### Forked Contracts

**AuraAllocator** (`0x872ebd...4bac7e`, chain 1)
Origin: cooler-loans (`0x061c86...80d818`)
Containment: 82.4% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- addBPT(address,address,uint96,IERC20[])
- toggleShouldLock()

Removals (removed from original):
- fDataAdd(fData)
- fusePoolAdd(address)
- setRewards(address)

**BtrflyAllocator** (`0xc8431f...c54e2f`, chain 1)
Origin: cooler-loans (`0x47d8d0...0e655c`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- callRebase()

Removals (removed from original):
- sendETH(address)
- sendToken(address,address)

**LUSDAllocatorV2R** (`0x47d8d0...0e655c`, chain 1)
Origin: cooler-loans (`0x872ebd...4bac7e`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- sendETH(address)
- sendToken(address,address)

Removals (removed from original):
- addBPT(address,address,uint96,IERC20[])
- toggleShouldLock()

**OlympusBondDepository** (`0x10c0f9...89d08d`, chain 1)
Origin: pendle (`0x0daf1a...4a1e09`)
Containment: 88.9% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- initializeBondTerms(uint256,uint256,uint256,uint256,uint256,uint256,uint256)

Removals (removed from original):
- initializeBondTerms(uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)
- setOLYMPUSTreasury(address)

**OlympusBondDepositoryV2** (`0x902504...9a1ef6`, chain 1)
Origin: hectagon (`0x9ae390...eeebcf`)
Containment: 76.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setAuthority(IOlympusAuthority)
- setRewards(uint256,uint256)
- whitelist(address)

Removals (removed from original):
- setAuthority(IHectagonAuthority)
- setDaoRewards(uint256,uint256)
- setPartnerTerm(address,uint256,uint256)
- setPartnerTermCap(uint256)
- setReferTerm(address,uint256,uint256)
- setReferTermCap(uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04f269...52111f`, chain 1)
- UnnamedContract (`0x1c21f8...b38b7a`, chain 1)
- UnnamedContract (`0x2286d7...47f54b`, chain 1)
- UnnamedContract (`0x245cc3...17988b`, chain 1)
- UnnamedContract (`0x30a967...2e907e`, chain 1)
- UnnamedContract (`0x34d7d7...2def7c`, chain 1)
- UnnamedContract (`0x383518...14a899`, chain 1)
- UnnamedContract (`0x45e563...09543a`, chain 1)
- UnnamedContract (`0x5206d1...01f78b`, chain 1)
- UnnamedContract (`0x575409...97381c`, chain 1)
- UnnamedContract (`0x582485...6c5ecb`, chain 1)
- UnnamedContract (`0x623164...4e1a1c`, chain 1)
- UnnamedContract (`0x6417f2...4d2b52`, chain 1)
- UnnamedContract (`0x64aa33...e7f1d5`, chain 1)
- UnnamedContract (`0x6cafd7...fbfa59`, chain 1)
- UnnamedContract (`0x73df08...4c795e`, chain 1)
- UnnamedContract (`0x767e34...81e0a9`, chain 1)
- UnnamedContract (`0x8510c8...ec2514`, chain 1)
- UnnamedContract (`0x877caf...a4d700`, chain 1)
- UnnamedContract (`0x956c43...78c151`, chain 1)
- UnnamedContract (`0x97b3ef...e31fca`, chain 1)
- UnnamedContract (`0x9a315b...5813ef`, chain 1)
- UnnamedContract (`0xa6013b...7711b4`, chain 1)
- UnnamedContract (`0xa61b84...f0b6ff`, chain 1)
- UnnamedContract (`0xa8687a...3d9613`, chain 1)
- UnnamedContract (`0xa8a6ff...cd2d55`, chain 1)
- UnnamedContract (`0xa90bfe...6a491e`, chain 1)
- UnnamedContract (`0xb216d7...659ec8`, chain 1)
- UnnamedContract (`0xb63cac...7a8020`, chain 1)
- UnnamedContract (`0xb6c9dc...8b6e16`, chain 1)
- UnnamedContract (`0xc20cff...5a02f7`, chain 1)
- UnnamedContract (`0xc58e92...7d3ce6`, chain 1)
- UnnamedContract (`0xc60a66...63cc38`, chain 1)
- UnnamedContract (`0xc8c436...7a612d`, chain 1)
- UnnamedContract (`0xc9518a...513ccf`, chain 1)
- UnnamedContract (`0xd6c4d7...5b282f`, chain 1)
- UnnamedContract (`0xdbf068...2fc42d`, chain 1)
- UnnamedContract (`0xde3e73...a6f772`, chain 1)
- UnnamedContract (`0xe62952...236f1c`, chain 1)
- UnnamedContract (`0xeeeb97...6b2e05`, chain 1)
- UnnamedContract (`0xf6d5d0...f59e90`, chain 1)
- UnnamedContract (`0xfb1776...0f67b6`, chain 1)
- UnnamedContract (`0xfd31c7...36566a`, chain 1)
- UnnamedContract (`0x13dfef...5153a3`, chain 10)
- UnnamedContract (`0x22ae99...cdb4c0`, chain 10)
- UnnamedContract (`0x559a14...07f36c`, chain 10)
- UnnamedContract (`0xb1fa0a...437ad1`, chain 10)
- UnnamedContract (`0xbc9ee0...49eeae`, chain 10)
- UnnamedContract (`0xd8ca34...b45195`, chain 137)
- UnnamedContract (`0xe06efa...cce8f7`, chain 137)
- UnnamedContract (`0x2bc001...e5fb10`, chain 250)
- UnnamedContract (`0x91fa20...233fdc`, chain 250)
- UnnamedContract (`0xd22c0a...a62c95`, chain 288)
- UnnamedContract (`0x060cb0...fcdcc0`, chain 8453)
- UnnamedContract (`0x13dfef...5153a3`, chain 8453)
- UnnamedContract (`0x18878d...d3159c`, chain 8453)
- UnnamedContract (`0x22ae99...cdb4c0`, chain 8453)
- UnnamedContract (`0x623164...4e1a1c`, chain 8453)
- UnnamedContract (`0x6ca1a9...9dac6e`, chain 8453)
- UnnamedContract (`0xb1fa0a...437ad1`, chain 8453)
- UnnamedContract (`0xbc9ee0...49eeae`, chain 8453)
- UnnamedContract (`0x56db53...f3c81a`, chain 42161)
- UnnamedContract (`0x78f849...5a343e`, chain 42161)
- UnnamedContract (`0x8d9ba5...e65fb1`, chain 42161)
- UnnamedContract (`0x8f6406...570d87`, chain 42161)
- UnnamedContract (`0xeac3ec...1f2dac`, chain 42161)
- UnnamedContract (`0xf0cb2d...017028`, chain 42161)
- UnnamedContract (`0xff5f09...7834d6`, chain 42161)
- UnnamedContract (`0x321e70...f84251`, chain 43114)
- UnnamedContract (`0x8cd309...0c2073`, chain 43114)
- UnnamedContract (`0x0d33c8...5be66f`, chain 80094)
- UnnamedContract (`0x18878d...d3159c`, chain 80094)
- UnnamedContract (`0x623164...4e1a1c`, chain 80094)
- UnnamedContract (`0xa5ea62...b2aaf0`, chain 80094)
- UnnamedContract (`0xb1fa0a...437ad1`, chain 80094)
- UnnamedContract (`0xba42be...32ea47`, chain 80094)
- UnnamedContract (`0xbc9ee0...49eeae`, chain 80094)
- UnnamedContract (`0xe37d9a...190794`, chain 80094)
- AaveAllocator (`0x0e1177...5fd9d4`, chain 1)
- AaveAllocatorV2 (`0x0d33c8...5be66f`, chain 1)
- AlchemixAllocatorV2 (`0x51563d...39bf56`, chain 1)
- AuraAllocatorV2 (`0x8caf91...d98fad`, chain 1)
- BalancerLiquidityMigrator (`0xa9b52a...6618a6`, chain 1)
- BondFixedTermTeller (`0x007f77...a5fed6`, chain 1)
- BondManager (`0xf577c7...d2b2a3`, chain 1)
- Burner (`0x9f08c2...310558`, chain 1)
- CCIPCrossChainBridge (`0xfbf638...1d143d`, chain 1)
- CDAuctioneerLimitOrders (`0x7d8f82...fafc2e`, chain 1)
- ConvertibleDepositAuctioneer (`0xf35193...29e39a`, chain 1)
- ConvertibleDepositFacility (`0xebde55...5f9678`, chain 1)
- ConvexAllocator (`0x3df5a3...56df78`, chain 1)
- CoolerComposites (`0x659376...1c57fd`, chain 1)
- CoolerFactory (`0x30ce56...db4216`, chain 1)
- CoolerLtvOracle (`0x9ee9f0...91e8dc`, chain 1)
- CoolerTreasuryBorrower (`0xd58d74...3779b0`, chain 1)
- CoolerV2Migrator (`0xe045bd...e358d2`, chain 1)
- CrossChainBridge (`0x20b383...fb285c`, chain 42161)
- CVXAllocatorV2 (`0x2d643d...c71681`, chain 1)
- DepositManager (`0xcb4e21...7fbbf2`, chain 1)
- DepositRedemptionVault (`0x20a3d8...9029db`, chain 1)
- Distributor (`0x27e606...697866`, chain 1)
- DSRAllocator (`0x0ea263...46d063`, chain 1)
- Emergency (`0x9229b0...714a75`, chain 1)
- ETHBondDeposits (`0x2b0fbb...f33639`, chain 1)
- FraxSharesAllocatorVoting (`0xde7b85...309475`, chain 1)
- FraxswapPair (`0x38633e...74699f`, chain 1)
- FxsAllocatorV2 (`0x0f953d...a73493`, chain 1)
- GnosisSafeL2 (`0x012bbf...e2ad4c`, chain 42161)
- GnosisSafeProxy (`0x91494d...d099b5`, chain 80094)
- gOHM (`0x0ab870...20a52f`, chain 1)
- GovernorBravoDelegate (`0x094123...ceffcd`, chain 1)
- Kernel (`0x18878d...d3159c`, chain 10)
- LiquidityMigrator (`0x13dfef...5153a3`, chain 1)
- LockReleaseTokenPool (`0xa5588e...7de3ad`, chain 1)
- LUSDAllocator (`0x67bae8...007180`, chain 1)
- LUSDAllocatorV2 (`0x2c1700...d2a578`, chain 1)
- MetaGovernanceAllocator (`0x41afc1...02d58c`, chain 1)
- MigrationRebalancer (`0x77b19a...2c404e`, chain 1)
- MonoCooler (`0xdb591e...68e7cc`, chain 1)
- MultiSigWalletWithDailyLimit (`0xd1f617...8e4b32`, chain 43114)
- OhmBondManager (`0x73d7e4...493896`, chain 1)
- OlympusAuthority (`0x060cb0...fcdcc0`, chain 80094)
- OlympusBoostedLiquidityRegistry (`0x375e06...3e2275`, chain 1)
- OlympusCvxHolder (`0xdfc95a...e7f728`, chain 1)
- OlympusDepositPositionManager (`0x02331a...1a9f1c`, chain 1)
- OlympusERC20Token (`0x060cb0...fcdcc0`, chain 10)
- OlympusGovDelegation (`0xd3204a...daad74`, chain 1)
- OlympusLender (`0x868c3a...b30f03`, chain 42161)
- OlympusMinter (`0x623164...4e1a1c`, chain 10)
- OlympusProMarketCreator (`0xb1fa0a...437ad1`, chain 1)
- OlympusProV2 (`0x22ae99...cdb4c0`, chain 1)
- OlympusRange (`0x399cd3...f60fb5`, chain 1)
- OlympusRoles (`0x22ae99...cdb4c0`, chain 80094)
- OlympusTokenMigrator (`0x184f3f...e784b3`, chain 1)
- OlympusTreasury (`0x31f8cc...c846e8`, chain 1)
- RariFuseAllocator (`0x061c86...80d818`, chain 1)
- ReceiptTokenManager (`0xd98b5b...beddd1`, chain 1)
- RolesAdmin (`0x69168c...c93b70`, chain 42161)
- sOlympus (`0x049066...ccd460`, chain 1)
- StakingWarmup (`0x2882a5...07c5f1`, chain 1)
- SynapseERC20 (`0x0b5740...868ffb`, chain 10)
- Timelock (`0x953ea3...2c9c39`, chain 1)
- TreasuryExtender (`0xb32ad0...2d17af`, chain 1)
- UniswapV2Pair (`0x2dce0d...bf4877`, chain 1)
- V1Migrator (`0x513165...90b8b0`, chain 1)
- wOHM (`0xca7654...8e3e65`, chain 1)
- YieldDirector (`0x260417...358f18`, chain 1)
- YieldRepurchaseFacility (`0x271e35...0b0692`, chain 1)

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 86 (75 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 153/251 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/75 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 153 own, 95 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 153 of 337 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 12/75
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 337
- Raw deployments: 337
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: 1.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| KebabSec | Tier 2 | 4 | 5.3% | 2022-11 |
| unknown | Tier 2 | 4 | 5.3% | 2025-04 |
| Electisec | Tier 2 | 2 | 2.7% | 2025-03 |
| Sherlock | Tier 1 | 1 | 1.3% | 2023-09 |
| Zac Obron | Tier 2 | 1 | 1.3% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoolerComposites | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382499 | `0x659376...1c57fd` | ✅ Audited |
| CoolerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382469 | `0x30ce56...db4216` | ✅ Audited |
| CoolerLtvOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382535 | `0x9ee9f0...91e8dc` | ✅ Audited |
| CoolerTreasuryBorrower | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382563 | `0xd58d74...3779b0` | ✅ Audited |
| CoolerV2Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382573 | `0xe045bd...e358d2` | ✅ Audited |
| Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382462 | `0x27e606...697866` | ✅ Audited |
| Emergency | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382523 | `0x9229b0...714a75` | ✅ Audited |
| MonoCooler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382569 | `0xdb591e...68e7cc` | ✅ Audited |
| OlympusGovDelegation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382562 | `0xd3204a...daad74` | ✅ Audited |
| OlympusLender | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382630 | `0x868c3a...b30f03` | ✅ Audited |
| OlympusMinter | unknown | project_anchor | own_supporting | 0 | optimism | unit-382593 | `0x623164...4e1a1c` | ✅ Audited |
| OlympusTreasury | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382470 | `0x31f8cc...c846e8` | ✅ Audited |

### ⚠️ Verified + Unaudited (163)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382446 | `0x0e1177...5fd9d4` | ⚠️ Unaudited |
| AaveAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382445 | `0x0d33c8...5be66f` | ⚠️ Unaudited |
| AlchemixAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382487 | `0x51563d...39bf56` | ⚠️ Unaudited |
| AlphaOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ecfd...b0792e` | ⚠️ Unaudited |
| AltExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053449...daa729` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70d6b3...a72c40` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x739ca6...8abc4b` | ⚠️ Unaudited |
| aOHMMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906d7a...ad8fd2` | ⚠️ Unaudited |
| AuraAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382516 | `0x872ebd...4bac7e` | ⚠️ Unaudited |
| AuraAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382519 | `0x8caf91...d98fad` | ⚠️ Unaudited |
| BackingRefill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc448b2...a09d8c` | ⚠️ Unaudited |
| BalancerLiquidityMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382546 | `0xa9b52a...6618a6` | ⚠️ Unaudited |
| BalancerStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382483 | `0x48bdc4...013cdc` | ⚠️ Unaudited |
| BLVaultLido | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-382708 | `0xafe729...7c4b23` | ⚠️ Unaudited |
| BLVaultLusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc4d4...9655db` | ⚠️ Unaudited |
| BLVaultManagerLusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263828...207bc9` | ⚠️ Unaudited |
| BondCallback | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382481 | `0x473f86...96c19b` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382436 | `0x007f77...a5fed6` | ⚠️ Unaudited |
| BondManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382581 | `0xf577c7...d2b2a3` | ⚠️ Unaudited |
| BtrflyAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382557 | `0xc8431f...c54e2f` | ⚠️ Unaudited |
| BunniHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2519...daa300` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382538 | `0x9f08c2...310558` | ⚠️ Unaudited |
| CCIPCrossChainBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382585 | `0xfbf638...1d143d` | ⚠️ Unaudited |
| CDAuctioneerLimitOrders | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382511 | `0x7d8f82...fafc2e` | ⚠️ Unaudited |
| ClaimTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x477822...d4e203` | ⚠️ Unaudited |
| Clearinghouse | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382455 | `0x1e094f...606fe0` | ⚠️ Unaudited |
| ContractRegistryAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba05d4...eabdc5` | ⚠️ Unaudited |
| ConvertibleDepositActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5261fb...de991f` | ⚠️ Unaudited |
| ConvertibleDepositAuctioneer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382580 | `0xf35193...29e39a` | ⚠️ Unaudited |
| ConvertibleDepositFacility | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382578 | `0xebde55...5f9678` | ⚠️ Unaudited |
| ConvexAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382478 | `0x3df5a3...56df78` | ⚠️ Unaudited |
| CoolerMonitoring | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00f4b...557367` | ⚠️ Unaudited |
| CoolerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3704da...df5264` | ⚠️ Unaudited |
| CrossChainBridge | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382626 | `0x20b383...fb285c` | ⚠️ Unaudited |
| CurveStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382484 | `0x4b152c...d6c4b2` | ⚠️ Unaudited |
| CustomBANKBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9df6a...9e6771` | ⚠️ Unaudited |
| CVXAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382466 | `0x2d643d...c71681` | ⚠️ Unaudited |
| CvxCrvStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315014...edcf52` | ⚠️ Unaudited |
| DelegateEscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84157...127a59` | ⚠️ Unaudited |
| DepositManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382561 | `0xcb4e21...7fbbf2` | ⚠️ Unaudited |
| DepositRedemptionVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382456 | `0x20a3d8...9029db` | ⚠️ Unaudited |
| DSRAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382447 | `0x0ea263...46d063` | ⚠️ Unaudited |
| EmissionManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382485 | `0x50f441...48c0a2` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x312966...a8a43c` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4643d9...b0df5a` | ⚠️ Unaudited |
| ERC4626Price | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d23a8...6f3037` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12e994...1d8f3e` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e2e3...49e49e` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869ec6...0d4964` | ⚠️ Unaudited |
| ETHBondDeposits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382464 | `0x2b0fbb...f33639` | ⚠️ Unaudited |
| ExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06843e...c50315` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac03b...c3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb196...bb6dda` | ⚠️ Unaudited |
| FraxSharesAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55eae7...c7123b` | ⚠️ Unaudited |
| FraxSharesAllocatorVoting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382707 | `0xde7b85...309475` | ⚠️ Unaudited |
| FraxswapPair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382474 | `0x38633e...74699f` | ⚠️ Unaudited |
| FxsAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382448 | `0x0f953d...a73493` | ⚠️ Unaudited |
| GeneralizedTokemak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0483de...bc92f5` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-382709 | `0x0cf30d...336b2e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382711 | `0x012bbf...e2ad4c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | berachain | unit-382693 | `0x91494d...d099b5` | ⚠️ Unaudited |
| gOHM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382443 | `0x0ab870...20a52f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382710 | `0x094123...ceffcd` | ⚠️ Unaudited |
| Incrementer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eddac...50015d` | ⚠️ Unaudited |
| IncurDebt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544f54...a72eca` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 0 | optimism | unit-382590 | `0x18878d...d3159c` | ⚠️ Unaudited |
| LegacyBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367149...908d0b` | ⚠️ Unaudited |
| LiquidityMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382450 | `0x13dfef...5153a3` | ⚠️ Unaudited |
| LoanConsolidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x784ca0...e50dbc` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382540 | `0xa5588e...7de3ad` | ⚠️ Unaudited |
| LPLeverageLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26063b...fbdbbd` | ⚠️ Unaudited |
| LUSDAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382500 | `0x67bae8...007180` | ⚠️ Unaudited |
| LUSDAllocatorV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382465 | `0x2c1700...d2a578` | ⚠️ Unaudited |
| LUSDAllocatorV2R | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382482 | `0x47d8d0...0e655c` | ⚠️ Unaudited |
| LZBridgeActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8cc5...ff4af7` | ⚠️ Unaudited |
| LZBridgeAndDelegateConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946b73...bf2f12` | ⚠️ Unaudited |
| LZBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ddfc...0c5f23` | ⚠️ Unaudited |
| LZCrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad85d...829330` | ⚠️ Unaudited |
| LZEndpointDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb218eb...9efac0` | ⚠️ Unaudited |
| MetaGovernanceAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382479 | `0x41afc1...02d58c` | ⚠️ Unaudited |
| MigrationProposalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62633b...44a5d4` | ⚠️ Unaudited |
| MigrationRebalancer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382510 | `0x77b19a...2c404e` | ⚠️ Unaudited |
| MimirToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30879a...94a478` | ⚠️ Unaudited |
| MockTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb682f...c8ed20` | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x90d5f3...f5f095` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382641 | `0xd1f617...8e4b32` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fbbc7...692cd8` | ⚠️ Unaudited |
| NullValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c9b...26254f` | ⚠️ Unaudited |
| OhmBondManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382504 | `0x73d7e4...493896` | ⚠️ Unaudited |
| OHMCirculatingSupplyConrtact | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efff9...295034` | ⚠️ Unaudited |
| OHMPreSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e7620...14d893` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee5c2...4815b9` | ⚠️ Unaudited |
| OlympusAuthority | unknown | project_anchor | own_supporting | 0 | berachain | unit-382688 | `0x060cb0...fcdcc0` | ⚠️ Unaudited |
| OlympusBondDepository | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382449 | `0x10c0f9...89d08d` | ⚠️ Unaudited |
| OlympusBondDepositoryV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382521 | `0x902504...9a1ef6` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a617f...68bedc` | ⚠️ Unaudited |
| OlympusBoostedLiquidityRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382472 | `0x375e06...3e2275` | ⚠️ Unaudited |
| OlympusClearinghouseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b96f...b4cad5` | ⚠️ Unaudited |
| OlympusContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896315...8dde48` | ⚠️ Unaudited |
| OlympusCVXBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6754c6...021920` | ⚠️ Unaudited |
| OlympusCvxHolder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382572 | `0xdfc95a...e7f728` | ⚠️ Unaudited |
| OlympusDAIDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64ed1...7a2a3c` | ⚠️ Unaudited |
| OlympusDepositPositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382437 | `0x02331a...1a9f1c` | ⚠️ Unaudited |
| OlympusDistributorContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6568...a3f4c4` | ⚠️ Unaudited |
| OlympusERC20Token | unknown | project_anchor | own_supporting | 0 | optimism | unit-382587 | `0x060cb0...fcdcc0` | ⚠️ Unaudited |
| OlympusHeart | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382451 | `0x1652b5...b11656` | ⚠️ Unaudited |
| OlympusLPRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39baa5...d34867` | ⚠️ Unaudited |
| OlympusLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11f0f...722223` | ⚠️ Unaudited |
| OlympusPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ded6a...3a6880` | ⚠️ Unaudited |
| OlympusPriceConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3019ff...f14ba5` | ⚠️ Unaudited |
| OlympusPricev1_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465ccc...37f8fe` | ⚠️ Unaudited |
| OlympusProInverseBondCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba42be...32ea47` | ⚠️ Unaudited |
| OlympusProMarketCreator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382547 | `0xb1fa0a...437ad1` | ⚠️ Unaudited |
| OlympusProV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382458 | `0x22ae99...cdb4c0` | ⚠️ Unaudited |
| OlympusRange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382475 | `0x399cd3...f60fb5` | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce62b...4a6cd1` | ⚠️ Unaudited |
| OlympusRoles | unknown | project_anchor | own_supporting | 0 | berachain | unit-382691 | `0x22ae99...cdb4c0` | ⚠️ Unaudited |
| OlympusSalesLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274466...218116` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0822f3...f274a2` | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7315...93242f` | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382452 | `0x184f3f...e784b3` | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99e9b0...aeaa53` | ⚠️ Unaudited |
| OnsenAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031650...682ffc` | ⚠️ Unaudited |
| Operator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382438 | `0x0374c0...219326` | ⚠️ Unaudited |
| OTCEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3312c...e965eb` | ⚠️ Unaudited |
| OwnedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94b3...ba5f15` | ⚠️ Unaudited |
| pOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37796...5da5a1` | ⚠️ Unaudited |
| PositionTokenRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c859d...daa134` | ⚠️ Unaudited |
| PreOlympusSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c6229...3715ba` | ⚠️ Unaudited |
| PreOlympusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369944...71c800` | ⚠️ Unaudited |
| PriceConfigv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c69f6...ef9cbd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x419fa2...84268a` | ⚠️ Unaudited |
| RaribleUserToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b2c76...06ddd4` | ⚠️ Unaudited |
| RariFuseAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382441 | `0x061c86...80d818` | ⚠️ Unaudited |
| ReceiptTokenManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382567 | `0xd98b5b...beddd1` | ⚠️ Unaudited |
| RedeemHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1e838...0b819e` | ⚠️ Unaudited |
| ReserveMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986b99...2419f5` | ⚠️ Unaudited |
| ReserveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca6cd4...a386f9` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x123706...5a5b8e` | ⚠️ Unaudited |
| RolesAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382628 | `0x69168c...c93b70` | ⚠️ Unaudited |
| SiloAMO | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-382633 | `0xa8578c...68b97c` | ⚠️ Unaudited |
| SimplePriceFeedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b00c...cef95d` | ⚠️ Unaudited |
| Skimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f0b8...6829c1` | ⚠️ Unaudited |
| sOlympus | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382439 | `0x049066...ccd460` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa55ce3...790915` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382463 | `0x2882a5...07c5f1` | ⚠️ Unaudited |
| SynapseERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382588 | `0x0b5740...868ffb` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382525 | `0x953ea3...2c9c39` | ⚠️ Unaudited |
| TreasuryConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09236b...cec2d2` | ⚠️ Unaudited |
| TreasuryExtender | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382549 | `0xb32ad0...2d17af` | ⚠️ Unaudited |
| UniSwapStrategy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382442 | `0x0692bd...771324` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382467 | `0x2dce0d...bf4877` | ⚠️ Unaudited |
| V1Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382486 | `0x513165...90b8b0` | ⚠️ Unaudited |
| ValueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fc567...faf801` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886ce9...62399d` | ⚠️ Unaudited |
| wOHM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382560 | `0xca7654...8e3e65` | ⚠️ Unaudited |
| wsOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583043...d57d4f` | ⚠️ Unaudited |
| wsOHMStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0333...f17939` | ⚠️ Unaudited |
| XrpSwapAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb288d...4269aa` | ⚠️ Unaudited |
| YieldDirector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382460 | `0x260417...358f18` | ⚠️ Unaudited |
| YieldFUBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38da9...2b3f95` | ⚠️ Unaudited |
| YieldRepurchaseFacility | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382461 | `0x271e35...0b0692` | ⚠️ Unaudited |
| ZeroDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef13f...441695` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (162)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382440 | `0x04f269...52111f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382444 | `0x0ae561...04f506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382453 | `0x1c21f8...b38b7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382454 | `0x1ce568...70ec65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382457 | `0x2286d7...47f54b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382459 | `0x245cc3...17988b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382468 | `0x30a967...2e907e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382471 | `0x34d7d7...2def7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382473 | `0x383518...14a899` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382476 | `0x39d198...f481e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382477 | `0x39f6aa...e3034d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382480 | `0x45e563...09543a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382488 | `0x5206d1...01f78b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382490 | `0x575409...97381c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382491 | `0x582485...6c5ecb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382493 | `0x623164...4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382495 | `0x6417f2...4d2b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382497 | `0x64aa33...e7f1d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382502 | `0x6cafd7...fbfa59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382506 | `0x73df08...4c795e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382508 | `0x767e34...81e0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382514 | `0x8510c8...ec2514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382518 | `0x877caf...a4d700` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382527 | `0x956c43...78c151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382529 | `0x97b3ef...e31fca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382531 | `0x9a315b...5813ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382533 | `0x9c6220...effd48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382541 | `0xa6013b...7711b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382542 | `0xa61b84...f0b6ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382543 | `0xa8687a...3d9613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382544 | `0xa8a6ff...cd2d55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382545 | `0xa90bfe...6a491e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382548 | `0xb216d7...659ec8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382550 | `0xb63cac...7a8020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382551 | `0xb6c9dc...8b6e16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382552 | `0xbb47c3...85df3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382553 | `0xbf2b6e...aa55c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382554 | `0xc20cff...5a02f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382555 | `0xc58e92...7d3ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382556 | `0xc60a66...63cc38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382558 | `0xc8c436...7a612d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382559 | `0xc9518a...513ccf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382564 | `0xd5a0ae...82c658` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382565 | `0xd6a6e8...f31880` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382566 | `0xd6c4d7...5b282f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382568 | `0xd9d875...f6c96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382570 | `0xdbf068...2fc42d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382571 | `0xde3e73...a6f772` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382574 | `0xe05646...6017d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382575 | `0xe62952...236f1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382576 | `0xe6343a...a2ab4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382577 | `0xeaf46b...9ace6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382579 | `0xeeeb97...6b2e05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382582 | `0xf6d5d0...f59e90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-382583 | `0xf7602c...21654d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382584 | `0xfb1776...0f67b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382586 | `0xfd31c7...36566a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382642 | `0x007a66...5902d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382643 | `0x007f77...a5fed6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382644 | `0x007f7a...43a222` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382645 | `0x022710...5e991a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382646 | `0x059532...1e4f6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382647 | `0x075441...75a50e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382648 | `0x0bb750...736ab7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382649 | `0x0c9d01...1af05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382650 | `0x0ca928...6b4853` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382651 | `0x15915b...7f5463` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382652 | `0x196a59...759435` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382653 | `0x1e5a68...fdcb27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382654 | `0x24963b...1aaa14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382655 | `0x2716a1...4ec491` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382656 | `0x2b9545...72617c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382657 | `0x3b6edd...bac9da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382658 | `0x3dae41...2e0e87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382659 | `0x3dc180...15b8a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382660 | `0x41e38e...b545a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382661 | `0x4a8c95...cdc88d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382662 | `0x4efe11...96482b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382663 | `0x54ffca...91eff0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382664 | `0x5c9352...3d0e34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382665 | `0x61b79d...777460` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382666 | `0x662059...eaaf56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382667 | `0x6982cc...382454` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382668 | `0x704e10...bdf735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382669 | `0x726337...7e2ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382670 | `0x776142...e896f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382671 | `0x84c0c0...7381e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382672 | `0x8786b1...d58e3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382673 | `0xa192ff...96abd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382674 | `0xa24715...82e3d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382675 | `0xada333...ad4b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382676 | `0xb3e1df...25580a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382677 | `0xbef655...678eaa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382678 | `0xbfe14b...8a3c47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | goerli | unit-382679 | `0xc15458...2a2856` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382680 | `0xc18631...871d98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382681 | `0xd652ba...613283` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382682 | `0xd88335...419dba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382683 | `0xd8c59c...a07a2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382684 | `0xdb7cf6...86b4c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382685 | `0xdc8e4e...9ca233` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382686 | `0xe9a9d8...98f71b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-382687 | `0xff88b4...72edd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382589 | `0x13dfef...5153a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382591 | `0x22ae99...cdb4c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382592 | `0x559a14...07f36c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382594 | `0xb1fa0a...437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382595 | `0xbc9ee0...49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382620 | `0xd8ca34...b45195` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382621 | `0xe06efa...cce8f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-382622 | `0x2bc001...e5fb10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-382623 | `0x91fa20...233fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-382624 | `0xd22c0a...a62c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382699 | `0x060cb0...fcdcc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382700 | `0x13dfef...5153a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382701 | `0x18878d...d3159c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382702 | `0x22ae99...cdb4c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382703 | `0x623164...4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382704 | `0x6ca1a9...9dac6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382705 | `0xb1fa0a...437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382706 | `0xbc9ee0...49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382627 | `0x56db53...f3c81a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382629 | `0x78f849...5a343e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382631 | `0x8d9ba5...e65fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382632 | `0x8f6406...570d87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382634 | `0xeac3ec...1f2dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382636 | `0xf0cb2d...017028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382637 | `0xff5f09...7834d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382638 | `0x321e70...f84251` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-382639 | `0x8cd309...0c2073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382689 | `0x0d33c8...5be66f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382690 | `0x18878d...d3159c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382692 | `0x623164...4e1a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382694 | `0xa5ea62...b2aaf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382695 | `0xb1fa0a...437ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382696 | `0xba42be...32ea47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382697 | `0xbc9ee0...49eeae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-382698 | `0xe37d9a...190794` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382596 | `0x0be697...265441` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382597 | `0x19b787...baee9c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382598 | `0x1cb7f3...70787d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382599 | `0x1dc2c4...a03377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382600 | `0x203c46...a564f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382601 | `0x247f19...e06fbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382602 | `0x2c9658...caa644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382603 | `0x3bd25e...2ef241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382604 | `0x4b0bba...4be78e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382605 | `0x68009f...73d534` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382606 | `0x74feae...88d519` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382607 | `0x84785e...33ef81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382608 | `0x93acad...7a4036` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382609 | `0x989b93...1d4109` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382610 | `0xb4309c...feb962` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382611 | `0xc48abd...74131e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382612 | `0xd03177...6c3d97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382613 | `0xd5405c...fc2f75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382614 | `0xdb5cb2...8eda52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382615 | `0xedd6eb...3ceb86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382616 | `0xef64ba...b549b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382617 | `0xef928e...0fa986` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382618 | `0xf33133...07f1cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-382619 | `0xf8abe1...22a6b4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Link](https://web.archive.org/web/20231210043017/https://hackmd.io/@12og4u7y8i/rk5PeIiEs) | KebabSec | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Link](https://web.archive.org/web/20231210045634/https://hackmd.io/@12og4u7y8i/Sk56otcBs) | KebabSec | Audit | n/a | unknown | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Link](https://gist.github.com/zobront/f1eec20c0e566632cf167004bf4076c6) | Zac Obron | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [Link](https://docs.olympusdao.finance/assets/files/Cooler_Update_Audit_Report-f3f983a8ee8632637790bcc136275aa0.pdf) | Sherlock | Contest | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2024_10_LoanConsolidator_Audit.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-09_Cooler_V2-panprog.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 8 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2-Electisec.pdf) | unknown | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2_Migrator-Electisec.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-04-04%20Cooler%20V2%20-%20Nethermind.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24020] Link — no match: The audit explicitly targets Parthenon.sol and VohmVault.sol. OlympusVotes and OlympusInstructions are modules reviewed in findings.
- [24021] Link — matched: All contracts explicitly listed in the introduction as being in scope.
- [24025] Link — matched: Scope explicitly lists three contracts: LENDR.v1.sol, OlympusLender.sol, SiloAMO.sol. Audit date is the end date of the engagement period (June 19 to 23, 2023).
- [24026] Link — matched: Scope section mentions repository and branch; contracts identified from file paths and findings.
- [24031] Manual audit seed — no match: Scope section explicitly lists 8 contracts in a table. Audit date is 4 November 2024 from the title page.
- [24034] Manual audit seed — matched: All 12 files listed in scope section of the audit report.
- [24036] Manual audit seed — matched: All contracts listed in the Scope section of the audit report.
- [24037] Link — matched: Scope explicitly lists two contracts: CoolerComposites.sol and CoolerV2Migrator.sol. Audit date inferred from review period March 7-12, 2025, using end date.
- [24039] Manual audit seed — matched: All 16 contracts from the audited files table are extracted. The audit date is explicitly given as 'Final Report April 4, 2025' on page 2.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Link | Parthenon | unmatched — not counted | — | explicitly stated as target contract | no |
| Link | VohmVault | unmatched — not counted | — | explicitly stated as target contract | no |
| Link | OlympusVotes | unmatched — not counted | — | referenced in findings as VOTES module | no |
| Link | OlympusInstructions | unmatched — not counted | — | referenced in findings as INSTR module | no |
| Link | MINTR.v1.sol | unmatched — not counted | — | listed in scope | no |
| Link | OlympusMinter.sol | own contract | OlympusMinter (selected) `0x623164...4e1a1c` — deployed 2023-05-15 20:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | OlympusTreasury.sol | own contract | OlympusTreasury (selected) `0x31f8cc...c846e8` — deployed 2021-05-29 00:43:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | TRSRY.v1.sol | unmatched — not counted | — | listed in scope | no |
| Link | BondCallback.sol | unmatched — not counted | — | listed in scope | no |
| Link | Distributor.sol | own contract | Distributor (selected) `0x27e606...697866` — deployed 2022-11-18 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | Emergency.sol | own contract | Emergency (selected) `0x9229b0...714a75` — deployed 2022-11-18 19:37:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | Operator.sol | unmatched — not counted | — | listed in scope | no |
| Link | TreasuryCustodian.sol | unmatched — not counted | — | listed in scope | no |
| Link | LENDR.v1 | unmatched — not counted | — | listed in scope | no |
| Link | OlympusLender | own contract | OlympusLender (selected) `0x868c3a...b30f03` — deployed 2023-06-29 21:17:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | SiloAMO | unmatched — not counted | — | listed in scope | no |
| Link | Clearinghouse | unmatched — not counted | — | listed in scope and findings | no |
| Link | Cooler | unmatched — not counted | — | listed in scope and findings | no |
| Link | CoolerFactory | own contract | CoolerFactory (selected) `0x30ce56...db4216` — deployed 2023-09-28 16:23:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | CoolerCallback | unmatched — not counted | — | referenced in findings | no |
| Manual audit seed | IERC3156FlashBorrower | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | IERC3156FlashLender | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | CHREG.v1 | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | OlympusClearinghouseRegistry | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | RGSTY.v1 | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | OlympusContractRegistry | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | ContractRegistryAdmin | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | LoanConsolidator | unmatched — not counted | — | listed in scope table | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204a...daad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0...91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d74...3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591e...68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | DLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | IDLGTE.v1 | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204a...daad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0...91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d74...3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591e...68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in scope | no |
| Link | CoolerComposites | own contract | CoolerComposites (selected) `0x659376...1c57fd` — deployed 2025-05-19 10:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | CoolerV2Migrator | own contract | CoolerV2Migrator (selected) `0xe045bd...e358d2` — deployed 2025-05-19 10:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CompoundedInterest | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | SafeCast | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | PolicyEnabler | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | RoleDefinitions | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | PolicyAdmin | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | MonoCooler | own contract | MonoCooler (selected) `0xdb591e...68e7cc` — deployed 2025-05-06 10:16:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerTreasuryBorrower | own contract | CoolerTreasuryBorrower (selected) `0xd58d74...3779b0` — deployed 2025-05-06 10:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | CoolerLtvOracle | own contract | CoolerLtvOracle (selected) `0x9ee9f0...91e8dc` — deployed 2025-05-06 10:16:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | ICoolerLtvOracle | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | ICoolerTreasuryBorrower | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | IMonoCooler | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | DelegateEscrow | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | DelegateEscrowFactory | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | IDLGTE | unmatched — not counted | — | listed in audited files table | no |
| Manual audit seed | OlympusGovDelegation | own contract | OlympusGovDelegation (selected) `0xd3204a...daad74` — deployed 2025-05-06 10:16:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Manual audit seed | DLGTE | unmatched — not counted | — | listed in audited files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x51563d...39bf56` | AlchemixAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x872ebd...4bac7e` | AuraAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8caf91...d98fad` | AuraAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9b52a...6618a6` | BalancerLiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x007f77...a5fed6` | BondFixedTermTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf577c7...d2b2a3` | BondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8431f...c54e2f` | BtrflyAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f08c2...310558` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfbf638...1d143d` | CCIPCrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d8f82...fafc2e` | CDAuctioneerLimitOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35193...29e39a` | ConvertibleDepositAuctioneer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xebde55...5f9678` | ConvertibleDepositFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20b383...fb285c` | CrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d643d...c71681` | CVXAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb4e21...7fbbf2` | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20a3d8...9029db` | DepositRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ea263...46d063` | DSRAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b0fbb...f33639` | ETHBondDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f953d...a73493` | FxsAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ab870...20a52f` | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x094123...ceffcd` | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x18878d...d3159c` | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13dfef...5153a3` | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5588e...7de3ad` | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67bae8...007180` | LUSDAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c1700...d2a578` | LUSDAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47d8d0...0e655c` | LUSDAllocatorV2R | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41afc1...02d58c` | MetaGovernanceAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77b19a...2c404e` | MigrationRebalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd1f617...8e4b32` | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73d7e4...493896` | OhmBondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x060cb0...fcdcc0` | OlympusAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10c0f9...89d08d` | OlympusBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x902504...9a1ef6` | OlympusBondDepositoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x375e06...3e2275` | OlympusBoostedLiquidityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdfc95a...e7f728` | OlympusCvxHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02331a...1a9f1c` | OlympusDepositPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x060cb0...fcdcc0` | OlympusERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1fa0a...437ad1` | OlympusProMarketCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22ae99...cdb4c0` | OlympusProV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x399cd3...f60fb5` | OlympusRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x22ae99...cdb4c0` | OlympusRoles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x184f3f...e784b3` | OlympusTokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x061c86...80d818` | RariFuseAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd98b5b...beddd1` | ReceiptTokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x69168c...c93b70` | RolesAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x049066...ccd460` | sOlympus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2882a5...07c5f1` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0b5740...868ffb` | SynapseERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x953ea3...2c9c39` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb32ad0...2d17af` | TreasuryExtender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x513165...90b8b0` | V1Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca7654...8e3e65` | wOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x260417...358f18` | YieldDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271e35...0b0692` | YieldRepurchaseFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 159 |
| upstream | 12 |
| standard_library | 4 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 20 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 20 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: unique_name=20

Zero-match audit list:

- [24020] Link
- [24031] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
