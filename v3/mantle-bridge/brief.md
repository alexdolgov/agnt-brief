# Agentic Audit Brief: Mantle Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 10 (4 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mantle Bridge (`mantle-bridge`)
- Website: [https://app.mantle.xyz/bridge](https://app.mantle.xyz/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, mantle, sepolia
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,219,197.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mantle Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum, mantle, sepolia. Structural roles: 7 supporting, 4 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (7), core (4)
- Contract kinds: unclassified (6), contract (5)
- Detected standards: erc1967proxy (3), erc165 (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x676a79...eb7120`, chain 1)
- UnnamedContract (`0x95fc37...7c3012`, chain 1)
- UnnamedContract (`0xc54cb2...15a8fb`, chain 1)
- UnnamedContract (`0xca35f8...217794`, chain 1)
- UnnamedContract (`0xcaf893...0ea70a`, chain 1)
- UnnamedContract (`0x420000...00000f`, chain 5000)
- UnnamedContract (`0x420000...000012`, chain 5000)
- UnnamedContract (`0x420000...000015`, chain 5000)
- IONX (`0x6968f3...625a42`, chain 5000)
- Lib_AddressManager (`0x6968f3...625a42`, chain 1)
- OPSuccinctL2OutputOracle (`0x31d543...b9f481`, chain 1)
- OptimismMintableERC20Factory (`0x3b96c8...e00eb2`, chain 1)
- Proxy (`0x420000...000007`, chain 5000)
- Proxy (`0x420000...000010`, chain 5000)
- Proxy (`0x420000...000011`, chain 5000)
- Proxy (`0x420000...000013`, chain 5000)
- Proxy (`0x420000...000016`, chain 5000)
- Proxy (`0x420000...000019`, chain 5000)
- SystemConfig (`0x427ea0...386caf`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 19 of 68 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/42
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 9.1% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 2.4% | 2024-03 |
| Secure3 | Tier 2 | 1 | 2.4% | 2024-04 |
| Sigma Prime | Tier 2 | 1 | 2.4% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388919 | `0x427ea0...386caf` | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe92ac...937d0d` | ⚠️ Unaudited |
| AgniPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1858d5...17144f` | ⚠️ Unaudited |
| AssertionMap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1872ce...7bd993` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31abe1...79b650` | ⚠️ Unaudited |
| BVM_EigenDataLayrChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x50fa42...15b23a` | ⚠️ Unaudited |
| BVM_EigenDataLayrFee | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf037ba...e994ef` | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x291dc3...4aae93` | ⚠️ Unaudited |
| ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd48e...677f3e` | ⚠️ Unaudited |
| ChugSplashDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5978...f478e8` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6475...ee9f2f` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x4e59e7...aed40f` | ⚠️ Unaudited |
| IONX | unknown | project_anchor | own_supporting | 0 | mantle | unit-388912 | `0x6968f3...625a42` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7537...8967ae` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc62e...007222` | ⚠️ Unaudited |
| L1MantleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c3a81...6bf354` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e186...52901a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b386...ecd723` | ⚠️ Unaudited |
| Lib_AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388883 | `0x6968f3...625a42` | ⚠️ Unaudited |
| MantleTokenMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffb94c...8d1295` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388918 | `0x31d543...b9f481` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388920 | `0x3b96c8...e00eb2` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a66a...d331ab` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ca5f...3e0502` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5d35...caeca3` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388921 | `0x420000...000007` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388922 | `0x420000...000010` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388923 | `0x420000...000011` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388924 | `0x420000...000013` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388925 | `0x420000...000016` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388926 | `0x420000...000019` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cac2b...399add` | ⚠️ Unaudited |
| Rollup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242a33...c42a0d` | ⚠️ Unaudited |
| StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e9d3...0ad7fa` | ⚠️ Unaudited |
| SystemDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28399b...431d17` | ⚠️ Unaudited |
| TssDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7126f6...222246` | ⚠️ Unaudited |
| TssDelegationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x988ddc...7a9187` | ⚠️ Unaudited |
| TssDelegationSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x910265...516eb7` | ⚠️ Unaudited |
| TssGroupManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x399ca6...19cacf` | ⚠️ Unaudited |
| TssStakingSlashing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b276...3dc431` | ⚠️ Unaudited |
| VerifierEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3f77d4...821c2a` | ⚠️ Unaudited |
| WMANTLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x78c1b0...7f4cb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b345...7e6706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1183d0...466f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f308...ab0fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x247704...28d061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efae0...7eecac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37dac5...dfcb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3938d5...b2269f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4121dc...fece07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388882 | `0x676a79...eb7120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388884 | `0x95fc37...7c3012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3db4b...8efbc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388885 | `0xc54cb2...15a8fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388886 | `0xca35f8...217794` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388887 | `0xcaf893...0ea70a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388907 | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388908 | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388909 | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388888 | `0x04b345...7e6706` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388889 | `0x1183d0...466f89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388890 | `0x21f308...ab0fb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388891 | `0x247704...28d061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388892 | `0x2efae0...7eecac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388893 | `0x37dac5...dfcb4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388894 | `0x3938d5...b2269f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388895 | `0x4121dc...fece07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388896 | `0xb3db4b...8efbc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_V2_ Secure3 Audit Report.pdf (also discovered via alternate URL)](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/Secure3/Mantle_V2_%20Secure3%20Audit%20Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 33 | high |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 21 | high |
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 33 | high |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 25 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21150] Mantle_V2_ Secure3 Audit Report.pdf — no match: Extracted contract names from audit scope (L1 and L2 contracts in mantle-v2/packages/contracts-bedrock/contracts/) and from findings referencing specific contracts. Also included Go files from op-geth. Audit date from cover page: 'Mar 4th, 2024'.
- [21151] Mantle Op-Geth Audit Final Report (March 2024).pdf — no match: The scope section lists only file paths (e.g., core/state_transition.go) but no contract names. The report audits an op-geth repository (Go code), not smart contracts. No Solidity contract names are identifiable.
- [21152] Mantle V2 Solidity Contracts Audit Report (March 2024).pdf — matched: Extracted all contracts explicitly listed in the Scope section, including dependencies with limited review and files audited for differences. Audit date found on cover page: 'March 15, 2024'.
- [21153] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf — no match: The audit report lists five components (op-node, op-batcher, op-proposer, op-chain-ops, op-service) as in scope. These are Go modules, not smart contracts, but they are the audited targets. The audit date is explicitly given as 'March 15, 2024' on the cover page.
- [21154] Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf — matched: Scope explicitly lists packages/contracts-bedrock/contracts/L1/ and L2/ directories. Additional contracts referenced in findings are included.
- [21155] Mantle Op-Geth Audit Final Report (March 2024).pdf — no match: The scope section lists only file paths (e.g., core/state_transition.go) but no explicit contract names. The report audits an op-geth repository (Go code), not smart contracts. No Solidity contract names are identifiable.
- [21156] Mantle V2 Solidity Contracts Audit Report (March 2024).pdf — matched: Extracted all contracts from the Scope section and additional files audited for differences. The audit date is explicitly stated as 'March 15, 2024' on the cover page.
- [21157] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf — no match: The audit report lists five components (op-node, op-batcher, op-proposer, op-chain-ops, op-service) as in scope. These are Go modules, not smart contracts, but they are the audited targets. The audit date is March 15, 2024 from the title.
- [21158] Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf — matched: Extracted contracts from scope section and findings. Date from cover page 'April, 2024' mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_V2_ Secure3 Audit Report.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1StandardBridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2StandardBridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1ERC721Bridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2ERC721Bridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | OptimismPortal | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2OutputOracle | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | ResourceMetering | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | FeeVault | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | SafeCall | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Hashing | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Encoding | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Constants | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Types | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Predeploys | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2ToL1MessagePasser | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | BVM_ETH | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1_MNT_ADDRESS | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | IOptimismMintableERC721 | unmatched — not counted | — | Referenced in finding MNT-3 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | ERC165Checker | unmatched — not counted | — | Referenced in finding MNT-3 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Uniswapv3Quoter | unmatched — not counted | — | Referenced in findings MNT-11, MNT-14 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | StateTransition | unmatched — not counted | — | Referenced in findings MNT-9, MNT-24, MNT-46 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | txpool | unmatched — not counted | — | Referenced in findings MNT-15, MNT-16, MNT-34 | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0...386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BaseFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BVM_ETH | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1Block | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1FeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ERC721Bridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | StandardBridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainMessenger | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismMintableERC20 | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Semver | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | FeeVault | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | PortalSender | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemDictator | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | LegacyERC20MNT | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Burn | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Encoding | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Hashing | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Predeploys | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Types | unmatched — not counted | — | audited for differences | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-node | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-batcher | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-proposer | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-chain-ops | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-service | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | OptimismPortal | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1StandardBridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2StandardBridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ToL1MessagePasser | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | GasPriceOracle | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2OutputOracle | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1ERC721Bridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ERC721Bridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0...386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | ResourceMetering | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BVM_ETH | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1Block | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable2 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable3 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BaseFeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1FeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SequencerFeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | WETH9 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DataLayrServiceManager | unmatched — not counted | — | Referenced in findings as on-chain contract emitting events | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0...386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BaseFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BVM_ETH | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1Block | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1FeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ERC721Bridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | StandardBridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainMessenger | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismMintableERC20 | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Semver | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | FeeVault | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | PortalSender | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemDictator | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | LegacyERC20MNT | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Burn | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Encoding | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Hashing | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Predeploys | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Types | unmatched — not counted | — | audited for differences | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-node | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-batcher | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-proposer | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-chain-ops | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-service | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | OptimismPortal | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2StandardBridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | GasPriceOracle | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0...386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | ResourceMetering | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BVM_ETH | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1Block | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BaseFeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1FeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | WETH9 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DepositTx | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | MetaTxSignData | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | StateTransition | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DataLayrServiceManager | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0x6968f3...625a42` | IONX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6968f3...625a42` | Lib_AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31d543...b9f481` | OPSuccinctL2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b96c8...e00eb2` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 147 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [21150] Mantle_V2_ Secure3 Audit Report.pdf
- [21151] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21153] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf
- [21155] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21157] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
