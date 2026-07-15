# Agentic Audit Brief: Concrete

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Concrete (`concrete`)
- Website: [https://app.concrete.xyz](https://app.concrete.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $757,965,722.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Concrete in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xacce65...b73788`, chain 1)
- UnnamedContract (`0xf72bd5...0aa1c4`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 10 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381820 | `0xacce65...b73788` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381821 | `0xf72bd5...0aa1c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf](https://docs.concrete.xyz/assets/files/Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf](https://docs.concrete.xyz/assets/files/Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf) | Halborn | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf](https://docs.concrete.xyz/assets/files/Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf](https://docs.concrete.xyz/assets/files/Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf](https://docs.concrete.xyz/assets/files/Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf) | SSC | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf](https://docs.concrete.xyz/assets/files/Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf](https://docs.concrete.xyz/assets/files/Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf) | Code4rena | Contest | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf](https://docs.concrete.xyz/assets/files/Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf) | Halborn | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf](https://docs.concrete.xyz/assets/files/harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf](https://docs.concrete.xyz/assets/files/Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf](https://docs.concrete.xyz/assets/files/Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cantinacode-concrete-finance.pdf](https://docs.concrete.xyz/files/cantinacode-concrete-finance.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12932] Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf — no match: No reason recorded
- [12933] Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf — no match: No reason recorded
- [26341] cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is March 3, 2026 from the cover page.
- [26348] Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf — no match: Extracted 19 contract names from the scope section of the audit report. The audit date is the end date of the engagement (July 19, 2024).
- [26352] Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf — no match: Scope section lists 4 Solidity files. Audit dates: engagement Feb 12-13, 2025; report date 02.12.2025 - 02.13.2025; last updated 03/17/2025. Using end date of engagement.
- [26353] Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf — no match: Only one contract in scope: VaultManager. Audit date is the end of the engagement period.
- [26354] Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf — no match: Scope section lists two files: MigrationStrategy.sol and ConcreteMultiStrategyVaultUpgradeableV1.sol. Audit date is the end date of engagement: February 11th, 2025.
- [26355] Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf — no match: Extracted 46 contract names from the scope section file paths. Audit date is the end date of the engagement: January 24, 2025.
- [26356] Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf — no match: Extracted contract names from the Scope section file listing. Audit date is the end date of the engagement (February 10, 2025).
- [26357] Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf — no match: Only ConcreteMultiStrategyVault is explicitly in scope; Errors.sol and IConcreteMultiStrategyVault.sol are interfaces, not contracts.
- [26358] harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf — no match: Only one contract in scope: ConcreteMultiStrategyVault. Audit date is the end date of engagement: November 25th, 2024.
- [26359] Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf — no match: Scope section explicitly lists 6 files from two repositories. Audit date is the end date of engagement: November 22nd, 2024.
- [26360] Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf — no match: Extracted 5 contracts from scope section. Audit date is the end date of engagement (November 7, 2024).
- [26365] cantinacode-concrete-finance.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | AllocateModule | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactory | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Constants | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Conversion | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Hooks | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Roles | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | StateSetterLib | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | Time | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | UpgradeableVault | unmatched — not counted | — | — | no |
| Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf | VaultProxy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | BTCLinkedPriceFeed | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteMultiStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ConcreteOracle | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | DeploymentManager | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | FeesHelper | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ImplementationRegistry | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MorphoVaultStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MultiSigStrategy | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | MultiSigStrategyV1 | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | OracleFactory | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | ParkingLot | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | StrategyBase | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | StrategyHelper | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | UniswapV3HelperV1 | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultFactory | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultManager | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | VaultRegistry | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | WithdrawalQueue | unmatched — not counted | — | — | no |
| Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf | WithdrawalQueueHelper | unmatched — not counted | — | — | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteBridgedVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IAllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteBridgedAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IConcreteTokenizedVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IStrategyTemplate | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IVaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AccessControlLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AsyncVaultHelperLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateInitLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteAsyncVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcretePredepositVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | Time | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | TwoWayFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | UserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IBaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IPredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | IUserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PeripheryRolesLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PositionAccountingStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOAppStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | PredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | ShareDistributor | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | MultisigStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf | SimpleStrategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributorFactory | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | VaultRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributionErrors | unmatched — not counted | — | listed in scope | no |
| Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf | RewardsDistributionEvents | unmatched — not counted | — | listed in scope | no |
| Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf | VaultManager | unmatched — not counted | — | listed in scope section | no |
| Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf | MigrationStrategy | unmatched — not counted | — | listed in scope | no |
| Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf | ConcreteMultiStrategyVaultUpgradeableV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IBeraOracle | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IMockProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IMockStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IRewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ITokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultDeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IVaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IRadiantV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | EasyMathV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | IBaseSiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ISiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | CompoundV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf | MultiStrategyVaultHelper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IBeraOracle | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IClaimRouter | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IMockProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IMockStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IRewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ITokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultDeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IVaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | DeploymentManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ImplementationRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | VaultRegistry | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | AaveV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ProtectStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IRadiantV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | RadiantV2Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | EasyMathV2 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | IBaseSiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ISiloV1 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | SiloV1Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | CompoundV3Strategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | OraclePlug | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf | MultiStrategyVaultHelper | unmatched — not counted | — | listed in scope | no |
| Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope | no |
| harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf | ConcreteMultiStrategyVault | unmatched — not counted | — | listed in scope section: src/vault/ConcreteMultiStrategyVault.sol | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | MorphoV1UserImpl01 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | IMorphoV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | ProtectionHandler | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | OracleLibV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | AddressLib | unmatched — not counted | — | listed in scope | no |
| Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf | ProtectionViewLibV1 | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | StrategyBase | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MorphoVaultStrategy | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MultiStrategiesVaultHelper | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | MorphoV1Helper | unmatched — not counted | — | listed in scope | no |
| Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | UpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteBridgedVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IAllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteBridgedAsyncVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteFactory | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcretePredepositVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteStandardVaultImpl | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IConcreteTokenizedVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IStrategyTemplate | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IUpgradeableVault | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IVaultProxy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AccessControlLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AsyncVaultHelperLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Conversion | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ERC20Lib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | StateInitLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | StateSetterLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteAsyncVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteCachedVaultStateStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteFactoryBaseStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcretePredepositVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ConcreteStandardVaultImplStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | Time | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | AllocateModule | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | TwoWayFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | UserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IBaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IFeeSplitter | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IPredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | IUserDepositCapHook | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | BaseStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | MultisigStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PeripheryRolesLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PositionAccountingLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PositionAccountingStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PredepostVaultOAppStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | SimpleStrategyStorageLib | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | PredepostVaultOApp | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | ShareDistributor | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | MultisigStrategy | unmatched — not counted | — | listed in scope | no |
| cantinacode-concrete-finance.pdf | SimpleStrategy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 266 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12
- Match method counts: n/a

Zero-match audit list:

- [12932] Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf
- [12933] Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf
- [26341] cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf
- [26348] Earn-V1-Halborn-ba3b3b9a71e1a7d8f926aed9ef47be07.pdf
- [26352] Rewards-Distribution-3246c5b6379dceae29f2e615c257dfe9.pdf
- [26353] Vault-Manager-427118e172ce1b2defda8836e4bac880.pdf
- [26354] Upgradeable-Migration-Assessment-c0b9ad6a5dd702e950c8516feaf48587.pdf
- [26355] Code4rena-Review-Part-1-SSC-d7e272cdd300f7eff0bbc49185a067f0.pdf
- [26356] Code4rena-Review-Part-2-SSC-86afad00129569775250a7f816458b87.pdf
- [26357] Preview-Withdrawal-Pause-SSC-38644c89eda9ffbbfbe459e7292ba1ce.pdf
- [26358] harvestRewards-Function-Improvements-SSC-1f9a5bc7c52a568e77f235521f0a08ef.pdf
- [26359] Morpho-V1-Lender-Integration-SSC-9cf942079f67355a3d7b19b6016c52eb.pdf
- [26360] Morpho-Vault-Strategy-SSC-f55886a82b222e28047081b6dfc1780d.pdf
- [26365] cantinacode-concrete-finance.pdf

Fork inheritance lineage and inherited audits are included when available.
