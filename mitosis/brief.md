# Agentic Audit Brief: Mitosis

⚠️ Lifecycle status: DEAD - TVL dropped 33.4% over 90 days

## Project Overview

- Project: Mitosis (`mitosis`)
- Website: [https://mitosis.org](https://mitosis.org)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-21T18:46:52.023Z
- Pipeline run: v2-pipeline-2026-05-21-b212b0-4cc3
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta, mantle, mode, optimism, scroll
- Contract surface: 161 unique implementations (477 raw deployments)
- DeFi Llama TVL: $1,475,153.90
- On-chain TVL (included contracts): $546,543,591.30
- TVL by chain: Ethereum $391,692,153.12 | Arbitrum $145,273,012.72 | Bsc $9,578,425.45

## Project Description

Mitosis is an onchain capital allocator that aggregates multiple liquid restaking tokens (LRTs) and yield-bearing assets across chains, allowing users to deposit assets into vaults and receive composable, yield-bearing representations (e.g., miweETH, miuniBTC). It provides cross-chain liquidity and yield optimization through a system of vaults, bridges, and staking contracts.

### Architecture

Mitosis Vaults serve as the central hub, accepting deposits of LRTs from the Liquid Restaking Tokens family and minting miTokens. Cross-Chain Bridges enable these assets to move between chains, while Governance contracts control upgrades and parameters across all families.

## Audit Coverage Summary

- Verified implementations audited: 2/124 (1.6%)
- Verified + Unaudited implementations: 122
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 161
- Raw deployments: 477
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $546,543,591.30
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 1.6% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $546,543,591.30 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 1.6% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Cap | unknown | blast | 11 deployments: ethereum `0x451d79...2b16f9`; optimism `0xb883ee...92b1d2`; arbitrum `0x1d28de...c57c56`; arbitrum `0xb883ee...92b1d2`; arbitrum `0xbc986f...b158b2`; arbitrum `0xdd8bea...00d9aa`; linea `0x2bfbb9...f567d4`; linea `0x3cda62...fc0f1f`; linea `0x8f34cf...3ebb4c`; linea `0xcd3287...f33a91`; blast [`0x096430...4169de`](./contracts/blast-81457/0x096430ef0a653c067df32e93ff77090e084169de/) | ✅ Audited |
| CCDMHost | unknown | linea | 2 deployments: arbitrum `0x7671f4...4e0c41`; linea [`0x5bd649...a4b5e2`](./contracts/linea-59144/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (122)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EtherFiRestaker | core_logic | ethereum | 2 deployments: ethereum [`0x1b7a4c...736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/); ethereum `0x3dbe6b...a6d4e2` | ⚠️ Unaudited |
| EzEthToken | token | ethereum | [`0xbf5495...8d2110`](./contracts/ethereum-1/0xbf5495efe5db9ce00f80364c8b423567e58d2110/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x357510...cf4dbe`](./contracts/arbitrum-42161/0x35751007a407ca6feffe80b3cb397736d2cf4dbe/) | ⚠️ Unaudited |
| HypERC20 | token | bsc | [`0x8e1e6b...16caef`](./contracts/bsc-56/0x8e1e6bf7e13c400269987b65ab2b5724b016caef/) | ⚠️ Unaudited |
| XERC20 | token | arbitrum | [`0x241609...cceea5`](./contracts/arbitrum-42161/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |
| ExtensibleVaultWithExtraData | core_logic | bsc | 4 deployments: ethereum `0xdfb48a...c1042d`; bsc [`0x4320e5...b86de9`](./contracts/bsc-56/0x4320e5ae6f08ffcf6175fb558ee4c0ec41b86de9/); bsc `0x6d1703...1a5943`; bsc `0xa5deb1...8df42d` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| brVault | core_logic | ethereum | 2 deployments: ethereum [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/); ethereum `0xc7d81a...8334c7` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | ethereum | 3 deployments: ethereum [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/); ethereum `0xcb674f...36ba8c`; arbitrum `0x84e5c8...c26800` | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | 3 deployments: ethereum [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/); ethereum `0xb7019c...732064`; ethereum `0xfc9268...9d4c36` | ⚠️ Unaudited |
| AddressProvider | registry | ethereum | 2 deployments: ethereum [`0x20ee00...e38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/); ethereum `0x8487c5...e4a848` | ⚠️ Unaudited |
| ATM | unknown | arbitrum | 4 deployments: arbitrum [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/); arbitrum `0xbc33eb...a1b46c`; linea `0x86c4dc...5f6e99`; linea `0xf57104...3ad1b3` | ⚠️ Unaudited |
| AuctionManager | governance | ethereum | 2 deployments: ethereum [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/); ethereum `0xcbf18f...6433a0` | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | 2 deployments: ethereum [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/); ethereum `0xf47187...064d29` | ⚠️ Unaudited |
| AvsOperatorManager | governance | ethereum | 4 deployments: ethereum [`0x2093bb...a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/); ethereum `0xc2743a...6fb5e5`; ethereum `0xdc9e0d...04fae7`; ethereum `0xeda445...419e55` | ⚠️ Unaudited |
| AxelarMintBridge | operational_periphery | ethereum | [`0x2d12e6...0ee126`](./contracts/ethereum-1/0x2d12e622f0c7574a1f05a890bdb6e04e6f0ee126/) | ⚠️ Unaudited |
| BalancerRateProxy | unknown | ethereum | [`0x2c3b8c...4a9ff7`](./contracts/ethereum-1/0x2c3b8c5e98a6e89aaaf21deebf5ff9d08c4a9ff7/) | ⚠️ Unaudited |
| BasicVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/); arbitrum `0xf57104...3ad1b3`; linea `0x877b9e...0a6031` | ⚠️ Unaudited |
| BasicVaultFactory | unknown | linea | 4 deployments: arbitrum `0x3067f3...db328f`; arbitrum `0x3cda62...fc0f1f`; linea [`0x1b3588...8a5f12`](./contracts/linea-59144/0x1b358850978e018be1073e3d40cf55a12b8a5f12/); linea `0xd1945a...780be2` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | ethereum | 22 deployments: ethereum [`0x0109e9...fa5358`](./contracts/ethereum-1/0x0109e9f292516dab3e15efc61811c5e5a7fa5358/); ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec`; optimism `0x5616fe...6821be`; optimism `0xea8edd...da0dd7`; bsc `0xadd585...1abfc2`; mantle `0x6ff000...dbce55`; arbitrum `0x3c09fb...beb0df`; arbitrum `0x73981b...f2a007`; arbitrum `0x7e8cff...53e8ba`; arbitrum `0x96d98f...087b23`; arbitrum `0xbed575...749471`; arbitrum `0xddded3...df94d8`; linea `0x3478de...b5eaa5`; linea `0x56ced4...b08768`; linea `0x6000ed...487e9b`; linea `0x96d6ce...d9ec2d`; blast `0x0817b8...ae31ef`; blast `0x8506fd...3f60a0`; scroll `0xa0eeb4...28bd28` | ⚠️ Unaudited |
| BeaconProxy | unknown | manta | 4 deployments: manta [`0x8735c8...61981e`](./contracts/manta-169/0x8735c80fb5aeff60d35c9d6e663758af7861981e/); mode `0xa30c15...dfa442`; mode `0xbed575...749471`; scroll `0xb9ca61...4308d6` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BNFT | token | ethereum | 2 deployments: ethereum [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/); ethereum `0xad6ad4...c35599` | ⚠️ Unaudited |
| BoringVaultPriceProvider | operational_periphery | ethereum | [`0x130e22...3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | ⚠️ Unaudited |
| brBTC | unknown | ethereum | 2 deployments: ethereum [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/); ethereum `0xac6f8c...e9f7f0` | ⚠️ Unaudited |
| BucketRateLimiter | unknown | linea | 3 deployments: linea [`0x3a1986...5a3975`](./contracts/linea-59144/0x3a19866d5e0fae0ce19adda617f9d2b9fd5a3975/); linea `0x6d2cf7...e7e7af`; linea `0x95f113...c76781` | ⚠️ Unaudited |
| CCDMClient | unknown | arbitrum | 3 deployments: arbitrum [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/); arbitrum `0x8c3bb8...ff522d`; linea `0xbc33eb...a1b46c` | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | 2 deployments: ethereum [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/); ethereum `0x55a67c...b60edc` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | [`0x7c3f1f...465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| Create2Factory | registry | ethereum | [`0x652199...92ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x26542f...dd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/); ethereum `0x6db24e...ba6b64` | ⚠️ Unaudited |
| DelayRedeemRouter | adapter | ethereum | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | 2 deployments: ethereum [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/); ethereum `0x9f4c27...076776` | ⚠️ Unaudited |
| directBTC | unknown | ethereum | 2 deployments: ethereum [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/); ethereum `0xa70099...c0b090` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | 2 deployments: ethereum [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/); ethereum `0x91fd8c...d64500` | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | 8 deployments: ethereum [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/); ethereum `0x204d10...08d17d`; ethereum `0x285418...363446`; ethereum `0x47b091...cc9ebb`; ethereum `0x655bc4...63d5ae`; ethereum `0x8ee512...6779ca`; ethereum `0xbed9c1...7e8259`; ethereum `0xe8239b...5c4572` | ⚠️ Unaudited |
| DummyTokenUpgradeable | token | ethereum | 10 deployments: ethereum [`0x0295e0...a5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/); ethereum `0x20e885...b509ad`; ethereum `0x4e1da7...04081d`; ethereum `0x61ff31...f9a2bf`; ethereum `0x83998e...2d4b28`; ethereum `0xaae009...86fee6`; ethereum `0xabc12e...f04ae8`; ethereum `0xba4f87...65f10e`; ethereum `0xc2455e...f12aa9`; ethereum `0xdc400f...644cf3` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | ethereum | [`0x81be35...31b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | ⚠️ Unaudited |
| EEigenStrategy | core_logic | ethereum | [`0x2f2342...54cf3e`](./contracts/ethereum-1/0x2f2342bd9fca72887f46de9522014f4cd154cf3e/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | 5 deployments: ethereum [`0x1b47a6...eff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/); ethereum `0x35fa16...118ac2`; ethereum `0x46c51d...c369dd`; ethereum `0x5e9035...9e5242`; ethereum `0xe8e55a...22e3e6` | ⚠️ Unaudited |
| EtherFiAdmin | unknown | ethereum | 5 deployments: ethereum [`0x0ef8fa...42d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/); ethereum `0x92c27b...bd3c4c`; ethereum `0x92e2bd...e5927e`; ethereum `0x9d6fc3...7a4aea`; ethereum `0xc0ad77...e93f86` | ⚠️ Unaudited |
| EtherFiAvsOperator | unknown | ethereum | 5 deployments: ethereum [`0x792ef6...e9b44a`](./contracts/ethereum-1/0x792ef6fcae08e76253d13efea481cacb22e9b44a/); ethereum `0xad5074...f2130f`; ethereum `0xdce5ac...4800f2`; ethereum `0xf38098...248f53`; ethereum `0xfba2e9...2466c1` | ⚠️ Unaudited |
| EtherFiAvsOperatorsManager | governance | ethereum | 6 deployments: ethereum [`0x176bfd...e18bbb`](./contracts/ethereum-1/0x176bfd9863c349cc8b21e6cfeb7ae01f33e18bbb/); ethereum `0x2261ef...280138`; ethereum `0x642fb9...0b6583`; ethereum `0x7c37cd...bcf63f`; ethereum `0x91121c...75edcb`; ethereum `0xc2709a...a3d321` | ⚠️ Unaudited |
| EtherfiL1LineaReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x6f149f...94aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/); ethereum `0x755357...48f7c0` | ⚠️ Unaudited |
| EtherfiL1SyncPoolETH | core_logic | ethereum | 3 deployments: ethereum [`0x2c28ae...f50155`](./contracts/ethereum-1/0x2c28aed76d1fa85e1afe42ed476593d6cef50155/); ethereum `0x5cb960...648a39`; ethereum `0xd78987...5da146` | ⚠️ Unaudited |
| EtherfiL2ExchangeRateProvider | unknown | linea | 5 deployments: linea [`0x22c498...30f5dc`](./contracts/linea-59144/0x22c498b5c42c787c790f8f1fcef50b33a830f5dc/); linea `0x241a91...518344`; linea `0x52c422...96623b`; linea `0x5e9035...9e5242`; linea `0xc42853...087dcb` | ⚠️ Unaudited |
| EtherfiL2LineaSyncPoolETH | unknown | linea | 2 deployments: linea [`0x6b8717...f4c4d7`](./contracts/linea-59144/0x6b87179032f769f7ffc1c9f98da4c985b5f4c4d7/); linea `0x823106...6d9cca` | ⚠️ Unaudited |
| EtherFiNode | unknown | ethereum | 10 deployments: ethereum [`0x191a8f...8155c7`](./contracts/ethereum-1/0x191a8f7f67fdfc695f46d3d8e8422f4d848155c7/); ethereum `0x52bbf2...54e3c0`; ethereum `0x6b5c61...c929bc`; ethereum `0x8dac64...43ed6a`; ethereum `0x942ced...8f4748`; ethereum `0x9f0ae0...982da9`; ethereum `0xa4ab5e...b7583d`; ethereum `0xab47d7...fbe70d`; ethereum `0xb737e9...bf19c3`; ethereum `0xfca266...c695ae` | ⚠️ Unaudited |
| EtherFiNodesManager | governance | ethereum | 11 deployments: ethereum [`0x0c5631...b69295`](./contracts/ethereum-1/0x0c5631727ecf13f3e726bc3301e364af51b69295/); ethereum `0x20f2a7...ee9073`; ethereum `0x2b7790...120655`; ethereum `0x812e3d...57bfaa`; ethereum `0x8e35d6...aa26f5`; ethereum `0x997c54...1009f7`; ethereum `0xd90c56...725fda`; ethereum `0xf710e9...8f5142`; ethereum `0xf8208a...9f0625`; ethereum `0xfa7ab3...a1c319`; ethereum `0xfdb118...8747fb` | ⚠️ Unaudited |
| EtherFiOFTAdapter | adapter | ethereum | 2 deployments: ethereum [`0x361a67...d10289`](./contracts/ethereum-1/0x361a67a81a4694612004fa79e23ea8e307d10289/); ethereum `0xfe7fe0...cf7d0d` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
| EtherFiOperationParameters | unknown | ethereum | 3 deployments: ethereum [`0x901043...605945`](./contracts/ethereum-1/0x901043448d918af3761d6b04e6f6882733605945/); ethereum `0xd0ff89...fead1a`; ethereum `0xd6e217...fd1c6a` | ⚠️ Unaudited |
| EtherFiOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x57aaf0...bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/); ethereum `0x5bb017...4d809b`; ethereum `0x698cb4...781d9a`; ethereum `0x7997cf...2e7eaa`; ethereum `0x99be55...377b70`; ethereum `0x9b9608...9f22f4`; ethereum `0xde31e6...7f3d5b` | ⚠️ Unaudited |
| EtherFiStaking | unknown | ethereum | 3 deployments: ethereum [`0x1a7158...032a38`](./contracts/ethereum-1/0x1a71588f1a429cb740ae0ecb47c9749373032a38/); ethereum `0x857b4f...d16f8b`; ethereum `0xb6b4a4...6c7d36` | ⚠️ Unaudited |
| EtherFiTimelock | governance | ethereum | [`0x9f26d4...d20761`](./contracts/ethereum-1/0x9f26d4c958fd811a1f59b01b86be7dffc9d20761/) | ⚠️ Unaudited |
| EtherFiViewer | periphery | ethereum | 13 deployments: ethereum [`0x0fb6cc...f85fe7`](./contracts/ethereum-1/0x0fb6ccbae1360dc1c3c256349d56a3d3f4f85fe7/); ethereum `0x19c10a...0594d7`; ethereum `0x26a2ca...79c22a`; ethereum `0x2ecd15...2fab81`; ethereum `0x5573d6...e77fa8`; ethereum `0x6827bf...09b710`; ethereum `0x683840...2430c1`; ethereum `0x83dd4b...c43c7f`; ethereum `0x97176e...de57e9`; ethereum `0xa6c706...98f223`; ethereum `0xa9094e...acb147`; ethereum `0xb619f9...6dd42c`; ethereum `0xd88f3f...89fed3` | ⚠️ Unaudited |
| FBTCProxy | unknown | ethereum | [`0xa3a30f...85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x818116...d4cf3c`](./contracts/ethereum-1/0x8181164cb98cab2f6a52283da6f149cdf2d4cf3c/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | mode | 3 deployments: optimism `0xce0d51...2e7fa6`; mode [`0x978fc4...032701`](./contracts/mode-34443/0x978fc40b817fc9613c0e73db2114e29a2d032701/); arbitrum [`0x978fc4...032701`](./contracts/arbitrum-42161/0x978fc40b817fc9613c0e73db2114e29a2d032701/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | [`0x213e5f...aa3bdb`](./contracts/mantle-5000/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x332754...ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/); ethereum `0x595677...9a29a5` | ⚠️ Unaudited |
| L1ModeReceiverETH | unknown | ethereum | 2 deployments: ethereum [`0x3b099b...6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/); ethereum `0xf68f84...9d3d60` | ⚠️ Unaudited |
| L1ModeReceiverETHUpgradeable | unknown | ethereum | 6 deployments: ethereum [`0x27e120...5985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/); ethereum `0x40819e...6311ca`; ethereum `0x8963c9...ccbc37`; ethereum `0xc8ad09...e1696f`; ethereum `0xefc323...cf2e8f`; ethereum `0xfab5f2...425ed1` | ⚠️ Unaudited |
| L1SyncPoolETH | core_logic | ethereum | 2 deployments: ethereum [`0x33757a...f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/); ethereum `0x39272e...d334c0` | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LiFiMigrationHelper | unknown | linea | 16 deployments: arbitrum `0x373c48...d4ec6d`; arbitrum `0x72fb06...be74f2`; arbitrum `0x8c6653...bb00cb`; arbitrum `0x91c1f4...e81a67`; arbitrum `0xbb4b50...8fc38b`; arbitrum `0xedaaf2...bc320a`; arbitrum `0xf95d42...b98f2f`; arbitrum `0xfe5c7e...519f99`; linea [`0x03d020...d2c275`](./contracts/linea-59144/0x03d020ebf629e771542bd6e02543514deed2c275/); linea `0x34a40e...5f5923`; linea `0x4e2293...1690ea`; linea `0x632829...cbdb0a`; linea `0x666402...d83b73`; linea `0x6e4b3f...13f425`; linea `0xb73676...0eb065`; linea `0xbb4b50...8fc38b` | ⚠️ Unaudited |
| LiquidityPool | core_logic | ethereum | 12 deployments: ethereum [`0x02656f...bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/); ethereum `0x11858b...21cf63`; ethereum `0x308861...daf216`; ethereum `0x403ba4...310cef`; ethereum `0x4d784a...d93860`; ethereum `0x605f17...426399`; ethereum `0x72481f...b97f4a`; ethereum `0x833514...3cc0b8`; ethereum `0xa8a8be...4ffb1f`; ethereum `0xcef428...cfc474`; ethereum `0xd27a57...1f5a8b`; ethereum `0xe86922...a5eb79` | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | 11 deployments: ethereum [`0x2225c9...6b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/); ethereum `0x48276d...9f78f8`; ethereum `0x5769ff...395455`; ethereum `0x61e2ca...3f296a`; ethereum `0x6b6d4e...6bacdf`; ethereum `0x82c12f...31c4b8`; ethereum `0x9ffdf4...ef764f`; ethereum `0xb27b1d...1f02c1`; ethereum `0xc22c7f...87e691`; ethereum `0xe41aea...e33f72`; ethereum `0xfdb757...f8ce41` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | ethereum | 2 deployments: ethereum [`0x1d716d...f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/); ethereum `0x316554...f4ee24` | ⚠️ Unaudited |
| LRTSquare | unknown | ethereum | 2 deployments: ethereum [`0x3d987e...9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/); ethereum `0xa838b3...03ec54` | ⚠️ Unaudited |
| LRTSquared | unknown | ethereum | 2 deployments: ethereum [`0x138f08...ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/); ethereum `0xee179d...575b54` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | ethereum | [`0xd2b8c7...d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | ⚠️ Unaudited |
| LRTSquaredCore | unknown | ethereum | 2 deployments: ethereum [`0x1cb489...1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/); ethereum `0x8f08b7...8e6040` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | unknown | manta | [`0x77b6f9...1c2300`](./contracts/manta-169/0x77b6f99970f488cfa8bd41892900b6ce881c2300/) | ⚠️ Unaudited |
| MembershipManager | governance | ethereum | 4 deployments: ethereum [`0x047a77...f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/); ethereum `0x190f44...a3cfee`; ethereum `0x3d3202...3e3000`; ethereum `0xb27e1b...de3b84` | ⚠️ Unaudited |
| MembershipNFT | token | ethereum | 5 deployments: ethereum [`0x290d98...307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/); ethereum `0x7106e8...6d29dc`; ethereum `0x79ef32...f98c0a`; ethereum `0xb49e44...27e479`; ethereum `0xe6179d...b144dd` | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | linea | [`0x04c059...6c150a`](./contracts/linea-59144/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/) | ⚠️ Unaudited |
| MitosisHypERC20 | token | base | 2 deployments: base [`0x747a3d...809c55`](./contracts/base-8453/0x747a3d7a65bd105e058f6ceca1af5a530b809c55/); base `0x8a7f54...97a98b` | ⚠️ Unaudited |
| MockEtherFiAdmin | unknown | ethereum | 2 deployments: ethereum [`0x0c4a8a...3d63c4`](./contracts/ethereum-1/0x0c4a8aa58885402db92c2a0d3d748265ce3d63c4/); ethereum `0x46c4ab...cc29a8` | ⚠️ Unaudited |
| MultiBridgeToken | unknown | scroll | 2 deployments: arbitrum `0x3d15fd...e2c3a0`; scroll [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| NetworkRestakeResetHook | core_logic | ethereum | 3 deployments: ethereum [`0x274bbd...cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/); ethereum `0xa2f5e6...1082ae`; ethereum `0xc55cfc...af280a` | ⚠️ Unaudited |
| NFTExchange | token | ethereum | 3 deployments: ethereum [`0x200057...d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/); ethereum `0x6494c1...a41042`; ethereum `0x7c8efd...1e4543` | ⚠️ Unaudited |
| NodeOperatorManager | governance | ethereum | 2 deployments: ethereum [`0xd5edf7...54e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/); ethereum `0xfcc674...ee2caf` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | optimism | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | 2 deployments: ethereum [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/); ethereum `0x7e8e03...288f20` | ⚠️ Unaudited |
| PreOrder | unknown | ethereum | 2 deployments: ethereum [`0x8b7a14...97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/); ethereum `0xb98331...05dcd2` | ⚠️ Unaudited |
| PriceProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x28a6e7...c1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/); ethereum `0x2b9010...0f19e3` | ⚠️ Unaudited |
| ProtocolRevenueManager | governance | ethereum | [`0xaf8749...e0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 3 deployments: ethereum `0x9f6326...e7f002`; arbitrum [`0x5bd649...a4b5e2`](./contracts/arbitrum-42161/0x5bd64950b2885070e172d01e49b69842a5a4b5e2/); linea `0xb883ee...92b1d2` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | 3 deployments: ethereum [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/); ethereum `0x981692...1d3b8d`; ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| RefundUSDC | unknown | arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | ⚠️ Unaudited |
| RegulationsManager | governance | ethereum | 3 deployments: ethereum [`0x1fcb83...2cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/); ethereum `0x8d671a...92920c`; ethereum `0xbd23ff...35f4de` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | 8 deployments: ethereum [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/); ethereum `0x1e4d0a...c4e518`; ethereum `0x3f4eac...6e9850`; ethereum `0x4d6c23...7a9f04`; ethereum `0x595994...a0fa96`; ethereum `0x9c8725...a5f412`; ethereum `0x9cfbf2...d665d6`; ethereum `0xad8bd6...62b96a` | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | 6 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d`; ethereum `0x79f2c3...449597`; ethereum `0x8a9486...98e590`; ethereum `0xd48d3e...905e11`; ethereum `0xf1376b...df51f4` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | 6 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9`; ethereum `0x876868...7de595`; ethereum `0x89b2c7...740aeb`; ethereum `0xbc48e8...33d03d`; ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | 2 deployments: ethereum [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/); ethereum `0xbb879a...241ab5` | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | 22 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x0bd74c...2d97bd`; ethereum `0x10f91a...7723dc`; ethereum `0x11b380...66be7b`; ethereum `0x1df46e...90ad93`; ethereum `0x3e904a...33eab5`; ethereum `0x3f924b...e5791b`; ethereum `0x413c36...4d1247`; ethereum `0x56adf8...c334db`; ethereum `0x5c9b33...02cfd7`; ethereum `0x5e8fd0...618ae0`; ethereum `0x62cea4...f1ca61`; ethereum `0x680d9f...40f565`; ethereum `0x774c97...f2070d`; ethereum `0x90687a...2fc487`; ethereum `0x9a74f7...630560`; ethereum `0x9ba573...f7c757`; ethereum `0x9c3749...88d6b2`; ethereum `0xc2cba4...221923`; ethereum `0xc92a22...cd0bde`; ethereum `0xd4408c...c779e8`; ethereum `0xf35df2...28a09d` | ⚠️ Unaudited |
| SafeL2 | unknown | scroll | [`0x213e5f...aa3bdb`](./contracts/scroll-534352/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | 3 deployments: bsc [`0x213e5f...aa3bdb`](./contracts/bsc-56/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); linea [`0x213e5f...aa3bdb`](./contracts/linea-59144/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/); blast [`0x213e5f...aa3bdb`](./contracts/blast-81457/0x213e5f064f2c14b2fd587a5978291ed3e1aa3bdb/) | ⚠️ Unaudited |
| SEthFiStrategy | core_logic | ethereum | [`0x76c57e...805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | ⚠️ Unaudited |
| Sigma | unknown | ethereum | 3 deployments: ethereum [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/); arbitrum `0x1f6c2e...257b5a`; arbitrum `0x8cc6d6...853915` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 3 deployments: ethereum [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/); ethereum `0xa20caf...d9a8de`; ethereum `0xd96849...ff31b1` | ⚠️ Unaudited |
| StakingManager | governance | ethereum | 3 deployments: ethereum [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/); ethereum `0xb27d4e...d5868f`; ethereum `0xe55eac...008c69` | ⚠️ Unaudited |
| Swapper1InchV6 | adapter | ethereum | [`0x747cac...52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ⚠️ Unaudited |
| TheoDepositVault | core_logic | arbitrum | 8 deployments: ethereum `0x0b75e1...eaa2fa`; arbitrum [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/); arbitrum `0x263b7b...55da11`; arbitrum `0x3ca8f1...319009`; arbitrum `0x54602e...2cee34`; linea `0x3ca8f1...319009`; linea `0xca538a...27630f`; linea `0xcf101e...95b28c` | ⚠️ Unaudited |
| TheoVaultRoundsTracker | core_logic | arbitrum | 4 deployments: arbitrum [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/); arbitrum `0x7ca71e...4e8225`; arbitrum `0xa3819f...4bd9c3`; arbitrum `0xcf101e...95b28c` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xf4954a...755024`](./contracts/ethereum-1/0xf4954ae0f18b236b643a4bf126e743f23f755024/) | ⚠️ Unaudited |
| TNFT | token | ethereum | 3 deployments: ethereum [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/); ethereum `0xafb82c...1afea7`; ethereum `0xd60ec8...0277c7` | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | scroll | 5 deployments: manta `0xb883ee...92b1d2`; mode `0x04c059...6c150a`; mode `0xb883ee...92b1d2`; scroll [`0x01f0a3...a1c506`](./contracts/scroll-534352/0x01f0a31698c4d065659b9bdc21b3610292a1c506/); scroll `0xcd3287...f33a91` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | 8 deployments: ethereum [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/); ethereum `0x38a3e2...6234e7`; ethereum `0x3f310c...44c5bd`; ethereum `0x51a7f8...db6c5e`; ethereum `0x780a69...f375c5`; optimism `0x939197...2b593e`; arbitrum `0x6b2a01...bd726a`; arbitrum `0x94c7f8...cce2b3` | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | 2 deployments: ethereum [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/); ethereum `0xf50dba...bcdae9` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 5 deployments: ethereum [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/); ethereum `0x317b8e...876ef6`; ethereum `0x472372...108e45`; arbitrum `0x08cb45...46775d`; arbitrum `0xfa8c3e...f41e5f` | ⚠️ Unaudited |
| VaultHub | core_logic | arbitrum | 4 deployments: arbitrum [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/); arbitrum `0xcd3287...f33a91`; linea `0x7671f4...4e0c41`; linea `0x8c3bb8...ff522d` | ⚠️ Unaudited |
| VaultKeeper | operational_periphery | arbitrum | 7 deployments: arbitrum [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); arbitrum `0x83c6ac...ec19b4`; arbitrum `0xbb691e...9018fb`; arbitrum `0xd2b24b...7516d3`; linea [`0x7401ac...8356e1`](./contracts/linea-59144/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/); linea `0xab3151...2a1d85`; linea `0xda7371...ff362f` | ⚠️ Unaudited |
| WeETH | unknown | ethereum | 3 deployments: ethereum [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/); ethereum `0xdd7835...b08f79`; ethereum `0xe629ee...e7d5d9` | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WithdrawRequestNFT | operational_periphery | ethereum | 3 deployments: ethereum [`0x3ed97c...0a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/); ethereum `0x7d5706...9d4e2c`; ethereum `0xdaaac9...008ca7` | ⚠️ Unaudited |
| wstETH_Burner | unknown | ethereum | [`0xa7581e...9b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x4af6c5711171de95d5134056abc12b89d84d209f) | proxy | ethereum | `0x8e4304...e37638` | ❓ Unverified |
| Proxy (impl: 0xc8160b38f1bfc64cd2c6cfc78288204fa00569ca) | proxy | ethereum | `0x6d20bb...76aea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e346c...61085e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x309696...888b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4af6c5...4d209f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56ea97...2f999e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69fd3e...21bbdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac3977...79f4d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8160b...0569ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf75cf7...e31953` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x04af63...e58638` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f99b9...9a55e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x361a4d...404968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6712a3...1c9924` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x67c90f...4dd83a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77ef79...252eb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a6abd...170ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9002d8...c606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1958f...4538f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa79f1f...ff136b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1945a...780be2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeaf024...9501d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee518a...d418a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf781ac...c3cca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf91d94...f1c2d2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x13cad3...56aab4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1d28de...c57c56` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x20ee00...e38cc7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4a6219...5ea382` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x60be06...238755` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9b6544...cf42e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfd503f...04402c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x0b75e1...eaa2fa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x54602e...2cee34` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xb9e834...b86690` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xcf101e...95b28c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---:|---|
| [Introduction](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8) | Code4rena | Contest | 2024-04 | stale | Direct | contract_name | 7 | low |
| [: The audit report from [Zellic](https://www.zellic.io/) can be found [here](). (also discovered via alternate URL)](https://github.com/mitosis-org/protocol/blob/main/audits/2025-05-22_Zellic_Mainnet.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-09-21_Zenith_Protocol.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-09-21_Zenith_Protocol.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x357510...cf4dbe`](./contracts/arbitrum-42161/0x35751007a407ca6feffe80b3cb397736d2cf4dbe/) | StandardArbERC20 | token | $139,683,465.90 | Verified native implementation with $139,683,465.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | RewardPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20ee00...e38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13cad3...56aab4`](./contracts/arbitrum-42161/0x13cad3aa86df1233dc9930a8f88f43237056aab4/) | ATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | AuctionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | AvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x472edc...86e584`](./contracts/arbitrum-42161/0x472edca59afdb7dd4ade8d92caca1ebc2586e584/) | BasicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | BNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130e22...3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | BoringVaultPriceProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x877b9e...0a6031`](./contracts/arbitrum-42161/0x877b9ea7ce0358ef7982b2967ae7e538530a6031/) | CCDMClient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26542f...dd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | DelayRedeemRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | depositRootGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | directBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | DirectBTCMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | DirectStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ef6...e9b44a`](./contracts/ethereum-1/0x792ef6fcae08e76253d13efea481cacb22e9b44a/) | EtherFiAvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176bfd...e18bbb`](./contracts/ethereum-1/0x176bfd9863c349cc8b21e6cfeb7ae01f33e18bbb/) | EtherFiAvsOperatorsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x191a8f...8155c7`](./contracts/ethereum-1/0x191a8f7f67fdfc695f46d3d8e8422f4d848155c7/) | EtherFiNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5631...b69295`](./contracts/ethereum-1/0x0c5631727ecf13f3e726bc3301e364af51b69295/) | EtherFiNodesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f26d4...d20761`](./contracts/ethereum-1/0x9f26d4c958fd811a1f59b01b86be7dffc9d20761/) | EtherFiTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fb6cc...f85fe7`](./contracts/ethereum-1/0x0fb6ccbae1360dc1c3c256349d56a3d3f4f85fe7/) | EtherFiViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | globalIndexLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x03d020...d2c275`](./contracts/linea-59144/0x03d020ebf629e771542bd6e02543514deed2c275/) | LiFiMigrationHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02656f...bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | LiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2225c9...6b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | Liquifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d716d...f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | LoyaltyPointsMarketSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138f08...ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | LRTSquared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2b8c7...d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | LRTSquaredAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb489...1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | LRTSquaredCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047a77...f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | MembershipManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d98...307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | MembershipNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x04c059...6c150a`](./contracts/linea-59144/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/) | MintableOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4a8a...3d63c4`](./contracts/ethereum-1/0x0c4a8aa58885402db92c2a0d3d748265ce3d63c4/) | MockEtherFiAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274bbd...cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | NetworkRestakeResetHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x346e03...0e08f0`](./contracts/optimism-10/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | PodOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7a14...97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | PreOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a6e7...c1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | PriceProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8749...e0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ProtocolRevenueManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c691...f38c17`](./contracts/arbitrum-42161/0x74c6913c268d929ae06bafc3071fadd079f38c17/) | RefundUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fcb83...2cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | RegulationsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76c57e...805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | SEthFiStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01f90a...43381d`](./contracts/arbitrum-42161/0x01f90a7b1c749f4a0b7d115120deda0e2343381d/) | TheoDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4d11a4...9e87ce`](./contracts/arbitrum-42161/0x4d11a4ba2ded004c3fe5560a029050326d9e87ce/) | TheoVaultRoundsTracker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | TNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x01f0a3...a1c506`](./contracts/scroll-534352/0x01f0a31698c4d065659b9bdc21b3610292a1c506/) | TransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a6219...5ea382`](./contracts/arbitrum-42161/0x4a6219e25a41fd4165fbd158d89723a7175ea382/) | VaultHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7401ac...8356e1`](./contracts/arbitrum-42161/0x7401ac8661bf6b1f14fbec4bdab338fcdf8356e1/) | VaultKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ed97c...0a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | WithdrawRequestNFT | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7581e...9b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | wstETH_Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 16 |
| standard_library | 34 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=7

Zero-match audit list:

- [1322] : The audit report from [Zellic](https://www.zellic.io/) can be found [here]().
- [1324] 2025-09-21_Zenith_Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
