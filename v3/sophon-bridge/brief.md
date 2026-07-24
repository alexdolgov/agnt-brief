# Agentic Audit Brief: Sophon Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sophon Bridge (`sophon-bridge`)
- Website: [https://sophon.xyz/](https://sophon.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 12 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $19,893,650.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Sophon Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AethirWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ecb43e02d6573119eaf0e6509a4725b8633a13c`; ethereum `0x3f69bb14860f7f3348ac8a5f0d445322143f7fee` | ⚠️ Unaudited |
| Bridgehub | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x303a465b659cbb0ab36ee643ea362c509eeb5213` | ⚠️ Unaudited |
| ChainAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1eea4d6443b19d373fe99de838b930ef0ac2ad3` | ⚠️ Unaudited |
| ChainAssetHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdd5cb8b9037357b4cd37391a073798f8aab61076` | ⚠️ Unaudited |
| DiamondProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ede6ad1f39b7a16c949d5c33a0658c9c7241e3` | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbed1eb542f9a5aa6419ff3deb921a372681111f6` | ⚠️ Unaudited |
| L1Nullifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb` | ⚠️ Unaudited |
| LensRewardV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf4aa37a2927deb886f3dc3d070c55b5088124ff` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe4644b6d106a18062344c0a853666bc0b8f052d1` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91eb8907c34147b1ab58dc663a3594bb241bed4` | ⚠️ Unaudited |
| StAethir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96aa65f31e41b4ca6924b86d93e25686019e59c` | ⚠️ Unaudited |
| VeAethir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490` | ⚠️ Unaudited |

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
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, contamination review=1, source verified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x3f69bb14860f7f3348ac8a5f0d445322143f7fee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |
| ethereum | contamination review | SmartWalletChecker<br>`0xb91eb8907c34147b1ab58dc663a3594bb241bed4` | non_address_book | unknown | unknown | verified | n/a | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |
| ethereum | source verified unclassified | AethirWrapper<br>`0x1ecb43e02d6573119eaf0e6509a4725b8633a13c` | non_address_book | unknown | unknown | verified | n/a | `0x222c41d37e157fbbf599c7edacdc738273f34dbf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
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

- [4608] Quantstamp - Sophon Farming Final Report.pdf — no match: Two contracts in scope: SophonFarming and SophonFarmingState. Audit date from changelog: final report 2024-06-04.
- [4609] Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf — no match: Scope section explicitly lists repository, branch, and commit. Main contract is SophonFarming.sol. Mock contracts are included in scope.
- [4610] Omniscia - Security Review - 11_20_2024.pdf — no match: Two contracts in scope: L1SharedBridge and L2SharedBridge. Audit date from report header.
- [4611] Omniscia - Security Review - 11_01_2024.pdf — no match: Extracted 13 contracts from the scope table and file paths. Audit date from cover page: November 1, 2024.
- [4612] Omniscia - Security Review - Farming - 01_08_2025.pdf — no match: Extracted 5 contracts from the scope table and audit date from the cover page.
- [4613] Quantstamp - Sophon tokens & BridgeHubWrappe.pdf — no match: Extracted 8 contracts from the scope section and file listings. Audit date from final report date.
- [4614] Nethermind - NM0482_FINAL_SOPHON.pdf — no match: Two contracts in scope: VSophTokenState and VSophToken. Audit date is May 30, 2025 (Final Report date).
- [4615] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf — no match: Scope section explicitly lists 6 contracts with file paths. Audit date is May 28, 2025 from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp - Sophon Farming Final Report.pdf | SophonFarming | unmatched — not counted | — | listed in scope files | no |
| Quantstamp - Sophon Farming Final Report.pdf | SophonFarmingState | unmatched — not counted | — | listed in scope files | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | SophonFarming | unmatched — not counted | — | Main contract in scope, referenced in all findings. | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | MockeETHLiquidityPool | unmatched — not counted | — | Listed in scope as a mock contract. | no |
| Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf | MockERC20 | unmatched — not counted | — | Used in PoC, part of the test suite. | no |
| Omniscia - Security Review - 11_20_2024.pdf | L1SharedBridge | unmatched — not counted | — | listed in scope table and findings | no |
| Omniscia - Security Review - 11_20_2024.pdf | L2SharedBridge | unmatched — not counted | — | listed in scope table and findings | no |
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
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [4608] Quantstamp - Sophon Farming Final Report.pdf
- [4609] Sherlock - sophon-farming-contracts-audit-report-1718619027.pdf
- [4610] Omniscia - Security Review - 11_20_2024.pdf
- [4611] Omniscia - Security Review - 11_01_2024.pdf
- [4612] Omniscia - Security Review - Farming - 01_08_2025.pdf
- [4613] Quantstamp - Sophon tokens & BridgeHubWrappe.pdf
- [4614] Nethermind - NM0482_FINAL_SOPHON.pdf
- [4615] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
