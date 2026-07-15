# Agentic Audit Brief: Swaap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mantle, mode, optimism, polygon, scroll
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,574,725.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Swaap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, linea, mantle, mode, optimism, polygon, scroll. Structural roles: 9 core, 6 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (9), supporting (6), unclassified (1)
- Contract kinds: contract (16)
- Detected standards: none
- Frameworks: openzeppelin (14), chainlink (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

8 of 22 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

**Vault** (`0xd315a9...c76293`, chain 1)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9...c76293`, chain 10)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0x03c01a...153b06`, chain 56)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9...c76293`, chain 137)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0x03c01a...153b06`, chain 8453)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9...c76293`, chain 42161)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9...c76293`, chain 43114)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Vault** (`0xd315a9...c76293`, chain 59144)
Origin: bend (`0x4be03f...b9e80b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcc74bd...3369b8`, chain 10)
- UnnamedContract (`0xcc74bd...3369b8`, chain 5000)
- UnnamedContract (`0xd315a9...c76293`, chain 5000)
- UnnamedContract (`0x33ddf3...a86b16`, chain 34443)
- UnnamedContract (`0xcc74bd...3369b8`, chain 43114)
- UnnamedContract (`0xcc74bd...3369b8`, chain 534352)
- UnnamedContract (`0xd315a9...c76293`, chain 534352)
- SafeguardFactory (`0x03c01a...153b06`, chain 1)
- SafeguardFactory (`0xcc74bd...3369b8`, chain 1)
- SafeguardFactory (`0xcc74bd...3369b8`, chain 137)
- SafeguardFactory (`0xcc74bd...3369b8`, chain 8453)
- SafeguardFactory (`0xcc74bd...3369b8`, chain 42161)
- SafeguardFactory (`0xcc74bd...3369b8`, chain 59144)
- Vault (`0xd315a9...c76293`, chain 34443)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
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
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-257590 | `0x03c01a...153b06` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-257591 | `0xcc74bd...3369b8` | ⚠️ Unaudited |
| SafeguardFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-257595 | `0x03c01a...153b06` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-257596 | `0xcc74bd...3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | base | unit-257613 | `0xcc74bd...3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-257600 | `0xcc74bd...3369b8` | ⚠️ Unaudited |
| SafeguardFactory | registry | project_anchor | own_supporting | 0 | linea | unit-257610 | `0xcc74bd...3369b8` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257592 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-257594 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-257609 | `0x03c01a...153b06` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-257597 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-257612 | `0x03c01a...153b06` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | mode | unit-257599 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-257601 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-257604 | `0xd315a9...c76293` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | linea | unit-257611 | `0xd315a9...c76293` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257593 | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257605 | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257606 | `0xd315a9...c76293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-257598 | `0x33ddf3...a86b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-257603 | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257607 | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257608 | `0xd315a9...c76293` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.chainsecurity.com/security-audit/swaap-finance-safeguardpool](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [ChainSecurity_Swaap_SafeguardPool_Audit.pdf](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [swaap-audit-report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2589] www.chainsecurity.com/security-audit/swaap-finance-safeguardpool — no match: The report does not contain a clear scope section or file listing. Only the contract name 'SafeGuardPool' is inferred from the title and description.
- [2590] ChainSecurity_Swaap_SafeguardPool_Audit.pdf — no match: Scope explicitly lists five Solidity contracts in ./pkg/safeguard-pool/contracts folder. Audit date is June 27, 2023 from cover page.
- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts — no match: The report text does not list specific contract names; it only describes the scope as 'Core smart contracts V1' without naming individual files or contracts.
- [2592] swaap-audit-report.pdf — no match: Scope section explicitly lists 11 contracts/interfaces/structs. Audit date is clearly stated as 'Delivered: May 27, 2022' on the cover.
- [2593] quantstamp_SafeguardPool_audit.pdf — no match: Scope section explicitly lists files in pkg/safeguard-pool/contracts/*. The five contracts are identified from file names and findings. Audit date is the final report date (2023-07-04) from changelog.
- [14916] audit.pdf — no match: Scope section lists 12 source files. Audit date from cover page: May 10, 2022.
- [14917] audit.pdf — no match: Scope section explicitly lists 11 contracts/interfaces/structs. Audit date is 'Delivered: May 27, 2022' on cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.chainsecurity.com/security-audit/swaap-finance-safeguardpool | SafeGuardPool | unmatched — not counted | — | The report title and summary mention 'Swaap - SafeguardPool' and 'SafeGuardPool' as the audited contract. | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardFactory | ambiguous — not counted | SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2023-12-01 16:07:56+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-06-27 21:56:50+03 — liveness: live (current_address_book_code)<br>0xcc74bd… (alternative) `0xcc74bd...3369b8` — deployed 2024-09-27 17:01:11+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-02-05 14:27:29+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-05-14 16:54:01+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-04-30 12:52:35+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01a...153b06` — deployed 2023-06-30 18:45:59+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01a...153b06` — deployed 2023-07-01 13:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SafeguardPool | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swaap_SafeguardPool_Audit.pdf | SignatureSafeguard | unmatched — not counted | — | listed in scope table | no |
| swaap-audit-report.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Const | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Factory | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Math | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Num | unmatched — not counted | — | listed in scope section (only abs() and max() functions) | no |
| swaap-audit-report.pdf | Pool | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | PoolToken | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | IPausedFactory | unmatched — not counted | — | listed in scope section | no |
| swaap-audit-report.pdf | Struct | unmatched — not counted | — | listed in scope section | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardPool | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardFactory | ambiguous — not counted | SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2023-12-01 16:07:56+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-06-27 21:56:50+03 — liveness: live (current_address_book_code)<br>0xcc74bd… (alternative) `0xcc74bd...3369b8` — deployed 2024-09-27 17:01:11+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-02-05 14:27:29+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-05-14 16:54:01+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0xcc74bd...3369b8` — deployed 2024-04-30 12:52:35+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01a...153b06` — deployed 2023-06-30 18:45:59+03 — liveness: live (current_address_book_code)<br>SafeguardFactory (alternative) `0x03c01a...153b06` — deployed 2023-07-01 13:25:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| quantstamp_SafeguardPool_audit.pdf | SafeguardMath | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | SignatureSafeguard | unmatched — not counted | — | listed in scope and findings | no |
| quantstamp_SafeguardPool_audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope and findings | no |
| audit.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Struct | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Const | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Math | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Num | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | PoolToken | unmatched — not counted | — | listed in scope | no |
| audit.pdf | ChainlinkUtils | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Const | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | GeometricBrownianMotionOracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Math | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Num | unmatched — not counted | — | listed in scope (only abs() and max() functions) | no |
| audit.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | PoolToken | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IPausedFactory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Struct | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x03c01a...153b06` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc74bd...3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x03c01a...153b06` | SafeguardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcc74bd...3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcc74bd...3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcc74bd...3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcc74bd...3369b8` | SafeguardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03c01a...153b06` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03c01a...153b06` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd315a9...c76293` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 43 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: n/a

Zero-match audit list:

- [2589] www.chainsecurity.com/security-audit/swaap-finance-safeguardpool
- [2590] ChainSecurity_Swaap_SafeguardPool_Audit.pdf
- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts
- [2592] swaap-audit-report.pdf
- [2593] quantstamp_SafeguardPool_audit.pdf
- [14916] audit.pdf
- [14917] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
