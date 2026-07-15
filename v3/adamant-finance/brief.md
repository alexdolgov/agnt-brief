# Agentic Audit Brief: Adamant Finance

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

- Project: Adamant Finance (`adamant-finance`)
- Website: [https://adamant.finance/](https://adamant.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, cronos, fraxtal, polygon
- Contract surface: 99 unique implementations (99 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $201,753.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Adamant Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, polygon. Structural roles: 4 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (2)
- Contract kinds: contract (6)
- Detected standards: ownable (6), erc20 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01fe07...e62120`, chain 137)
- UnnamedContract (`0x1a8621...ab61e0`, chain 137)
- UnnamedContract (`0x52d3dc...91171f`, chain 137)
- UnnamedContract (`0x59cbff...4da848`, chain 137)
- UnnamedContract (`0x6813cd...949945`, chain 137)
- UnnamedContract (`0x920f22...6408bd`, chain 137)
- UnnamedContract (`0xa5bf14...1175cb`, chain 137)
- UnnamedContract (`0xac2f66...c4864c`, chain 137)
- UnnamedContract (`0xc3fdba...0ea539`, chain 137)
- UnnamedContract (`0xc5bcd2...bb8a56`, chain 137)
- UnnamedContract (`0xffd82f...f2ca96`, chain 137)
- UnnamedContract (`0x097b15...5b007b`, chain 42161)
- UnnamedContract (`0x09ad12...680864`, chain 42161)
- UnnamedContract (`0x1130af...12a072`, chain 42161)
- UnnamedContract (`0x1219d1...9491bb`, chain 42161)
- UnnamedContract (`0x25c4d5...931ce7`, chain 42161)
- UnnamedContract (`0x47d3dc...49cfc2`, chain 42161)
- UnnamedContract (`0x4b5180...8331fc`, chain 42161)
- UnnamedContract (`0x520bd2...6e575d`, chain 42161)
- UnnamedContract (`0x6aebbc...3b2fe2`, chain 42161)
- UnnamedContract (`0x9d5d0c...48f0fd`, chain 42161)
- UnnamedContract (`0xc5ffd0...2f32dc`, chain 42161)
- UnnamedContract (`0xd3ee82...a34a8d`, chain 42161)
- UnnamedContract (`0xd6b3c3...adabc1`, chain 42161)
- UnnamedContract (`0xddb545...b9305c`, chain 42161)
- UnnamedContract (`0xf12bfd...7f2899`, chain 42161)
- AddyStakingRewards (`0xf7661e...fef9d3`, chain 137)
- Minter (`0xaae758...704921`, chain 137)
- SimpleLocker (`0xf4c1df...c54958`, chain 137)
- TokenLocker (`0x341c60...d4b8ac`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (4 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 30 of 99 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/73
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 99
- Raw deployments: 99
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Addy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-225712 | `0x4a7ae6...63745e` | ⚠️ Unaudited |
| AddyEthPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4c176...630b73` | ⚠️ Unaudited |
| AddyExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x695789...f2ac63` | ⚠️ Unaudited |
| AddyStakingRewards | unknown | project_anchor | own_supporting | 0 | polygon | unit-225723 | `0xf7661e...fef9d3` | ⚠️ Unaudited |
| ApeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ae3d3...27bee4` | ⚠️ Unaudited |
| ApeStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04261e...bb91b0` | ⚠️ Unaudited |
| AugurDividendsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb07295...5420ce` | ⚠️ Unaudited |
| AugurySingleStakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47e5ec...09d9e4` | ⚠️ Unaudited |
| AuguryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c61f0...42f443` | ⚠️ Unaudited |
| BoostHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35de78...761044` | ⚠️ Unaudited |
| BoostHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98fada...b84657` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf53b30...8ff32b` | ⚠️ Unaudited |
| dQuickStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a7458...c1545e` | ⚠️ Unaudited |
| ElkStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x116c5a...3854a3` | ⚠️ Unaudited |
| ERCFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25eb11...6a88be` | ⚠️ Unaudited |
| ERCFund2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43c085...2ff6b4` | ⚠️ Unaudited |
| FeeDistStrategyLocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x914417...3a7b2d` | ⚠️ Unaudited |
| GenericJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0297b9...56cb13` | ⚠️ Unaudited |
| GenericVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00e331...cfae57` | ⚠️ Unaudited |
| GravityStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe17b00...e7c796` | ⚠️ Unaudited |
| IceUsdcStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfce59c...51ae91` | ⚠️ Unaudited |
| IronStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06e1ca...295d64` | ⚠️ Unaudited |
| IronSwapStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6a92b...5790c0` | ⚠️ Unaudited |
| LockedAddyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x322cb4...91131c` | ⚠️ Unaudited |
| MaltStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fa09a...8b71ba` | ⚠️ Unaudited |
| MasterChefReferralStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b22ff...0013ce` | ⚠️ Unaudited |
| MasterChefStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cf1a8...9c5c59` | ⚠️ Unaudited |
| MeshStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe6aa0...07e310` | ⚠️ Unaudited |
| MigratableJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e4db0...404239` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | polygon | unit-225718 | `0xaae758...704921` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-225710 | `0x2ac456...89935c` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0732c...e6e8b6` | ⚠️ Unaudited |
| PolyPupStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3ec22...2ae8ff` | ⚠️ Unaudited |
| PolyYeldStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f2132...f023bf` | ⚠️ Unaudited |
| PolyZapStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50a132...c86370` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x541963...88beea` | ⚠️ Unaudited |
| PresaleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71cd6d...8645a2` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05c71c...fcb9e7` | ⚠️ Unaudited |
| Proposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5602de...3d1cbc` | ⚠️ Unaudited |
| ProxyMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x041fc9...224aaf` | ⚠️ Unaudited |
| QiDaoStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00b576...d628f9` | ⚠️ Unaudited |
| QuickStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f4ae...174118` | ⚠️ Unaudited |
| SimpleLocker | unknown | project_anchor | own_supporting | 0 | polygon | unit-225722 | `0xf4c1df...c54958` | ⚠️ Unaudited |
| StrategyDarkBuildRebasingUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d32f4...422433` | ⚠️ Unaudited |
| StrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac497...8086ad` | ⚠️ Unaudited |
| StrategyDeployerCometh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3709ff...1eafea` | ⚠️ Unaudited |
| StrategyDeployerComethPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f663d...961a10` | ⚠️ Unaudited |
| StrategyDfynDual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1d32a...b48c32` | ⚠️ Unaudited |
| StrategyDualRewardsNonReentrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85ccd9...fd30b2` | ⚠️ Unaudited |
| StrategyElkPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafd933...907234` | ⚠️ Unaudited |
| StrategyPolyquityPUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01338e...ffd828` | ⚠️ Unaudited |
| StrategyPolyquityRewardPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8970a9...6ad7ff` | ⚠️ Unaudited |
| StrategyPolyquityWmatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf02859...d304f7` | ⚠️ Unaudited |
| StrategyQuickMatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2689c7...6ff50c` | ⚠️ Unaudited |
| StrategyQuickPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe3c01...2a2b73` | ⚠️ Unaudited |
| StrategyQuickUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x058088...5f0dc0` | ⚠️ Unaudited |
| StrategySingleAssetWhale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28f674...bd783e` | ⚠️ Unaudited |
| StrategyUSDCmaUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x269509...ac0b97` | ⚠️ Unaudited |
| StrategyWaultEthPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f475d...93db04` | ⚠️ Unaudited |
| StrategyWaultOtherPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d5ba3...08f40a` | ⚠️ Unaudited |
| StrategyWaultWexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3a039...7005ee` | ⚠️ Unaudited |
| StrategyWaultWexSingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69f986...84404c` | ⚠️ Unaudited |
| StrategyWhale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44ae84...5da4dd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x058547...ddf567` | ⚠️ Unaudited |
| TitanIronStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1e1e4...e15dd2` | ⚠️ Unaudited |
| TitanSingleStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ed0e6...cbe35b` | ⚠️ Unaudited |
| TokenLocker | unknown | project_anchor | own_supporting | 0 | polygon | unit-225711 | `0x341c60...d4b8ac` | ⚠️ Unaudited |
| USDCmaUSDCJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x413cb0...4528d6` | ⚠️ Unaudited |
| VaultInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9902ca...b06623` | ⚠️ Unaudited |
| WaultEthStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b88d2...4c84d8` | ⚠️ Unaudited |
| WaultOtherStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1aa224...b977e7` | ⚠️ Unaudited |
| WaultWexStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8384d6...7e02fe` | ⚠️ Unaudited |
| WhaleStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28c798...458522` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225708 | `0x01fe07...e62120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225709 | `0x1a8621...ab61e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225713 | `0x52d3dc...91171f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225714 | `0x59cbff...4da848` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225715 | `0x6813cd...949945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225716 | `0x920f22...6408bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225717 | `0xa5bf14...1175cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225719 | `0xac2f66...c4864c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225720 | `0xc3fdba...0ea539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225721 | `0xc5bcd2...bb8a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225724 | `0xffd82f...f2ca96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225725 | `0x097b15...5b007b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225726 | `0x09ad12...680864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225727 | `0x1130af...12a072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225728 | `0x1219d1...9491bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225729 | `0x25c4d5...931ce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225730 | `0x47d3dc...49cfc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225731 | `0x4b5180...8331fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225732 | `0x520bd2...6e575d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225733 | `0x6aebbc...3b2fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225734 | `0x9d5d0c...48f0fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225735 | `0xc5ffd0...2f32dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225736 | `0xd3ee82...a34a8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225737 | `0xd6b3c3...adabc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225738 | `0xddb545...b9305c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225739 | `0xf12bfd...7f2899` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [<>](https://sourcehat.com/audits/AdamantFinance) | SourceHat | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19397] <> — no match: Audit report explicitly lists five contracts in scope: AaveVaultFactory, VaultFactory, AM3CrvVault, AaveVaultBase, and WhitelistVault. Date is March 1st, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| <> | AaveVaultFactory | unmatched — not counted | — | listed in scope | no |
| <> | VaultFactory | unmatched — not counted | — | listed in scope | no |
| <> | AM3CrvVault | unmatched — not counted | — | listed in scope | no |
| <> | AaveVaultBase | unmatched — not counted | — | listed in scope | no |
| <> | WhitelistVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xf7661e...fef9d3` | AddyStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xaae758...704921` | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf4c1df...c54958` | SimpleLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x341c60...d4b8ac` | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19397] <>

Fork inheritance lineage and inherited audits are included when available.
