# Agentic Audit Brief: Gravity Bridge

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:57.625Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 92 unique implementations (117 raw deployments)
- DeFi Llama TVL: $6,024,168.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 76 project-authored contract(s) across 1 chain(s); 53 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 15 common project-authored base contract(s) (erc20pausable, minterrole, erc20burnable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mellow Protocol** (`mellow-protocol`) in the KeepVault subsystem.
16 audits inherited from `mellow-protocol`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 146; live-surface contracts included: 116 (78 live, 38 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/54 (0.0%)
- Deployed-live implementations: 54 of 92 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 92
- Raw deployments: 117
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 1 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | ethereum | n/a | [`0xa325ad...6441c0`](./contracts/ethereum-1/0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x407be3...72ba85`](./contracts/ethereum-1/0x407be32cb513d6984935123eb1d9129d1472ba85/); ethereum `0xf6c20f...f9d762` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | ethereum | n/a | [`0xd23ed8...debb7b`](./contracts/ethereum-1/0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b/) | ⚠️ Unaudited |
| BandToken | token | ethereum | n/a | [`0xba11d0...6d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | ⚠️ Unaudited |
| BridgeBank | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2034c9...2c3f53`](./contracts/ethereum-1/0x2034c9194de45ffe5ba382868115daebe32c3f53/); ethereum `0xeca46b...3b7f9f` | ⚠️ Unaudited |
| BridgeBank | unknown | ethereum | n/a | [`0xb5f54a...5b7ba8`](./contracts/ethereum-1/0xb5f54ac4466f5ce7e0d8a5cb9fe7b8c0f35b7ba8/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c350c...1dd0bd`](./contracts/ethereum-1/0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd/); ethereum `0xaab00d...87a4b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x07bac3...f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/); ethereum `0x3de800...339470`; ethereum `0x413e81...7ea479`; ethereum `0x4c67b8...85be50`; ethereum `0x55e9d7...d615e8`; ethereum `0x566677...ed62c4`; ethereum `0x714bfd...1bf439`; ethereum `0x7588fe...449b28`; ethereum `0x8ea264...926cf2`; ethereum `0xa4bfc5...f7c1d2`; ethereum `0xc81978...2bd410`; ethereum `0xcf9902...fc4ec5`; ethereum `0xeb5bea...823a29` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | [`0x935819...bdee7b`](./contracts/ethereum-1/0x93581991f68dbae1ea105233b67f7fa0d6bdee7b/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | ethereum | n/a | [`0x467719...a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | ⚠️ Unaudited |
| CosmosBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72eb0d...25adc3`](./contracts/ethereum-1/0x72eb0df009b8ea2441de78f073338620b625adc3/); ethereum `0x7e5b2a...5eaf65` | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | ethereum | n/a | [`0xe1fa4a...bb6b4a`](./contracts/ethereum-1/0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a/) | ⚠️ Unaudited |
| CosmosERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0xa670d7...010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/); ethereum `0xc0a4df...eeddac`; ethereum `0xea5a82...7d2951` | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| CudosAccessControls | unknown | ethereum | n/a | [`0xefb546...680993`](./contracts/ethereum-1/0xefb546ec7babc97af3791033cc3ca1cc1f680993/) | ⚠️ Unaudited |
| CudosToken | token | ethereum | n/a | [`0x817bbd...e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | ⚠️ Unaudited |
| FetchToken | token | ethereum | n/a | [`0xaea46a...41ad85`](./contracts/ethereum-1/0xaea46a60368a7bd060eec7df8cba43b7ef41ad85/) | ⚠️ Unaudited |
| GeoToken | token | ethereum | n/a | [`0x147faf...126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | ⚠️ Unaudited |
| Gravity | unknown | ethereum | n/a | [`0xa4108a...f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | ⚠️ Unaudited |
| IbcToken | token | ethereum | n/a | 4 deployments: ethereum [`0x0c356b...c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/); ethereum `0x76c4a2...b1463f`; ethereum `0x8d983c...0cb7bb`; ethereum `0xc727f8...29aad6` | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| MNW | unknown | ethereum | n/a | [`0xd3e4ba...d7f6e4`](./contracts/ethereum-1/0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4/) | ⚠️ Unaudited |
| NGM | unknown | ethereum | n/a | [`0xed0d57...45b75d`](./contracts/ethereum-1/0xed0d5747a9ab03a75fbfec3228cd55848245b75d/) | ⚠️ Unaudited |
| OraiToken | token | ethereum | n/a | [`0x4c1124...28c1b5`](./contracts/ethereum-1/0x4c11249814f11b9346808179cf06e71ac328c1b5/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | n/a | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| Pluton | unknown | ethereum | n/a | [`0xd8912c...12264e`](./contracts/ethereum-1/0xd8912c10681d8b21fd3742244f44658dba12264e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d1210...4fae1b`](./contracts/ethereum-1/0x8d121094fd25a48aff882e3f6406645ad94fae1b/); ethereum `0xd60500...725133` | ⚠️ Unaudited |
| pStake | unknown | ethereum | n/a | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | 2 deployments: ethereum [`0x43373a...bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/); ethereum `0xa693b1...ee87a5` | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x35a532...a398e7`](./contracts/ethereum-1/0x35a532d376ffd9a705d0bb319532837337a398e7/) | ⚠️ Unaudited |
| VestingContract | operational_periphery | ethereum | n/a | [`0xb3ccb8...aea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | ⚠️ Unaudited |
| WrappedKRT | unknown | ethereum | n/a | [`0xcaaff7...65bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc199e7...df0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/); ethereum `0xd36932...d15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | n/a | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | n/a | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | n/a | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | n/a | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | n/a | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | n/a | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | n/a | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedMNT | unknown | ethereum | n/a | [`0x156b36...4bde45`](./contracts/ethereum-1/0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | n/a | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | n/a | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | n/a | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | n/a | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/); ethereum `0x4fd69d...50f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | n/a | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSCRT | unknown | ethereum | n/a | [`0x2b89bf...6968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | n/a | [`0x676ad1...f39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | n/a | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |
| wTAO | unknown | ethereum | n/a | [`0x77e06c...5b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | ⚠️ Unaudited |
| XFUND | unknown | ethereum | n/a | [`0x892a6f...c87881`](./contracts/ethereum-1/0x892a6f9df0147e5f079b0993f486f9aca3c87881/) | ⚠️ Unaudited |
| XKI | unknown | ethereum | n/a | [`0x4f6103...b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | ethereum | n/a | `0xc187c9...d1b43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038023...1bae08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07e2e3...7403d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x081b3b...246947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fdb1...9b5d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d74be...c02250` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289268...7696a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29dbb7...3153a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6fcf...84ddfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a9714...73ba2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x308866...1ebf47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ecc0...60cc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35abb2...c46216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3240...92fd7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5c50...73278f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d03d7...4b7068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5869b6...c7d155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f82c5...ff418a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71b460...75cb5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78850f...94105e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bc16c...d25b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dca56...16b893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f38e2...c2b8f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3fb6d...6f1320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6bc3...6f001c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9136...cd6373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafc407...e5bb5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4d6ba...3f22cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c2bc...7039ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdf230...2fb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb75d3...8624d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd9535...5e4beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7419f...fefc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe190d4...1b7a9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5eb74...db1e28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f262...abe0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec59e1...e32f6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022 | stale | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Inherited from Mellow Protocol — forked code, scoped to KeepVault | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18938] blocksec_mellow_vaults_v1.3-signed.pdf
- [18939] ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf
- [18940] Mellow Protocol HStrategy Security Analysis.pdf
- [18941] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf
- [18942] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf
- [18943] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf
- [18944] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf
- [18945] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf
- [24721] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf
- [24722] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf
- [24723] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf
- [24724] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf
- [24725] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf
- [24726] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf
- [24727] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf
- [24728] spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf

Fork inheritance lineage and inherited audits are included when available.
