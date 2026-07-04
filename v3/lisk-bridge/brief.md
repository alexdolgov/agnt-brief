# Agentic Audit Brief: Lisk Bridge

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:42.059Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 94 unique implementations (154 raw deployments)
- DeFi Llama TVL: $27,476,028.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 115 project-authored contract(s) across 1 chain(s); 24 ERC20 tokens, 1 ERC1155 multi-token, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 35 common project-authored base contract(s) (mintcontroller, controller, tellorstorage). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mode Bridge** (`mode-bridge`) in the DeputyGuardianModule, PermissionedDisputeGameV2 subsystem.
12 audits inherited from `mode-bridge`, scoped to that subsystem.

This project reuses audited code from **BOB Fusion** (`bob-fusion`) in the PermissionedDisputeGame subsystem.
8 audits inherited from `bob-fusion`, scoped to that subsystem.

Total inherited audits: 20. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 145 (135 live, 10 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/85 (2.4%)
- Deployed-live implementations: 85 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/86
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 94
- Raw deployments: 154
- Audits discovered: 20 (0 direct, 20 inherited from forked code)
- Scoreable audits (matched contracts): 20
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 7 fresh, 7 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.2% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 1.2% | 2025-05 |
| Halborn | Tier 2 | 1 | 1.2% | 2025-01 |
| LLM | Tier 2 | 1 | 1.2% | 2025-08 |
| Pashov | Tier 2 | 1 | 1.2% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 1.2% | 2025-10 |
| Solo Review | Tier 2 | 1 | 1.2% | 2024-05 |
| SSC | Tier 2 | 1 | 1.2% | 2025-01 |
| unknown | Tier 2 | 1 | 1.2% | 2025-10 |
| yAudit | Tier 2 | 1 | 1.2% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeputyGuardianModule | unknown | ethereum | n/a | [`0x5dc91d...e4d2a8`](./contracts/ethereum-1/0x5dc91d01290af474ce21de14c17335a6dee4d2a8/) | ✅ Audited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x095102...6b64f6`](./contracts/ethereum-1/0x095102ec7bea1c5f25090705b196a6ea2e6b64f6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7005e1...68c820`](./contracts/ethereum-1/0x7005e13e8118b72f0d77e3418cdf4b48e768c820/); ethereum `0xbda574...dfe5f4` | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | 10 deployments: ethereum [`0x03bbc1...9c1576`](./contracts/ethereum-1/0x03bbc1313d3db4b356fb307dbe86a001f29c1576/); ethereum `0x089df6...5c00ab`; ethereum `0x192066...c0b7bc`; ethereum `0x2df705...ea423f`; ethereum `0x90d1d2...88b3d7`; ethereum `0x91ccfc...9902c2`; ethereum `0x9eb974...35c49c`; ethereum `0xb49505...cde441`; ethereum `0xccb5dd...42c8db`; ethereum `0xe9a057...a0318a` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0x7ad0d1...1d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | ⚠️ Unaudited |
| AssetHelper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0969c4...cdd2ee`](./contracts/ethereum-1/0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee/); ethereum `0x41b9ea...b682b2`; ethereum `0xad6e7a...1acddc` | ⚠️ Unaudited |
| AssetTokenData | token | ethereum | n/a | [`0x3a5d3f...c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | ⚠️ Unaudited |
| AssetTokenFactoryCCIPCompatible | unknown | ethereum | n/a | [`0xef24a5...6c7bd5`](./contracts/ethereum-1/0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5/) | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | ethereum | n/a | [`0xf1a3de...cd99e1`](./contracts/ethereum-1/0xf1a3de660968b3a6493334413505220c1bcd99e1/) | ⚠️ Unaudited |
| Authorization | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9c9aa8...ffbae1`](./contracts/ethereum-1/0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1/); ethereum `0xefbcbd...2aca82` | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0x918650...38c296`](./contracts/ethereum-1/0x9186503af1d7d3317b4c2c44a815be984838c296/) | ⚠️ Unaudited |
| BundleStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d84b9...287ab7`](./contracts/ethereum-1/0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7/); ethereum `0x775373...91450d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x0a3467...f700fa`](./contracts/ethereum-1/0x0a34677dafcd28916aac0b22123142efabf700fa/); ethereum `0x23afd2...32f7fe`; ethereum `0x281a83...6e0400`; ethereum `0x286213...25b27c`; ethereum `0x55585f...781c5d`; ethereum `0x5f5d43...ffe9cf`; ethereum `0x6eb579...e50fae`; ethereum `0x8192d6...990728`; ethereum `0xab235c...499f23`; ethereum `0xad0624...8fcc09`; ethereum `0xb05963...00fac9`; ethereum `0xb85e3e...e9c248`; ethereum `0xe199e1...629b59` | ⚠️ Unaudited |
| Caller | unknown | ethereum | n/a | [`0x53fbfe...e4e337`](./contracts/ethereum-1/0x53fbfe5b1dfea7923f4691f819ca6e278de4e337/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | [`0x31efc2...7c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x0cf7d3...8c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | ⚠️ Unaudited |
| Dotc | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19708f...a03acc`](./contracts/ethereum-1/0x19708f0e1b9f4645907b75386a9d5bb75ea03acc/); ethereum `0x632f2f...b1cf25` | ⚠️ Unaudited |
| DotcEscrow | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb8adad...965f7d`](./contracts/ethereum-1/0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d/); ethereum `0xf9ff7c...288ba3` | ⚠️ Unaudited |
| DotcEscrowV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b418d...babbc6`](./contracts/ethereum-1/0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6/); ethereum `0x4877d1...15a53a` | ⚠️ Unaudited |
| DotcManagerV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a4010...be2073`](./contracts/ethereum-1/0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073/); ethereum `0x1f58f1...8395ad` | ⚠️ Unaudited |
| DotcOfferHelper | unknown | ethereum | n/a | [`0x6b8808...d52a0d`](./contracts/ethereum-1/0x6b8808910c298239aabf6475e99ea468f1d52a0d/) | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a103e...ed3dae`](./contracts/ethereum-1/0x0a103ee32f4209926d8ba7e528aff8a831ed3dae/); ethereum `0xca4b2d...4b5500` | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d0d05...287d4a`](./contracts/ethereum-1/0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a/); ethereum `0x282950...110b89` | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | [`0x9e9add...e668f4`](./contracts/ethereum-1/0x9e9add0fa93487b178a975ea320b563f35e668f4/) | ⚠️ Unaudited |
| DotcV2_1 | unknown | ethereum | n/a | [`0x423126...9ed3e5`](./contracts/ethereum-1/0x423126258e7684356c0b11bf23c7e73a1d9ed3e5/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/); ethereum `0xde0aa2...0f0195` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0fbbc6...49a77f`](./contracts/ethereum-1/0x0fbbc6a4e951b00b1ac170325763bd4d5149a77f/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e007b...5e4753`](./contracts/ethereum-1/0x5e007bc170861e27952ca4118d7af3e8aa5e4753/); ethereum `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | 2 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | ethereum | n/a | [`0x5e620d...e79ce2`](./contracts/ethereum-1/0x5e620d573cdaf414d70fc85b116dd8f1e7e79ce2/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x31b72d...bb7edb`](./contracts/ethereum-1/0x31b72d76fb666844c41edf08df0254875dbb7edb/) | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9348af...d69fcf`](./contracts/ethereum-1/0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf/); ethereum `0xc7315f...6327ac` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x3a44a3...11a81f`](./contracts/ethereum-1/0x3a44a3b263fb631cdbf25f339e2d29497511a81f/) | ⚠️ Unaudited |
| L1LiskToken | token | ethereum | n/a | [`0x6033f7...90ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | ethereum | n/a | [`0xeb99c8...89f677`](./contracts/ethereum-1/0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677/) | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | ethereum | n/a | [`0x8d9a9a...cb2c67`](./contracts/ethereum-1/0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67/) | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | ethereum | n/a | [`0xe36224...6995e6`](./contracts/ethereum-1/0xe3622468ea7dd804702b56ca2a4f88c0936995e6/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x265872...d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | ⚠️ Unaudited |
| L1VestingWallet | unknown | ethereum | n/a | 6 deployments: ethereum [`0x114cb3...42ee23`](./contracts/ethereum-1/0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23/); ethereum `0x18a0b8...71618e`; ethereum `0x2294a7...1bcead`; ethereum `0x58a61b...a48568`; ethereum `0xd590c2...cf5fb7`; ethereum `0xe09899...65dc55` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | ethereum | n/a | [`0xe2b0cf...4cd087`](./contracts/ethereum-1/0xe2b0cfef892c017d84d8220b8d2ac249624cd087/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x113cb9...1aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| OfferHelper | unknown | ethereum | n/a | [`0xf61ed4...d40719`](./contracts/ethereum-1/0xf61ed41749cd82767057aa39edcee8d797d40719/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xc1da06...39252d`](./contracts/ethereum-1/0xc1da06cc5dd5ce23baba924463de7f762039252d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0xd00e38...a5b3ad`](./contracts/ethereum-1/0xd00e38514d66bf1b761a8937559c6b2854a5b3ad/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x26db93...53f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | ⚠️ Unaudited |
| PermissionManagerV2 | governance | ethereum | n/a | [`0xe214d9...013d91`](./contracts/ethereum-1/0xe214d97ba7ff83144699737f73d271c006013d91/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x9c065e...1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xbaa108...cbf425`](./contracts/ethereum-1/0xbaa10876223b11baae86e1bbf52daef38ecbf425/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xdd9c27...6f1079`](./contracts/ethereum-1/0xdd9c27910327d3f4a4007ad8f7b53332db6f1079/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0479e6...2f38be`](./contracts/ethereum-1/0x0479e6757eb4743843b309dddf78e6ba242f38be/); ethereum `0x7df140...c7106f`; ethereum `0x83fc9d...d26fdb`; ethereum `0x86a6f5...8490b1`; ethereum `0x899de1...78d7b6`; ethereum `0xa4d9ef...7f6fcd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 12 deployments: ethereum [`0x055860...593072`](./contracts/ethereum-1/0x055860f40533c4d9e7cd38105f4c0d1eb0593072/); ethereum `0x0a4477...37b61b`; ethereum `0x121b48...6533c6`; ethereum `0x35e59b...714244`; ethereum `0x3d24fa...4d03b7`; ethereum `0x7a3d18...dffad1`; ethereum `0x88f3cb...13dfd5`; ethereum `0x92d73c...0bdc0c`; ethereum `0xce36f0...dcb5fa`; ethereum `0xe44cb9...4ebd46`; ethereum `0xec432c...979b2d`; ethereum `0xf25146...ce354c` | ⚠️ Unaudited |
| SmtDistributor | operational_periphery | ethereum | n/a | [`0x6b0f85...8031ac`](./contracts/ethereum-1/0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x26c7bf...555de7`](./contracts/ethereum-1/0x26c7bfb430d68bf74d2d52497836d4336b555de7/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x6738c9...e34bf2`](./contracts/ethereum-1/0x6738c99eda2333b45d6ba8e212262305ffe34bf2/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x6e5ff0...187824`](./contracts/ethereum-1/0x6e5ff00e8aaf55fa55e8ee9976622409fd187824/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x8f1131...d3a24c`](./contracts/ethereum-1/0x8f11312580079057df3a3b6ea678c8585bd3a24c/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x98ce58...17b4e9`](./contracts/ethereum-1/0x98ce5883fb99508c24d40f97016f51e04117b4e9/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x9e24f5...dcd0d0`](./contracts/ethereum-1/0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0xf7a2e4...4e8675`](./contracts/ethereum-1/0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675/) | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | ethereum | n/a | [`0x1f8e90...48aeac`](./contracts/ethereum-1/0x1f8e9072b5f07c9de66a2974cfba75636648aeac/) | ⚠️ Unaudited |
| SwarmMarketsToken | token | ethereum | n/a | [`0xb17548...247173`](./contracts/ethereum-1/0xb17548c7b510427baac4e267bea62e800b247173/) | ⚠️ Unaudited |
| SX1155NFTFactory | registry | ethereum | n/a | [`0xab7aa6...bc8b14`](./contracts/ethereum-1/0xab7aa6495f8694656b59bc6309d3f6190dbc8b14/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x05f232...843750`](./contracts/ethereum-1/0x05f23282ffdca8286e4738c1af79079f3d843750/) | ⚠️ Unaudited |
| Tellor360 | unknown | ethereum | n/a | [`0x88df59...3778a0`](./contracts/ethereum-1/0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenTransferor | token | ethereum | n/a | [`0xa75d8a...cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x964183...5bb7b0`](./contracts/ethereum-1/0x964183083e623d5a8acbd27eb31c3609e25bb7b0/); ethereum `0xa5e175...79f6fd` | ⚠️ Unaudited |
| UTUToken | token | ethereum | n/a | [`0xa58a4f...94189b`](./contracts/ethereum-1/0xa58a4f5c4bb043d2cc1e170613b74e767c94189b/) | ⚠️ Unaudited |
| V2_1Upgrader | unknown | ethereum | n/a | [`0xd13689...b5259b`](./contracts/ethereum-1/0xd13689e8da0ed95b55100e27b7dbc95c03b5259b/) | ⚠️ Unaudited |
| V2_2Upgrader | unknown | ethereum | n/a | [`0x4654c4...e2c748`](./contracts/ethereum-1/0x4654c4eafb2561d21633d7b099d9960857e2c748/) | ⚠️ Unaudited |
| V2Upgrader | unknown | ethereum | n/a | [`0xed24bd...e272fc`](./contracts/ethereum-1/0xed24bd79a3f2ba4325e9c553164e299c65e272fc/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19bc15...97892d`](./contracts/ethereum-1/0x19bc15849b392519a9a9131df32c00cc3497892d/); ethereum `0x76c6f1...97ba45` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x310459...77332b`](./contracts/ethereum-1/0x310459750ce8f46b8615378e79dbd985ba77332b/); ethereum `0xab55bf...692fe6` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x707f91...963fc8`](./contracts/ethereum-1/0x707f9118e33a9b8998bea41dd0d46f38bb963fc8/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | n/a | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XERC20 | token | ethereum | n/a | [`0x1217bf...b6e189`](./contracts/ethereum-1/0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189/) | ⚠️ Unaudited |
| xGold | unknown | ethereum | n/a | [`0x7f9438...4b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | ⚠️ Unaudited |
| xGoldBundle | unknown | ethereum | n/a | [`0x5e75a1...1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | ethereum | n/a | [`0x2b498b...344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x1d96f2...861d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328809...afdac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70bd96...48cf5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f58fe...c98022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45f10...5e0989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4fc47...8e7562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd525bc...547c44` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=20

Fork inheritance lineage and inherited audits are included when available.
