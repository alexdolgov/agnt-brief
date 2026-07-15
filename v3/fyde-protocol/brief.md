# Agentic Audit Brief: Fyde Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Fyde Protocol (`fyde-protocol`)
- Website: [http://www.fyde.fi](http://www.fyde.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 6/10 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $241,707.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fyde Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum. Structural roles: 8 unclassified, 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (8), core (3), supporting (1)
- Contract kinds: contract (11), abstract (1)
- Detected standards: erc20permit (2), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (2), solmate (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb3c25a...39f7f8`, chain 1)
- Fyde (`0x87cc45...7df2ee`, chain 1)
- GnosisSafeProxy (`0x24b3b5...eba999`, chain 1)
- RelayerV2 (`0x6830c6...f32078`, chain 1)
- sTRSY (`0xe11df8...1566b9`, chain 1)
- YieldStrategy (`0xa11d02...6de055`, chain 1)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (10 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/10 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/10
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 5 | 50.0% | 2023-09 |
| unknown | Tier 2 | 3 | 30.0% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Fyde | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240582 | `0x87cc45...7df2ee` | ✅ Audited |
| OracleModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240579 | `0x051983...bd2aee` | ✅ Audited |
| RelayerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240581 | `0x6830c6...f32078` | ✅ Audited |
| sTRSY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240585 | `0xe11df8...1566b9` | ✅ Audited |
| TaxModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240586 | `0xf6bcf9...f1eb40` | ✅ Audited |
| UserProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240588 | `0xc6f509...8239e1` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-240589 | `0x24b3b5...eba999` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240580 | `0x19d9d8...5adf6a` | ⚠️ Unaudited |
| YieldStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240583 | `0xa11d02...6de055` | ⚠️ Unaudited |
| YieldStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240587 | `0xb615a7...ccc3ba` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240584 | `0xb3c25a...39f7f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FDrOUIAG2nAdc0Lf0RxD8%2FFyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | matched | 6 | 2 | 0 | 18 | high |
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FKXNIVvRuIB6ImuEIo7dt%2FFyde-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13176] spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 24 smart contracts in scope. Audit date is the end date of the engagement (September 8, 2023).
- [13177] spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf — matched: Scope section explicitly lists 8 contracts: RelayerV2, TaxModule, OracleModule, QuarantineList, UniswapAdapter, ChainlinkAdapter, Ownable, AccessControl. Audit date is March 14th 2024 (end date of audit period).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Fyde | own contract | Fyde (selected) `0x87cc45...7df2ee` — deployed 2023-11-27 16:46:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | PooledDepositEscrow | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Relayer | own contract | RelayerV2 (selected) `0x6830c6...f32078` — deployed 2024-04-03 10:49:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AddressRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | GovernanceAccess | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ProtocolState | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | QuarantineList | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | RequestQueue | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Tax | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TRSY | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | GovernanceModule | own proxy deployment | GovernanceModule (proxy) (selected) `0xc6f509...8239e1` — deployed 2023-11-27 16:45:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ProxyRouter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | sTRSY | own contract | sTRSY (selected) `0xe11df8...1566b9` — deployed 2024-06-10 15:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | UserProxy | own proxy deployment | GovernanceModule (proxy) (selected) `0xc6f509...8239e1` — deployed 2023-11-27 16:45:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | OracleModule | own contract | OracleModule (selected) `0x051983...bd2aee` — deployed 2024-06-10 15:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | BaseChecker | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | MathUtil | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | RelayerV2 | own contract | RelayerV2 (selected) `0x6830c6...f32078` — deployed 2024-04-03 10:49:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | TaxModule | own contract | TaxModule (selected) `0xf6bcf9...f1eb40` — deployed 2024-06-10 12:51:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | OracleModule | own contract | OracleModule (selected) `0x051983...bd2aee` — deployed 2024-06-10 15:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | QuarantineList | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x19d9d8...5adf6a` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa11d02...6de055` | YieldStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb615a7...ccc3ba` | YieldStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
