# Agentic Audit Brief: Iron Bank

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

- Project: Iron Bank (`iron-bank`)
- Website: [https://app.ib.xyz/](https://app.ib.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, avalanche-fuji, ethereum, fantom, optimism
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 0/48 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $700,221.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Iron Bank. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 48 contract row(s) across avalanche, avalanche-fuji, fantom, optimism. Structural roles: 45 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 48
- Structural roles: core (45), supporting (2), infra (1)
- Contract kinds: contract (48)
- Detected standards: erc20 (23), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CCollateralCapErc20Delegate (`0x23be15...301bf7`, chain 10)
- CCollateralCapErc20Delegate (`0xcdb9b4...85d14d`, chain 43114)
- CompoundLens (`0xc640a7...a8f78e`, chain 10)
- CompoundLens (`0x5b4058...9e32a1`, chain 43114)
- Comptroller / Unitroller (`0xe0b57f...6715bf`, chain 10)
- Comptroller / Unitroller (`0x2ee806...5cd7cc`, chain 43114)
- Comptroller_Implementation (`0xd0b628...731e5a`, chain 10)
- Comptroller_Implementation (`0x294cb0...c88811`, chain 43114)
- crDAI.E (`0x085682...60e99b`, chain 43114)
- CRenameDelegate (`0x0a008c...1c83f0`, chain 43114)
- crLINK.E (`0x189317...90d4b1`, chain 43114)
- crMIM (`0xbf1430...587b29`, chain 43114)
- crUSDC (`0xec5aa1...f21cd7`, chain 43114)
- crUSDC.E (`0xe28965...05e832`, chain 43114)
- crUSDT.E (`0xceb1ce...f46fd3`, chain 43114)
- crWAVAX (`0xb3c68d...3edf56`, chain 43114)
- crWBTC.E (`0xb09b75...7661fc`, chain 43114)
- crWETH.E (`0x338eee...221f1d`, chain 43114)
- CTokenAdmin (`0xf7564e...66d2a8`, chain 10)
- CTokenAdmin (`0xf976c9...bc5c8a`, chain 43114)
- CWrappedNativeDelegate (`0xc0e1a4...16fbbe`, chain 10)
- CWrappedNativeDelegate (`0x049e04...750283`, chain 43114)
- FlashloanLender (`0xea4b8d...a75539`, chain 43114)
- GovIRM (`0xedaaba...0e8941`, chain 10)
- GovIRM (`0x20d5d3...d6ad0a`, chain 43114)
- iALPHA.E (`0x02c913...404efb`, chain 43114)
- iDAI (`0x049e04...750283`, chain 10)
- iOP (`0x4645e0...e1c412`, chain 10)
- iUSDC (`0x1d073c...89173a`, chain 10)
- iUSDT (`0x874c01...d5a742`, chain 10)
- iUST (`0x9be7b5...01aa64`, chain 43114)
- iUST(Wormhole) (`0xb1f656...b465ad`, chain 43114)
- iWBTC (`0xcdb9b4...85d14d`, chain 10)
- iWETH (`0x17533a...b25c7d`, chain 10)
- LiquidityMining (`0x8cfbe2...02226f`, chain 10)
- LiquidityMiningProxy (`0x9c8264...3cadab`, chain 10)
- MajorIRM (`0xf91783...677ee5`, chain 10)
- MajorIRM (`0x7ef18d...27f716`, chain 43114)
- Maximillion (`0x2ac637...dc1702`, chain 10)
- PriceOracleProxyUSD (`0x2424c3...dbed7d`, chain 10)
- PriceOracleProxyUSD (`0x0980f2...5303f7`, chain 43114)
- PriceOracleV1 (`0x61e38f...eefab5`, chain 10)
- PriceOracleV1 (`0xe7db46...9786be`, chain 43114)
- StableIRM (`0x20a7f6...aca786`, chain 10)
- StableIRM (`0x5dc3a3...17072a`, chain 43114)
- StableIRM2 (`0x3596b7...c00b8c`, chain 10)
- StakingRewardsFactory (`0x35f70c...4a1ea8`, chain 10)
- StakingRewardsHelper (`0x970d6b...099bc0`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 48; live-surface rows included: 48 (48 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/62 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/48 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 63 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 63
- Raw deployments: 63
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 0 | optimism | unit-387746 | `0x23be15...301bf7` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387797 | `0xcdb9b4...85d14d` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | optimism | unit-387759 | `0xc640a7...a8f78e` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387789 | `0x5b4058...9e32a1` | ⚠️ Unaudited |
| Comptroller / Unitroller | unknown | project_anchor | own_supporting | 0 | optimism | unit-387762 | `0xe0b57f...6715bf` | ⚠️ Unaudited |
| Comptroller / Unitroller | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387787 | `0x2ee806...5cd7cc` | ⚠️ Unaudited |
| Comptroller_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-387761 | `0xd0b628...731e5a` | ⚠️ Unaudited |
| Comptroller_Implementation | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387786 | `0x294cb0...c88811` | ⚠️ Unaudited |
| crDAI.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387781 | `0x085682...60e99b` | ⚠️ Unaudited |
| CRenameDelegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387783 | `0x0a008c...1c83f0` | ⚠️ Unaudited |
| crLINK.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387784 | `0x189317...90d4b1` | ⚠️ Unaudited |
| crMIM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387796 | `0xbf1430...587b29` | ⚠️ Unaudited |
| crUSDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387802 | `0xec5aa1...f21cd7` | ⚠️ Unaudited |
| crUSDC.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387799 | `0xe28965...05e832` | ⚠️ Unaudited |
| crUSDT.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387798 | `0xceb1ce...f46fd3` | ⚠️ Unaudited |
| crWAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387795 | `0xb3c68d...3edf56` | ⚠️ Unaudited |
| crWBTC.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387793 | `0xb09b75...7661fc` | ⚠️ Unaudited |
| crWETH.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387788 | `0x338eee...221f1d` | ⚠️ Unaudited |
| CTokenAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-387764 | `0xf7564e...66d2a8` | ⚠️ Unaudited |
| CTokenAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387803 | `0xf976c9...bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 0 | optimism | unit-387758 | `0xc0e1a4...16fbbe` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387780 | `0x049e04...750283` | ⚠️ Unaudited |
| FlashloanLender | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387801 | `0xea4b8d...a75539` | ⚠️ Unaudited |
| GovIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387763 | `0xedaaba...0e8941` | ⚠️ Unaudited |
| GovIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387785 | `0x20d5d3...d6ad0a` | ⚠️ Unaudited |
| iALPHA.E | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387779 | `0x02c913...404efb` | ⚠️ Unaudited |
| iDAI | unknown | project_anchor | own_supporting | 0 | optimism | unit-387742 | `0x049e04...750283` | ⚠️ Unaudited |
| iOP | unknown | project_anchor | own_supporting | 0 | optimism | unit-387751 | `0x4645e0...e1c412` | ⚠️ Unaudited |
| iUSDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-387744 | `0x1d073c...89173a` | ⚠️ Unaudited |
| iUSDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-387754 | `0x874c01...d5a742` | ⚠️ Unaudited |
| iUST | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387792 | `0x9be7b5...01aa64` | ⚠️ Unaudited |
| iUST(Wormhole) | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387794 | `0xb1f656...b465ad` | ⚠️ Unaudited |
| iWBTC | unknown | project_anchor | own_supporting | 0 | optimism | unit-387760 | `0xcdb9b4...85d14d` | ⚠️ Unaudited |
| iWETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-387743 | `0x17533a...b25c7d` | ⚠️ Unaudited |
| LiquidityMining | unknown | project_anchor | own_supporting | 0 | optimism | unit-387755 | `0x8cfbe2...02226f` | ⚠️ Unaudited |
| LiquidityMiningProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387757 | `0x9c8264...3cadab` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387765 | `0xf91783...677ee5` | ⚠️ Unaudited |
| MajorIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387791 | `0x7ef18d...27f716` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | optimism | unit-387748 | `0x2ac637...dc1702` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | optimism | unit-387747 | `0x2424c3...dbed7d` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387782 | `0x0980f2...5303f7` | ⚠️ Unaudited |
| PriceOracleV1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-387752 | `0x61e38f...eefab5` | ⚠️ Unaudited |
| PriceOracleV1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387800 | `0xe7db46...9786be` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | optimism | unit-387745 | `0x20a7f6...aca786` | ⚠️ Unaudited |
| StableIRM | unknown | project_anchor | own_supporting | 0 | avalanche | unit-387790 | `0x5dc3a3...17072a` | ⚠️ Unaudited |
| StableIRM2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-387749 | `0x3596b7...c00b8c` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-387750 | `0x35f70c...4a1ea8` | ⚠️ Unaudited |
| StakingRewardsHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-387756 | `0x970d6b...099bc0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-387753 | `0x6e6eb8...989d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x00a35f...870dfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387766 | `0x654b9c...e8e97c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387767 | `0x6a1302...dc26a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387768 | `0x6c395d...212053` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387769 | `0x7b3c6c...1ab21c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387770 | `0x7d2657...3f8ea9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387771 | `0x7ea717...75d381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387772 | `0x965473...3ffe28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387773 | `0x977507...31be67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387774 | `0x98182b...d0eb7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387775 | `0x9b21eb...8cb971` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387776 | `0xaec7cf...f8cb30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387777 | `0xd4409b...9b9ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-387778 | `0xe4e9f6...6fdc4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13299] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

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

- [13299] CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
