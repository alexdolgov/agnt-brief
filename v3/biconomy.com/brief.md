# Agentic Audit Brief: Biconomy.com

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Biconomy.com (`biconomy.com`)
- Website: [https://www.biconomy.com](https://www.biconomy.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $121,714,307.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Biconomy.com in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-126445 | `0xc86401...ee808a` | ⚠️ Unaudited |

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
| [docs.biconomy.io/contracts-and-audits](https://docs.biconomy.io/contracts-and-audits) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [CodeHawks-Cyfrin-Competition-170924.pdf](https://github.com/bcnmy/nexus/blob/main/audits/CodeHawks-Cyfrin-Competition-170924.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [report-cantinacode-biconomy-0708-updated.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-0708-updated.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [report-cantinacode-biconomy-erc7739-addon-final.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-erc7739-addon-final.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Biconomy-Nexus_Zenith-Audit-Report.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Biconomy-Nexus_Zenith-Audit-Report.pdf) | Zenith | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Nexus-Pashov-Review_2025-03.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Nexus-Pashov-Review_2025-03.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [2026-05-Composability-Nexus-Pashov-Review.pdf](https://github.com/bcnmy/erc8211-contracts/blob/main/audits/2026-05-Composability-Nexus-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-03-Composability_Zenith-Audit-Report.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability_Zenith-Audit-Report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-03-Composability-Pashov-Review.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-02%20Zenith%20Audit%20Report%20-%20Biconomy%20MEE%20Contracts.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-04 Zenith Audit Report - Node PM Sponsorship.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-04%20Zenith%20Audit%20Report%20-%20Node%20PM%20Sponsorship.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20750] docs.biconomy.io/contracts-and-audits — no match: Extracted contract names from multiple version tables and legacy/paymaster tables. No audit date found in the document.
- [20751] CodeHawks-Cyfrin-Competition-170924.pdf — no match: Scope section lists directories: contracts/, base/, common/, factory/, interfaces/, lib/, modules/, types/, utils/. Contract names extracted from file paths and findings.
- [20752] report-cantinacode-biconomy-0708-updated.pdf — no match: Extracted from the executive summary and findings sections. The audit date is March 4, 2025, as per the report preparation date.
- [20753] report-cantinacode-biconomy-erc7739-addon-final.pdf — no match: Extracted contract names from findings context and scope summary. Audit date from cover page.
- [20754] Biconomy-Nexus_Zenith-Audit-Report.pdf — no match: Scope section lists repository and commit hash, but no individual files. Contract names extracted from findings targets.
- [20755] Nexus-Pashov-Review_2025-03.pdf — no match: Extracted 27 contract names from the scope table and findings. Audit date is the end date of the engagement (March 25th 2025).
- [20756] 2026-05-Composability-Nexus-Pashov-Review.pdf — no match: Scope table lists ComposableExecutionLib.sol, ComposabilityDataTypes.sol, Nexus.sol. Additional contracts described in ERC-8211 components section are also included.
- [20757] 2025-03-Composability_Zenith-Audit-Report.pdf — no match: Scope section lists 'contracts/composability/*' and commit hash. Findings target specific files: ComposableExecutionModule.sol, Nexus.sol, ModuleManager.sol, ComposableExecutionLib.sol, Storage.sol.
- [20758] 2025-03-Composability-Pashov-Review.pdf — no match: Scope section explicitly lists 6 contracts. Audit date is the end date of the engagement period (March 22-25, 2025).
- [20759] 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf — no match: Scope section lists repository and commit hash but not individual contracts; contracts extracted from findings targets.
- [20760] 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf — no match: Scope section lists repository and commit hash but no explicit contract names; contracts extracted from findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.biconomy.io/contracts-and-audits | Nexus Implementation | unmatched — not counted | — | listed in legacy contracts table | no |
| docs.biconomy.io/contracts-and-audits | MEE K1 Validator | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | Nexus Bootstrap | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | Nexus Account Factory | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | Composable Execution Module | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v2.2.1 | no |
| docs.biconomy.io/contracts-and-audits | Composable Storage | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | ETH Forwarder | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | ENode Paymaster Factory | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v2.2.2 | no |
| docs.biconomy.io/contracts-and-audits | MEE EntryPoint & Paymaster | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | Composability Module | unmatched — not counted | — | listed in scope table for MEE Contracts Suite v1.0.0 | no |
| docs.biconomy.io/contracts-and-audits | K1 Validator | unmatched — not counted | — | listed in legacy contracts table | no |
| docs.biconomy.io/contracts-and-audits | K1 Validator Factory | unmatched — not counted | — | listed in legacy contracts table | no |
| docs.biconomy.io/contracts-and-audits | Account Factory | unmatched — not counted | — | listed in legacy contracts table | no |
| docs.biconomy.io/contracts-and-audits | EntryPoint V7 | unmatched — not counted | — | listed in legacy contracts table | no |
| docs.biconomy.io/contracts-and-audits | Sponsorship Paymaster | unmatched — not counted | — | listed in paymaster contracts table for other chains | no |
| docs.biconomy.io/contracts-and-audits | Token Paymaster | unmatched — not counted | — | listed in paymaster contracts table for other chains | no |
| docs.biconomy.io/contracts-and-audits | Bootstrap | unmatched — not counted | — | listed in legacy contracts table | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | Nexus | unmatched — not counted | — | mentioned in scope and findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | ModuleManager | unmatched — not counted | — | mentioned in scope and findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | BaseAccount | unmatched — not counted | — | mentioned in scope and findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | Bootstrap | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | RegistryAdapter | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | BiconomyMetaFactory | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | NexusAccountFactory | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | RegistryFactory | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | K1ValidatorFactory | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | K1Validator | unmatched — not counted | — | mentioned in findings | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | INexusAccountFactory | unmatched — not counted | — | mentioned in findings | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModuleManager | unmatched — not counted | — | mentioned in findings context and as contract in scope | no |
| report-cantinacode-biconomy-0708-updated.pdf | Nexus | unmatched — not counted | — | mentioned in findings context and as contract in scope | no |
| report-cantinacode-biconomy-0708-updated.pdf | BaseAccount | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | ExecutionHelper | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | K1Validator | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | K1ValidatorFactory | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | NexusAccountFactory | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryFactory | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryBootstrap | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | Bootstrap | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | Storage | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | Receiver | unmatched — not counted | — | inherited by Nexus | no |
| report-cantinacode-biconomy-0708-updated.pdf | EIP712 | unmatched — not counted | — | inherited by ModuleManager | no |
| report-cantinacode-biconomy-0708-updated.pdf | IModuleManager | unmatched — not counted | — | interface mentioned | no |
| report-cantinacode-biconomy-0708-updated.pdf | INexus | unmatched — not counted | — | interface mentioned | no |
| report-cantinacode-biconomy-0708-updated.pdf | IValidator | unmatched — not counted | — | interface mentioned | no |
| report-cantinacode-biconomy-0708-updated.pdf | IHook | unmatched — not counted | — | interface mentioned | no |
| report-cantinacode-biconomy-0708-updated.pdf | IERC7484 | unmatched — not counted | — | interface mentioned | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryAdapter | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModuleTypeLib | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | NonceLib | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | ExecLib | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | LocalCallDataParserLib | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModeLib | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | IStorage | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-0708-updated.pdf | IFallback | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | Nexus | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | K1Validator | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | ERC7739Validator | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | SentinelList | unmatched — not counted | — | mentioned in findings context | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | K1Validator | unmatched — not counted | — | Target in H-1 finding | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | Nexus | unmatched — not counted | — | Target in M-3, L-1, L-5 findings | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | NexusProxy | unmatched — not counted | — | Target in M-2 finding | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | ModuleManager | unmatched — not counted | — | Target in M-1, L-1, L-3, L-4, I-1 findings | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | NexusBootstrap | unmatched — not counted | — | Target in L-2, I-2 findings | no |
| Nexus-Pashov-Review_2025-03.pdf | BaseAccount | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ExecutionHelper | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ModuleManager | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | RegistryAdapter | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | Stakeable | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | BiconomyMetaFactory | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | K1ValidatorFactory | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | NexusAccountFactory | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | LocalCallDataParserLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | AssociatedArrayLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | BootstrapLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | BytesLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | EnumerableMap4337 | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | EnumerableSet4337 | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ExecLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ModeLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ModuleTypeLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | NonceLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | ProxyLib | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | K1Validator | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | Constants | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | Nexus | unmatched — not counted | — | listed in scope table | no |
| Nexus-Pashov-Review_2025-03.pdf | RegistryFactory | unmatched — not counted | — | mentioned in findings L-05, L-06, L-07 | no |
| Nexus-Pashov-Review_2025-03.pdf | NexusBootstrap | unmatched — not counted | — | mentioned in findings L-06, L-11, L-12 | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposableExecutionLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposabilityDataTypes | unmatched — not counted | — | listed in scope table | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | Nexus | unmatched — not counted | — | listed in scope table | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | K1MeeValidator | unmatched — not counted | — | described in ERC-8211 components section | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposableExecutionModule | unmatched — not counted | — | described in ERC-8211 components section | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | NexusAccountFactory | unmatched — not counted | — | described in ERC-8211 components section | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | NodePaymaster | unmatched — not counted | — | described in ERC-8211 components section | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ComposableExecutionModule | unmatched — not counted | — | listed in scope and findings target | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | Nexus | unmatched — not counted | — | mentioned in findings target | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ModuleManager | unmatched — not counted | — | mentioned in findings target | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ComposableExecutionLib | unmatched — not counted | — | mentioned in findings target | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | Storage | unmatched — not counted | — | mentioned in findings target | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionBase | unmatched — not counted | — | listed in scope section | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionLib | unmatched — not counted | — | listed in scope section | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionModule | unmatched — not counted | — | listed in scope section | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposabilityDataTypes | unmatched — not counted | — | listed in scope section | no |
| 2025-03-Composability-Pashov-Review.pdf | Storage | unmatched — not counted | — | listed in scope section | no |
| 2025-03-Composability-Pashov-Review.pdf | Constants | unmatched — not counted | — | listed in scope section | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | TxValidatorLib | unmatched — not counted | — | Target in findings M-1, I-1, I-2, I-4 | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | NodePaymaster | unmatched — not counted | — | Target in findings M-2, I-5 | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | K1MeeValidator | unmatched — not counted | — | Target in findings L-1, I-6, I-8 | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | PermitValidatorLib | unmatched — not counted | — | Target in findings L-2, I-1, I-7 | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | SimpleValidatorLib | unmatched — not counted | — | Target in finding I-3 | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | EcdsaLib | unmatched — not counted | — | Target in finding I-9 | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | K1MeeValidator | unmatched — not counted | — | Target in findings L-1 | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | BaseNodePaymaster | unmatched — not counted | — | Target in findings L-2, I-1, I-2, I-3 | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | NodePaymaster | unmatched — not counted | — | Target in findings I-3 | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | Constants | unmatched — not counted | — | Target in findings I-3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11
- Match method counts: n/a

Zero-match audit list:

- [20750] docs.biconomy.io/contracts-and-audits
- [20751] CodeHawks-Cyfrin-Competition-170924.pdf
- [20752] report-cantinacode-biconomy-0708-updated.pdf
- [20753] report-cantinacode-biconomy-erc7739-addon-final.pdf
- [20754] Biconomy-Nexus_Zenith-Audit-Report.pdf
- [20755] Nexus-Pashov-Review_2025-03.pdf
- [20756] 2026-05-Composability-Nexus-Pashov-Review.pdf
- [20757] 2025-03-Composability_Zenith-Audit-Report.pdf
- [20758] 2025-03-Composability-Pashov-Review.pdf
- [20759] 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf
- [20760] 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf

Fork inheritance lineage and inherited audits are included when available.
