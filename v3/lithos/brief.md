# Agentic Audit Brief: Lithos

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Lithos (`lithos`)
- Website: [https://lithos.to/](https://lithos.to/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: plasma
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $230,164.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Lithos in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16f5ce...a9fcf4`, chain 9745)
- UnnamedContract (`0x2af460...249c69`, chain 9745)
- UnnamedContract (`0x2eff71...056686`, chain 9745)
- UnnamedContract (`0x3b867f...8372a8`, chain 9745)
- UnnamedContract (`0x3be9e6...3d10a6`, chain 9745)
- UnnamedContract (`0x469acb...421f95`, chain 9745)
- UnnamedContract (`0x71a870...56ae18`, chain 9745)
- UnnamedContract (`0x97a5ad...0a4ac7`, chain 9745)
- UnnamedContract (`0x9cfc6d...336788`, chain 9745)
- UnnamedContract (`0xa0ce83...ee41a0`, chain 9745)
- UnnamedContract (`0xabb487...324a44`, chain 9745)
- UnnamedContract (`0xbd24ee...877193`, chain 9745)
- UnnamedContract (`0xc7e4bc...e7f6a3`, chain 9745)
- UnnamedContract (`0xd70962...1759f3`, chain 9745)
- UnnamedContract (`0xde68b7...9271dc`, chain 9745)
- UnnamedContract (`0xf2e70f...f5d42c`, chain 9745)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 16 of 26 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x68a674...247cfb` | ⚠️ Unaudited |
| Lithos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb8f925...599f47` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x571f98...357275` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x939684...30959f` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x21f1c2...ff4dbc` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x27ba53...30db53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | plasma | n/a | `0x014c73...1a109f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | plasma | n/a | `0x6bf5ad...8fff37` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xafc98b...c8c188` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x80f2ee...a9ff9c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388596 | `0x16f5ce...a9fcf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388597 | `0x2af460...249c69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388598 | `0x2eff71...056686` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388599 | `0x3b867f...8372a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388600 | `0x3be9e6...3d10a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388601 | `0x469acb...421f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388602 | `0x71a870...56ae18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388603 | `0x97a5ad...0a4ac7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388604 | `0x9cfc6d...336788` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388605 | `0xa0ce83...ee41a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388606 | `0xabb487...324a44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388607 | `0xbd24ee...877193` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388608 | `0xc7e4bc...e7f6a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388609 | `0xd70962...1759f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388610 | `0xde68b7...9271dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-388611 | `0xf2e70f...f5d42c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [full report PDF](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17488] full report PDF — matched: Extracted contract names from findings targets and examples. Audit date from cover page and latest audit report field.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| full report PDF | VotingEscrow | own contract | 0x2eff71… (selected) `0x2eff71...056686` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report PDF | RewardsDistributor | own contract | 0x3b867f… (selected) `0x3b867f...8372a8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report PDF | Governor | unmatched — not counted | — | Target in finding PVE-003 | no |
| full report PDF | L2Governor | unmatched — not counted | — | Target in finding PVE-003 | no |
| full report PDF | AirdropClaim | unmatched — not counted | — | Target in findings PVE-004 and PVE-005 | no |
| full report PDF | AirdropClaimTheNFT | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| full report PDF | NFTSalesSplitter | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| full report PDF | MerkleTree | unmatched — not counted | — | Target in finding PVE-006 | no |
| full report PDF | MerkleTreeTHENFT | unmatched — not counted | — | Target in finding PVE-006 | no |
| full report PDF | PairFees | unmatched — not counted | — | Example in finding PVE-006 | no |
| full report PDF | VoterV2_1 | unmatched — not counted | — | Target in finding PVE-007 | no |
| full report PDF | GaugeV2 | unmatched — not counted | — | Example in finding PVE-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
