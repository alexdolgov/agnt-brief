# Agentic Audit Brief: Kleros

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Kleros (`kleros`)
- Website: [https://kleros.io](https://kleros.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-13T02:52:21.600Z
- Pipeline run: v2-pipeline-2026-06-13-546062-d5d2
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 358 unique implementations (647 raw deployments)
- DeFi Llama TVL: $5,808,359.43
- On-chain TVL (included contracts): $10,692,979.91
- TVL by chain: Ethereum $10,370,322.62 | Arbitrum $322,657.29

## Project Description

Kleros is a decentralized arbitration protocol that resolves disputes in a fast, affordable, and transparent manner using crowdsourced jurors and game-theoretic incentives. It provides smart contract–based arbitration services for a wide range of use cases, including token-curated registries, prediction markets, and general smart contract disputes.

### Architecture

The Core family on Ethereum mainnet provides the foundational PNK token, governance, and arbitration logic, which is extended to Gnosis Chain via wrapped PNK and bridged Reality.eth proxies. The Arbitrum One family represents a modular, next-generation architecture that shares the same dispute resolution principles but uses upgraded components, while Polygon and RABd are lightweight integrations relying on the same arbitrator contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/89 (0.0%)
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 5
- Unverified implementations: 269
- Unique implementations: 358
- Raw deployments: 647
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,692,979.91
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $10,692,979.91 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MiniMeToken | token | ethereum | 4 deployments: ethereum [`0x395df4...2992ea`](./contracts/ethereum-1/0x395df49c20e34a7ea995cbf546e54f66172992ea/); ethereum `0x87c260...e2f520`; ethereum `0x93ed3f...3bc04d`; ethereum `0xadaac4...c0790a` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x330bd7...6dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | ⚠️ Unaudited |
| ArbitrableTokenList | token | ethereum | 2 deployments: ethereum [`0x52d942...2d708a`](./contracts/ethereum-1/0x52d942f5f9c47971499946d83657700ccd2d708a/); ethereum `0xebcf3b...f0e679` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | ethereum | 36 deployments: ethereum [`0x0f6408...49d763`](./contracts/ethereum-1/0x0f64080f88630a35a98ea1253860c9193e49d763/); ethereum `0x10a635...ea8aff`; ethereum `0x13fc0a...3215db`; ethereum `0x222426...de46f8`; ethereum `0x393df4...8ee923`; ethereum `0x3b6c03...10d667`; ethereum `0x4ce287...4f9c86`; ethereum `0x50815e...5a83a0`; ethereum `0x516c58...a6095c`; ethereum `0x54fe8b...619718`; ethereum `0x5990b8...440df8`; ethereum `0x63feb1...5023b2`; ethereum `0x713e11...2c9d24`; ethereum `0x71879e...759456`; ethereum `0x7392b8...b908de`; ethereum `0x746d94...fee43e`; ethereum `0x975abc...d961c1`; ethereum `0xa9a464...931a5c`; ethereum `0xaa4447...e9cdeb`; ethereum `0xadf06a...227462`; ethereum `0xaf9667...cdbb8a`; ethereum `0xb12354...3c7985`; ethereum `0xba615f...5318b8`; ethereum `0xbae1ab...92157c`; ethereum `0xce56f1...8f8f11`; ethereum `0xd5ee4c...24bf77`; ethereum `0xf237b1...881cc6`; ethereum `0xf3d394...1af505`; gnosis `0x282669...a114cc`; gnosis `0x2f0895...695f21`; gnosis `0x3ff09d...490840`; gnosis `0x4b850c...cf5070`; gnosis `0x79833a...77de48`; gnosis `0xd401c7...b7d50c`; gnosis `0xf29223...640f01`; gnosis `0xf32978...b04b0e` | ⚠️ Unaudited |
| AmbGreeterReceiver | unknown | ethereum | [`0x800643...b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | ⚠️ Unaudited |
| ArbitrableAddressList | unknown | ethereum | 3 deployments: ethereum [`0x291b07...39d085`](./contracts/ethereum-1/0x291b079cfeb16de397be079338c43ea21239d085/); ethereum `0x916dea...e5b4ab`; ethereum `0xcb4aae...3b125f` | ⚠️ Unaudited |
| ArbitrablePermissionList | unknown | ethereum | [`0xb7fadd...b5a7e6`](./contracts/ethereum-1/0xb7faddf3ecd2402a7e48cea6d2637d90eeb5a7e6/) | ⚠️ Unaudited |
| ArbitrableProxy | unknown | ethereum | 3 deployments: ethereum [`0x4b89e7...c782a4`](./contracts/ethereum-1/0x4b89e798b10478a839ea0abcf86c4b94a3c782a4/); ethereum `0x99489d...9ae0cf`; ethereum `0xa3b02b...110ccc` | ⚠️ Unaudited |
| ArbitrableTCRView | unknown | ethereum | [`0xe22340...fee97a`](./contracts/ethereum-1/0xe223402e20198d391fe80ec0bbaa0850e1fee97a/) | ⚠️ Unaudited |
| ArbitrableTCRViewV2 | unknown | ethereum | [`0x60d968...6da2ed`](./contracts/ethereum-1/0x60d968067655f9e363191883495d2e714f6da2ed/) | ⚠️ Unaudited |
| BalanceScaler | unknown | ethereum | [`0x6947b2...d8351a`](./contracts/ethereum-1/0x6947b24415edc40c0ff97b45310380022dd8351a/) | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | [`0x38aa21...066b4d`](./contracts/ethereum-1/0x38aa214dc986d0bab53e5861071f3d5a56066b4d/) | ⚠️ Unaudited |
| BeaconRNG | registry | ethereum | [`0x90992f...19c879`](./contracts/ethereum-1/0x90992fb4e15ce0c59aeffb376460fda4ee19c879/) | ⚠️ Unaudited |
| BetNFTDescriptor | token | gnosis | 2 deployments: gnosis [`0x43c9e4...7ed35c`](./contracts/gnosis-100/0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c/); gnosis `0xd71285...2093be` | ⚠️ Unaudited |
| blockHashNotReturned | unknown | ethereum | [`0x92900a...4e4e0c`](./contracts/ethereum-1/0x92900a372ed0f0921a08ea9df158c0aac34e4e0c/) | ⚠️ Unaudited |
| BlockHashRNG | unknown | arbitrum | [`0x39d123...f35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | ⚠️ Unaudited |
| ChainlinkRNG | unknown | arbitrum | [`0x897d83...22cba3`](./contracts/arbitrum-42161/0x897d83a7d5f23555efa15e1be297d5503522cba3/) | ⚠️ Unaudited |
| DisputeKitClassic | unknown | arbitrum | 4 deployments: arbitrum [`0x7f3c3c...2ef81d`](./contracts/arbitrum-42161/0x7f3c3c9f9c6238885d958afa1bcc92f1032ef81d/); arbitrum `0x86ac67...a2bde3`; arbitrum `0xaf0325...e3e03a`; arbitrum `0xb7c292...6374a9` | ⚠️ Unaudited |
| DisputeKitClassicNeoProxy | proxy | arbitrum | [`0x70b464...a45421`](./contracts/arbitrum-42161/0x70b464be85a547144c72485eba2577e5d3a45421/) | ⚠️ Unaudited |
| DisputeKitGated | unknown | arbitrum | 4 deployments: arbitrum [`0xae1eed...d9a925`](./contracts/arbitrum-42161/0xae1eed20c125b739b64c948820c61f809ad9a925/); arbitrum `0xcc811d...6c3078`; arbitrum `0xd9ddce...3f9ff0`; arbitrum `0xea7863...b7790a` | ⚠️ Unaudited |
| DisputeKitGatedShutter | unknown | arbitrum | 2 deployments: arbitrum [`0x788330...c2e47b`](./contracts/arbitrum-42161/0x788330092b9704809c19858e39eb9ac402c2e47b/); arbitrum `0xb12eb4...d61b32` | ⚠️ Unaudited |
| DisputeKitShutter | unknown | arbitrum | 2 deployments: arbitrum [`0x9d3e3f...bbc768`](./contracts/arbitrum-42161/0x9d3e3f1765744c2a1bc6f6088549770444bbc768/); arbitrum `0xf3103b...783947` | ⚠️ Unaudited |
| DisputeResolver | unknown | arbitrum | 3 deployments: arbitrum [`0x3645f9...22c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/); arbitrum `0x95ece4...10d6eb`; arbitrum `0xb5526d...1f4323` | ⚠️ Unaudited |
| DisputeResolverRuler | unknown | arbitrum | [`0xb3a5fd...be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | ⚠️ Unaudited |
| DisputeTemplateRegistry | registry | arbitrum | 4 deployments: arbitrum [`0x0cfbac...f2a5a2`](./contracts/arbitrum-42161/0x0cfbaca5c72e7ca5ffabe768e135654fb3f2a5a2/); arbitrum `0x4ce873...80cefb`; arbitrum `0x52c9f5...ff9e25`; arbitrum `0x57efd4...ef5c87` | ⚠️ Unaudited |
| Distributor | operational_periphery | gnosis | 2 deployments: gnosis [`0x9378c3...a7166c`](./contracts/gnosis-100/0x9378c3f269f5a3f87956ff8dbf2d83e361a7166c/); gnosis `0x9b59ee...d1151a` | ⚠️ Unaudited |
| EscrowUniversal | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/); arbitrum `0x79530e...1f2f6c`; arbitrum `0x7f1ffe...d3b132`; arbitrum `0xdf62a0...4a63d1` | ⚠️ Unaudited |
| EscrowView | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x3fed94...290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/); arbitrum `0x85ee33...8cf70d`; arbitrum `0xaf36da...77330d` | ⚠️ Unaudited |
| EvidenceModule | unknown | arbitrum | 5 deployments: arbitrum [`0x48e052...981eb3`](./contracts/arbitrum-42161/0x48e052b4a6dc4f30e90930f1ceaafd83b3981eb3/); arbitrum `0x827411...8f378f`; arbitrum `0xa502a3...b192c8`; arbitrum `0xe22500...8a4c5d`; arbitrum `0xe62b77...0db005` | ⚠️ Unaudited |
| FirstPriceAuction | operational_periphery | gnosis | [`0xdcdb82...ad7478`](./contracts/gnosis-100/0xdcdb82e595b3c80e569ebb52c08b05f053ad7478/) | ⚠️ Unaudited |
| ForeignProxyETH | unknown | ethereum | [`0xe69a35...e0d7f6`](./contracts/ethereum-1/0xe69a359f5fb27c12e6cf4e75e326329d13e0d7f6/) | ⚠️ Unaudited |
| GeneralizedTCRView | unknown | ethereum | [`0x98f130...d7a524`](./contracts/ethereum-1/0x98f1309f96044000174a89c2a0e2001ea5d7a524/) | ⚠️ Unaudited |
| GnosisChainReceiverV2 | unknown | gnosis | 4 deployments: gnosis [`0x0db38f...391137`](./contracts/gnosis-100/0x0db38fd51525cb4d7d2814ccd3fee3acee391137/); gnosis `0x78fe89...3efaf2`; gnosis `0xc73f83...f7da4a`; gnosis `0xfd5300...d79901` | ⚠️ Unaudited |
| GnosisUBIBurner | unknown | gnosis | 2 deployments: gnosis [`0x2700ed...c86bed`](./contracts/gnosis-100/0x2700ed443fadd750894a5b406c456d78e9c86bed/); gnosis `0x43e906...9485c3` | ⚠️ Unaudited |
| GTCRFactory | registry | ethereum | 2 deployments: ethereum [`0x7d2062...fd599a`](./contracts/ethereum-1/0x7d206232f7e9e22796f3a2316f2f8a8019fd599a/); ethereum `0xe9dd52...7f9cd5` | ⚠️ Unaudited |
| Kleros | unknown | ethereum | 2 deployments: ethereum [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/); ethereum `0xd6d298...bf0ef6` | ⚠️ Unaudited |
| KlerosCoreNeo | unknown | arbitrum | 6 deployments: arbitrum [`0x17c39a...98ae89`](./contracts/arbitrum-42161/0x17c39ab53a7072b167a74a85d47b30385c98ae89/); arbitrum `0x4dd8b6...3dc284`; arbitrum `0x991d2d...4222ea`; arbitrum `0xc12104...50e54c`; arbitrum `0xcd415c...4354f1`; arbitrum `0xeb6d9e...330fab` | ⚠️ Unaudited |
| KlerosCoreRuler | unknown | arbitrum | 2 deployments: arbitrum [`0x85093b...08e324`](./contracts/arbitrum-42161/0x85093b5eda4f2e2e2fedae34da91239d6a08e324/); arbitrum `0xc0169e...6dfe13` | ⚠️ Unaudited |
| KlerosCoreSnapshotProxy | unknown | arbitrum | [`0xef719a...2fec95`](./contracts/arbitrum-42161/0xef719a5b3352f607e6c4e17b7e0cdad8322fec95/) | ⚠️ Unaudited |
| KlerosGovernor | governance | ethereum | 5 deployments: ethereum [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/); ethereum `0x59ccd7...f57aa8`; ethereum `0x7510c7...e1ed2b`; ethereum `0x8a0ede...da6e47`; ethereum `0xe5bcea...0e5cf4` | ⚠️ Unaudited |
| KlerosLiquidExtraViews | unknown | ethereum | 3 deployments: ethereum [`0x2b562e...e1e940`](./contracts/ethereum-1/0x2b562ea613ad2f58746935c842d09eb147e1e940/); ethereum `0xd1a711...e46475`; ethereum `0xda47f3...5ad943` | ⚠️ Unaudited |
| LevelWhitelistedIICO | unknown | ethereum | [`0xac4330...6e0f67`](./contracts/ethereum-1/0xac43300f2d0c345b716f36853eceb497576e0f67/) | ⚠️ Unaudited |
| LightBatchWithdraw | operational_periphery | ethereum | [`0x5c6363...719e4a`](./contracts/ethereum-1/0x5c6363cfa9462ae11e22d2a5a0eb15dbb8719e4a/) | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | ethereum | 4 deployments: ethereum [`0x2ce3f8...4eccc8`](./contracts/ethereum-1/0x2ce3f8c16da2bcb45ad0ccbbd82151b0c04eccc8/); gnosis `0x66260c...4c59f2`; gnosis `0x705335...92af60`; gnosis `0x957a53...52d6e1` | ⚠️ Unaudited |
| LightGeneralizedTCRView | unknown | ethereum | [`0xe82a69...98ccc8`](./contracts/ethereum-1/0xe82a69e939e1ab6dc1868262cfe444f70098ccc8/) | ⚠️ Unaudited |
| LightGTCRFactory | registry | ethereum | [`0xb9ddc8...ee0054`](./contracts/ethereum-1/0xb9ddc813acaf3fd7abc4c16735a09bc1c0ee0054/) | ⚠️ Unaudited |
| Linguo | unknown | ethereum | 18 deployments: ethereum [`0x0bc3b5...e8fba2`](./contracts/ethereum-1/0x0bc3b51673dcdf3b45c628066761da7331e8fba2/); ethereum `0x1c839f...2f0fd2`; ethereum `0x44863f...ef7af7`; ethereum `0x460f68...b9060d`; ethereum `0x464c84...777306`; ethereum `0x48032a...1961f9`; ethereum `0x54f1f7...129b33`; ethereum `0x5cd1ff...4acf11`; ethereum `0x950f5a...0099ad`; ethereum `0xa3e434...4a0180`; ethereum `0xab0d90...be6ac3`; ethereum `0xc31627...711129`; ethereum `0xd67c12...b71fe7`; ethereum `0xd8f801...98c103`; ethereum `0xf1a958...385074`; ethereum `0xf8d4c1...b5ae63`; ethereum `0xfe721d...213eaa`; ethereum `0xfee863...bbccfa` | ⚠️ Unaudited |
| LiquidityPool | core_logic | gnosis | 3 deployments: gnosis [`0x012791...83ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/); gnosis `0x097b81...783850`; gnosis `0x5850ce...101b63` | ⚠️ Unaudited |
| Market | unknown | gnosis | 14 deployments: gnosis [`0x23ac77...d782c8`](./contracts/gnosis-100/0x23ac77dde48eefaab344ef9de372fd40e0d782c8/); gnosis `0x49c53e...a4a56d`; gnosis `0x4af550...ccf996`; gnosis `0x4d20ac...3520b0`; gnosis `0x6d65f6...34cd59`; gnosis `0x77c608...bb737f`; gnosis `0x811463...e88ca6`; gnosis `0x96f3cc...6eea9d`; gnosis `0x9b8559...7808af`; gnosis `0xb4cd04...35eeca`; gnosis `0xbb19d8...e0e40a`; gnosis `0xc7021e...bb1445`; gnosis `0xeb4938...7b249a`; gnosis `0xf11d01...83841c` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | ⚠️ Unaudited |
| Master | unknown | ethereum | [`0xada8ba...ff618c`](./contracts/ethereum-1/0xada8bade0c52b4fcc70153bbfe37b5bda9ff618c/) | ⚠️ Unaudited |
| MiniMeTokenFactory | registry | ethereum | [`0x01aeac...1cbddc`](./contracts/ethereum-1/0x01aeac2635c607137318e217c0c29360c91cbddc/) | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | ethereum | 2 deployments: ethereum [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/); ethereum `0x5906db...6e9b5d` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | ⚠️ Unaudited |
| PolicyRegistry | registry | ethereum | 11 deployments: ethereum [`0x03a945...5295cc`](./contracts/ethereum-1/0x03a9458d77dd705829fa758c64dbe770385295cc/); ethereum `0xcf1f07...8bece4`; gnosis `0x640ebf...a5fba3`; gnosis `0x9d4947...6c6d7e`; gnosis `0xa1bff7...a1ebfa`; gnosis `0xd8eb9b...b01b49`; arbitrum `0x15e596...9bc454`; arbitrum `0x26c198...018547`; arbitrum `0x2ac2ed...b949da`; arbitrum `0x553dcb...403d3c`; arbitrum `0xf7ee0c...e96c28` | ⚠️ Unaudited |
| ProofOfHumanity | unknown | ethereum | [`0xc5e9dd...7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ⚠️ Unaudited |
| ProofOfHumanityProxy | unknown | ethereum | [`0x1dad86...2874db`](./contracts/ethereum-1/0x1dad862095d40d43c2109370121cf087632874db/) | ⚠️ Unaudited |
| ProofOfHumanityProxyV2 | unknown | ethereum | [`0x134e1b...cf7d30`](./contracts/ethereum-1/0x134e1b6f6665329d16753973abffd8ad8bcf7d30/) | ⚠️ Unaudited |
| ProxyAdmin | governance | gnosis | 6 deployments: ethereum `0x2b5950...7132e0`; ethereum `0x631c82...e67eaa`; gnosis [`0x02d68e...767171`](./contracts/gnosis-100/0x02d68e2763e393e4abb77f106b3d4c1f82767171/); gnosis `0x514a62...ca67ea`; gnosis `0xb93e08...3d8ec7`; gnosis `0xd1a711...e46475` | ⚠️ Unaudited |
| RandomizerRNG | unknown | arbitrum | 4 deployments: arbitrum [`0x044afe...2fa9d3`](./contracts/arbitrum-42161/0x044afe0069c0fd641bc5f90d9a4218ef0b2fa9d3/); arbitrum `0xa995c1...cf4836`; arbitrum `0xc3db34...029fb4`; arbitrum `0xf1a7cd...074a2e` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | gnosis | 33 deployments: ethereum `0x1c2811...d5fc0d`; ethereum `0x201803...4f85ad`; ethereum `0x395ba2...b38940`; ethereum `0x728cba...15a596`; ethereum `0x783763...58d517`; ethereum `0xc45d8d...8d2992`; ethereum `0xf72cfd...30adca`; ethereum `0xff32ef...a3791a`; gnosis [`0x0a03fa...f5ac3a`](./contracts/gnosis-100/0x0a03fa9c87310c9d5d9c733ddb36809cf8f5ac3a/); gnosis `0x0c1ad2...4a9e97`; gnosis `0x163930...cdb265`; gnosis `0x17bbc6...bec83f`; gnosis `0x17e38e...e49bc3`; gnosis `0x1aba45...f9d1c9`; gnosis `0x1b4330...cbe584`; gnosis `0x2a2bab...dc4001`; gnosis `0x2e39b8...3cf805`; gnosis `0x2e4ceb...115f5e`; gnosis `0x333ffd...628110`; gnosis `0x36a4e9...b6c03a`; gnosis `0x3c3fb8...2c9925`; gnosis `0x54068a...8d0789`; gnosis `0x855b3e...d5f5f9`; gnosis `0x95b66b...5d2c24`; gnosis `0x9850dd...26f1ba`; gnosis `0x9c7355...4147e3`; gnosis `0xb7ec1c...7d0f42`; gnosis `0xc32b43...225d58`; gnosis `0xc72416...413549`; gnosis `0xce653a...3068fe`; gnosis `0xd61240...e27ee2`; gnosis `0xe04f57...91ea3e`; gnosis `0xe9b3b2...807daf` | ⚠️ Unaudited |
| RealitioArbitratorProxy | unknown | ethereum | 4 deployments: ethereum [`0x126697...1e4e1e`](./contracts/ethereum-1/0x126697b552b83f08c7ebebae8d13eae2871e4e1e/); ethereum `0x15daed...12d2ac`; ethereum `0x8d2eba...d71f25`; ethereum `0xd47f72...00a14d` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxy | unknown | ethereum | 2 deployments: ethereum [`0x79d046...ea3d49`](./contracts/ethereum-1/0x79d0464ec27f67663dadf761432fc8dd0aea3d49/); ethereum `0xafffbe...151b16` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | ethereum | 8 deployments: ethereum [`0x2f0895...695f21`](./contracts/ethereum-1/0x2f0895732bfacdcf2fdb19962fe609d0da695f21/); ethereum `0x32bcdc...faaa3f`; ethereum `0x4a7e26...c43c00`; ethereum `0x68c4cc...bafe28`; ethereum `0x776e58...231e52`; ethereum `0x8453ba...552425`; ethereum `0xef2ae6...6b2f59`; ethereum `0xfe0eb5...c0aa68` | ⚠️ Unaudited |
| RealitioForeignProxyArbitrum | unknown | ethereum | [`0x4fa89d...9779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | ⚠️ Unaudited |
| RealitioForeignProxyOptimism | unknown | ethereum | 7 deployments: ethereum [`0x46bf68...7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/); ethereum `0x54811e...fe627f`; ethereum `0x890deb...d6770e`; ethereum `0xa353a7...11681a`; ethereum `0xd8b33e...0cd928`; ethereum `0xeafb9c...239a2d`; ethereum `0xf0b37f...9f2044` | ⚠️ Unaudited |
| RealitioForeignProxyPolygon | unknown | ethereum | 3 deployments: ethereum [`0x412c06...692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/); ethereum `0xbbb9a4...f60d36`; ethereum `0xd6bf90...0c6046` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | gnosis | 8 deployments: gnosis [`0x29f39d...fce222`](./contracts/gnosis-100/0x29f39de98d750eb77b5fafb31b2837f079fce222/); gnosis `0x6e30b4...6e4ea5`; gnosis `0x7761d3...c8069b`; gnosis `0x969206...30b69e`; gnosis `0xa0c7c6...be548e`; gnosis `0xe40dd8...a75ecd`; polygon `0x5afa42...86f90e`; polygon `0x68154e...7491dc` | ⚠️ Unaudited |
| RealitioHomeProxyPolygon | unknown | polygon | 4 deployments: polygon [`0x6116e6...e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/); polygon `0xb4fc64...82b2ef`; polygon `0xbc9664...080799`; polygon `0xe69a35...e0d7f6` | ⚠️ Unaudited |
| SBT | unknown | arbitrum | 8 deployments: arbitrum [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/); arbitrum `0x0d41cb...e85e48`; arbitrum `0x2a2f1f...81850b`; arbitrum `0x424956...a5e9b4`; arbitrum `0x650ed9...cf7922`; arbitrum `0xb80fb6...6adf43`; arbitrum `0xbcf80c...2b59ed`; arbitrum `0xcf468c...c78b0b` | ⚠️ Unaudited |
| SortitionModuleNeo | unknown | arbitrum | 6 deployments: arbitrum [`0x0cb362...3cf043`](./contracts/arbitrum-42161/0x0cb3626edf41f27a192102630d0502ccd93cf043/); arbitrum `0x21a940...8dc03d`; arbitrum `0x3f6d0d...c08eee`; arbitrum `0x614498...fb050f`; arbitrum `0x7e13f2...fa0851`; arbitrum `0xf32720...074b95` | ⚠️ Unaudited |
| SortitionSumTreeFactory | registry | ethereum | 3 deployments: ethereum [`0x180eba...dfcb86`](./contracts/ethereum-1/0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86/); ethereum `0x988b3a...e28069`; gnosis `0x7ae716...d561e9` | ⚠️ Unaudited |
| StakingRewardsFactory | registry | ethereum | [`0xa27bfe...8b208f`](./contracts/ethereum-1/0xa27bfea336bc7058ff1297eeff2732389f8b208f/) | ⚠️ Unaudited |
| StarNFTV4 | token | arbitrum | [`0xfe34a7...e34d63`](./contracts/arbitrum-42161/0xfe34a72c55e512601e7d491a9c5b36373ce34d63/) | ⚠️ Unaudited |
| TokenDecimalsView | token | ethereum | [`0x591870...33dfe8`](./contracts/ethereum-1/0x5918705f9a172d5caabbd2e2ddb5086ae033dfe8/) | ⚠️ Unaudited |
| TokensViewV3 | token | ethereum | 2 deployments: ethereum [`0x08cc5a...ac4474`](./contracts/ethereum-1/0x08cc5a88ce4a0d047ba21c523240c2b8d1ac4474/); ethereum `0x950722...e5eea6` | ⚠️ Unaudited |
| TransactionBatcher | periphery | gnosis | 9 deployments: ethereum `0x82458d...9aa8cb`; gnosis [`0x2e0722...ded272`](./contracts/gnosis-100/0x2e0722f132c5648567399ae1aad75d9f0fded272/); gnosis `0x4340f7...012c1e`; gnosis `0x642680...794d46`; gnosis `0x73a76a...d50ba2`; gnosis `0xa73a87...a259d6`; gnosis `0xe0441e...9a61f3`; gnosis `0xedafae...b65ffb`; arbitrum `0xbc5ef8...dea4ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 34 deployments: ethereum [`0x0b3b0c...5100f0`](./contracts/ethereum-1/0x0b3b0ce0471cfcabc7fdc11b6b67201ca35100f0/); ethereum `0x0e7368...0a774c`; ethereum `0x0f8a8d...2ca13e`; ethereum `0x2b639a...7768cb`; ethereum `0x33c2a5...c2d9d7`; ethereum `0x34eaaa...5f5495`; ethereum `0x458418...051832`; ethereum `0x47c776...5bf878`; ethereum `0x4ba719...b1a143`; ethereum `0x4f5871...be7bde`; ethereum `0x5a3304...658d8d`; ethereum `0x6b3d66...ed688a`; ethereum `0x772fbe...c2857e`; ethereum `0x7f0519...01e824`; ethereum `0x93e680...19e2af`; ethereum `0x963d41...8030b6`; ethereum `0xa08e76...52ff21`; ethereum `0xb8ef0b...2f20fc`; ethereum `0xdceae1...87c680`; ethereum `0xddde61...8e6202`; ethereum `0xde2849...f24d78`; ethereum `0xe0e1bc...86ea38`; ethereum `0xe89eef...033373`; ethereum `0xeccae8...ae99d3`; ethereum `0xf50771...dcba81`; gnosis `0x16ebb3...5e425d`; gnosis `0x35a331...3fff3f`; gnosis `0x3828f7...4d85a3`; gnosis `0x6631f1...c05b53`; gnosis `0x70a64a...fe467c`; gnosis `0xacc285...cc96a6`; gnosis `0xb01e36...7bda8c`; gnosis `0xe8bf7b...d98763`; gnosis `0xeaee25...e03ab0` | ⚠️ Unaudited |
| TruthPost | unknown | ethereum | [`0x87aade...a6b454`](./contracts/ethereum-1/0x87aade1067ed0276ec9bef6db8e17abe27a6b454/) | ⚠️ Unaudited |
| UBI | unknown | ethereum | 2 deployments: ethereum [`0x455747...158793`](./contracts/ethereum-1/0x45574741ce337505359cca0d80fa810f49158793/); ethereum `0xdd1ad9...8ce9a4` | ⚠️ Unaudited |
| UBIProxy | unknown | ethereum | [`0x7e40eb...693a09`](./contracts/ethereum-1/0x7e40eb47e66e680aa33d891f7653e1816f693a09/) | ⚠️ Unaudited |
| WrappedPinakion | unknown | gnosis | 2 deployments: gnosis [`0xad1705...ae519b`](./contracts/gnosis-100/0xad17051dba7d6992dab13a0989ecb8e3b2ae519b/); gnosis `0xcb3231...223846` | ⚠️ Unaudited |
| xKlerosLiquid | unknown | gnosis | 2 deployments: gnosis [`0x87e1bf...8f3cf2`](./contracts/gnosis-100/0x87e1bfeb31ac4fa857a08471847122ec338f3cf2/); gnosis `0x9c1da9...5f9002` | ⚠️ Unaudited |
| xKlerosLiquidExtraViews | unknown | gnosis | 4 deployments: gnosis [`0x17ddcc...d1b6d0`](./contracts/gnosis-100/0x17ddccd97f5e17060969b9e89ffd5f98e1d1b6d0/); gnosis `0x1c0d5a...6ec5de`; gnosis `0xa60f46...2cfa78`; gnosis `0xfa71f9...769e4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutoAppealableArbitrator | unknown | gnosis | 5 deployments: gnosis [`0x44ce2d...10ef47`](./contracts/gnosis-100/0x44ce2dd86fa90b7ea9709d11260773cbcf10ef47/); gnosis `0x63941b...73ebbf`; gnosis `0xc6a4f9...8b2be2`; gnosis `0xc8451b...fa542a`; gnosis `0xf0cddb...763f9f` | ⚠️ Unaudited (bytecode match) |
| CurateProxy | unknown | gnosis | 10 deployments: gnosis [`0x0f0797...e9b6d4`](./contracts/gnosis-100/0x0f0797c62a6fbd2f0effedef3de7324449e9b6d4/); gnosis `0x1b44e4...371a65`; gnosis `0x30f3cd...662283`; gnosis `0x45b011...14d37c`; gnosis `0x5a53e5...c0f5e2`; gnosis `0x5dab82...f94bec`; gnosis `0x6767bc...e386ec`; gnosis `0x7b4921...9604c0`; gnosis `0xc0aa0d...fa5a33`; gnosis `0xd3bccd...25327b` | ⚠️ Unaudited (bytecode match) |
| CurateProxySVG | unknown | gnosis | 9 deployments: gnosis [`0x00a854...c0a7ac`](./contracts/gnosis-100/0x00a85425e3b34db15ec22184db6a5a21c0c0a7ac/); gnosis `0x1078cf...c40e49`; gnosis `0x3d03a8...25bc96`; gnosis `0x726584...e60f7d`; gnosis `0x727000...5840f2`; gnosis `0x8167f4...25ce5f`; gnosis `0xaee2f2...a184f4`; gnosis `0xd99a7d...95ab94`; gnosis `0xda8623...283ba9` | ⚠️ Unaudited (bytecode match) |
| GnosisChainReceiver | unknown | gnosis | 4 deployments: gnosis [`0x0bd46d...28ad9b`](./contracts/gnosis-100/0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b/); gnosis `0x348f27...d135dc`; gnosis `0x44aced...32e3ad`; gnosis `0xee1352...e6036a` | ⚠️ Unaudited (bytecode match) |
| SVG | unknown | gnosis | 4 deployments: gnosis [`0x65d546...e14298`](./contracts/gnosis-100/0x65d546a32d8063bb4b2a1bfe9013a66c89e14298/); gnosis `0x694481...0a3a3b`; gnosis `0xc9672b...d4c85f`; gnosis `0xe71ee4...80c994` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (269)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x07576f...430155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07ff03...6cab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a65b3...159bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b734b...f4f4fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e7ee6...3ecfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f581a...1b3e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x109854...8d053f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1174da...2ab97c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11c028...f84c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14fd11...81d620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x177523...94c9c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19887e...7fdb06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a378b...dcefa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a7fe2...713f92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ce072...1653a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f2854...54f9d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1facf9...af6cec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21ade9...5f2a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25054b...47a85d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26d5ad...2bd392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x283f8c...b7caee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28a03f...e12233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b76f7...c9f633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2bf598...5db87b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e69e8...042898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31c45c...5a761f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35aa65...b386ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x361be2...42efa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3da44c...8704ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3df1cf...6cfd5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ec9d0...6e0658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41c64f...254793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x425160...f34b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4279d1...53716b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43649d...0f25e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x464767...13758f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46dd53...f4b7b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47e30d...0bd1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x483964...bf7623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b306f...4ecba4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c0d9e...ac6f08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c7094...d9f4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4dfbbb...bd3cd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e7628...793559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x52ed77...f8ab04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55a381...7d31f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x580962...796769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x585f3a...48eeeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x593ec8...bf1d98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a67fe...d2ee73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d0a07...f3e8a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e6a18...33e4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67126a...a77bfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x680d3c...ac8831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dba76...9f490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dec89...b0ae92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x707e47...b97af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7316ac...9b2de6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x777c2f...a6ceec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7878f4...a9afea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x789334...8157c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78ab70...e3634c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7aaa3c...87cec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c5f03...fe9884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d5fb1...72dc32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d762a...6732ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e57a7...85ee46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7eb6f3...410bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ec9ad...a1ff59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f33df...a55269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7fe3a6...76eb1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x820327...dc959d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x829fe0...e73b58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x833470...5a901d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83774e...029f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83b061...a9b4cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x840446...57a8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x852976...716d05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8655a8...65aff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87fd22...6ef80d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88257f...b7f979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ae48d...f096bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f77d8...248cf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x903b03...04fe21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90571e...0c7aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90a502...a93293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9354a6...8394be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9463cf...dd7145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x951e43...f412f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x958eac...8e8cc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x965aa0...759caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9725a9...ddb73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9740a7...af938f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97f239...70e8f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9bab15...77024e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa12621...3c0575` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa17c89...0df95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa20764...1c72f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa324cf...2e06b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa4352b...453132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5215c...9c102e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6c17d...73f8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa842a2...71954a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa593b...3d82aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacfd1e...1584d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadb781...1b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaef591...d7735a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf3b9c...aa9767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0a54b...53dec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1c5bf...04b525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2c821...39df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb32bb3...153f5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb452b9...5fa965` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb6f272...d07acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb83dfa...7e9cf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb84da7...77e689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb75a9...572ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbcf85f...079bf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbecf19...6be129` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbff7be...d311e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc04cc9...1d4f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc17450...fbb238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2090b...f67922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2fb95...9a20c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6a387...c179cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8a460...ebcd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9a430...a61797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca063e...d2548c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbca78...510bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd04f24...6e605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9137b...a80540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdadf4f...39d145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdebea9...bb0ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe27768...b89bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4ba04...0e7e2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4c0d9...ca031d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe69338...91569f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8619d...5135e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9509a...ce2104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea09bd...fece05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec558b...40e88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedb83f...30175f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeec71d...4c668d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef3d10...41c3c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1188e...53911b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf12705...ce99cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1b2fd...5c9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2dcbd...8be6cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf70b6a...f8f768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7fd92...589c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfde22b...cba43e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe85e8...5730b8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x006de5...55a23a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x00af44...ecd89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x00fe08...2dc8e4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x03b827...c459bc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x04be1c...e4df5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0767e7...4963b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x089c1d...29f6f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x08d71c...2923a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x09a830...ef9f2b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x09e111...40f5df` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0fc21f...42c97e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x118b61...e5f5bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x11f4cb...abfb79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x13da11...2650eb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x160ffa...f60185` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x18a6a8...03e03d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x18ea9e...01157e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x19060f...85abc4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1909de...3dee88` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x195756...c85b35` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x196489...686bf4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1f73b7...de0c06` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x205a8e...d32096` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x21981d...c6c37f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x23c85d...3e53e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x24c93b...3dc15c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x25d1d2...7f4662` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x28fc1b...92eb74` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x298e71...ca6679` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2b562e...e1e940` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2cff97...3efa40` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2e17ea...43e530` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x330111...eebb77` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3917d5...65a1ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3d9be4...0ff03f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3dd713...f32732` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3e80d3...b2c012` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x457df3...4cc693` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x48b227...4b3ffa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4ea501...6d63a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x506dbe...dbf528` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x561819...b8e5d6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5688fd...a2f694` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x578833...288cc9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x59b5d0...daa282` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5b584a...d604b7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5bb6e3...0f4d2e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x604693...21410d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x64ab34...3e7f81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x67ec83...6e2ce8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x69aa64...a5a801` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6d1cfc...ab4517` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6de7bf...7dcf10` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x76c5c0...41c89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x79107f...aeb4ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x797844...928329` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7bfff6...d8e320` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7ec194...7cbfe0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7ff6ff...529bf0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x808c7b...1dd644` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x82b16d...ec6476` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x897dff...58d8d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8a7201...33111a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8c8fbb...f22f85` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x944424...d244a0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x98d020...1c28cd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9bc20a...641802` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c6ab5...1453de` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9dfc84...7d1fcb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9ffdd4...dd01ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa24695...022b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa2c572...26422f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa3954b...b3cf71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa52b59...dd42ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa5ec29...bcdc7e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa8c431...81c444` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaaf78f...dcaa66` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xadad0f...06c7c8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xadfbb3...9068d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xae1c53...acb2f8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb7cb5b...34e64e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbbb4c0...fbddff` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbc7241...fa7d1c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbca743...68027c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbe7ada...55f7f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbe94dc...57ed63` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc090e4...f0d4c7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc344f4...d0190c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc9358c...7921b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xce4b27...d81491` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd1c4a1...c22579` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd2617f...33bde1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd2d417...bdda31` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd55e91...b2260f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd5af61...b469a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd7eb80...6fef5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd804e2...d4ea2d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xddfe22...138cc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe076c9...2eeadf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe0ed01...c64faa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe14f79...642a0f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe3c7c8...f8dbe4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe78256...8ef15e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeb6ab5...10f42c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xee31c6...f19696` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xee9d02...cfc91a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeebb80...4b3ba9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xef2b2f...13191a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf02c42...901af7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf1404d...389c14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf811c2...35f146` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf8a2d8...f843a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfaef9b...6a0360` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfb00ff...5086f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfcc7fe...459994` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x371aa4...d319bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4066a...0095c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x52d942...2d708a`](./contracts/ethereum-1/0x52d942f5f9c47971499946d83657700ccd2d708a/) | ArbitrableTokenList | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x291b07...39d085`](./contracts/ethereum-1/0x291b079cfeb16de397be079338c43ea21239d085/) | ArbitrableAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7fadd...b5a7e6`](./contracts/ethereum-1/0xb7faddf3ecd2402a7e48cea6d2637d90eeb5a7e6/) | ArbitrablePermissionList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b89e7...c782a4`](./contracts/ethereum-1/0x4b89e798b10478a839ea0abcf86c4b94a3c782a4/) | ArbitrableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe22340...fee97a`](./contracts/ethereum-1/0xe223402e20198d391fe80ec0bbaa0850e1fee97a/) | ArbitrableTCRView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60d968...6da2ed`](./contracts/ethereum-1/0x60d968067655f9e363191883495d2e714f6da2ed/) | ArbitrableTCRViewV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6947b2...d8351a`](./contracts/ethereum-1/0x6947b24415edc40c0ff97b45310380022dd8351a/) | BalanceScaler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38aa21...066b4d`](./contracts/ethereum-1/0x38aa214dc986d0bab53e5861071f3d5a56066b4d/) | BatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92900a...4e4e0c`](./contracts/ethereum-1/0x92900a372ed0f0921a08ea9df158c0aac34e4e0c/) | blockHashNotReturned | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39d123...f35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | BlockHashRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0f0797...e9b6d4`](./contracts/gnosis-100/0x0f0797c62a6fbd2f0effedef3de7324449e9b6d4/) | CurateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x00a854...c0a7ac`](./contracts/gnosis-100/0x00a85425e3b34db15ec22184db6a5a21c0c0a7ac/) | CurateProxySVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f3c3c...2ef81d`](./contracts/arbitrum-42161/0x7f3c3c9f9c6238885d958afa1bcc92f1032ef81d/) | DisputeKitClassic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70b464...a45421`](./contracts/arbitrum-42161/0x70b464be85a547144c72485eba2577e5d3a45421/) | DisputeKitClassicNeoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xae1eed...d9a925`](./contracts/arbitrum-42161/0xae1eed20c125b739b64c948820c61f809ad9a925/) | DisputeKitGated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x788330...c2e47b`](./contracts/arbitrum-42161/0x788330092b9704809c19858e39eb9ac402c2e47b/) | DisputeKitGatedShutter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d3e3f...bbc768`](./contracts/arbitrum-42161/0x9d3e3f1765744c2a1bc6f6088549770444bbc768/) | DisputeKitShutter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3645f9...22c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/) | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3a5fd...be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | DisputeResolverRuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0cfbac...f2a5a2`](./contracts/arbitrum-42161/0x0cfbaca5c72e7ca5ffabe768e135654fb3f2a5a2/) | DisputeTemplateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9378c3...a7166c`](./contracts/gnosis-100/0x9378c3f269f5a3f87956ff8dbf2d83e361a7166c/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/) | EscrowUniversal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fed94...290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/) | EscrowView | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48e052...981eb3`](./contracts/arbitrum-42161/0x48e052b4a6dc4f30e90930f1ceaafd83b3981eb3/) | EvidenceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69a35...e0d7f6`](./contracts/ethereum-1/0xe69a359f5fb27c12e6cf4e75e326329d13e0d7f6/) | ForeignProxyETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98f130...d7a524`](./contracts/ethereum-1/0x98f1309f96044000174a89c2a0e2001ea5d7a524/) | GeneralizedTCRView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2700ed...c86bed`](./contracts/gnosis-100/0x2700ed443fadd750894a5b406c456d78e9c86bed/) | GnosisUBIBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d2062...fd599a`](./contracts/ethereum-1/0x7d206232f7e9e22796f3a2316f2f8a8019fd599a/) | GTCRFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/) | Kleros | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17c39a...98ae89`](./contracts/arbitrum-42161/0x17c39ab53a7072b167a74a85d47b30385c98ae89/) | KlerosCoreNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x85093b...08e324`](./contracts/arbitrum-42161/0x85093b5eda4f2e2e2fedae34da91239d6a08e324/) | KlerosCoreRuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xef719a...2fec95`](./contracts/arbitrum-42161/0xef719a5b3352f607e6c4e17b7e0cdad8322fec95/) | KlerosCoreSnapshotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/) | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b562e...e1e940`](./contracts/ethereum-1/0x2b562ea613ad2f58746935c842d09eb147e1e940/) | KlerosLiquidExtraViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac4330...6e0f67`](./contracts/ethereum-1/0xac43300f2d0c345b716f36853eceb497576e0f67/) | LevelWhitelistedIICO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c6363...719e4a`](./contracts/ethereum-1/0x5c6363cfa9462ae11e22d2a5a0eb15dbb8719e4a/) | LightBatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ce3f8...4eccc8`](./contracts/ethereum-1/0x2ce3f8c16da2bcb45ad0ccbbd82151b0c04eccc8/) | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe82a69...98ccc8`](./contracts/ethereum-1/0xe82a69e939e1ab6dc1868262cfe444f70098ccc8/) | LightGeneralizedTCRView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9ddc8...ee0054`](./contracts/ethereum-1/0xb9ddc813acaf3fd7abc4c16735a09bc1c0ee0054/) | LightGTCRFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc3b5...e8fba2`](./contracts/ethereum-1/0x0bc3b51673dcdf3b45c628066761da7331e8fba2/) | Linguo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x012791...83ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/) | LiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xada8ba...ff618c`](./contracts/ethereum-1/0xada8bade0c52b4fcc70153bbfe37b5bda9ff618c/) | Master | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03a945...5295cc`](./contracts/ethereum-1/0x03a9458d77dd705829fa758c64dbe770385295cc/) | PolicyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x044afe...2fa9d3`](./contracts/arbitrum-42161/0x044afe0069c0fd641bc5f90d9a4218ef0b2fa9d3/) | RandomizerRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0cb362...3cf043`](./contracts/arbitrum-42161/0x0cb3626edf41f27a192102630d0502ccd93cf043/) | SortitionModuleNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x180eba...dfcb86`](./contracts/ethereum-1/0x180eba68d164c3f8c3f6dc354125ebccf4dfcb86/) | SortitionSumTreeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27bfe...8b208f`](./contracts/ethereum-1/0xa27bfea336bc7058ff1297eeff2732389f8b208f/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfe34a7...e34d63`](./contracts/arbitrum-42161/0xfe34a72c55e512601e7d491a9c5b36373ce34d63/) | StarNFTV4 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x591870...33dfe8`](./contracts/ethereum-1/0x5918705f9a172d5caabbd2e2ddb5086ae033dfe8/) | TokenDecimalsView | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08cc5a...ac4474`](./contracts/ethereum-1/0x08cc5a88ce4a0d047ba21c523240c2b8d1ac4474/) | TokensViewV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2e0722...ded272`](./contracts/gnosis-100/0x2e0722f132c5648567399ae1aad75d9f0fded272/) | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87aade...a6b454`](./contracts/ethereum-1/0x87aade1067ed0276ec9bef6db8e17abe27a6b454/) | TruthPost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455747...158793`](./contracts/ethereum-1/0x45574741ce337505359cca0d80fa810f49158793/) | UBI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e40eb...693a09`](./contracts/ethereum-1/0x7e40eb47e66e680aa33d891f7653e1816f693a09/) | UBIProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xad1705...ae519b`](./contracts/gnosis-100/0xad17051dba7d6992dab13a0989ecb8e3b2ae519b/) | WrappedPinakion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x87e1bf...8f3cf2`](./contracts/gnosis-100/0x87e1bfeb31ac4fa857a08471847122ec338f3cf2/) | xKlerosLiquid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 101 |
| upstream | 14 |
| standard_library | 5 |
| needs_review | 238 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
