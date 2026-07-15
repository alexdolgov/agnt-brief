# Agentic Audit Brief: Sophon Farm

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sophon Farm (`sophon-farm`)
- Website: [https://farm.sophon.xyz/](https://farm.sophon.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,558,081.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Sophon Farm in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6b7774...ddd3f0`, chain 1)
- UnnamedContract (`0xf553e6...a8f987`, chain 1)
- UnnamedContract (`0x31dba3...18c742`, chain 56)
- UnnamedContract (`0xeb971f...109148`, chain 137)
- UnnamedContract (`0x31dba3...18c742`, chain 8453)
- UnnamedContract (`0x31dba3...18c742`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 6 of 8 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SFAzurUpgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce8ad...40ea69` | ⚠️ Unaudited |
| SophonFarmingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x52df5e...4a774a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256292 | `0x6b7774...ddd3f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256293 | `0xf553e6...a8f987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256296 | `0x31dba3...18c742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256294 | `0xeb971f...109148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256297 | `0x31dba3...18c742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256295 | `0x31dba3...18c742` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [docs.sophon.xyz/links/audits](https://docs.sophon.xyz/links/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Quantstamp - Sophon Farming Final Report.pdf](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20Farming%20Final%20Report.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf](https://github.com/sophon-org/audits/blob/main/Sherlock%20-%20sophon-farming-contracts-audit-report-1718619027.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Omniscia - Security Review - 11_20_2024.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_20_2024.pdf) | Omniscia | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Omniscia - Security Review - 11_01_2024.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_01_2024.pdf) | Guardian | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Omniscia - Security Review - Farming - 01_08_2025.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%20Farming%20-%2001_08_2025.pdf) | Omniscia | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Quantstamp - Sophon tokens & BridgeHubWrappe.pdf](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20tokens%20%26%20BridgeHubWrappe.pdf) | Quantstamp | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Nethermind - NM0482_FINAL_SOPHON.pdf](https://github.com/sophon-org/audits/blob/main/Nethermind%20-%20NM0482_FINAL_SOPHON.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%2004_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21004] docs.sophon.xyz/links/audits — no match: The provided text is a documentation index page listing audit report titles but does not contain the full audit reports or scope sections with contract names.
- [21005] Quantstamp - Sophon Farming Final Report.pdf — no match: Two contracts in scope: SophonFarming and SophonFarmingState. Audit date from changelog: 2024-06-04 (final report).
- [21006] Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf — no match: Scope defined by repository and commit hash; main contract is SophonFarming.sol; mock contracts are test artifacts but included in scope.
- [21007] Omniscia - Security Review - 11_20_2024.pdf — no match: Two contracts in scope: L1SharedBridge and L2SharedBridge. Audit date from cover page.
- [21008] Omniscia - Security Review - 11_01_2024.pdf — no match: Extracted 13 contracts from the scope table and file paths. Audit date from the report header: 'November 1, 2024'.
- [21009] Omniscia - Security Review - Farming - 01_08_2025.pdf — no match: Scope section explicitly lists 5 target contracts with file paths. Audit date is February 8, 2025 from the report header.
- [21010] Quantstamp - Sophon tokens & BridgeHubWrappe.pdf — no match: Extracted 8 contracts from the scope section and file listings. Audit date from final report date.
- [21011] Nethermind - NM0482_FINAL_SOPHON.pdf — no match: Two contracts in scope: VSophTokenState and VSophToken. Audit date from Final Report date.
- [21012] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf — no match: Scope section explicitly lists 6 contracts in scope. Audit date is May 28, 2025 from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp - Sophon Farming Final Report.pdf | SophonFarming | unmatched — not counted | — | listed in scope files | no |
| Quantstamp - Sophon Farming Final Report.pdf | SophonFarmingState | unmatched — not counted | — | listed in scope files | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | SophonFarming | unmatched — not counted | — | listed in scope and findings | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | MockeETHLiquidityPool | unmatched — not counted | — | referenced in findings | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | MockERC20 | unmatched — not counted | — | used in PoC | no |
| Omniscia - Security Review - 11_20_2024.pdf | L1SharedBridge | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_20_2024.pdf | L2SharedBridge | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | BridgeHubWrapper | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | BridgeHubWrapperProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianNFT | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianNFTProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianNFTState | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianDelegation | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianDelegationProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | GuardianDelegationState | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | Proxy2Step | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | ProxyAccessControl | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | SophonToken | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | Upgradeable2Step | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - 11_01_2024.pdf | UpgradeableAccessControl | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - Farming - 01_08_2025.pdf | MerkleAirdrop | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - Farming - 01_08_2025.pdf | SophonFarming | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - Farming - 01_08_2025.pdf | SophonFarmingL2 | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - Farming - 01_08_2025.pdf | SophonFarmingState | unmatched — not counted | — | listed in scope table | no |
| Omniscia - Security Review - Farming - 01_08_2025.pdf | UUPSProxy | unmatched — not counted | — | listed in scope table | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | SophonToken | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | GuardianNFT | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | GuardianDelegation | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | BridgeHubWrapper | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | BridgeHubWrapperProxy | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | UpgradeableAccessControl | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | GuardianNFTProxy | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Sophon tokens & BridgeHubWrappe.pdf | GuardianDelegationProxy | unmatched — not counted | — | listed in scope | no |
| Nethermind - NM0482_FINAL_SOPHON.pdf | VSophTokenState | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind - NM0482_FINAL_SOPHON.pdf | VSophToken | unmatched — not counted | — | Listed in Audited Files table and described as main contract | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | MerkleClaimer | unmatched — not counted | — | listed in scope table | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | MerkleClaimerProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | SophonStaking | unmatched — not counted | — | listed in scope table | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | SophonStakingProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | SophonStakingState | unmatched — not counted | — | listed in scope table | no |
| Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf | SophonStakingSignals | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1
- Match method counts: n/a

Zero-match audit list:

- [21004] docs.sophon.xyz/links/audits
- [21005] Quantstamp - Sophon Farming Final Report.pdf
- [21006] Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf
- [21007] Omniscia - Security Review - 11_20_2024.pdf
- [21008] Omniscia - Security Review - 11_01_2024.pdf
- [21009] Omniscia - Security Review - Farming - 01_08_2025.pdf
- [21010] Quantstamp - Sophon tokens & BridgeHubWrappe.pdf
- [21011] Nethermind - NM0482_FINAL_SOPHON.pdf
- [21012] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
