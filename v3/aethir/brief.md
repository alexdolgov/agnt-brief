# Agentic Audit Brief: Aethir

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Aethir (`aethir`)
- Website: [https://aethir.com/](https://aethir.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 8 unique implementations (9 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,461,829.85
- On-chain TVL (included contracts): $173,808,593.83
- TVL by chain: Ethereum $173,808,593.83

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Aethir in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AethirToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b` | ⚠️ Unaudited |
| AethirWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ecb43e02d6573119eaf0e6509a4725b8633a13c`; ethereum `0x3f69bb14860f7f3348ac8a5f0d445322143f7fee` | ⚠️ Unaudited |
| LensRewardV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf4aa37a2927deb886f3dc3d070c55b5088124ff` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91eb8907c34147b1ab58dc663a3594bb241bed4` | ⚠️ Unaudited |
| StAethir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96aa65f31e41b4ca6924b86d93e25686019e59c` | ⚠️ Unaudited |
| VeAethir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f5c81fe067ae25afd52218f140a73d51f0c6b31` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | AethirWrapper<br>`0x1ecb43e02d6573119eaf0e6509a4725b8633a13c` | non_address_book | unknown | unknown | verified | n/a | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |
| source verified unclassified | LensRewardV2<br>`0xdf4aa37a2927deb886f3dc3d070c55b5088124ff` | non_address_book | periphery | unknown | verified | n/a | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |
| source verified unclassified | SmartWalletChecker<br>`0xb91eb8907c34147b1ab58dc663a3594bb241bed4` | non_address_book | unknown | unknown | verified | n/a | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/aethir](https://skynet.certik.com/projects/aethir) | CertiK | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20638] skynet.certik.com/projects/aethir — no match: Extracted contract names from the 'Code Security' section listing audit targets. Date found as 'Final Report Delivered on 3/11/2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/aethir | Aethir - Audit Token & Checker Contract | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Checker Contract | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Audit Edge | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Intemediary | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Cloud IDC | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Vault | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/aethir | Aethir - Airdrop | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20638] skynet.certik.com/projects/aethir

Fork inheritance lineage and inherited audits are included when available.
