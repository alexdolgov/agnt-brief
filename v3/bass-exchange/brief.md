# Agentic Audit Brief: Bass Exchange

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

- Project: Bass Exchange (`bass-exchange`)
- Website: [https://bass.exchange/](https://bass.exchange/)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 20 unique implementations (34 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $248,448.20
- On-chain TVL (included contracts): $49,223.00
- TVL by chain: Base $49,223.00

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Bass Exchange in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 20
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f23b7...aebad8` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x127fce...e49dec`; base `0x1dd576...3bec6d`; base `0x38c9d8...a7d731`; base `0x57d00d...968c39`; base `0x65c252...45d8a9` | ⚠️ Unaudited |
| DynamicPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32622a...f6b399` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x128acd...0fe3e4`; base `0xa4a730...c9a2c1` | ⚠️ Unaudited |
| HighCovRatioFeePoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42328...23bbf0` | ⚠️ Unaudited |
| LiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf167dd...c8a548` | ⚠️ Unaudited |
| MasterWombatV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0b1578...68ed0f`; base `0x3af031...39d33b` | ⚠️ Unaudited |
| MasterWombatV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x382980...c2a33d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ce6b9...75ced6` | ⚠️ Unaudited |
| SkimmableAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2bcaa7...ec0a6a`; base `0x2f4588...6ebff2` | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x62087a...5880c5`; base `0xa5895b...344333`; base `0xb6d740...7f2832` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8ad2e...331f29` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0062e8...56856c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x2e07bd...2b014e`; base `0x37917e...383eda`; base `0xe9f28d...55952c`; base `0xfcbf17...52b50d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x66a55a...8a82e0`; base `0x887976...136853` | ⚠️ Unaudited |
| WombatRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x34116b...4bdd5a`; base `0x719c28...2b3c52` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a6156...e48fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x515829...521ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ba897...2ecaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb11f5e...8f9a9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bass Exchange.pdf](https://github.com/EtherAuthority/Audit/blob/main/Bass%20Exchange.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12741] Bass Exchange.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bass Exchange.pdf | ABnbcAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | Asset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | BnbxAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | CoreV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicPool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicPoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | HighCovRatioFeePool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | HighCovRatioFeePoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | MasterWombatV4 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | MultiRewarderPerSec | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | PausableAssets | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | Pool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | PoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | StkbnbAsset | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12741] Bass Exchange.pdf

Fork inheritance lineage and inherited audits are included when available.
