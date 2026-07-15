# Agentic Audit Brief: Infrared Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 30 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Infrared Finance (`infrared-finance`)
- Website: [https://infrared.finance](https://infrared.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 11/12 confirmed own live verified implementations (91.7%); conservative 91.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,233,210.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Infrared Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across berachain. Structural roles: 10 unclassified, 6 supporting, 4 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: unclassified (10), supporting (6), core (4)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (6), erc20 (2), erc20permit (2), pausable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7), solmate (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x04cddc...cab7d7`, chain 80094)
- ERC1967Proxy (`0x8c0e12...2818e1`, chain 80094)
- ERC1967Proxy (`0x8d4417...21298c`, chain 80094)
- ERC1967Proxy (`0x9b6761...cd3fe5`, chain 80094)
- ERC1967Proxy (`0xb5e9cf...512756`, chain 80094)
- ERC1967Proxy (`0xb71b3d...2fc126`, chain 80094)
- InfraredBGT (`0xac03ca...bb2e6b`, chain 80094)
- InfraredGovernanceTokenV1_2 (`0xa1b644...28c7c9`, chain 80094)
- InfraredVault (`0x75f3be...168301`, chain 80094)
- WrappedRewardToken (`0x4f3c10...670c1b`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (12 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/12 (91.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 11/12
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 14 fresh, 12 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 58.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 91.7% | 2026-04 |
| Spearbit | Tier 1 | 7 | 58.3% | 2026-03 |
| Zellic | Tier 2 | 1 | 8.3% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeCollectorV1_4 | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-387431 | `0x8d4417...21298c` | ✅ Audited |
| InfraredBERADepositorV2 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387433 | `0x04cddc...cab7d7` | ✅ Audited |
| InfraredBERAFeeReceivor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387429 | `0xf6a4a6...9fef97` | ✅ Audited |
| InfraredBERAV2_1 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387430 | `0x9b6761...cd3fe5` | ✅ Audited |
| InfraredBERAWithdrawor | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-387426 | `0x8c0e12...2818e1` | ✅ Audited |
| InfraredBGT | unknown | project_anchor | own_supporting | 0 | berachain | unit-387425 | `0xac03ca...bb2e6b` | ✅ Audited |
| InfraredDistributor | unknown | project_anchor | own_supporting | 1 | berachain | unit-387428 | `0x1fad98...c4ccd6` | ✅ Audited |
| InfraredV1_10 | unknown | project_anchor | own_supporting | 1 | berachain | unit-387432 | `0xb71b3d...2fc126` | ✅ Audited |
| InfraredVault | core_logic | project_anchor | own_supporting | 0 | berachain | unit-387423 | `0x75f3be...168301` | ✅ Audited |
| StakedIR | token | project_anchor | own_supporting | 1 | berachain | unit-387427 | `0xb5e9cf...512756` | ✅ Audited |
| WrappedRewardToken | token | project_anchor | own_supporting | 0 | berachain | unit-387421 | `0x4f3c10...670c1b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InfraredGovernanceTokenV1_2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-387424 | `0xa1b644...28c7c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Infrared - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Infrared - Zenith Audit Report - 20082025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%20-%2020082025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Infrared - Zenith Audit Report 09.07.2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report%2009.07.2025.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | matched | 2 | 2 | 0 | 5 | n/a |
| [Infrared - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Infrared Berachain Core Integration - Zellic Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Berachain%20Core%20Integration%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared Merkle Distributor - Zenith Audit Report.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Merkle%20Distributor%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Infrared OFT Adapter Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20OFT%20Adapter%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Infrared Operations & Future Vaults Security Review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Operations%20%26%20Future%20Vaults%20Security%20Review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Infrared Smart Contract Security Assessment.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared%20Smart%20Contract%20Security%20Assessment.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Infraredv1.5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Infraredv1.5.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Zenith Audit Report - Infrared Finance.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/Zenith%20Audit%20Report%20-%20Infrared%20Finance.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [baseline-ethskills.md](https://github.com/infrared-dao/contracts/blob/master/audits/baseline-ethskills.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | matched | 9 | 8 | 0 | 10 | n/a |
| [cantinacode-24.01.2026.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/cantinacode-24.01.2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [infraredContractsSecurityReview.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infraredContractsSecurityReview.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [infrared_contract_security_review.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_contract_security_review.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [infrared_security_review_12_11_2025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/infrared_security_review_12_11_2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-03072025.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-03072025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared-0310-bribeCollector.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0310-bribeCollector.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-infrared-0320.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-0320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [report-cantinacode-infrared-1.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-1201.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-1201.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [report-cantinacode-infrared-5.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-5.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 2 | 2 | 0 | 11 | n/a |
| [report-cantinacode-infrared-pr647.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared-pr647.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-infrared.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cantinacode-infrared.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 15 | high |
| [report-cli-cantina-infrared-0503_final.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-cli-cantina-infrared-0503_final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [report-competition-infrared-contracts.pdf](https://github.com/infrared-dao/contracts/blob/master/audits/report-competition-infrared-contracts.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | matched | 4 | 2 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5712] Infrared - Zellic Audit Report.pdf — matched: Scope includes core/*.sol, utils/*.sol, vendors/*.sol. Extracted contract names from threat model sections and file paths.
- [5713] Infrared - Zenith Audit Report - 20082025.pdf — no match: Scope section lists repository and commit hash but no specific contract names; extracted from findings and file references.
- [5714] Infrared - Zenith Audit Report 09.07.2025.pdf — matched: No reason recorded
- [5715] Infrared - Zenith Audit Report.pdf — no match: Scope section lists repository and commit hash but no specific contract files. Contract names extracted from findings.
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf — no match: The scope explicitly lists 'Programs contracts/tests/unit/core/Infrared/*' and the goals mention testing functions of Infrared.sol. No other contract names are explicitly in scope.
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf — no match: Only one contract in scope: MerkleDistributor.sol. Audit date from report published date.
- [5718] Infrared OFT Adapter Security Review.pdf — no match: No reason recorded
- [5719] Infrared Operations & Future Vaults Security Review.pdf — no match: Scope section lists two contracts: InfraredMultisigGovernance.s.sol and MultiRewards.sol. Audit date is November 12, 2025 from the cover page.
- [5720] Infrared Smart Contract Security Assessment.pdf — no match: Scope section explicitly lists three files: RewardsLib.sol, InfraredV1_9.sol, BatchClaimerV2_2.sol. Audit date is November 12, 2025 from the cover page.
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf — no match: The report is an incident response review, not a full audit with a scope section. Contract names extracted from code references and upgrade mentions.
- [5722] Infraredv1.5.pdf — no match: No explicit scope section found; contracts inferred from findings and context.
- [5723] Zenith Audit Report - Infrared Finance.pdf — no match: Only Infrared.sol is explicitly named as a target in findings. The scope section lists a repository and commit hash but no specific contract files. Other contracts (IBerachainBGT, BGT.sol, etc.) are dependencies or referenced in code but not in scope.
- [5724] baseline-ethskills.md — matched: No reason recorded
- [5725] cantinacode-24.01.2026.pdf — no match: Scope section explicitly lists three contracts in src/periphery/. Audit date from cover page: January 24, 2026.
- [5726] infraredContractsSecurityReview.pdf — no match: No explicit scope section found; contract names extracted from findings context. Audit date from cover page.
- [5727] infrared_contract_security_review.pdf — matched: No reason recorded
- [5728] infrared_security_review_12_11_2025.pdf — no match: Only one contract in scope: RewardDistributor.sol. Audit date from cover page.
- [5729] report-cantinacode-infrared-03072025.pdf — matched: No reason recorded
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf — no match: Only one contract (BribeCollectorV1_2) is explicitly in scope. InfraredUpgradeable is mentioned as a parent but not in scope.
- [5731] report-cantinacode-infrared-0320.pdf — no match: No explicit scope section found; contracts inferred from findings context. Audit date from cover page.
- [5732] report-cantinacode-infrared-1.pdf — matched: No reason recorded
- [5733] report-cantinacode-infrared-1201.pdf — matched: No reason recorded
- [5734] report-cantinacode-infrared-5.pdf — matched: No reason recorded
- [5735] report-cantinacode-infrared-pr647.pdf — matched: No reason recorded
- [5736] report-cantinacode-infrared.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report covers Infrared contracts including core contracts (Infrared, InfraredDistributor, BribeCollector) and voting contracts (Voter, VotingEscrow, etc.). Audit date is December 26, 2024 from the cover page.
- [5737] report-cli-cantina-infrared-0503_final.pdf — no match: Scope section explicitly lists three files in src/periphery. Additional contracts mentioned in findings are also included as they are part of the audited system.
- [5738] report-competition-infrared-contracts.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Infrared - Zellic Audit Report.pdf | IBGT | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zellic Audit Report.pdf | MultiRewards | unmatched — not counted | — | listed in scope as core/*.sol | no |
| Infrared - Zellic Audit Report.pdf | ValidatorSet | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zellic Audit Report.pdf | InfraredVaultDeployer | unmatched — not counted | — | listed in scope as utils/*.sol | no |
| Infrared - Zenith Audit Report - 20082025.pdf | Redeemer | unmatched — not counted | — | listed in scope and findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | BGT | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | RewardsLib | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report - 20082025.pdf | InfraredV1_8 | unmatched — not counted | — | referenced in findings | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERARateProvider | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Infrared - Zenith Audit Report 09.07.2025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report 09.07.2025.pdf | UpgradeInfraredBERAWithdrawor | unmatched — not counted | — | — | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_4 | unmatched — not counted | — | Mentioned in findings I-1 and I-2 as target contract | no |
| Infrared - Zenith Audit Report.pdf | InfraredV1_2 | unmatched — not counted | — | Mentioned in finding I-2 as defining storage state | no |
| Infrared Berachain Core Integration - Zellic Audit Report.pdf | Infrared | unmatched — not counted | — | Scope section lists 'Programs contracts/tests/unit/core/Infrared/*' and goals mention test cases for Infrared.sol functions. | no |
| Infrared Merkle Distributor - Zenith Audit Report.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope section | no |
| Infrared OFT Adapter Security Review.pdf | ConfigureOFTPeers | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | DeployIROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFT | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | IROFTAdapter | unmatched — not counted | — | — | no |
| Infrared OFT Adapter Security Review.pdf | VerifyOFTSetup | unmatched — not counted | — | — | no |
| Infrared Operations & Future Vaults Security Review.pdf | InfraredMultisigGovernance | unmatched — not counted | — | listed in scope | no |
| Infrared Operations & Future Vaults Security Review.pdf | MultiRewards | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | RewardsLib | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | InfraredV1_9 | unmatched — not counted | — | listed in scope | no |
| Infrared Smart Contract Security Assessment.pdf | BatchClaimerV2_2 | unmatched — not counted | — | listed in scope | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | MultiRewards | unmatched — not counted | — | mentioned in root cause analysis | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | Infrared | unmatched — not counted | — | mentioned as contract to upgrade | no |
| Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf | InfraredV2 | unmatched — not counted | — | mentioned as upgraded contract | no |
| Infraredv1.5.pdf | WrappedVaultFactory | unmatched — not counted | — | mentioned in finding context: WrappedVaultFactory.sol#L22-L23 | no |
| Infraredv1.5.pdf | WrappedVaultOracleAuction | unmatched — not counted | — | mentioned in finding context: constructor of WrappedVaultOracleAuction | no |
| Zenith Audit Report - Infrared Finance.pdf | Infrared.sol | unmatched — not counted | — | Target in findings M-1 and M-2 | no |
| baseline-ethskills.md | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | BribeCollectorV1_4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8d4417...21298c` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | CuttingBoardSyndicate | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRAuction | unmatched — not counted | — | — | no |
| baseline-ethskills.md | IRRewardDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERADepositorV2_1 | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6...9fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761...cd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | InfraredUpgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3d...2fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | MerkleDistributor | unmatched — not counted | — | — | no |
| baseline-ethskills.md | RewardsLib | unmatched — not counted | — | — | no |
| baseline-ethskills.md | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cf...512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | Upgradeable | unmatched — not counted | — | — | no |
| baseline-ethskills.md | WrappedRewardToken | own contract | WrappedRewardToken (selected) `0x4f3c10...670c1b` — deployed 2025-10-07 16:43:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| baseline-ethskills.md | WrappedVault | unmatched — not counted | — | — | no |
| cantinacode-24.01.2026.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardManager | unmatched — not counted | — | listed in scope section | no |
| cantinacode-24.01.2026.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| infraredContractsSecurityReview.pdf | InfraredV1_5 | unmatched — not counted | — | mentioned in findings context | no |
| infraredContractsSecurityReview.pdf | RewardsLib | unmatched — not counted | — | mentioned in findings context | no |
| infrared_contract_security_review.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| infrared_contract_security_review.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| infrared_contract_security_review.pdf | MerkleTree | unmatched — not counted | — | — | no |
| infrared_security_review_12_11_2025.pdf | RewardDistributor | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-infrared-03072025.pdf | BeaconRootsVerify | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERADepositorV2 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x04cddc...cab7d7` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAV2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-03072025.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-03072025.pdf | MerkleTree | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-0310-bribeCollector.pdf | BribeCollectorV1_2 | unmatched — not counted | — | Listed in scope as the main contract under review; findings reference BribeCollectorV1_2.sol | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_3 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-0320.pdf | InfraredV1_2 | unmatched — not counted | — | mentioned in findings context and scope | no |
| report-cantinacode-infrared-1.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAKeeper | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-1201.pdf | InfraredBERAV2_1 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9b6761...cd3fe5` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-1201.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | Infrared | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAClaimor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdrawor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x8c0e12...2818e1` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDeployer | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-5.pdf | InfraredUpgradeable | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-5.pdf | VaultManagerLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | BatchClaimerV2_2 | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRAuction | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | IRRewardDistributor | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | InfraredV1_10 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb71b3d...2fc126` — deployed 2025-02-01 23:25:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared-pr647.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-cantinacode-infrared-pr647.pdf | StakedIR | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb5e9cf...512756` — deployed 2026-01-14 00:27:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | Infrared | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | BribeCollector | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Voter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-infrared.pdf | MultiRewards | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | Reward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BribeVotingReward | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | InfraredUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IBGT | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IInfraredDistributor | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVoter | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | IVotingEscrow | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | BalanceLogicLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cantinacode-infrared.pdf | VelodromeTimeLibrary | unmatched — not counted | — | listed in scope and findings | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardNFT | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicate | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSyndicateLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuctionV1_1 | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardDutchAuction | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardManager | unmatched — not counted | — | mentioned in findings context | no |
| report-cli-cantina-infrared-0503_final.pdf | CuttingBoardSlotNFT | unmatched — not counted | — | mentioned in findings context | no |
| report-competition-infrared-contracts.pdf | BribeCollector | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | Infrared | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERA | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAConstants | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERADepositor | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBERAFeeReceivor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf6a4a6...9fef97` — deployed 2025-02-01 23:25:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredBERAWithdraworLite | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | InfraredBGT | own contract | InfraredBGT (selected) `0xac03ca...bb2e6b` — deployed 2025-02-01 23:25:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredDistributor | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x1fad98...c4ccd6` — deployed 2025-02-01 23:25:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | InfraredVault | own contract | InfraredVault (selected) `0x75f3be...168301` — deployed 2025-02-14 19:41:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-competition-infrared-contracts.pdf | MultiRewards | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | RewardsLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | ValidatorManagerLib | unmatched — not counted | — | — | no |
| report-competition-infrared-contracts.pdf | WrappedVault | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xa1b644...28c7c9` | InfraredGovernanceTokenV1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 30 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 30 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, medium=6
- Match method counts: unique_name=30

Zero-match audit list:

- [5713] Infrared - Zenith Audit Report - 20082025.pdf
- [5715] Infrared - Zenith Audit Report.pdf
- [5716] Infrared Berachain Core Integration - Zellic Audit Report.pdf
- [5717] Infrared Merkle Distributor - Zenith Audit Report.pdf
- [5718] Infrared OFT Adapter Security Review.pdf
- [5719] Infrared Operations & Future Vaults Security Review.pdf
- [5720] Infrared Smart Contract Security Assessment.pdf
- [5721] Infrared_Finance_Incidence_Response_Review_Report_Feb_2025_2.pdf
- [5722] Infraredv1.5.pdf
- [5723] Zenith Audit Report - Infrared Finance.pdf
- [5725] cantinacode-24.01.2026.pdf
- [5726] infraredContractsSecurityReview.pdf
- [5728] infrared_security_review_12_11_2025.pdf
- [5730] report-cantinacode-infrared-0310-bribeCollector.pdf
- [5731] report-cantinacode-infrared-0320.pdf
- [5737] report-cli-cantina-infrared-0503_final.pdf

Fork inheritance lineage and inherited audits are included when available.
