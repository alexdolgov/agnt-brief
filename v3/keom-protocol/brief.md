# Agentic Audit Brief: Keom Protocol

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

- Project: Keom Protocol (`keom-protocol`)
- Website: [https://keom.io](https://keom.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: manta-pacific, polygon, polygon-zkevm
- Contract surface: 49 unique implementations (49 raw deployments)
- Coverage basis: 0/42 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $175,151.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Keom Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across astar, manta-pacific, polygon, polygon-zkevm. Structural roles: 42 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: unclassified (42)
- Contract kinds: contract (35), abstract (7)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- API3 Oracle adapter (`0x19194261d8f0599bd079c52623c80c5150f010cf`, chain 1101)
- Comptroller (`0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a`, chain 137)
- Comptroller (`0xbd5cd926eb73b48905091fff9996bba832feac71`, chain 169)
- Comptroller (`0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d`, chain 1101)
- fixedInterestRateModel (`0x19621d19b40c978a479bd35afb3740f90b7b0fe4`, chain 137)
- Interest Rate Model (`0x9008a044dde18afd4fffe0f9a17e32feaa684b09`, chain 1101)
- InterestRateModel (`0x5d3473bde2c8b408584ddb8cbbb8925f33c01fa7`, chain 137)
- InterestRateModel (`0x6ea32f626e3a5c41547235ebbdf861526e11f482`, chain 169)
- kAAVE/kCRV/kLINK (`0x24ce1320e96ec4f849ed62d7ff8a43d4ce28fe81`, chain 137)
- kDAI (`0x83f98471f6f5d0ad82b0fe99d2ce26f65995ef32`, chain 137)
- kDAI (`0x888b707a12205b52805d86123fe720ba119f0632`, chain 1101)
- kgDAI (`0x4da1cf31f15185efe7a0883ac805afd2e9543249`, chain 137)
- kjEUR (`0xa17e7765b38b9aff1fb8beb3ad865aff68ebda96`, chain 137)
- kMAI (`0x0edc2b1239d3d4ad03a2deb23517a50a406eb6d2`, chain 137)
- kMATIC (`0x8903dc1f4736d2fcb90c1497aebbaba133daac76`, chain 1101)
- kMaticX (`0x6b4c8e36cec677d68cfbaba375230f959199a673`, chain 137)
- kNative (`0xee1727f5074e747716637e1776b7f7c7133f16b1`, chain 1101)
- kNative ETH (`0x8903dc1f4736d2fcb90c1497aebbaba133daac76`, chain 169)
- kNative Logic (`0x4c6e83b9f7e8835f583be748de899c5881fbc403`, chain 1101)
- kNative MATIC (`0x7854d4cfa7d0b877e399bcbdffb49536d7a14fc7`, chain 137)
- kNativeLogic (`0xcf0bc6fc897195683315cd38454e933e9e21eaec`, chain 169)
- kstMATIC (`0x4bc6e73b215b7f1ddfce83b887525f72a53e1ed8`, chain 137)
- kToken Logic (`0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d`, chain 1101)
- kTokenLogic (`0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b`, chain 169)
- kUSDC (`0xf5eca026809785165ad468171ce10e1da59ca866`, chain 137)
- kUSDC (`0xe371cdaf86482f07e7b2ea17f4ccd5b202f59f15`, chain 169)
- kUSDC (`0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b`, chain 1101)
- kUSDC.e (`0x4ce75412dafcebb421e90e42b3fac6db795e4f85`, chain 1101)
- kUSDT (`0xce71f99c6b09ba50aea18f8132d674dc57fe0839`, chain 137)
- kUSDT (`0x4769222c2ba104623023de49188030f6f30a332f`, chain 169)
- kUSDT (`0xad41c77d99e282267c1492cdefe528d7d5044253`, chain 1101)
- kvGHST (`0x95b847bd54d151231f1c82bf2eecbe5c211bd9bc`, chain 137)
- kWBTC (`0x4e7d313918b9a8c32f18bc1df346c79e36d0f9dc`, chain 137)
- kWBTC (`0x503deabad9641c5b4015041eeb0f1263e415715d`, chain 1101)
- kWETH (`0x44010cbf1ec8b8d8275d86d8e28278c06dd07c48`, chain 137)
- kWETH (`0xbc59506a5ce024b892776d4f7dd450b0fb3584a2`, chain 1101)
- kwstETH (`0x0e9f5e4e8ec73e909830b67e3e61b5db70e3b2e9`, chain 137)
- Maximillion (`0x04626d431e069cb6706721288cd2e53be2ab1953`, chain 137)
- Maximillion (`0xbc81104207c160cfe48585cc8d753ad2c7031ff7`, chain 169)
- Maximillion (`0x19959010bd0d6600fedec721174c2e67153fbd63`, chain 1101)
- Multicall (`0x83e249f47d235120595a05b03557cfab5da2dfd2`, chain 169)
- Multicall (`0x8a6a007cdc89430317de917583b4746607884aaf`, chain 1101)
- Oracle (`0x828fb251167145f89cd479f9d71a5a762f23bf13`, chain 137)
- Oracle (`0x8a6a007cdc89430317de917583b4746607884aaf`, chain 169)
- Oracle (`0xbc81104207c160cfe48585cc8d753ad2c7031ff7`, chain 1101)
- Unitroller (`0x5b7136cffd40eee5b882678a5d02aa25a48d669f`, chain 137)
- Unitroller (`0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d`, chain 169)
- Unitroller (`0x6ea32f626e3a5c41547235ebbdf861526e11f482`, chain 1101)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/42 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 49 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 49
- Raw deployments: 49
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comptroller | unknown | project_anchor | own_supporting | 0 | polygon | unit-388345 | `0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388356 | `0xbd5cd926eb73b48905091fff9996bba832feac71` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388322 | `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` | ⚠️ Unaudited |
| fixedInterestRateModel | unknown | project_anchor | own_supporting | 0 | polygon | unit-388331 | `0x19621d19b40c978a479bd35afb3740f90b7b0fe4` | ⚠️ Unaudited |
| Interest Rate Model | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388321 | `0x9008a044dde18afd4fffe0f9a17e32feaa684b09` | ⚠️ Unaudited |
| InterestRateModel | unknown | project_anchor | own_supporting | 0 | polygon | unit-388338 | `0x5d3473bde2c8b408584ddb8cbbb8925f33c01fa7` | ⚠️ Unaudited |
| InterestRateModel | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388350 | `0x6ea32f626e3a5c41547235ebbdf861526e11f482` | ⚠️ Unaudited |
| kAAVE/kCRV/kLINK | unknown | project_anchor | own_supporting | 0 | polygon | unit-388332 | `0x24ce1320e96ec4f849ed62d7ff8a43d4ce28fe81` | ⚠️ Unaudited |
| kDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388342 | `0x83f98471f6f5d0ad82b0fe99d2ce26f65995ef32` | ⚠️ Unaudited |
| kgDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388335 | `0x4da1cf31f15185efe7a0883ac805afd2e9543249` | ⚠️ Unaudited |
| kjEUR | unknown | project_anchor | own_supporting | 0 | polygon | unit-388344 | `0xa17e7765b38b9aff1fb8beb3ad865aff68ebda96` | ⚠️ Unaudited |
| kMAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388330 | `0x0edc2b1239d3d4ad03a2deb23517a50a406eb6d2` | ⚠️ Unaudited |
| kMATIC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388319 | `0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | ⚠️ Unaudited |
| kMaticX | unknown | project_anchor | own_supporting | 0 | polygon | unit-388339 | `0x6b4c8e36cec677d68cfbaba375230f959199a673` | ⚠️ Unaudited |
| kNative | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388327 | `0xee1727f5074e747716637e1776b7f7c7133f16b1` | ⚠️ Unaudited |
| kNative ETH | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388352 | `0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | ⚠️ Unaudited |
| kNative Logic | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388313 | `0x4c6e83b9f7e8835f583be748de899c5881fbc403` | ⚠️ Unaudited |
| kNative MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388340 | `0x7854d4cfa7d0b877e399bcbdffb49536d7a14fc7` | ⚠️ Unaudited |
| kNativeLogic | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388357 | `0xcf0bc6fc897195683315cd38454e933e9e21eaec` | ⚠️ Unaudited |
| kstMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388334 | `0x4bc6e73b215b7f1ddfce83b887525f72a53e1ed8` | ⚠️ Unaudited |
| kToken Logic | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388312 | `0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | ⚠️ Unaudited |
| kTokenLogic | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388349 | `0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | ⚠️ Unaudited |
| kUSDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388347 | `0xf5eca026809785165ad468171ce10e1da59ca866` | ⚠️ Unaudited |
| kUSDC | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388358 | `0xe371cdaf86482f07e7b2ea17f4ccd5b202f59f15` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | polygon | unit-388346 | `0xce71f99c6b09ba50aea18f8132d674dc57fe0839` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388348 | `0x4769222c2ba104623023de49188030f6f30a332f` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388323 | `0xad41c77d99e282267c1492cdefe528d7d5044253` | ⚠️ Unaudited |
| kvGHST | unknown | project_anchor | own_supporting | 0 | polygon | unit-388343 | `0x95b847bd54d151231f1c82bf2eecbe5c211bd9bc` | ⚠️ Unaudited |
| kWBTC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388336 | `0x4e7d313918b9a8c32f18bc1df346c79e36d0f9dc` | ⚠️ Unaudited |
| kWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-388333 | `0x44010cbf1ec8b8d8275d86d8e28278c06dd07c48` | ⚠️ Unaudited |
| kwstETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-388329 | `0x0e9f5e4e8ec73e909830b67e3e61b5db70e3b2e9` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | polygon | unit-388328 | `0x04626d431e069cb6706721288cd2e53be2ab1953` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388355 | `0xbc81104207c160cfe48585cc8d753ad2c7031ff7` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388311 | `0x19959010bd0d6600fedec721174c2e67153fbd63` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388351 | `0x83e249f47d235120595a05b03557cfab5da2dfd2` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388320 | `0x8a6a007cdc89430317de917583b4746607884aaf` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | polygon | unit-388341 | `0x828fb251167145f89cd479f9d71a5a762f23bf13` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388353 | `0x8a6a007cdc89430317de917583b4746607884aaf` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388326 | `0xbc81104207c160cfe48585cc8d753ad2c7031ff7` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | polygon | unit-388337 | `0x5b7136cffd40eee5b882678a5d02aa25a48d669f` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388354 | `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388317 | `0x6ea32f626e3a5c41547235ebbdf861526e11f482` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3 Oracle adapter | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388310 | `0x19194261d8f0599bd079c52623c80c5150f010cf` | ❓ Unverified |
| kDAI | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388318 | `0x888b707a12205b52805d86123fe720ba119f0632` | ❓ Unverified |
| kUSDC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388316 | `0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | ❓ Unverified |
| kUSDC.e | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388314 | `0x4ce75412dafcebb421e90e42b3fac6db795e4f85` | ❓ Unverified |
| kWBTC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388315 | `0x503deabad9641c5b4015041eeb0f1263e415715d` | ❓ Unverified |
| kWETH | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388324 | `0xbc59506a5ce024b892776d4f7dd450b0fb3584a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-388325 | `0xbc71484f579564b380dc5580f6465dba076858c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf](https://uploads-ssl.webflow.com/64ef0efc368836241c571f09/655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf) | yAudit | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13335] 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf — no match: Scope mentions two PRs (PR 60 and PR 62) but does not list specific contract files. Contract names extracted from findings: Comptroller and OToken. Audit date from review period: August 16-17, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf | Comptroller | ambiguous — not counted | Comptroller (alternative) `0xbd5cd926eb73b48905091fff9996bba832feac71` — liveness: live (current_address_book_code)<br>Comptroller (alternative) `0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a` — liveness: live (current_address_book_code)<br>Comptroller (alternative) `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf | OToken | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [13335] 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf

Fork inheritance lineage and inherited audits are included when available.
