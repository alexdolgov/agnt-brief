# Agentic Audit Brief: Lisk Bridge

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.119Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 80 unique implementations (136 raw deployments)
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

- Indexed contracts: 177; live-surface contracts included: 129 (122 live, 7 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/71 (1.4%)
- Deployed-live implementations: 74 of 80 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/75
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 80
- Raw deployments: 136
- Audits discovered: 20 (0 direct, 20 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 7 fresh, 7 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.4% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 1.3% | 2025-05 |
| Pashov | Tier 2 | 1 | 1.3% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 1.3% | 2025-10 |
| yAudit | Tier 2 | 1 | 1.3% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x095102ec7bea1c5f25090705b196a6ea2e6b64f6`](./contracts/ethereum-1/0x095102ec7bea1c5f25090705b196a6ea2e6b64f6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7005e13e8118b72f0d77e3418cdf4b48e768c820`](./contracts/ethereum-1/0x7005e13e8118b72f0d77e3418cdf4b48e768c820/); ethereum `0xbda5743b76bcc88337336ef027958422f4dfe5f4` | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | 10 deployments: ethereum [`0x03bbc1313d3db4b356fb307dbe86a001f29c1576`](./contracts/ethereum-1/0x03bbc1313d3db4b356fb307dbe86a001f29c1576/); ethereum `0x089df6de0498c9dea212d80b72641984425c00ab`; ethereum `0x1920666fa17a87b4454f08665176cbe9ecc0b7bc`; ethereum `0x2df7057d3f25212e51afea8da628668229ea423f`; ethereum `0x90d1d2b89d64b1a79e1115bc2df379359b88b3d7`; ethereum `0x91ccfc9f2b8a2e511ec057d0039af78fdb9902c2`; ethereum `0x9eb97469ad44e8ccdf5c1ff669d7c57c7235c49c`; ethereum `0xb4950517fac0a3467605bd5f83ef60c8f2cde441`; ethereum `0xccb5ddf00676aed7427db50b0a69a026f442c8db`; ethereum `0xe9a057545d5f29932a118ec3aab44c2902a0318a` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | ⚠️ Unaudited |
| AssetHelper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee`](./contracts/ethereum-1/0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee/); ethereum `0x41b9ea80986f6efd7ff4d5604e283362cbb682b2`; ethereum `0xad6e7af05b7e594c81ed460ad31f18b7641acddc` | ⚠️ Unaudited |
| AssetTokenData | token | ethereum | n/a | [`0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | ⚠️ Unaudited |
| AssetTokenFactoryCCIPCompatible | unknown | ethereum | n/a | [`0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5`](./contracts/ethereum-1/0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5/) | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | ethereum | n/a | [`0xf1a3de660968b3a6493334413505220c1bcd99e1`](./contracts/ethereum-1/0xf1a3de660968b3a6493334413505220c1bcd99e1/) | ⚠️ Unaudited |
| Authorization | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1`](./contracts/ethereum-1/0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1/); ethereum `0xefbcbd94d9c411e3f0ffa559ce627498122aca82` | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0x9186503af1d7d3317b4c2c44a815be984838c296`](./contracts/ethereum-1/0x9186503af1d7d3317b4c2c44a815be984838c296/) | ⚠️ Unaudited |
| BundleStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7`](./contracts/ethereum-1/0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7/); ethereum `0x7753736456451f639281fcdc5b4151fe7791450d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x0a34677dafcd28916aac0b22123142efabf700fa`](./contracts/ethereum-1/0x0a34677dafcd28916aac0b22123142efabf700fa/); ethereum `0x23afd2bd797b87394d797dd0134022c42432f7fe`; ethereum `0x281a83ee4819068c40937a066d801aad7c6e0400`; ethereum `0x2862135735469ad4af91af4fbd2559606d25b27c`; ethereum `0x55585ffbd94471925252c13ade6a81604c781c5d`; ethereum `0x5f5d43508f34e0caeaa558f9c964125538ffe9cf`; ethereum `0x6eb57991c31f8dd2481a702090edc0962ae50fae`; ethereum `0x8192d648ad9144af8c2488c8142c72b3cd990728`; ethereum `0xab235c5b80860899f67f88370ba69c2c80499f23`; ethereum `0xad06241b9cff15b710118a52f04a4fe73b8fcc09`; ethereum `0xb05963a6bed7e9db887eceb2775a03414d00fac9`; ethereum `0xb85e3e408d8300a002baa9cc355d40a487e9c248`; ethereum `0xe199e1c5201ccdd3792ed902ad3f610ce5629b59` | ⚠️ Unaudited |
| Caller | unknown | ethereum | n/a | [`0x53fbfe5b1dfea7923f4691f819ca6e278de4e337`](./contracts/ethereum-1/0x53fbfe5b1dfea7923f4691f819ca6e278de4e337/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | [`0x31efc2c8012c56e007e5bdb8e5b7955d197c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | ⚠️ Unaudited |
| Dotc | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19708f0e1b9f4645907b75386a9d5bb75ea03acc`](./contracts/ethereum-1/0x19708f0e1b9f4645907b75386a9d5bb75ea03acc/); ethereum `0x632f2fe528d59ae71ecd38d7f1fdf8d5b5b1cf25` | ⚠️ Unaudited |
| DotcEscrow | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d`](./contracts/ethereum-1/0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d/); ethereum `0xf9ff7c0d236745399ce6bdbf3a54028339288ba3` | ⚠️ Unaudited |
| DotcEscrowV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6`](./contracts/ethereum-1/0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6/); ethereum `0x4877d1b8c028095582f4e4f273d0ec914e15a53a` | ⚠️ Unaudited |
| DotcManagerV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073`](./contracts/ethereum-1/0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073/); ethereum `0x1f58f1ba43a88b4ff3b4265449b26e28c08395ad` | ⚠️ Unaudited |
| DotcOfferHelper | unknown | ethereum | n/a | [`0x6b8808910c298239aabf6475e99ea468f1d52a0d`](./contracts/ethereum-1/0x6b8808910c298239aabf6475e99ea468f1d52a0d/) | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a103ee32f4209926d8ba7e528aff8a831ed3dae`](./contracts/ethereum-1/0x0a103ee32f4209926d8ba7e528aff8a831ed3dae/); ethereum `0xca4b2d3f4e061d0826a14c15ebc8faf3d94b5500` | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a`](./contracts/ethereum-1/0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a/); ethereum `0x28295039f74b04a3ff788c1af679182cd9110b89` | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | n/a | [`0x9e9add0fa93487b178a975ea320b563f35e668f4`](./contracts/ethereum-1/0x9e9add0fa93487b178a975ea320b563f35e668f4/) | ⚠️ Unaudited |
| DotcV2_1 | unknown | ethereum | n/a | [`0x423126258e7684356c0b11bf23c7e73a1d9ed3e5`](./contracts/ethereum-1/0x423126258e7684356c0b11bf23c7e73a1d9ed3e5/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | 2 deployments: ethereum [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x31b72d76fb666844c41edf08df0254875dbb7edb`](./contracts/ethereum-1/0x31b72d76fb666844c41edf08df0254875dbb7edb/) | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf`](./contracts/ethereum-1/0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf/); ethereum `0xc7315f4faab2f700fc6b4704bb801c46ff6327ac` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x3a44a3b263fb631cdbf25f339e2d29497511a81f`](./contracts/ethereum-1/0x3a44a3b263fb631cdbf25f339e2d29497511a81f/) | ⚠️ Unaudited |
| L1LiskToken | token | ethereum | n/a | [`0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | ethereum | n/a | [`0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677`](./contracts/ethereum-1/0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677/) | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | ethereum | n/a | [`0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67`](./contracts/ethereum-1/0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67/) | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | ethereum | n/a | [`0xe3622468ea7dd804702b56ca2a4f88c0936995e6`](./contracts/ethereum-1/0xe3622468ea7dd804702b56ca2a4f88c0936995e6/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x2658723bf70c7667de6b25f99fcce13a16d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | ⚠️ Unaudited |
| L1VestingWallet | unknown | ethereum | n/a | 6 deployments: ethereum [`0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`](./contracts/ethereum-1/0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23/); ethereum `0x18a0b8c653c291d69f21a6ef9a1000335f71618e`; ethereum `0x2294a7f24187b84995a2a28112f82f07be1bcead`; ethereum `0x58a61b1807a7bda541855daaeaee89b1dda48568`; ethereum `0xd590c2e71739c551eba7aebe00e7855df4cf5fb7`; ethereum `0xe09899a4c98473460bc19d136b330608b465dc55` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | ethereum | n/a | [`0xe2b0cfef892c017d84d8220b8d2ac249624cd087`](./contracts/ethereum-1/0xe2b0cfef892c017d84d8220b8d2ac249624cd087/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x113cb99283af242da0a0c54347667edf531aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x02398771fd1db790ef2b656ca3bcb3075f27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| OfferHelper | unknown | ethereum | n/a | [`0xf61ed41749cd82767057aa39edcee8d797d40719`](./contracts/ethereum-1/0xf61ed41749cd82767057aa39edcee8d797d40719/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xc1da06cc5dd5ce23baba924463de7f762039252d`](./contracts/ethereum-1/0xc1da06cc5dd5ce23baba924463de7f762039252d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0xd00e38514d66bf1b761a8937559c6b2854a5b3ad`](./contracts/ethereum-1/0xd00e38514d66bf1b761a8937559c6b2854a5b3ad/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x26db93f8b8b4f7016240af62f7730979d353f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | ⚠️ Unaudited |
| PermissionManagerV2 | governance | ethereum | n/a | [`0xe214d97ba7ff83144699737f73d271c006013d91`](./contracts/ethereum-1/0xe214d97ba7ff83144699737f73d271c006013d91/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x9c065e11870b891d214bc2da7ef1f9ddfa1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xbaa10876223b11baae86e1bbf52daef38ecbf425`](./contracts/ethereum-1/0xbaa10876223b11baae86e1bbf52daef38ecbf425/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xdd9c27910327d3f4a4007ad8f7b53332db6f1079`](./contracts/ethereum-1/0xdd9c27910327d3f4a4007ad8f7b53332db6f1079/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0479e6757eb4743843b309dddf78e6ba242f38be`](./contracts/ethereum-1/0x0479e6757eb4743843b309dddf78e6ba242f38be/); ethereum `0x7df140dd919e29cb1c8d6186f2bba6e407c7106f`; ethereum `0x83fc9db9ce83325f77f1aefeba1a3412d0d26fdb`; ethereum `0x86a6f51ca732828ea6df0b377f417ba5f68490b1`; ethereum `0x899de169fda163f57b12852a0144bb886578d7b6`; ethereum `0xa4d9ef479884d875a5b95b541f024f4e837f6fcd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 12 deployments: ethereum [`0x055860f40533c4d9e7cd38105f4c0d1eb0593072`](./contracts/ethereum-1/0x055860f40533c4d9e7cd38105f4c0d1eb0593072/); ethereum `0x0a4477e37583bfe30002ee386f5ab3fa1537b61b`; ethereum `0x121b48f41ad4965445bc295bba0f069b1b6533c6`; ethereum `0x35e59bf5ff5a732d9aa3665ebeb49b2e71714244`; ethereum `0x3d24faf8f7bed929a11269eb615a0f2de64d03b7`; ethereum `0x7a3d18271d54d6159104d2b5e791662f07dffad1`; ethereum `0x88f3cb3500c9bcee361f334727dd4bfc9013dfd5`; ethereum `0x92d73c19a6638c46cd0e11360baf4de9950bdc0c`; ethereum `0xce36f03fe18fbf1761c77faf0dce4dc154dcb5fa`; ethereum `0xe44cb98048afedb3cb21a7933b517165254ebd46`; ethereum `0xec432c4f1d0e12737f3a42a459b84848af979b2d`; ethereum `0xf25146af34005010a651ec36e673709c38ce354c` | ⚠️ Unaudited |
| SmtDistributor | operational_periphery | ethereum | n/a | [`0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac`](./contracts/ethereum-1/0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x26c7bfb430d68bf74d2d52497836d4336b555de7`](./contracts/ethereum-1/0x26c7bfb430d68bf74d2d52497836d4336b555de7/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x6738c99eda2333b45d6ba8e212262305ffe34bf2`](./contracts/ethereum-1/0x6738c99eda2333b45d6ba8e212262305ffe34bf2/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x6e5ff00e8aaf55fa55e8ee9976622409fd187824`](./contracts/ethereum-1/0x6e5ff00e8aaf55fa55e8ee9976622409fd187824/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x8f11312580079057df3a3b6ea678c8585bd3a24c`](./contracts/ethereum-1/0x8f11312580079057df3a3b6ea678c8585bd3a24c/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x98ce5883fb99508c24d40f97016f51e04117b4e9`](./contracts/ethereum-1/0x98ce5883fb99508c24d40f97016f51e04117b4e9/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0`](./contracts/ethereum-1/0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675`](./contracts/ethereum-1/0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675/) | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | ethereum | n/a | [`0x1f8e9072b5f07c9de66a2974cfba75636648aeac`](./contracts/ethereum-1/0x1f8e9072b5f07c9de66a2974cfba75636648aeac/) | ⚠️ Unaudited |
| SwarmMarketsToken | token | ethereum | n/a | [`0xb17548c7b510427baac4e267bea62e800b247173`](./contracts/ethereum-1/0xb17548c7b510427baac4e267bea62e800b247173/) | ⚠️ Unaudited |
| SX1155NFTFactory | registry | ethereum | n/a | [`0xab7aa6495f8694656b59bc6309d3f6190dbc8b14`](./contracts/ethereum-1/0xab7aa6495f8694656b59bc6309d3f6190dbc8b14/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x05f23282ffdca8286e4738c1af79079f3d843750`](./contracts/ethereum-1/0x05f23282ffdca8286e4738c1af79079f3d843750/) | ⚠️ Unaudited |
| Tellor360 | unknown | ethereum | n/a | [`0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0`](./contracts/ethereum-1/0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenTransferor | token | ethereum | n/a | [`0xa75d8afd8d3a36dd3935078e4d05153946cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x964183083e623d5a8acbd27eb31c3609e25bb7b0`](./contracts/ethereum-1/0x964183083e623d5a8acbd27eb31c3609e25bb7b0/); ethereum `0xa5e175e7ecc13f746aa49bbc734819a06c79f6fd` | ⚠️ Unaudited |
| UTUToken | token | ethereum | n/a | [`0xa58a4f5c4bb043d2cc1e170613b74e767c94189b`](./contracts/ethereum-1/0xa58a4f5c4bb043d2cc1e170613b74e767c94189b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x707f9118e33a9b8998bea41dd0d46f38bb963fc8`](./contracts/ethereum-1/0x707f9118e33a9b8998bea41dd0d46f38bb963fc8/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xa2f987a546d4cd1c607ee8141276876c26b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | n/a | [`0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XERC20 | token | ethereum | n/a | [`0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189`](./contracts/ethereum-1/0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189/) | ⚠️ Unaudited |
| xGold | unknown | ethereum | n/a | [`0x7f94388a552580712c4ec724f470c6e4a74b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | ⚠️ Unaudited |
| xGoldBundle | unknown | ethereum | n/a | [`0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | ethereum | n/a | [`0x2b498bae947c80e358f59a277adda90f76344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d96f2f6bef1202e4ce1ff6dad0c2cb002861d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328809bc894f92807417d2dad6b7c998c1afdac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70bd9615c10fb3585d7c979fc1992fe57348cf5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f58fea61c133864b0211a278d4b286a57c98022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45f105ad41570fa02fc84f56e7ee69ade5e0989` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 0 | n/a |
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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7005e13e8118b72f0d77e3418cdf4b48e768c820`](./contracts/ethereum-1/0x7005e13e8118b72f0d77e3418cdf4b48e768c820/) | ActionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bbc1313d3db4b356fb307dbe86a001f29c1576`](./contracts/ethereum-1/0x03bbc1313d3db4b356fb307dbe86a001f29c1576/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee`](./contracts/ethereum-1/0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee/) | AssetHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | AssetTokenData | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5`](./contracts/ethereum-1/0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5/) | AssetTokenFactoryCCIPCompatible | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1a3de660968b3a6493334413505220c1bcd99e1`](./contracts/ethereum-1/0xf1a3de660968b3a6493334413505220c1bcd99e1/) | AssetTokenMinimalProxyCCIPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1`](./contracts/ethereum-1/0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1/) | Authorization | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9186503af1d7d3317b4c2c44a815be984838c296`](./contracts/ethereum-1/0x9186503af1d7d3317b4c2c44a815be984838c296/) | BFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7`](./contracts/ethereum-1/0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7/) | BundleStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a34677dafcd28916aac0b22123142efabf700fa`](./contracts/ethereum-1/0x0a34677dafcd28916aac0b22123142efabf700fa/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53fbfe5b1dfea7923f4691f819ca6e278de4e337`](./contracts/ethereum-1/0x53fbfe5b1dfea7923f4691f819ca6e278de4e337/) | Caller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31efc2c8012c56e007e5bdb8e5b7955d197c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19708f0e1b9f4645907b75386a9d5bb75ea03acc`](./contracts/ethereum-1/0x19708f0e1b9f4645907b75386a9d5bb75ea03acc/) | Dotc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d`](./contracts/ethereum-1/0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d/) | DotcEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6`](./contracts/ethereum-1/0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6/) | DotcEscrowV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073`](./contracts/ethereum-1/0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073/) | DotcManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b8808910c298239aabf6475e99ea468f1d52a0d`](./contracts/ethereum-1/0x6b8808910c298239aabf6475e99ea468f1d52a0d/) | DotcOfferHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a103ee32f4209926d8ba7e528aff8a831ed3dae`](./contracts/ethereum-1/0x0a103ee32f4209926d8ba7e528aff8a831ed3dae/) | DotcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a`](./contracts/ethereum-1/0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a/) | DotcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e9add0fa93487b178a975ea320b563f35e668f4`](./contracts/ethereum-1/0x9e9add0fa93487b178a975ea320b563f35e668f4/) | DotcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x423126258e7684356c0b11bf23c7e73a1d9ed3e5`](./contracts/ethereum-1/0x423126258e7684356c0b11bf23c7e73a1d9ed3e5/) | DotcV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31b72d76fb666844c41edf08df0254875dbb7edb`](./contracts/ethereum-1/0x31b72d76fb666844c41edf08df0254875dbb7edb/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf`](./contracts/ethereum-1/0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf/) | L1ERC20TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a44a3b263fb631cdbf25f339e2d29497511a81f`](./contracts/ethereum-1/0x3a44a3b263fb631cdbf25f339e2d29497511a81f/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | L1LiskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677`](./contracts/ethereum-1/0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677/) | L1OpEURCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67`](./contracts/ethereum-1/0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67/) | L1OpEURCFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3622468ea7dd804702b56ca2a4f88c0936995e6`](./contracts/ethereum-1/0xe3622468ea7dd804702b56ca2a4f88c0936995e6/) | L1OpUSDCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2658723bf70c7667de6b25f99fcce13a16d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`](./contracts/ethereum-1/0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23/) | L1VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2b0cfef892c017d84d8220b8d2ac249624cd087`](./contracts/ethereum-1/0xe2b0cfef892c017d84d8220b8d2ac249624cd087/) | L1VestingWalletPaused | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x113cb99283af242da0a0c54347667edf531aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02398771fd1db790ef2b656ca3bcb3075f27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61ed41749cd82767057aa39edcee8d797d40719`](./contracts/ethereum-1/0xf61ed41749cd82767057aa39edcee8d797d40719/) | OfferHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1da06cc5dd5ce23baba924463de7f762039252d`](./contracts/ethereum-1/0xc1da06cc5dd5ce23baba924463de7f762039252d/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd00e38514d66bf1b761a8937559c6b2854a5b3ad`](./contracts/ethereum-1/0xd00e38514d66bf1b761a8937559c6b2854a5b3ad/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26db93f8b8b4f7016240af62f7730979d353f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe214d97ba7ff83144699737f73d271c006013d91`](./contracts/ethereum-1/0xe214d97ba7ff83144699737f73d271c006013d91/) | PermissionManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c065e11870b891d214bc2da7ef1f9ddfa1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaa10876223b11baae86e1bbf52daef38ecbf425`](./contracts/ethereum-1/0xbaa10876223b11baae86e1bbf52daef38ecbf425/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd9c27910327d3f4a4007ad8f7b53332db6f1079`](./contracts/ethereum-1/0xdd9c27910327d3f4a4007ad8f7b53332db6f1079/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac`](./contracts/ethereum-1/0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac/) | SmtDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26c7bfb430d68bf74d2d52497836d4336b555de7`](./contracts/ethereum-1/0x26c7bfb430d68bf74d2d52497836d4336b555de7/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6738c99eda2333b45d6ba8e212262305ffe34bf2`](./contracts/ethereum-1/0x6738c99eda2333b45d6ba8e212262305ffe34bf2/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e5ff00e8aaf55fa55e8ee9976622409fd187824`](./contracts/ethereum-1/0x6e5ff00e8aaf55fa55e8ee9976622409fd187824/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f11312580079057df3a3b6ea678c8585bd3a24c`](./contracts/ethereum-1/0x8f11312580079057df3a3b6ea678c8585bd3a24c/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98ce5883fb99508c24d40f97016f51e04117b4e9`](./contracts/ethereum-1/0x98ce5883fb99508c24d40f97016f51e04117b4e9/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0`](./contracts/ethereum-1/0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675`](./contracts/ethereum-1/0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8e9072b5f07c9de66a2974cfba75636648aeac`](./contracts/ethereum-1/0x1f8e9072b5f07c9de66a2974cfba75636648aeac/) | SwarmBuyerBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb17548c7b510427baac4e267bea62e800b247173`](./contracts/ethereum-1/0xb17548c7b510427baac4e267bea62e800b247173/) | SwarmMarketsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab7aa6495f8694656b59bc6309d3f6190dbc8b14`](./contracts/ethereum-1/0xab7aa6495f8694656b59bc6309d3f6190dbc8b14/) | SX1155NFTFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05f23282ffdca8286e4738c1af79079f3d843750`](./contracts/ethereum-1/0x05f23282ffdca8286e4738c1af79079f3d843750/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0`](./contracts/ethereum-1/0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0/) | Tellor360 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa75d8afd8d3a36dd3935078e4d05153946cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/) | TokenTransferor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa58a4f5c4bb043d2cc1e170613b74e767c94189b`](./contracts/ethereum-1/0xa58a4f5c4bb043d2cc1e170613b74e767c94189b/) | UTUToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x707f9118e33a9b8998bea41dd0d46f38bb963fc8`](./contracts/ethereum-1/0x707f9118e33a9b8998bea41dd0d46f38bb963fc8/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2f987a546d4cd1c607ee8141276876c26b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189`](./contracts/ethereum-1/0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189/) | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f94388a552580712c4ec724f470c6e4a74b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | xGold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | xGoldBundle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b498bae947c80e358f59a277adda90f76344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | xGoldBundleStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=20

Zero-match audit list:

- [19014] VE Governance plugin - Audit 4 _ SSC.pdf
- [19015] halborn-3.pdf
- [19016] report-mode-lock-solo-review.pdf
- [19017] report-mode-governancetoken-solo-review.pdf
- [19018] VE Governance Updates _ SSC.pdf
- [19019] audit_halborn.pdf
- [19020] AUDIT_2.md
- [19021] AUDIT_3.md
- [24797] AUDIT_REPORT_4.md
- [24798] Clock_v1_2_0_audit_report.md
- [24799] DynamicExitQueue_audit.md
- [24800] Lock_v1_2_0_audit.md

Fork inheritance lineage and inherited audits are included when available.
