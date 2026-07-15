# Agentic Audit Brief: JetFuel Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: JetFuel Finance (`jetfuel-finance`)
- Website: [https://jetfuel.finance/](https://jetfuel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 55 unique implementations (55 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,358.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for JetFuel Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 55
- Raw deployments: 55
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb991a...d67ec7` | ⚠️ Unaudited |
| D100Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a950c...7ec051` | ⚠️ Unaudited |
| FortressIJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc22a...e777d2` | ⚠️ Unaudited |
| FTSTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94222b...4783e8` | ⚠️ Unaudited |
| FuelToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243298 | `0x2090c8...5e441a` | ⚠️ Unaudited |
| GFCEPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2ef2...718874` | ⚠️ Unaudited |
| GFORCE | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243300 | `0x94babb...1b26ce` | ⚠️ Unaudited |
| GFORCEv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f1363...e64c66` | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c0287...ef5b8d` | ⚠️ Unaudited |
| IJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0196f8...675ae2` | ⚠️ Unaudited |
| JetBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3a3e1...475cfb` | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d2112...d995dd` | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b4c2...bdbb60` | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a8ab9...997d8b` | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6d9e...bd4afa` | ⚠️ Unaudited |
| JetfuelFortressVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647db6...3e22d2` | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e84d...753306` | ⚠️ Unaudited |
| JetFuelNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x462872...f899cb` | ⚠️ Unaudited |
| JetfuelVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x032bb9...20ecda` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6d41...73dc20` | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227f9a...cd2113` | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x937f23...e10f98` | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15bb3...e1cd89` | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x050015...1da25f` | ⚠️ Unaudited |
| JetFuelVIPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f2181...41bb28` | ⚠️ Unaudited |
| JetswapBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd07947...d61b47` | ⚠️ Unaudited |
| JetswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb58e...dfcbd5` | ⚠️ Unaudited |
| JetswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe65b8...714800` | ⚠️ Unaudited |
| JetswapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06fd5c...c91b43` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d6ec...b6f9f5` | ⚠️ Unaudited |
| MasterFuel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243299 | `0x86f4bc...7d4b56` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41aff2...bf2922` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013bc4...9dce60` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c202a...d8ae1e` | ⚠️ Unaudited |
| StrategyApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c975a...edf9b1` | ⚠️ Unaudited |
| StrategyApeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfb7c6...871d96` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x408951...47fdb7` | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87b797...2352f1` | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x715067...4a944f` | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x005892...db964b` | ⚠️ Unaudited |
| StrategyCakeBest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8f1f...49a0e9` | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8ceea...c8714c` | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31a858...98f79a` | ⚠️ Unaudited |
| StrategyFortress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc012e...964e1a` | ⚠️ Unaudited |
| StrategyFortressBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b8b3...8c506d` | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098daf...cd057c` | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01588b...daf7fc` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4ac8...de2a57` | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956bce...7cdaa3` | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0c0e...1014aa` | ⚠️ Unaudited |
| StrategyWingsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9ab0...3eedb6` | ⚠️ Unaudited |
| StrategyWingsSingleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf150fd...24e06f` | ⚠️ Unaudited |
| TRYONPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb65be4...76e0bf` | ⚠️ Unaudited |
| WingsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0487b8...498446` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf64882...4ee3dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
