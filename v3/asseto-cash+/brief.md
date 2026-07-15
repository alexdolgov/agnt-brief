# Agentic Audit Brief: Asseto CASH+

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 86.7% over 90 days

## Project Overview

- Project: Asseto CASH+ (`asseto-cash+`)
- Website: [https://asseto.finance/#invest](https://asseto.finance/#invest)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 17 unique implementations (78 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $880,002.04
- On-chain TVL (included contracts): $15,361.13
- TVL by chain: Ethereum $15,361.13

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Asseto CASH+. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 1 infra, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: infra (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x498d93...22a373`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 1 of 17 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 78
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba395...feefc3` | ⚠️ Unaudited |
| FundYieldManualTraceV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x50bdaf...7f7beb`; ethereum `0x63e19f...b97176`; ethereum `0xef6208...e45ee9` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 41 deployments: ethereum `0x048a8a...60b809`; ethereum `0x0d90a6...fe866c`; ethereum `0x1c7952...ef9f8e`; ethereum `0x401336...15e980`; ethereum `0x45c5bd...964303`; ethereum `0x5081c6...a2431f`; ethereum `0x5142df...b3e2b1`; ethereum `0x5b0c6a...c767d2`; ethereum `0x640eb8...1ae3f8`; ethereum `0x6c3de4...48483f`; ethereum `0x734bb4...cc3d28`; ethereum `0x923369...e49e72`; ethereum `0xab935a...5d4459`; ethereum `0xafdfd8...a960c0`; ethereum `0xc43ce4...dd3e19`; ethereum `0xc8faf6...82e5a8`; ethereum `0xcd01a9...b3fa83`; ethereum `0xd37295...f3c05f`; ethereum `0xd9ffec...103940`; ethereum `0xde2ac0...d032ff`; bsc `0x070d39...9d74e2`; bsc `0x0d90a6...fe866c`; bsc `0x101363...a0f75f`; bsc `0x191add...539d4a`; bsc `0x35af14...cda8ad`; bsc `0x3be5dd...2d5049`; bsc `0x401336...15e980`; bsc `0x409a2b...5ebcf8`; bsc `0x45c5bd...964303`; bsc `0x5081c6...a2431f`; bsc `0x523f49...fc3935`; bsc `0x54bb4c...b1aa36`; bsc `0x734bb4...cc3d28`; bsc `0x80af94...a28561`; bsc `0xa3696b...a1e8ad`; bsc `0xa8c290...d682d6`; bsc `0xb4914b...0d2bf5`; bsc `0xc8faf6...82e5a8`; bsc `0xd9ffec...103940`; bsc `0xde2ac0...d032ff`; bsc `0xf55893...0b61e2` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x101363...a0f75f`; ethereum `0x28d77e...b12c88`; ethereum `0x37d03d...f3bdee`; ethereum `0xf252c5...5730d9` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x212624...72f8af` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3be5dd...2d5049`; ethereum `0xb91865...07a77e` | ⚠️ Unaudited |
| SAmMMF | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379712 | `0x498d93...22a373` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78e80d...d6a42d`; ethereum `0xa4dbaa...3bd261` | ⚠️ Unaudited |
| SAmMMF | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379711 | `0xeaa41f...d0251f` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x048a8a...60b809`; bsc `0x27c373...b2a57a` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0ba044...557a91`; bsc `0x51b717...0e796d`; bsc `0xef6633...b0c316` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x177550...d159bc`; bsc `0x1ec3aa...5c1fe1`; bsc `0xb71593...e97d52` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x50bf29...bae6e8`; bsc `0x804063...65d520`; bsc `0xcca465...a3e691` | ⚠️ Unaudited |
| SAmMMF | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x640eb8...1ae3f8`; bsc `0xc9f2d7...f86f64`; bsc `0xcd01a9...b3fa83` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x15cf9c...043a56`; ethereum `0x493127...a8ed91`; ethereum `0x50bf29...bae6e8`; ethereum `0x67330c...063bba`; ethereum `0x7002e6...d9a4ec`; bsc `0x6e11d3...149d07` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f2d7...f86f64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cash+-smart-contract-audit-report.md](https://reale-assets.gitbook.io/reale/product/cash+/appendix/cash+-smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3093] cash+-smart-contract-audit-report.md — no match: The provided text is a markdown page with a link to a PDF file. The actual audit report content is not included in the text, so no contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 2 |
| standard_library | 11 |
| needs_review | 0 |

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

- [3093] cash+-smart-contract-audit-report.md

Fork inheritance lineage and inherited audits are included when available.
