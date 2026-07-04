# Agentic Audit Brief: Mantle Restaking

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.942Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 52 unique implementations (91 raw deployments)
- DeFi Llama TVL: $34,742,417.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Restaking. Structurally: 52 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 19 common project-authored base contract(s) (accesscontrolenumerableupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 116; live-surface contracts included: 76 (63 live, 13 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/43 (14.0%)
- Deployed-live implementations: 43 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/44
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 52
- Raw deployments: 91
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.7% (MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 6 | 13.6% | 2025-10 |
| MixBytes | Tier 1 | 2 | 4.5% | 2025-11 |
| Blocksec | Tier 2 | 1 | 2.3% | 2025-10 |
| Exvul | Tier 2 | 1 | 2.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayedWithdraw | operational_periphery | ethereum | n/a | [`0x12be34...66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | ✅ Audited |
| L1cmETHAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x4afa96...75e948`](./contracts/ethereum-1/0x4afa9620d0b79137383a7a9ab3477837d475e948/); ethereum `0xae96df...9fac44` | ✅ Audited |
| Oracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a6c87...71af69`](./contracts/ethereum-1/0x7a6c874db238d7fdc84516cd940e97032271af69/); ethereum `0x873504...408192` | ✅ Audited |
| OracleQuorumManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54c23e...4174b4`](./contracts/ethereum-1/0x54c23e0d89da943165c969d1abdb65f0d64174b4/); ethereum `0x92e56d...ea0d90` | ✅ Audited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x01a360...7a06a2`](./contracts/ethereum-1/0x01a360392c74b5b8bf4973f438ff3983507a06a2/); ethereum `0xe3cbd0...489e8f` | ✅ Audited |
| UnstakeRequestsManager | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x38fdf7...3fdcf9`](./contracts/ethereum-1/0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9/); ethereum `0x5a7b3c...4ca033` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLSPublicKeyCompendium | unknown | ethereum | n/a | [`0x92986c...60707a`](./contracts/ethereum-1/0x92986cd63c3409b7da2882624b6d6e7cf660707a/) | ⚠️ Unaudited |
| BLSRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ed35b...11dd67`](./contracts/ethereum-1/0x1ed35b793d887e028493dac4a11aa5feb811dd67/); ethereum `0x64f424...c565ad` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ee53d...57c066`](./contracts/ethereum-1/0x6ee53d3d6e622ac0296369445afb3cbbdc57c066/); ethereum `0xc9c24f...ccad94` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcdc78c...b0f55d`](./contracts/ethereum-1/0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d/); ethereum `0xd8d731...33c564` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5bd63a...3c14c1`](./contracts/ethereum-1/0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1/); ethereum `0xab4212...28827e` | ⚠️ Unaudited |
| DefaultCollateral | unknown | ethereum | n/a | [`0x475d3e...7c304a`](./contracts/ethereum-1/0x475d3eb031d250070b63fa145f0fcfc5d97c304a/) | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x242b0f...3c34d0`](./contracts/ethereum-1/0x242b0fe8b141cabe48b79115f376137b983c34d0/); ethereum `0x54d7e6...0e0568` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fd697...85271b`](./contracts/ethereum-1/0x3fd69733d60ad07362ed70efdb00d9d04785271b/); ethereum `0x8c5558...85ed4e` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | ethereum | n/a | [`0xea4f1f...af4798`](./contracts/ethereum-1/0xea4f1fe4928f1f83a450899c068bcd455baf4798/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b28a6...9fb585`](./contracts/ethereum-1/0x7b28a6cdf1bc937a984334ef5409b755489fb585/); ethereum `0x8b6c86...712478` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x4e59e7...aed40f`](./contracts/ethereum-1/0x4e59e778a0fb77fbb305637435c62faed9aed40f/); ethereum `0x849738...4c8203` | ⚠️ Unaudited |
| InvestmentManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237547...a7cefd`](./contracts/ethereum-1/0x23754725a49c0f003c349a6c7869ff8609a7cefd/); ethereum `0x7c4813...94e72e` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9fecf3...edc6b9`](./contracts/ethereum-1/0x9fecf38689349a5cff97526610cdb27618edc6b9/); ethereum `0xa93766...0630f5`; ethereum `0xcad08a...f93ee1` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | ethereum | n/a | [`0xa72833...40d5eb`](./contracts/ethereum-1/0xa728337af7dd226b74b0b1546aa7dd54d340d5eb/) | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | n/a | [`0x9d7aef...8bf9f6`](./contracts/ethereum-1/0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6/) | ⚠️ Unaudited |
| L1CookAdapter | unknown | ethereum | n/a | [`0x8f73bd...402b89`](./contracts/ethereum-1/0x8f73bdb6403051d6e3c4f854300d7e8277402b89/) | ⚠️ Unaudited |
| LiquidityBuffer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x006fad...dad409`](./contracts/ethereum-1/0x006fad88c35d973a87e451cf8d000c7e83dad409/); ethereum `0x38f319...58afdc` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | ethereum | n/a | [`0x60af26...3f7c4f`](./contracts/ethereum-1/0x60af2681bcc4886935f428a1386a4a68973f7c4f/) | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x052f52...613e52`](./contracts/ethereum-1/0x052f52748109bae13d6319a463d64b6a2a613e52/); ethereum `0xd5f783...b0adfa` | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | [`0xc9173b...7eefab`](./contracts/ethereum-1/0xc9173bf8bd5c1b071b5cae4122202a347b7eefab/) | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c3702...3ebe99`](./contracts/ethereum-1/0x0c3702bf1052acfeca77804cdb46da705e3ebe99/); ethereum `0x1f341c...17347e` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42f615...29aec8`](./contracts/ethereum-1/0x42f615ba9e7738722b36b6f01736151c0529aec8/); ethereum `0xd4b294...e1980b` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29ab87...6cf1f8`](./contracts/ethereum-1/0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8/); ethereum `0x52b5e5...41bdd1` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8cbcc5...f3621f`](./contracts/ethereum-1/0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f/); ethereum `0xa08f0a...7e6a6e` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x9d624d...a0fdf3`](./contracts/ethereum-1/0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3/) | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1cdbc...6b49f4`](./contracts/ethereum-1/0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4/); ethereum `0xfc8130...f347b0` | ⚠️ Unaudited |
| PositionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a65b2...9dbb98`](./contracts/ethereum-1/0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98/); ethereum `0xb48420...bc11bc` | ⚠️ Unaudited |
| PositionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc3f325...7510d3`](./contracts/ethereum-1/0xc3f325e368a03344136497225081380b737510d3/); ethereum `0xcf2d33...ccec7a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2cd33d...929e83`](./contracts/ethereum-1/0x2cd33d3dc4d6ea24b6941e4741f4bf4772929e83/); ethereum `0x382431...5187c8`; ethereum `0x47d587...d91ebb`; ethereum `0x5a08b8...9b8289`; ethereum `0xd8e7af...4c4621` | ⚠️ Unaudited |
| RegistryPermission | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab00b9...186b85`](./contracts/ethereum-1/0xab00b934de01c1b4931047125c2ba5b3d6186b85/); ethereum `0xbcf6d8...911d01` | ⚠️ Unaudited |
| ReturnsAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1766be...9d3b82`](./contracts/ethereum-1/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/); ethereum `0xf2bc41...292c93` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1980b3...d09a27`](./contracts/ethereum-1/0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27/); ethereum `0xd6e4aa...6f9cef` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d6a67...f1791d`](./contracts/ethereum-1/0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d/); ethereum `0xd4e11c...02493f` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xdecacc...611d39`](./contracts/ethereum-1/0xdecacc56fc347274d3df2b709602632845611d39/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | [`0xb6f7d3...1912b0`](./contracts/ethereum-1/0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 3 deployments: ethereum [`0x155dc3...31b195`](./contracts/ethereum-1/0x155dc3d5395687a14433d2a5019d970ced31b195/); ethereum `0xb1a38e...e3ec4e`; ethereum `0xc26016...c2ace2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19f5fb...6b9980`](./contracts/ethereum-1/0x19f5fb66474fb10c764599a59009301ec26b9980/); ethereum `0x1e70dc...63f2e7` | ⚠️ Unaudited |
| UnstakeRequestsManager | unknown | ethereum | n/a | [`0x4eaa1f...1bac71`](./contracts/ethereum-1/0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5b634c...cbb087`; ethereum `0xb5f1bd...d5c839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x273a57...34acbb`; ethereum `0xa0fb63...016ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x44d153...11f5ef`; ethereum `0x5261ed...caa055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b64d1...9b366f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50e2c2...eebaca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54839c...ffb8b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa288e7...650a0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc62d0...d799f1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | 3 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | 5 | n/a |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | contract_name | 2 | n/a |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=15, extraction_exact=2

Zero-match audit list:

- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
