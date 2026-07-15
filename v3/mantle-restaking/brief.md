# Agentic Audit Brief: Mantle Restaking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, mantle
- Contract surface: 67 unique implementations (120 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $34,742,417.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Mantle Restaking in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe6829d...59e8fa`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 1 of 67 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 67
- Raw deployments: 120
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7298d8...e74de8` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70222d...1001b2`; ethereum `0xfc775e...e8cb5f` | ⚠️ Unaudited |
| BLSPublicKeyCompendium | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18dd3c...a56a72`; ethereum `0x92986c...60707a` | ⚠️ Unaudited |
| BLSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ed35b...11dd67`; ethereum `0x64f424...c565ad` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ee53d...57c066`; ethereum `0xc9c24f...ccad94` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdc78c...b0f55d`; ethereum `0xd8d731...33c564` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bd63a...3c14c1`; ethereum `0xab4212...28827e` | ⚠️ Unaudited |
| DefaultCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475d3e...7c304a` | ⚠️ Unaudited |
| DelayedWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be34...66b113` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x242b0f...3c34d0`; ethereum `0x54d7e6...0e0568` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fd697...85271b`; ethereum `0x8c5558...85ed4e` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea4f1f...af4798` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b28a6...9fb585`; ethereum `0x8b6c86...712478` | ⚠️ Unaudited |
| Fiat24CryptoDeposit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a65c...d24df9` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4e59e7...aed40f`; ethereum `0x849738...4c8203` | ⚠️ Unaudited |
| InvestmentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x237547...a7cefd`; ethereum `0x7c4813...94e72e` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x9fecf3...edc6b9`; ethereum `0xa93766...0630f5`; ethereum `0xcad08a...f93ee1` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x310fc2...d872ee`; ethereum `0x31b6f0...349f74`; ethereum `0xa72833...40d5eb` | ⚠️ Unaudited |
| L1cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7aef...8bf9f6` | ⚠️ Unaudited |
| L1cmETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4afa96...75e948`; ethereum `0xae96df...9fac44` | ⚠️ Unaudited |
| L1Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3bb3d7...4df4bc`; ethereum `0x52170c...b1d05a`; ethereum `0x712d21...7febbf`; ethereum `0xadb562...47b246` | ⚠️ Unaudited |
| L1CookAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078382...348a79`; ethereum `0x8f73bd...402b89` | ⚠️ Unaudited |
| L1CookMessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a01c...4824be` | ⚠️ Unaudited |
| L1ERC20Q | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be0f7...8aed1b` | ⚠️ Unaudited |
| L1MessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91377...84de7e` | ⚠️ Unaudited |
| LiquidityBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x006fad...dad409`; ethereum `0x38f319...58afdc` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60af26...3f7c4f` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6c9039...e32044`; ethereum `0x7a3c0c...62cebb` | ⚠️ Unaudited |
| MerkleTreeLeafChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2252...2fc5f1` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x052f52...613e52`; ethereum `0xd5f783...b0adfa` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9173b...7eefab` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c3702...3ebe99`; ethereum `0x1f341c...17347e` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x405950...076f50`; ethereum `0x4d10b4...7436db`; ethereum `0xa99038...b0b604` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42f615...29aec8`; ethereum `0xd4b294...e1980b` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a6c87...71af69`; ethereum `0x873504...408192` | ⚠️ Unaudited |
| OracleQuorumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54c23e...4174b4`; ethereum `0x92e56d...ea0d90` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x29ab87...6cf1f8`; ethereum `0x52b5e5...41bdd1` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8cbcc5...f3621f`; ethereum `0xa08f0a...7e6a6e` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d624d...a0fdf3` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd1cdbc...6b49f4`; ethereum `0xfc8130...f347b0` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x075a48...b2a86f`; ethereum `0x4ca725...a492d0` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729c9c...c1a2b1` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a65b2...9dbb98`; ethereum `0xb48420...bc11bc` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc3f325...7510d3`; ethereum `0xcf2d33...ccec7a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2cd33d...929e83`; ethereum `0x382431...5187c8`; ethereum `0x47d587...d91ebb`; ethereum `0x5a08b8...9b8289`; ethereum `0xd8e7af...4c4621` | ⚠️ Unaudited |
| RegistryPermission | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xab00b9...186b85`; ethereum `0xbcf6d8...911d01` | ⚠️ Unaudited |
| ReturnsAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1766be...9d3b82`; ethereum `0xf2bc41...292c93` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1980b3...d09a27`; ethereum `0xd6e4aa...6f9cef` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d6a67...f1791d`; ethereum `0xd4e11c...02493f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01a360...7a06a2`; ethereum `0xe3cbd0...489e8f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecacc...611d39` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca047...436310` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f7d3...1912b0` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x155dc3...31b195`; ethereum `0xb1a38e...e3ec4e`; ethereum `0xc26016...c2ace2` | ⚠️ Unaudited |
| Topupper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11d0cf...694285`; ethereum `0x60c266...d9f90b`; ethereum `0xa1b2db...852ecc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19f5fb...6b9980`; ethereum `0x1e70dc...63f2e7` | ⚠️ Unaudited |
| UnstakeRequestsManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38fdf7...3fdcf9`; ethereum `0x5a7b3c...4ca033` | ⚠️ Unaudited |
| UnstakeRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eaa1f...1bac71` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b634c...cbb087`; ethereum `0xb5f1bd...d5c839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x273a57...34acbb`; ethereum `0xa0fb63...016ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x44d153...11f5ef`; ethereum `0x5261ed...caa055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b64d1...9b366f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e2c2...eebaca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54839c...ffb8b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa288e7...650a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc62d0...d799f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388870 | `0xe6829d...59e8fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | Verilog | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MixBytes-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F7DhxKicJ8bDVIc97CU5f%2FMixBytes-BufferPool.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [Hexens-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNQRVoWBNlZQgGHJqlE2P%2FHexens-BufferPool.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Blocksec-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNdXlRHtKYExIqqa9s7fP%2FBlocksec-BufferPool.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [verilog-mantle-fuzzland-cook-pm-audit-report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F5uL6TUlJvsnMnZ3bTBfG%2Fverilog-mantle-fuzzland-cook-pm-audit-report.pdf) | Fuzzland | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Mantle-cmETH_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Ff5ozoh0YRvxE3YO8FqMK%2FMantle-cmETH_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [mantle-cmeth-hexens-audit-aug-2024.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FT0QClInfYwk3ARBy1vrk%2Fmantle-cmeth-hexens-audit-aug-2024.pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FG407rVeB9SxJVhM28PEC%2FMantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FMlIxHGCEPsOGBFdgxvrJ%2FMantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle Network METH Secuity Audit Report Upd.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FZBSPwrDcGKf3Y7WyeJXr%2FMantle%20Network%20METH%20Secuity%20Audit%20Report%20Upd.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FEtxWvXpZa5vpZuHK1hGi%2FMantle-LSD-mntETH_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: No reason recorded
- [4626] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf — no match: No reason recorded
- [4628] mETH-Protocol-oct-25(Final).pdf — no match: No reason recorded
- [4629] Blocksec-11-25.pdf — no match: No reason recorded
- [4630] Exvul-11-25.pdf — no match: No reason recorded
- [4631] Hexens-11-25.pdf — no match: No reason recorded
- [4632] MixBytes-11-25.pdf — no match: No reason recorded
- [4633] blocksec.pdf — no match: Audit report for Mantle FixedYieldVault. Scope includes contracts BaseStakingRewards, BaseRewardRateManager, and WithdrawRequestManager as per findings referencing these contracts. Audit date is February 17, 2025.
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf — no match: Scope section states 'Solidity smart contracts under the folder contracts' in the repository. Four contracts are explicitly referenced in findings.
- [4636] Mantle_LSP_L2_Report.pdf — no match: The audit scope covers Solidity smart contracts under the 'src' folder in the repository. Only METHL2.sol is explicitly referenced in findings.
- [4637] Mantle_MDI_Quests_Report.pdf — no match: Only one contract file (MantleBase.sol) is referenced in findings; scope section says 'contracts' folder but no specific files listed.
- [4638] Mantle_Staking_Hub_Audit_Report.pdf — no match: Scope section mentions 'src' folder but does not list specific contract names. No individual contract names are identifiable from the provided text.
- [27289] MixBytes-BufferPool.pdf — no match: Scope table lists four contracts: LiquidityBuffer.sol, PositionManager.sol, Pauser.sol, Staking.sol. Audit date from title: NOVEMBER 13, 2025.
- [27290] Hexens-BufferPool.pdf — no match: Extracted contracts from scope and findings. Audit date from final report date.
- [27291] Blocksec-BufferPool.pdf — no match: Scope explicitly lists src/interfaces/IStaking.sol, src/interfaces/IPauser.sol, src/Staking.sol, src/Pauser.sol, and src/liquidityBuffer/*. The contracts LiquidityBuffer and PositionManager are within the liquidityBuffer directory and are referenced in findings.
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf — no match: Scope sections list 'contracts/**/*.sol' for both cmETH and ITBStrategy projects, but no specific contract names are given. Only PositionManager and L2CookMessagingStatus are explicitly named in findings. No audit date found in the provided text.
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 4 are extracted. The audit date is from the title line: 'Competitive Security Assessment Mantle-cmETH Sep 11th, 2024'.
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf — no match: Extracted contracts from scope section and file paths in findings. Audit date from 'delivered 02.09.2024'.
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: Extracted 7 contracts from scope and findings. Audit completion date is 25.08.2023.
- [27300] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf — no match: Scope section explicitly lists 9 contracts in src/ directory. Audit date from cover page.
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5 are extracted. The audit date is from the title page: 'Oct 12th, 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | AccountantWithRateProviders | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | BoringVault | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | DelayedWithdraw | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L1MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L2MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | SanctionsList | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | PositionManager | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | Staking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IPauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IStaking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | METH | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| blocksec.pdf | BaseStakingRewards | unmatched — not counted | — | mentioned in findings and scope | no |
| blocksec.pdf | BaseRewardRateManager | unmatched — not counted | — | mentioned in findings | no |
| blocksec.pdf | WithdrawRequestManager | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | BridgeableTokens | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | ERC20BridgedPermit | unmatched — not counted | — | mentioned in findings | no |
| Mantle_LSP_L2_Report.pdf | METHL2 | unmatched — not counted | — | Listed in findings as source file for the contract under audit. | no |
| Mantle_MDI_Quests_Report.pdf | MantleBase | unmatched — not counted | — | mentioned in findings source lines | no |
| MixBytes-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Hexens-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | Staking | unmatched — not counted | — | mentioned in findings as Staking contract | no |
| Blocksec-BufferPool.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| Blocksec-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | PositionManager | unmatched — not counted | — | Scope section lists contracts/**/*.sol for ITBStrategy project; PositionManager.sol is mentioned in findings. | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | L2CookMessagingStatus | unmatched — not counted | — | Mentioned in Low finding 'Inconsistency Between Code and Comments in _lzReceive Function'. | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | SanctionsList | unmatched — not counted | — | listed in scope and finding mantle-1 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope and findings mantle-12, mantle-16, mantle-5 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope and findings mantle-4, mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope and findings mantle-6, mantle-15, mantle-13 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope and finding mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | BoringVault | unmatched — not counted | — | listed in scope and findings mantle-2, mantle-8 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope and finding mantle-2 | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METH | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METHL2 | unmatched — not counted | — | listed in scope | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | METH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IUnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IPauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IMETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ProtocolEvents | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 132 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [4626] Mantle_Sep23(Public) (Oracle).pdf
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf
- [4628] mETH-Protocol-oct-25(Final).pdf
- [4629] Blocksec-11-25.pdf
- [4630] Exvul-11-25.pdf
- [4631] Hexens-11-25.pdf
- [4632] MixBytes-11-25.pdf
- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf
- [27289] MixBytes-BufferPool.pdf
- [27290] Hexens-BufferPool.pdf
- [27291] Blocksec-BufferPool.pdf
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [27300] Mantle_Sep23(Public) (Oracle).pdf
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
