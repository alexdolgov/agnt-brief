# Agentic Audit Brief: Carbon Defi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia
- Contract surface: 27 unique implementations (28 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,187,230.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Carbon Defi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia. Structural roles: 19 unclassified, 5 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (19), core (5), supporting (2)
- Contract kinds: contract (24), abstract (2)
- Detected standards: accesscontrol (5), erc165 (5), erc1967proxy (2)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f5409...a9bdaa`, chain 1)
- UnnamedContract (`0x4e0178...faca13`, chain 1)
- UnnamedContract (`0x59f210...4c84ea`, chain 1)
- UnnamedContract (`0x63e353...c97525`, chain 1)
- UnnamedContract (`0x4a0c4e...ad4130`, chain 250)
- UnnamedContract (`0xa60a60...59409e`, chain 250)
- UnnamedContract (`0xc56eb3...b03fbc`, chain 5000)
- UnnamedContract (`0x3f086f...623435`, chain 59144)
- UnnamedContract (`0x5bca33...b2482e`, chain 59144)
- CarbonVortex (`0xc56eb3...b03fbc`, chain 1)
- OptimizedTransparentUpgradeableProxy (`0x57cf0c...87ea05`, chain 1329)
- OptimizedTransparentUpgradeableProxy (`0x773b75...b05119`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (15 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Deployed-live implementations: 23 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/14
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 27
- Raw deployments: 28
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 21.4% | 2024-07 |
| ChainSecurity | Tier 1 | 2 | 14.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CarbonController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231647 | `0xc537e8...ea45e1` | ✅ Audited |
| CarbonController | unknown | project_anchor | own_supporting | 1 | sei | unit-231653 | `0xe48166...1f1087` | ✅ Audited |
| Voucher | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231650 | `0x3660f0...8f554e` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CarbonController | unknown | project_anchor | own_supporting | 1 | celo | unit-231657 | `0x661987...29ed3a` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231651 | 2 deployments: ethereum `0xc56eb3...b03fbc`; ethereum `0xd053dc...d79801` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | sei | unit-231652 | `0x571520...eaf933` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa4682a...eaf8d5` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | celo | unit-231656 | `0xd9d89e...764857` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | blast | unit-231660 | `0x0f5409...a9bdaa` | ⚠️ Unaudited |
| VortexAcrossBridge | unknown | project_anchor | own_supporting | 1 | blast | unit-231661 | `0x63e353...c97525` | ⚠️ Unaudited |
| VortexOpStackBridge | unknown | project_anchor | own_supporting | 1 | celo | unit-231659 | `0x753425...4d6aaf` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | sei | unit-231654 | `0x57cf0c...87ea05` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-231662 | `0x773b75...b05119` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | sei | unit-231655 | `0xa4682a...eaf8d5` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | celo | unit-231658 | `0x5e994a...8dbf9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x31548b11d685a358de7f52978e099e04116b2db0) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231648 | `0x63e353...c97525` | ❓ Unverified |
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231649 | `0x0f5409...a9bdaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231619 | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231622 | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231641 | `0x4a0c4e...ad4130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231642 | `0xa60a60...59409e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-231644 | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231645 | `0x3f086f...623435` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231646 | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231638 | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231639 | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231640 | `0x5bca33...b2482e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | medium |
| [ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 4 | high |
| [PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf — no match: The report explicitly states 'this audit covers specifically the CarbonVortex contract' and lists it in the basic information table. No other contracts are named as in scope.
- [2738] PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf — matched: No explicit scope section; contracts extracted from findings targets and mentions.
- [2739] ChainSecurity_Carbon_Audit_Report.pdf — matched: Extracted from the audit report of Carbon by ChainSecurity. The scope section lists all files in contracts folder except helpers and fees. The main contracts are CarbonController, Voucher, MasterVault. Strategies, Pools, and MathEx are libraries/contracts referenced in findings.
- [2740] PeckShield-Audit-Report-Carbon-v1.0.pdf — matched: Audit report for Carbon protocol by PeckShield. Scope includes Strategies, CarbonController, and Voucher contracts. Audit date is April 4, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3...b03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dc...d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e...764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca33...b2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4e...ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x571520...eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f5409...a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonPOL | unmatched — not counted | — | Target in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3...b03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dc...d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e...764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca33...b2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4e...ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x571520...eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f5409...a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-27 was 2d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a...eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f0...8f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994a...8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | MasterVault | unmatched — not counted | — | described in scope and system overview | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Strategies | unmatched — not counted | — | referenced in findings and notes | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Pools | unmatched — not counted | — | referenced in findings | no |
| ChainSecurity_Carbon_Audit_Report.pdf | MathEx | unmatched — not counted | — | referenced in findings | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a...eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f0...8f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994a...8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x661987...29ed3a` | CarbonController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc56eb3...b03fbc` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x571520...eaf933` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd9d89e...764857` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x0f5409...a9bdaa` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x63e353...c97525` | VortexAcrossBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x753425...4d6aaf` | VortexOpStackBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x57cf0c...87ea05` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x773b75...b05119` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xa4682a...eaf8d5` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x5e994a...8dbf9a` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 7 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: temporal_name=5

Zero-match audit list:

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf

Fork inheritance lineage and inherited audits are included when available.
