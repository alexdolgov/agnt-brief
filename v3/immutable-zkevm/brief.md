# Agentic Audit Brief: Immutable zkEVM

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Immutable zkEVM (`immutable-zkevm`)
- Website: [https://www.immutable.com/](https://www.immutable.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 21 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $21,345,034.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Immutable zkEVM in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x177eafe0f1f3359375b1728dae0530a75c83e154`, chain 1)
- UnnamedContract (`0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932`, chain 1)
- UnnamedContract (`0x8804a8aa1f18f23ae8a456dd73806fda3219fad1`, chain 1)
- UnnamedContract (`0xa060151cf8c803202d3a6182bdfef019c8d836e2`, chain 1)
- UnnamedContract (`0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6`, chain 1)
- UnnamedContract (`0xde2bcd3f0297d29c25e83228e5a33c0b43b51ec8`, chain 1)
- UnnamedContract (`0xe2e91c1ae2873720c3b975a8034e887a35323345`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 7 of 21 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 21
- Raw deployments: 24
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AxelarGasService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ⚠️ Unaudited |
| AxelarGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ⚠️ Unaudited |
| TokenDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0bb6ef61de7ba74c669ee090113eeeb9ae3be371`; ethereum `0x72b1a3833c34d991916d104cf351eaec1c2e3f3d`; ethereum `0x7a811a7525928f22a2da97e94750b94215c73e61`; ethereum `0xe88ab68cd69e92294fcc3bbbd894fb183197fa39` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387373 | `0x177eafe0f1f3359375b1728dae0530a75c83e154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd58623f274d4a9806d27d4cc1ff6e840e946df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387376 | `0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b5a9f47cb0f363ef99bc26dac8551c3cb1d523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c38b3a349bcf7e46b024cddfb4778229609c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be3f2a2478caa0afe6d96ab959f133346b9f12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ef80c411774a9bb8cb42845e75afe19744f8edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387377 | `0x8804a8aa1f18f23ae8a456dd73806fda3219fad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6b93ff8a2a77cfdeb30048cbe460dbe134f157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90da206238384d33d7a35dcd7119c0ce76d37921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9129211efecaf4a1cd76104f5a4082220a783078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387378 | `0xa060151cf8c803202d3a6182bdfef019c8d836e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac88a57943b5bba1ecd931f8494cad0b7f717590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387380 | `0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba606be61572510d8118127a82faff6027641401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34e9700ee09b8662c3c4667c134ef43ec7f2516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387381 | `0xde2bcd3f0297d29c25e83228e5a33c0b43b51ec8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387382 | `0xe2e91c1ae2873720c3b975a8034e887a35323345` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 15
- Live contracts: 0
- Unknown liveness contracts: 15
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=4, unverified unclassified=11

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x90da206238384d33d7a35dcd7119c0ce76d37921` | non_address_book | unknown | unknown | unverified | n/a | `0x9ea46f553de064ac0a2418ed5f50e85e087d8fd7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba606be61572510d8118127a82faff6027641401` | non_address_book | unknown | unknown | unverified | n/a | `0x9ea46f553de064ac0a2418ed5f50e85e087d8fd7` |
| ethereum | source verified unclassified | TokenDeployer<br>`0x0bb6ef61de7ba74c669ee090113eeeb9ae3be371` | non_address_book | unknown | unknown | verified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | source verified unclassified | TokenDeployer<br>`0x72b1a3833c34d991916d104cf351eaec1c2e3f3d` | non_address_book | unknown | unknown | verified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | source verified unclassified | TokenDeployer<br>`0x7a811a7525928f22a2da97e94750b94215c73e61` | non_address_book | unknown | unknown | verified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | source verified unclassified | TokenDeployer<br>`0xe88ab68cd69e92294fcc3bbbd894fb183197fa39` | non_address_book | unknown | unknown | verified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd58623f274d4a9806d27d4cc1ff6e840e946df` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50b5a9f47cb0f363ef99bc26dac8551c3cb1d523` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59c38b3a349bcf7e46b024cddfb4778229609c28` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5be3f2a2478caa0afe6d96ab959f133346b9f12d` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ef80c411774a9bb8cb42845e75afe19744f8edc` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e6b93ff8a2a77cfdeb30048cbe460dbe134f157` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc34e9700ee09b8662c3c4667c134ef43ec7f2516` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9129211efecaf4a1cd76104f5a4082220a783078` | non_address_book | unknown | unknown | unverified | n/a | `0xdda0d9448ebe3ea43afece5fa6401f5795c19333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac88a57943b5bba1ecd931f8494cad0b7f717590` | non_address_book | unknown | unknown | unverified | n/a | `0xdda0d9448ebe3ea43afece5fa6401f5795c19333` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Perimeter-Fuzzing-2024-09-10.pdf](https://github.com/immutable/zkevm-bridge-contracts/blob/main/audits/Perimeter-Fuzzing-2024-09-10.pdf) | Perimeter | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [202309_Halborn_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_Halborn_Final.pdf) | Halborn | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Quantstamp_Arcadeum_Report_Final.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/Quantstamp_Arcadeum_Report_Final.pdf) | Quantstamp | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 37 | high |
| [sequence_quantstamp_audit_feb_2021.pdf](https://github.com/immutable/wallet-contracts/blob/main/audits/sequence_quantstamp_audit_feb_2021.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [202309_audit_background.md](https://github.com/immutable/wallet-contracts/blob/main/audits/202309_audit_background.md) | Unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1814] Perimeter-Fuzzing-2024-09-10.pdf — no match: All contracts from the Files in Scope section extracted. Audit date from cover page.
- [1815] 202309_Halborn_Final.pdf — no match: Extracted contracts from scope section, findings code locations, upgradeability storage layouts, and test files. Audit date from engagement end date.
- [1817] Quantstamp_Arcadeum_Report_Final.pdf — no match: All contracts listed in the file signatures appendix and mentioned in findings are included. The audit date is the latest update date (2020-06-30) from the changelog.
- [1818] sequence_quantstamp_audit_feb_2021.pdf — no match: The audit scope is the entire repository as per the file signatures appendix. The date is from the changelog: 2021-02-18 - Report finalization.
- [15117] 202309_audit_background.md — no match: No explicit scope section or date found. Contracts are identified from descriptions of added/modified contracts. LatestWalletImplLocator is included as it is part of the startup wallet architecture.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Perimeter-Fuzzing-2024-09-10.pdf | ChildERC20Bridge | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | ChildERC20 | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | WIMX | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | FlowRateDetection | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | FlowRateWithdrawalQueue | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | RootERC20BridgeFlowRate | unmatched — not counted | — | listed in Files in Scope | no |
| Perimeter-Fuzzing-2024-09-10.pdf | RootERC20Bridge | unmatched — not counted | — | listed in Files in Scope | no |
| 202309_Halborn_Final.pdf | WalletProxy | unmatched — not counted | — | mentioned in scope and appendix | no |
| 202309_Halborn_Final.pdf | Factory | unmatched — not counted | — | mentioned in scope and test files | no |
| 202309_Halborn_Final.pdf | MultiCallDeploy | unmatched — not counted | — | mentioned in scope and test files | no |
| 202309_Halborn_Final.pdf | LatestWalletImplLocator | unmatched — not counted | — | mentioned in scope and test files | no |
| 202309_Halborn_Final.pdf | StartupWalletImpl | unmatched — not counted | — | mentioned in scope and test files | no |
| 202309_Halborn_Final.pdf | ImmutableSigner | unmatched — not counted | — | mentioned in scope and test files | no |
| 202309_Halborn_Final.pdf | MainModuleDynamicAuth | unmatched — not counted | — | mentioned in scope and upgradeability section | no |
| 202309_Halborn_Final.pdf | MainModule | unmatched — not counted | — | mentioned in upgradeability section | no |
| 202309_Halborn_Final.pdf | GuestModule | unmatched — not counted | — | mentioned in upgradeability section | no |
| 202309_Halborn_Final.pdf | MainModuleGasEstimation | unmatched — not counted | — | mentioned in upgradeability section | no |
| 202309_Halborn_Final.pdf | MainModuleUpgradable | unmatched — not counted | — | mentioned in upgradeability section | no |
| 202309_Halborn_Final.pdf | ModuleAuth | unmatched — not counted | — | code location in finding HAL-01 | no |
| 202309_Halborn_Final.pdf | ModuleCreator | unmatched — not counted | — | code location in finding HAL-02 | no |
| 202309_Halborn_Final.pdf | ModuleStorage | unmatched — not counted | — | mentioned in findings and upgradeability | no |
| 202309_Halborn_Final.pdf | ModuleIgnoreNonceCalls | unmatched — not counted | — | code location in findings HAL-03 and HAL-05 | no |
| 202309_Halborn_Final.pdf | ModuleIgnoreAuthUpgradable | unmatched — not counted | — | code location in finding HAL-03 | no |
| 202309_Halborn_Final.pdf | ModuleHooks | unmatched — not counted | — | code location in finding HAL-03 | no |
| 202309_Halborn_Final.pdf | ModuleCalls | unmatched — not counted | — | code location in finding HAL-03 | no |
| 202309_Halborn_Final.pdf | ModuleAuthUpgradable | unmatched — not counted | — | code location in finding HAL-03 | no |
| 202309_Halborn_Final.pdf | CallReceiverMock | unmatched — not counted | — | mentioned in test files | no |
| 202309_Halborn_Final.pdf | DelegateCallStorageMock | unmatched — not counted | — | mentioned in test files | no |
| 202309_Halborn_Final.pdf | IWalletProxy | unmatched — not counted | — | mentioned in test files | no |
| 202309_Halborn_Final.pdf | IModuleCalls | unmatched — not counted | — | mentioned in test files | no |
| Quantstamp_Arcadeum_Report_Final.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | MainModule | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | MainModuleUpgradable | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleCalls | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleCreator | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleAuth | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleAuthFixed | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleAuthUpgradable | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleERC165 | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleHooks | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleSelfAuth | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleStorage | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleUpdate | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | Implementation | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | LibAddress | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | LibBytes | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IERC1271Wallet | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IERC223Receiver | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IERC1155Receiver | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IERC721Receiver | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleHooks | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleCalls | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleCreator | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleUpdate | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleAuthUpgradable | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | IModuleAuth | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | CallReceiverMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | DelegateCallMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ERC165CheckerMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | GasBurnerMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | HookCallerMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | HookMock | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | LibBytesImpl | unmatched — not counted | — | listed in scope | no |
| Quantstamp_Arcadeum_Report_Final.pdf | ModuleMock | unmatched — not counted | — | listed in scope | no |
| sequence_quantstamp_audit_feb_2021.pdf | Factory | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | Wallet | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IERC1271Wallet | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IERC223Receiver | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IERC1155Receiver | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IERC721Receiver | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | GuestModule | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | MainModule | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | MainModuleUpgradable | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | SequenceUtils | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | RequireUtils | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | MultiCallUtils | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleCalls | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleCreator | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleAuth | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleERC165 | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleHooks | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleStorage | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | Implementation | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleUpdate | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleSelfAuth | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleAuthFixed | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleAuthUpgradable | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleHooks | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleCalls | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleCreator | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleUpdate | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleAuthUpgradable | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | IModuleAuth | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | LibAddress | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | SignatureValidator | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | LibBytes | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | Migrations | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | CallReceiverMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | LibBytesImpl | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | HookCallerMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | GasBurnerMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | DelegateCallMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | HookMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ModuleMock | unmatched — not counted | — | listed in file signatures appendix | no |
| sequence_quantstamp_audit_feb_2021.pdf | ERC165CheckerMock | unmatched — not counted | — | listed in file signatures appendix | no |
| 202309_audit_background.md | MultiCallDeploy | unmatched — not counted | — | listed in scope as added contract | no |
| 202309_audit_background.md | ImmutableSigner | unmatched — not counted | — | listed in scope as added contract | no |
| 202309_audit_background.md | StartupWalletImpl | unmatched — not counted | — | listed in scope as added contract | no |
| 202309_audit_background.md | WalletProxy | unmatched — not counted | — | listed in scope as added contract | no |
| 202309_audit_background.md | MainModuleDynamicAuth | unmatched — not counted | — | listed in scope as added contract | no |
| 202309_audit_background.md | Factory | unmatched — not counted | — | listed in scope as modified contract | no |
| 202309_audit_background.md | LatestWalletImplLocator | unmatched — not counted | — | mentioned in StartupWalletImpl description as interface used | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 115 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [1814] Perimeter-Fuzzing-2024-09-10.pdf
- [1815] 202309_Halborn_Final.pdf
- [1817] Quantstamp_Arcadeum_Report_Final.pdf
- [1818] sequence_quantstamp_audit_feb_2021.pdf
- [15117] 202309_audit_background.md

Fork inheritance lineage and inherited audits are included when available.
