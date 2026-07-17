# Agentic Audit Brief: Mantle Restaking

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.403Z
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

- Coverage of deployed-live implementations: 6/39 (15.4%)
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
- Tier 1 coverage: 5.1% (MixBytes)

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
| DelayedWithdraw | operational_periphery | ethereum | n/a | [`0x12be34be067ebd201f6eaf78a861d90b2a66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | ✅ Audited |
| L1cmETHAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x4afa9620d0b79137383a7a9ab3477837d475e948`](./contracts/ethereum-1/0x4afa9620d0b79137383a7a9ab3477837d475e948/); ethereum `0xae96df024b9cb69a39a219d7176df6e7e39fac44` | ✅ Audited |
| Oracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a6c874db238d7fdc84516cd940e97032271af69`](./contracts/ethereum-1/0x7a6c874db238d7fdc84516cd940e97032271af69/); ethereum `0x8735049f496727f824cc0f2b174d826f5c408192` | ✅ Audited |
| OracleQuorumManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54c23e0d89da943165c969d1abdb65f0d64174b4`](./contracts/ethereum-1/0x54c23e0d89da943165c969d1abdb65f0d64174b4/); ethereum `0x92e56d2146d54d5aecb25ca36c89d027a6ea0d90` | ✅ Audited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x01a360392c74b5b8bf4973f438ff3983507a06a2`](./contracts/ethereum-1/0x01a360392c74b5b8bf4973f438ff3983507a06a2/); ethereum `0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f` | ✅ Audited |
| UnstakeRequestsManager | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9`](./contracts/ethereum-1/0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9/); ethereum `0x5a7b3cde8ac8d780af4797bf1517464ac54ca033` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLSPublicKeyCompendium | unknown | ethereum | n/a | [`0x92986cd63c3409b7da2882624b6d6e7cf660707a`](./contracts/ethereum-1/0x92986cd63c3409b7da2882624b6d6e7cf660707a/) | ⚠️ Unaudited |
| BLSRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ed35b793d887e028493dac4a11aa5feb811dd67`](./contracts/ethereum-1/0x1ed35b793d887e028493dac4a11aa5feb811dd67/); ethereum `0x64f4244eea17a361bb919a28f614c3ad1ac565ad` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ee53d3d6e622ac0296369445afb3cbbdc57c066`](./contracts/ethereum-1/0x6ee53d3d6e622ac0296369445afb3cbbdc57c066/); ethereum `0xc9c24f1aad2614e81f033746292f5dc5d7ccad94` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d`](./contracts/ethereum-1/0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d/); ethereum `0xd8d731624d97a66e012e62208cfc921d7033c564` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1`](./contracts/ethereum-1/0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1/); ethereum `0xab42127980a3bff124e6465e097a5fc97228827e` | ⚠️ Unaudited |
| DefaultCollateral | unknown | ethereum | n/a | [`0x475d3eb031d250070b63fa145f0fcfc5d97c304a`](./contracts/ethereum-1/0x475d3eb031d250070b63fa145f0fcfc5d97c304a/) | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x242b0fe8b141cabe48b79115f376137b983c34d0`](./contracts/ethereum-1/0x242b0fe8b141cabe48b79115f376137b983c34d0/); ethereum `0x54d7e6ad8b3b6f97441f3224ecfc5db6b20e0568` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fd69733d60ad07362ed70efdb00d9d04785271b`](./contracts/ethereum-1/0x3fd69733d60ad07362ed70efdb00d9d04785271b/); ethereum `0x8c555854b53f254cfe8b8b0d037139856585ed4e` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | ethereum | n/a | [`0xea4f1fe4928f1f83a450899c068bcd455baf4798`](./contracts/ethereum-1/0xea4f1fe4928f1f83a450899c068bcd455baf4798/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7b28a6cdf1bc937a984334ef5409b755489fb585`](./contracts/ethereum-1/0x7b28a6cdf1bc937a984334ef5409b755489fb585/); ethereum `0x8b6c86d2c0cc65cb4138cc01c97ec4e1d5712478` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x4e59e778a0fb77fbb305637435c62faed9aed40f`](./contracts/ethereum-1/0x4e59e778a0fb77fbb305637435c62faed9aed40f/); ethereum `0x849738999ba1f3d995d28bdb35efa2e47b4c8203` | ⚠️ Unaudited |
| InvestmentManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23754725a49c0f003c349a6c7869ff8609a7cefd`](./contracts/ethereum-1/0x23754725a49c0f003c349a6c7869ff8609a7cefd/); ethereum `0x7c4813a9af2fea4ca765a26b05d128926e94e72e` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9fecf38689349a5cff97526610cdb27618edc6b9`](./contracts/ethereum-1/0x9fecf38689349a5cff97526610cdb27618edc6b9/); ethereum `0xa937660031787c4408587d2c6a67ec4b260630f5`; ethereum `0xcad08a7b9ef6adefaef08d0d85a577a288f93ee1` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | ethereum | n/a | [`0xa728337af7dd226b74b0b1546aa7dd54d340d5eb`](./contracts/ethereum-1/0xa728337af7dd226b74b0b1546aa7dd54d340d5eb/) | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | n/a | [`0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6`](./contracts/ethereum-1/0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6/) | ⚠️ Unaudited |
| L1CookAdapter | unknown | ethereum | n/a | [`0x8f73bdb6403051d6e3c4f854300d7e8277402b89`](./contracts/ethereum-1/0x8f73bdb6403051d6e3c4f854300d7e8277402b89/) | ⚠️ Unaudited |
| LiquidityBuffer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x006fad88c35d973a87e451cf8d000c7e83dad409`](./contracts/ethereum-1/0x006fad88c35d973a87e451cf8d000c7e83dad409/); ethereum `0x38f3199a6c37d61878506624bae06529d858afdc` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | ethereum | n/a | [`0x60af2681bcc4886935f428a1386a4a68973f7c4f`](./contracts/ethereum-1/0x60af2681bcc4886935f428a1386a4a68973f7c4f/) | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x052f52748109bae13d6319a463d64b6a2a613e52`](./contracts/ethereum-1/0x052f52748109bae13d6319a463d64b6a2a613e52/); ethereum `0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa` | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | [`0xc9173bf8bd5c1b071b5cae4122202a347b7eefab`](./contracts/ethereum-1/0xc9173bf8bd5c1b071b5cae4122202a347b7eefab/) | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c3702bf1052acfeca77804cdb46da705e3ebe99`](./contracts/ethereum-1/0x0c3702bf1052acfeca77804cdb46da705e3ebe99/); ethereum `0x1f341cbdd4239817f150e27f200e48ba4817347e` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42f615ba9e7738722b36b6f01736151c0529aec8`](./contracts/ethereum-1/0x42f615ba9e7738722b36b6f01736151c0529aec8/); ethereum `0xd4b29418c2353b6762c6f6c5e15ca937ebe1980b` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8`](./contracts/ethereum-1/0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8/); ethereum `0x52b5e5c0e18a3566332f05246e78b9043e41bdd1` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f`](./contracts/ethereum-1/0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f/); ethereum `0xa08f0a95be713baeb8bdf772fd443df6b17e6a6e` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3`](./contracts/ethereum-1/0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3/) | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4`](./contracts/ethereum-1/0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4/); ethereum `0xfc81300358f122781d785aebab6f3301acf347b0` | ⚠️ Unaudited |
| PositionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98`](./contracts/ethereum-1/0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98/); ethereum `0xb484207115cdec6b24f02da5ff02b8d9adbc11bc` | ⚠️ Unaudited |
| PositionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc3f325e368a03344136497225081380b737510d3`](./contracts/ethereum-1/0xc3f325e368a03344136497225081380b737510d3/); ethereum `0xcf2d33883b60c80174b21d7013958076ecccec7a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2cd33d3dc4d6ea24b6941e4741f4bf4772929e83`](./contracts/ethereum-1/0x2cd33d3dc4d6ea24b6941e4741f4bf4772929e83/); ethereum `0x382431ef030ea274f89c0ff03715f497cc5187c8`; ethereum `0x47d58744d8515d9aaeaf961bc03625118bd91ebb`; ethereum `0x5a08b8d531dcc755807e6bf7b4b66687f59b8289`; ethereum `0xd8e7afdb741fce36da34427ad3460095374c4621` | ⚠️ Unaudited |
| RegistryPermission | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab00b934de01c1b4931047125c2ba5b3d6186b85`](./contracts/ethereum-1/0xab00b934de01c1b4931047125c2ba5b3d6186b85/); ethereum `0xbcf6d8273daf842b6fc288b08e48c438fa911d01` | ⚠️ Unaudited |
| ReturnsAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82`](./contracts/ethereum-1/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/); ethereum `0xf2bc410fad9fc3140c4cded7c6e5bd56ac292c93` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27`](./contracts/ethereum-1/0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27/); ethereum `0xd6e4aa932147a3fe5311da1b67d9e73da06f9cef` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d`](./contracts/ethereum-1/0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d/); ethereum `0xd4e11c28e04c0c2bf370b7a9989498b7ea02493f` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xdecacc56fc347274d3df2b709602632845611d39`](./contracts/ethereum-1/0xdecacc56fc347274d3df2b709602632845611d39/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | [`0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0`](./contracts/ethereum-1/0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 3 deployments: ethereum [`0x155dc3d5395687a14433d2a5019d970ced31b195`](./contracts/ethereum-1/0x155dc3d5395687a14433d2a5019d970ced31b195/); ethereum `0xb1a38eb2f2161a8c5f123bc2128e67a1bee3ec4e`; ethereum `0xc26016f1166be7b6c5611aab104122e0f6c2ace2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19f5fb66474fb10c764599a59009301ec26b9980`](./contracts/ethereum-1/0x19f5fb66474fb10c764599a59009301ec26b9980/); ethereum `0x1e70dc4b6f41c16b23cf0ee674b4d5471c63f2e7` | ⚠️ Unaudited |
| UnstakeRequestsManager | unknown | ethereum | n/a | [`0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71`](./contracts/ethereum-1/0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71/) | ⚠️ Unaudited |

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
| Proxy (impl: 0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5b634c280d16e75749b61c8b1c0061b052cbb087`; ethereum `0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x273a57a18fb1951129e394fe5463d8b9a634acbb`; ethereum `0xa0fb6382cb270ed8f04e6752c95c042a8c016ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x44d1533b6616de6195559132eb825e8c5d11f5ef`; ethereum `0x5261ed948c6364039e9f578884c79df93ccaa055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b64d1fd7cf1230468aedf3a401cfe74ca9b366f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50e2c24bf99c70e39af949e8d7d9fd78e9eebaca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54839c91d8fc917d2d22867297562fcc4fffb8b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa288e750401e6d15a62e3400c87d3ee331650a0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc62d0b26429416527c9abc8ae58a013f9d799f1` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x92986cd63c3409b7da2882624b6d6e7cf660707a`](./contracts/ethereum-1/0x92986cd63c3409b7da2882624b6d6e7cf660707a/) | BLSPublicKeyCompendium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ed35b793d887e028493dac4a11aa5feb811dd67`](./contracts/ethereum-1/0x1ed35b793d887e028493dac4a11aa5feb811dd67/) | BLSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ee53d3d6e622ac0296369445afb3cbbdc57c066`](./contracts/ethereum-1/0x6ee53d3d6e622ac0296369445afb3cbbdc57c066/) | DataLayrChallenge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d`](./contracts/ethereum-1/0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d/) | DataLayrChallengeUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1`](./contracts/ethereum-1/0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1/) | DataLayrServiceManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x475d3eb031d250070b63fa145f0fcfc5d97c304a`](./contracts/ethereum-1/0x475d3eb031d250070b63fa145f0fcfc5d97c304a/) | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x242b0fe8b141cabe48b79115f376137b983c34d0`](./contracts/ethereum-1/0x242b0fe8b141cabe48b79115f376137b983c34d0/) | DistributeMerkleERC20Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fd69733d60ad07362ed70efdb00d9d04785271b`](./contracts/ethereum-1/0x3fd69733d60ad07362ed70efdb00d9d04785271b/) | DistributeMerkleERC20Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b28a6cdf1bc937a984334ef5409b755489fb585`](./contracts/ethereum-1/0x7b28a6cdf1bc937a984334ef5409b755489fb585/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23754725a49c0f003c349a6c7869ff8609a7cefd`](./contracts/ethereum-1/0x23754725a49c0f003c349a6c7869ff8609a7cefd/) | InvestmentManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fecf38689349a5cff97526610cdb27618edc6b9`](./contracts/ethereum-1/0x9fecf38689349a5cff97526610cdb27618edc6b9/) | InvestmentStrategyBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa728337af7dd226b74b0b1546aa7dd54d340d5eb`](./contracts/ethereum-1/0xa728337af7dd226b74b0b1546aa7dd54d340d5eb/) | ITBPositionDecoderAndSanitizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6`](./contracts/ethereum-1/0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6/) | L1cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f73bdb6403051d6e3c4f854300d7e8277402b89`](./contracts/ethereum-1/0x8f73bdb6403051d6e3c4f854300d7e8277402b89/) | L1CookAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006fad88c35d973a87e451cf8d000c7e83dad409`](./contracts/ethereum-1/0x006fad88c35d973a87e451cf8d000c7e83dad409/) | LiquidityBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60af2681bcc4886935f428a1386a4a68973f7c4f`](./contracts/ethereum-1/0x60af2681bcc4886935f428a1386a4a68973f7c4f/) | MantleOFTAdapterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052f52748109bae13d6319a463d64b6a2a613e52`](./contracts/ethereum-1/0x052f52748109bae13d6319a463d64b6a2a613e52/) | METH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9173bf8bd5c1b071b5cae4122202a347b7eefab`](./contracts/ethereum-1/0xc9173bf8bd5c1b071b5cae4122202a347b7eefab/) | METH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3702bf1052acfeca77804cdb46da705e3ebe99`](./contracts/ethereum-1/0x0c3702bf1052acfeca77804cdb46da705e3ebe99/) | OPSuccinctL2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42f615ba9e7738722b36b6f01736151c0529aec8`](./contracts/ethereum-1/0x42f615ba9e7738722b36b6f01736151c0529aec8/) | OPSuccinctL2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8`](./contracts/ethereum-1/0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f`](./contracts/ethereum-1/0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3`](./contracts/ethereum-1/0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4`](./contracts/ethereum-1/0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98`](./contracts/ethereum-1/0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3f325e368a03344136497225081380b737510d3`](./contracts/ethereum-1/0xc3f325e368a03344136497225081380b737510d3/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab00b934de01c1b4931047125c2ba5b3d6186b85`](./contracts/ethereum-1/0xab00b934de01c1b4931047125c2ba5b3d6186b85/) | RegistryPermission | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82`](./contracts/ethereum-1/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/) | ReturnsAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27`](./contracts/ethereum-1/0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27/) | ReturnsReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d`](./contracts/ethereum-1/0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d/) | ReturnsReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdecacc56fc347274d3df2b709602632845611d39`](./contracts/ethereum-1/0xdecacc56fc347274d3df2b709602632845611d39/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0`](./contracts/ethereum-1/0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71`](./contracts/ethereum-1/0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71/) | UnstakeRequestsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 9 |

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
