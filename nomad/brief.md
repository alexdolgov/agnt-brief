# Agentic Audit Brief: Nomad

## Project Overview

- Project: Nomad (`nomad`)
- Website: [https://nomad.xyz](https://nomad.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.788Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum, moonbeam
- Contract surface: 86 unique implementations (86 raw deployments)
- DeFi Llama TVL: $323,640.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 86 project-authored contract(s) across 2 chain(s); 18 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (version0, container, initializableadminupgradeabilityproxy). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Hinkal** (`hinkal`) in the DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 subsystem.
8 audits inherited from `hinkal`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 86 (86 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/83 (3.6%)
- Deployed-live implementations: 86 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/86
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 3.6% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 3 | 3.5% | n/a |
| Quantstamp | Tier 2 | 3 | 3.5% | n/a |
| unknown | Tier 2 | 3 | 3.5% | n/a |
| yAudit | Tier 2 | 3 | 3.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DarknodeRegistry | unknown | ethereum | n/a | [`0x3799006a87fde3ccfc7666b3e6553b03ed341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/) | ✅ Audited |
| DarknodeRegistryLogicV2 | unknown | ethereum | n/a | [`0x7f98228b464101a3b19bf1cc337a9b88c84acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | ✅ Audited |
| MintGatewayLogicV2 | unknown | ethereum | n/a | [`0x1a562822f99d11e8f993f6bcda86277123ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowListNFTRecoveryAccountant | unknown | ethereum | n/a | [`0x09da34a0cedb4e84b5b68cc0d2f47e921d83a794`](./contracts/ethereum-1/0x09da34a0cedb4e84b5b68cc0d2f47e921d83a794/) | ⚠️ Unaudited |
| BasicAdapter | unknown | ethereum | n/a | [`0x0807d0810714d85b49e40349a3002f06e841b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | ethereum | n/a | [`0xa2d578e21f430d7469cbc135952dfe5c34b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | ⚠️ Unaudited |
| BCHGateway | unknown | ethereum | n/a | [`0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | ⚠️ Unaudited |
| BCHShifter | unknown | ethereum | n/a | [`0x2095be01f9a30a8ac8302245fdfa524fb20de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | ⚠️ Unaudited |
| BridgeRouter | unknown | moonbeam | n/a | [`0x0e6a3fd785f2169a086e179004710ba6b663a892`](./contracts/moonbeam-1284/0x0e6a3fd785f2169a086e179004710ba6b663a892/) | ⚠️ Unaudited |
| BridgeToken | unknown | moonbeam | n/a | [`0x18bd26b4763912176a26b422b3f6677901896048`](./contracts/moonbeam-1284/0x18bd26b4763912176a26b422b3f6677901896048/) | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | ethereum | n/a | [`0x11716a1f51fad053e9b43da1025e8ace32aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | ⚠️ Unaudited |
| BTCShifter | unknown | ethereum | n/a | [`0x1258d7ff385d1d81017d4a3d464c02f74c61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | ⚠️ Unaudited |
| Cards | unknown | ethereum | n/a | [`0x3d6f0dea3ac3c607b3998e6ce14b6350721752d9`](./contracts/ethereum-1/0x3d6f0dea3ac3c607b3998e6ce14b6350721752d9/) | ⚠️ Unaudited |
| CardsVesting | unknown | ethereum | n/a | [`0xc3d732815ecddd8c7d044eee2e3e428edd7cdd7b`](./contracts/ethereum-1/0xc3d732815ecddd8c7d044eee2e3e428edd7cdd7b/) | ⚠️ Unaudited |
| Charlie | unknown | ethereum | n/a | [`0xf1a91c7d44768070f711c68f33a7ca25c8d30268`](./contracts/ethereum-1/0xf1a91c7d44768070f711c68f33a7ca25c8d30268/) | ⚠️ Unaudited |
| CovalentQueryToken | unknown | ethereum | n/a | [`0xd417144312dbf50465b1c641d016962017ef6240`](./contracts/ethereum-1/0xd417144312dbf50465b1c641d016962017ef6240/) | ⚠️ Unaudited |
| CSWAP | unknown | ethereum | n/a | [`0x3b3f95938958a4029fa8b01873e2721b02950883`](./contracts/ethereum-1/0x3b3f95938958a4029fa8b01873e2721b02950883/) | ⚠️ Unaudited |
| DarknodePayment | unknown | ethereum | n/a | [`0x098e1708b920efbdd7afe33adb6a4cba30c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | ethereum | n/a | [`0x085d9b18be81f2b0c35086972caa46177205f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | ethereum | n/a | [`0x311999ee72b5826d664fd4f3ac09c0c462effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | ethereum | n/a | [`0xb032012073765a74f8f8fe2e6685ad70253058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x09e3435c7a92d3296d1221161cb0cbaafa017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | ethereum | n/a | [`0x14add4ca443e7445a3418bb572d6079bfc98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | ethereum | n/a | [`0x1e69da530e2051cd08259221ef1dacc703c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | ethereum | n/a | [`0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | ethereum | n/a | [`0x880407c9cd119bef48b1821cdfc434e3ca3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | ⚠️ Unaudited |
| DarknodeSlasher | unknown | ethereum | n/a | [`0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0x8ff192e634ef6463be60792a384e5f1219a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | ⚠️ Unaudited |
| DEXAdapter | unknown | ethereum | n/a | [`0x9992e9341e496be5bc8f424dfc1f78a7388d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | ⚠️ Unaudited |
| EthereumBridgeRouter | unknown | ethereum | n/a | [`0x7f6d9862cd7442e831123cfa288bb1fef47f7177`](./contracts/ethereum-1/0x7f6d9862cd7442e831123cfa288bb1fef47f7177/) | ⚠️ Unaudited |
| ETHHelper | unknown | ethereum | n/a | [`0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304`](./contracts/ethereum-1/0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304/) | ⚠️ Unaudited |
| GatewayRegistry | unknown | ethereum | n/a | [`0x503670ec851c55ec1acfb5230192da921467a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | ⚠️ Unaudited |
| GERO | unknown | ethereum | n/a | [`0x3431f91b3a388115f00c5ba9fdb899851d005fb5`](./contracts/ethereum-1/0x3431f91b3a388115f00c5ba9fdb899851d005fb5/) | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | ethereum | n/a | [`0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x93277b8f5939975b9e6694d5fd2837143afbf68a`](./contracts/ethereum-1/0x93277b8f5939975b9e6694d5fd2837143afbf68a/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | moonbeam | n/a | [`0x2d23b3865d5b7cd88ce9ce7514a13545672d9ef7`](./contracts/moonbeam-1284/0x2d23b3865d5b7cd88ce9ce7514a13545672d9ef7/) | ⚠️ Unaudited |
| GovernanceRouter | unknown | ethereum | n/a | [`0x02842e47a45be8bb4bc60a7fe0ce3cc5d7398f96`](./contracts/ethereum-1/0x02842e47a45be8bb4bc60a7fe0ce3cc5d7398f96/) | ⚠️ Unaudited |
| HBTCStorage | unknown | ethereum | n/a | [`0xc728693dcf6b257bf88577d6c92e52028426eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | ⚠️ Unaudited |
| HBTCToken | unknown | ethereum | n/a | [`0x0316eb71485b0ab14103307bf65a021042c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| HCTToken | unknown | ethereum | n/a | [`0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | ⚠️ Unaudited |
| HDTToken | unknown | ethereum | n/a | [`0xe42ef56340bca5072e3c7ba07df835a65ecd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | ⚠️ Unaudited |
| Home | unknown | ethereum | n/a | [`0x0dcc98ad3733fd2d788a80545d1c244dd45a9c72`](./contracts/ethereum-1/0x0dcc98ad3733fd2d788a80545d1c244dd45a9c72/) | ⚠️ Unaudited |
| HUSDToken | unknown | ethereum | n/a | [`0x2a683d58afa5ce9f54cc498672a33c4a0e13e846`](./contracts/ethereum-1/0x2a683d58afa5ce9f54cc498672a33c4a0e13e846/) | ⚠️ Unaudited |
| IAGON | unknown | ethereum | n/a | [`0x40eb746dee876ac1e78697b7ca85142d178a1fc8`](./contracts/ethereum-1/0x40eb746dee876ac1e78697b7ca85142d178a1fc8/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7a43b06ed73fcd3707f1a681ca645d758a51ee52`](./contracts/ethereum-1/0x7a43b06ed73fcd3707f1a681ca645d758a51ee52/) | ⚠️ Unaudited |
| MapMyAddress | unknown | ethereum | n/a | [`0x23e4470a671d4264e76e80c7315ca72cd6942719`](./contracts/ethereum-1/0x23e4470a671d4264e76e80c7315ca72cd6942719/) | ⚠️ Unaudited |
| MintGatewayProxy | unknown | ethereum | n/a | [`0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | ethereum | n/a | [`0x13773093cdad89e8e1615f581a37c7eeabb04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | ⚠️ Unaudited |
| Orderbook | unknown | ethereum | n/a | [`0x6b8bb175c092de7d81860b18db360b734a2598e0`](./contracts/ethereum-1/0x6b8bb175c092de7d81860b18db360b734a2598e0/) | ⚠️ Unaudited |
| ProtocolLogic | unknown | ethereum | n/a | [`0x54751636e04092ee76f25b2b3c50dcdcfebdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | ethereum | n/a | [`0x637278bf72127c76d98d9a9be36d2121fb2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ⚠️ Unaudited |
| ProtocolProxy | unknown | ethereum | n/a | [`0x4d880bb27b1cd850d4bc331b1654af01bd69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ⚠️ Unaudited |
| ProxyERC20 | unknown | ethereum | n/a | [`0xfe18be6b3bd88a2d2a7f928d00292e7a9963cfc6`](./contracts/ethereum-1/0xfe18be6b3bd88a2d2a7f928d00292e7a9963cfc6/) | ⚠️ Unaudited |
| Raffle | unknown | ethereum | n/a | [`0x45ef567d82f0fa70b5a4d56dc9c79b2da934f2e2`](./contracts/ethereum-1/0x45ef567d82f0fa70b5a4d56dc9c79b2da934f2e2/) | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | ethereum | n/a | [`0x0a2d368e4eecbd515033ba29253909f2978c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | ⚠️ Unaudited |
| RenERC20Proxy | unknown | ethereum | n/a | [`0xee274080b8389ac5add6499df348b653447894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | ethereum | n/a | [`0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | ⚠️ Unaudited |
| RenExBalances | unknown | ethereum | n/a | [`0x5ec18b477b20af940807b5478db5a64cd4a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | ethereum | n/a | [`0x31a0d1a199631d244761eeba67e8501296d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | ⚠️ Unaudited |
| RenExSettlement | unknown | ethereum | n/a | [`0x908262de0366e42d029b0518d5276762c92b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | ⚠️ Unaudited |
| RenExTokens | unknown | ethereum | n/a | [`0x7cade4fbc8761817bb62a080733d1b6cad744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | ⚠️ Unaudited |
| RenProxyAdmin | unknown | ethereum | n/a | [`0x04490672449654b1d9ad6f0aae14e6e4c60ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | ⚠️ Unaudited |
| RenToken | unknown | ethereum | n/a | [`0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | ⚠️ Unaudited |
| Replica | unknown | ethereum | n/a | [`0x049b51e531fd8f90da6d92ea83dc4125002f20ef`](./contracts/ethereum-1/0x049b51e531fd8f90da6d92ea83dc4125002f20ef/) | ⚠️ Unaudited |
| RepublicToken | unknown | ethereum | n/a | [`0x21c482f153d0317fe85c60be1f7fa079019fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | ⚠️ Unaudited |
| SettlementRegistry | unknown | ethereum | n/a | [`0x119da7a8500ade0766f758d934808179dc551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | ⚠️ Unaudited |
| SHFLFarmer | unknown | ethereum | n/a | [`0xba4c394eb34eb2392e40c67502b22f2541c920d2`](./contracts/ethereum-1/0xba4c394eb34eb2392e40c67502b22f2541c920d2/) | ⚠️ Unaudited |
| ShifterRegistry | unknown | ethereum | n/a | [`0x1d4713b74e79a3696722aebe05de976979876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ⚠️ Unaudited |
| Staker | unknown | ethereum | n/a | [`0xad2fd18932c39fa5085429853e1f0d39a65a438e`](./contracts/ethereum-1/0xad2fd18932c39fa5085429853e1f0d39a65a438e/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xfe43c3a01102eda295333f5ad6cc747f03314fdb`](./contracts/ethereum-1/0xfe43c3a01102eda295333f5ad6cc747f03314fdb/) | ⚠️ Unaudited |
| TokenRegistry | unknown | ethereum | n/a | [`0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79`](./contracts/ethereum-1/0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79/) | ⚠️ Unaudited |
| UpdaterManager | unknown | moonbeam | n/a | [`0x2e09edd238eeaea6e4da705fbe5922b1979e03ac`](./contracts/moonbeam-1284/0x2e09edd238eeaea6e4da705fbe5922b1979e03ac/) | ⚠️ Unaudited |
| UpgradeBeacon | unknown | ethereum | n/a | [`0x063e871f8db991cead34b557a00b157b360084cc`](./contracts/ethereum-1/0x063e871f8db991cead34b557a00b157b360084cc/) | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | ethereum | n/a | [`0xdb378579c2af11817eea21474a39f95b5b9dfd7e`](./contracts/ethereum-1/0xdb378579c2af11817eea21474a39f95b5b9dfd7e/) | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | moonbeam | n/a | [`0x030932a76f53dbf30fcfd51a8b3eed6833383e61`](./contracts/moonbeam-1284/0x030932a76f53dbf30fcfd51a8b3eed6833383e61/) | ⚠️ Unaudited |
| WMTDrop | unknown | ethereum | n/a | [`0x7944b4407796014d7d3191960a44478056beed07`](./contracts/ethereum-1/0x7944b4407796014d7d3191960a44478056beed07/) | ⚠️ Unaudited |
| XAppConnectionManager | unknown | moonbeam | n/a | [`0xdb378579c2af11817eea21474a39f95b5b9dfd7e`](./contracts/moonbeam-1284/0xdb378579c2af11817eea21474a39f95b5b9dfd7e/) | ⚠️ Unaudited |
| XXXXToken | unknown | ethereum | n/a | [`0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | ⚠️ Unaudited |
| zBCH | unknown | ethereum | n/a | [`0x0e68ee104c768078cb3624396aaf9285c58f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | ⚠️ Unaudited |
| zBTC | unknown | ethereum | n/a | [`0x88c64a7d2ecc882d558dd16abc1537515a78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | ethereum | n/a | [`0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x37a4860728e292e5852b215c46dbe7a18862ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x52c883b626637ae7c2b93909ad40c24676ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ⚠️ Unaudited |
| ZECShifter | unknown | ethereum | n/a | [`0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ⚠️ Unaudited |
| zZEC | unknown | ethereum | n/a | [`0x09aa07ae98fde91d66775c13107e9f082ff65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [www.zksecurity.xyz/reports/hinkal-audit](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [immunefi.com/audit-competition/hinkal-iop/leaderboard](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [security-audits.md](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |
| [drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to DarknodeRegistry, DarknodeRegistryLogicV2, MintGatewayLogicV2 | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x09da34a0cedb4e84b5b68cc0d2f47e921d83a794`](./contracts/ethereum-1/0x09da34a0cedb4e84b5b68cc0d2f47e921d83a794/) | AllowListNFTRecoveryAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0807d0810714d85b49e40349a3002f06e841b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | BasicAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2d578e21f430d7469cbc135952dfe5c34b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | BCH_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | BCHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2095be01f9a30a8ac8302245fdfa524fb20de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | BCHShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0e6a3fd785f2169a086e179004710ba6b663a892`](./contracts/moonbeam-1284/0x0e6a3fd785f2169a086e179004710ba6b663a892/) | BridgeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x18bd26b4763912176a26b422b3f6677901896048`](./contracts/moonbeam-1284/0x18bd26b4763912176a26b422b3f6677901896048/) | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11716a1f51fad053e9b43da1025e8ace32aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | BTC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1258d7ff385d1d81017d4a3d464c02f74c61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | BTCShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d6f0dea3ac3c607b3998e6ce14b6350721752d9`](./contracts/ethereum-1/0x3d6f0dea3ac3c607b3998e6ce14b6350721752d9/) | Cards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3d732815ecddd8c7d044eee2e3e428edd7cdd7b`](./contracts/ethereum-1/0xc3d732815ecddd8c7d044eee2e3e428edd7cdd7b/) | CardsVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1a91c7d44768070f711c68f33a7ca25c8d30268`](./contracts/ethereum-1/0xf1a91c7d44768070f711c68f33a7ca25c8d30268/) | Charlie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd417144312dbf50465b1c641d016962017ef6240`](./contracts/ethereum-1/0xd417144312dbf50465b1c641d016962017ef6240/) | CovalentQueryToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3f95938958a4029fa8b01873e2721b02950883`](./contracts/ethereum-1/0x3b3f95938958a4029fa8b01873e2721b02950883/) | CSWAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x098e1708b920efbdd7afe33adb6a4cba30c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | DarknodePayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x085d9b18be81f2b0c35086972caa46177205f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | DarknodePaymentMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x311999ee72b5826d664fd4f3ac09c0c462effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | DarknodePaymentStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb032012073765a74f8f8fe2e6685ad70253058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | DarknodeRegistryForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e3435c7a92d3296d1221161cb0cbaafa017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | DarknodeRegistryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | DarknodeRegistryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14add4ca443e7445a3418bb572d6079bfc98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | DarknodeRegistryStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e69da530e2051cd08259221ef1dacc703c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | DarknodeRegistryV1ToV2Preupgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | DarknodeRegistryV1ToV2Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880407c9cd119bef48b1821cdfc434e3ca3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | DarknodeRewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | DarknodeSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff192e634ef6463be60792a384e5f1219a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9992e9341e496be5bc8f424dfc1f78a7388d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | DEXAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f6d9862cd7442e831123cfa288bb1fef47f7177`](./contracts/ethereum-1/0x7f6d9862cd7442e831123cfa288bb1fef47f7177/) | EthereumBridgeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304`](./contracts/ethereum-1/0x2d6775c1673d4ce55e1f827a0d53e62c43d1f304/) | ETHHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x503670ec851c55ec1acfb5230192da921467a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | GatewayRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3431f91b3a388115f00c5ba9fdb899851d005fb5`](./contracts/ethereum-1/0x3431f91b3a388115f00c5ba9fdb899851d005fb5/) | GERO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | GetOperatorDarknodes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02842e47a45be8bb4bc60a7fe0ce3cc5d7398f96`](./contracts/ethereum-1/0x02842e47a45be8bb4bc60a7fe0ce3cc5d7398f96/) | GovernanceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc728693dcf6b257bf88577d6c92e52028426eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | HBTCStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0316eb71485b0ab14103307bf65a021042c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | HCTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe42ef56340bca5072e3c7ba07df835a65ecd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | HDTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dcc98ad3733fd2d788a80545d1c244dd45a9c72`](./contracts/ethereum-1/0x0dcc98ad3733fd2d788a80545d1c244dd45a9c72/) | Home | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a683d58afa5ce9f54cc498672a33c4a0e13e846`](./contracts/ethereum-1/0x2a683d58afa5ce9f54cc498672a33c4a0e13e846/) | HUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40eb746dee876ac1e78697b7ca85142d178a1fc8`](./contracts/ethereum-1/0x40eb746dee876ac1e78697b7ca85142d178a1fc8/) | IAGON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e4470a671d4264e76e80c7315ca72cd6942719`](./contracts/ethereum-1/0x23e4470a671d4264e76e80c7315ca72cd6942719/) | MapMyAddress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | MintGatewayProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13773093cdad89e8e1615f581a37c7eeabb04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | MintGatewayUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b8bb175c092de7d81860b18db360b734a2598e0`](./contracts/ethereum-1/0x6b8bb175c092de7d81860b18db360b734a2598e0/) | Orderbook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54751636e04092ee76f25b2b3c50dcdcfebdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ProtocolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x637278bf72127c76d98d9a9be36d2121fb2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ProtocolLogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d880bb27b1cd850d4bc331b1654af01bd69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ProtocolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe18be6b3bd88a2d2a7f928d00292e7a9963cfc6`](./contracts/ethereum-1/0xfe18be6b3bd88a2d2a7f928d00292e7a9963cfc6/) | ProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45ef567d82f0fa70b5a4d56dc9c79b2da934f2e2`](./contracts/ethereum-1/0x45ef567d82f0fa70b5a4d56dc9c79b2da934f2e2/) | Raffle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2d368e4eecbd515033ba29253909f2978c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | RenERC20LogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee274080b8389ac5add6499df348b653447894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | RenERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | RenExAtomicSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec18b477b20af940807b5478db5a64cd4a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | RenExBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31a0d1a199631d244761eeba67e8501296d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | RenExBrokerVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x908262de0366e42d029b0518d5276762c92b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | RenExSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cade4fbc8761817bb62a080733d1b6cad744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | RenExTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04490672449654b1d9ad6f0aae14e6e4c60ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | RenProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | RenToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049b51e531fd8f90da6d92ea83dc4125002f20ef`](./contracts/ethereum-1/0x049b51e531fd8f90da6d92ea83dc4125002f20ef/) | Replica | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21c482f153d0317fe85c60be1f7fa079019fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | RepublicToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x119da7a8500ade0766f758d934808179dc551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | SettlementRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba4c394eb34eb2392e40c67502b22f2541c920d2`](./contracts/ethereum-1/0xba4c394eb34eb2392e40c67502b22f2541c920d2/) | SHFLFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d4713b74e79a3696722aebe05de976979876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ShifterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad2fd18932c39fa5085429853e1f0d39a65a438e`](./contracts/ethereum-1/0xad2fd18932c39fa5085429853e1f0d39a65a438e/) | Staker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe43c3a01102eda295333f5ad6cc747f03314fdb`](./contracts/ethereum-1/0xfe43c3a01102eda295333f5ad6cc747f03314fdb/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79`](./contracts/ethereum-1/0x0a6f564c5c9bebd66f1595f1b51d1f3de6ef3b79/) | TokenRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2e09edd238eeaea6e4da705fbe5922b1979e03ac`](./contracts/moonbeam-1284/0x2e09edd238eeaea6e4da705fbe5922b1979e03ac/) | UpdaterManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063e871f8db991cead34b557a00b157b360084cc`](./contracts/ethereum-1/0x063e871f8db991cead34b557a00b157b360084cc/) | UpgradeBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb378579c2af11817eea21474a39f95b5b9dfd7e`](./contracts/ethereum-1/0xdb378579c2af11817eea21474a39f95b5b9dfd7e/) | UpgradeBeaconController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x030932a76f53dbf30fcfd51a8b3eed6833383e61`](./contracts/moonbeam-1284/0x030932a76f53dbf30fcfd51a8b3eed6833383e61/) | UpgradeBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7944b4407796014d7d3191960a44478056beed07`](./contracts/ethereum-1/0x7944b4407796014d7d3191960a44478056beed07/) | WMTDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xdb378579c2af11817eea21474a39f95b5b9dfd7e`](./contracts/moonbeam-1284/0xdb378579c2af11817eea21474a39f95b5b9dfd7e/) | XAppConnectionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | XXXXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e68ee104c768078cb3624396aaf9285c58f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | zBCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c64a7d2ecc882d558dd16abc1537515a78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | zBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ZEC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a4860728e292e5852b215c46dbe7a18862ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | ZECGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52c883b626637ae7c2b93909ad40c24676ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ZECGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ZECShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09aa07ae98fde91d66775c13107e9f082ff65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | zZEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=24

Fork inheritance lineage and inherited audits are included when available.
