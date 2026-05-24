# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: active (Tier 0, 71.5% below peak)
- Generated: 2026-05-24T15:09:27.708Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 174 unique implementations (315 raw deployments)
- DeFi Llama TVL: $2,077,487.14
- On-chain TVL (included contracts): $230,743,534.41
- TVL by chain: Ethereum $230,725,343.87 | Polygon $18,190.54

## Project Description

Decentralized Euro is a collateralized debt position (CDP) protocol that issues EUR-pegged stablecoins against various crypto assets. It also provides savings vaults, cross-chain bridges, and governance tokens to manage the system.

### Architecture

The Decentralized Euro Core family provides the foundational CDP and stablecoin logic, while the Active EUR Stablecoin Bridges family extends it cross-chain. SavingsVault, MintingHub, PositionFactory, and PositionRoller families interact with the core to manage vaults, minting, and positions, and the DEPS/nDEPS tokens serve as governance and equity across the system.

## Audit Coverage Summary

- Verified implementations audited: 11/126 (8.7%)
- Verified + Unaudited implementations: 115
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 174
- Raw deployments: 315
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $230,743,534.41
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 8.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 8.7% | 2025-04 |
| unknown | Tier 2 | 8 | 6.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DecentralizedEURO | unknown | ethereum | [`0xba3f53...e0a3ea`](./contracts/ethereum-1/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea/) | ✅ Audited |
| DEPSWrapper | unknown | ethereum | [`0x103747...ffa380`](./contracts/ethereum-1/0x103747924e74708139a9400e4ab4bea79fffa380/) | ✅ Audited |
| Equity | unknown | ethereum | 2 deployments: ethereum [`0x1ba267...e341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/); ethereum `0xc71104...fe8ee6` | ✅ Audited |
| FrontendGateway | unknown | ethereum | [`0x5c49c0...180994`](./contracts/ethereum-1/0x5c49c00f897bd970d964bfb8c3065ae65a180994/) | ✅ Audited |
| MintingHub | unknown | ethereum | [`0x66acc5...684f7b`](./contracts/ethereum-1/0x66acc54a0c64255137b8993cb4972b0901684f7b/) | ✅ Audited |
| MintingHubGateway | unknown | ethereum | [`0x8b3c41...604618`](./contracts/ethereum-1/0x8b3c41c649b9c7085c171cbb82337889b3604618/) | ✅ Audited |
| PositionFactory | registry | ethereum | 2 deployments: ethereum [`0x167144...1ee5a8`](./contracts/ethereum-1/0x167144d66ac1d02eaafca3649ef3305ea31ee5a8/); ethereum `0x3a3985...defe81` | ✅ Audited |
| PositionRoller | unknown | ethereum | 2 deployments: ethereum [`0x4ce0ab...57dc79`](./contracts/ethereum-1/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79/); ethereum `0x5c22d5...f7c5cd` | ✅ Audited |
| Savings | unknown | ethereum | 2 deployments: ethereum [`0x760233...90d3d9`](./contracts/ethereum-1/0x760233b90e45d186a9a98e911b115f7f4b90d3d9/); ethereum `0xfd2ccc...2670f9` | ✅ Audited |
| SavingsGateway | unknown | ethereum | [`0x073493...972303`](./contracts/ethereum-1/0x073493d73258c4beb6542e8dd3e1b2891c972303/) | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | 14 deployments: ethereum [`0x0423f4...1d5d2a`](./contracts/ethereum-1/0x0423f419de1c44151b6b000e2daa51859c1d5d2a/); ethereum `0x05620f...771702`; ethereum `0x20b0a1...19f1a7`; ethereum `0x2353d1...2c609f`; ethereum `0x3ed40f...9e1fee`; ethereum `0x3ef3d0...630341`; ethereum `0x4dfd46...3a13b1`; ethereum `0x73f38c...4f5897`; ethereum `0x76d8f5...43692b`; ethereum `0x7f5173...4f2e11`; ethereum `0xb4ff74...092fd1`; ethereum `0xb66a40...8c9afe`; ethereum `0xd03cd3...182dbe`; ethereum `0xdc6450...be0130` | ✅ Audited |

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EURSToken | token | ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| Stablecoin | token | ethereum | 2 deployments: ethereum [`0x039a26...d6712d`](./contracts/ethereum-1/0x039a26c8239d6d0c8d8fbdc6e60a6cc465d6712d/); ethereum `0x9d1a7a...dcbae7` | ⚠️ Unaudited |
| HadronToken | token | ethereum | [`0x50753c...91e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | ⚠️ Unaudited |
| EUROPToken | token | ethereum | 2 deployments: ethereum [`0x888883...0e5e51`](./contracts/ethereum-1/0x888883b5f5d21fb10dfeb70e8f9722b9fb0e5e51/); ethereum `0xfbdaf9...2cff43` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 2 deployments: ethereum [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/); ethereum `0xdac17f...831ec7` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | ethereum | 2 deployments: ethereum [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/); ethereum `0x75beb3...612979` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | ethereum | 16 deployments: ethereum [`0x1b396a...654463`](./contracts/ethereum-1/0x1b396aee50bb55ceb5e316996fc86b360f654463/); ethereum `0x1bece8...ad18b1`; ethereum `0x241d75...623679`; ethereum `0x72ac07...440b91`; ethereum `0x73aaf8...5f227b`; ethereum `0x7e54d1...373f77`; ethereum `0x874eb5...59fd1a`; ethereum `0x88fe06...0f995a`; ethereum `0x8e2277...e6add0`; ethereum `0x913e8e...85094c`; ethereum `0x96de5c...f8868a`; ethereum `0x9ffc8a...26a001`; ethereum `0xae4d5a...3346a7`; ethereum `0xba018e...c68f3a`; ethereum `0xca2d79...c3dec1`; ethereum `0xe1c084...b9ee58` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0xc2ff25...f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | ⚠️ Unaudited |
| StakeDAOFRAXBPStaker | core_logic | ethereum | [`0xa9d2ee...1dcb26`](./contracts/ethereum-1/0xa9d2eea75c80ff9669cc998c276ff26d741dcb26/) | ⚠️ Unaudited |
| ConvexFRAXBPStaker | core_logic | ethereum | [`0xc68421...c0331e`](./contracts/ethereum-1/0xc68421f20bf6f0eb475f00b9c5484f7d0ac0331e/) | ⚠️ Unaudited |
| StETHStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x3899d9...8a5b6f`](./contracts/ethereum-1/0x3899d92041401eb127886689924d637fc28a5b6f/); ethereum `0x41a65a...72758e` | ⚠️ Unaudited |
| AaveFlashloanStrategy | core_logic | ethereum | 2 deployments: ethereum [`0x1f847f...bff81f`](./contracts/ethereum-1/0x1f847fd5e08fb559a69280a14e7e904e6dbff81f/); ethereum `0x9fbbcb...a847aa` | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| AgToken | token | ethereum | 3 deployments: ethereum [`0x7a19a7...a7644e`](./contracts/ethereum-1/0x7a19a7f19b664ee8bee9ae5f7db5005eaaa7644e/); ethereum `0xa61beb...1125b4`; ethereum `0xe59d2c...5b919b` | ⚠️ Unaudited |
| AgTokenIntermediateUpgrade | token | ethereum | [`0xb44c57...ac521c`](./contracts/ethereum-1/0xb44c57a274bf5737873236f218b0c70c4aac521c/) | ⚠️ Unaudited |
| AgTokenSideChain | token | ethereum | 2 deployments: ethereum [`0x5f2718...18a290`](./contracts/ethereum-1/0x5f27184fa83fe0e5aef2344b6d9eb3bd2118a290/); ethereum `0xe87634...d172a6` | ⚠️ Unaudited |
| Airdrop | operational_periphery | ethereum | [`0x381a81...ef85a2`](./contracts/ethereum-1/0x381a815b112a394f27121e2a99e86f88b1ef85a2/) | ⚠️ Unaudited |
| AMOMinter | unknown | ethereum | 2 deployments: ethereum [`0xaf1243...7fd804`](./contracts/ethereum-1/0xaf12439c786d5c3b629da519491a8168627fd804/); ethereum `0xec876e...952f84` | ⚠️ Unaudited |
| ANGLE | unknown | ethereum | [`0x31429d...e214c2`](./contracts/ethereum-1/0x31429d1856ad1377a8a0079410b297e1a9e214c2/) | ⚠️ Unaudited |
| AngleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x18fdea...80c52f`](./contracts/ethereum-1/0x18fdeaf9ecc8f6c985d73fed10a12f4bf580c52f/); ethereum `0xd9f22a...f8418d` | ⚠️ Unaudited |
| AngleGovernor | governance | ethereum | [`0x748ba9...ca4436`](./contracts/ethereum-1/0x748ba9cd5a5ddba5aba70a4ac861b2413dca4436/) | ⚠️ Unaudited |
| AngleHelpers | periphery | ethereum | 3 deployments: ethereum [`0x1b17ac...4e068e`](./contracts/ethereum-1/0x1b17ac6b8371d63e030c5981891d5fbb3e4e068e/); ethereum `0x4924e9...046ed5`; ethereum `0xa21d90...a1a723` | ⚠️ Unaudited |
| AngleMiddleman | unknown | ethereum | [`0x4b0010...165f13`](./contracts/ethereum-1/0x4b00103802da5f51a9218010a1073ea432165f13/) | ⚠️ Unaudited |
| AngleRouter | adapter | ethereum | 3 deployments: ethereum [`0xbb7552...71561d`](./contracts/ethereum-1/0xbb755240596530be0c1de5dfd77ec6398471561d/); ethereum `0xc28490...2c2dff`; ethereum `0xd8ef81...591a5e` | ⚠️ Unaudited |
| AngleRouterMainnet | adapter | ethereum | 5 deployments: ethereum [`0x042d98...1aad3a`](./contracts/ethereum-1/0x042d98c63f642797c132b3e99c20ff6f751aad3a/); ethereum `0x1b2ffd...36fcd7`; ethereum `0x457970...890930`; ethereum `0x57bc37...bf00ec`; ethereum `0xb3036c...1830aa` | ⚠️ Unaudited |
| BlacklistValidator | unknown | ethereum | [`0x774681...57254e`](./contracts/ethereum-1/0x774681a648125d46f35017cf6cec43a41857254e/) | ⚠️ Unaudited |
| BPAMOJob | unknown | ethereum | 2 deployments: ethereum [`0xa4337d...a9b02f`](./contracts/ethereum-1/0xa4337db04ce4826b234dba22d35b38a124a9b02f/); ethereum `0xaa8787...79e348` | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | optimism | 2 deployments: optimism [`0x1b5f7f...65a264`](./contracts/optimism-10/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/); base [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | ⚠️ Unaudited |
| BridgeStarknet | operational_periphery | ethereum | [`0xf48aa7...cdd9c2`](./contracts/ethereum-1/0xf48aa76b4f2cd71682c05afbccf1ccb444cdd9c2/) | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | ⚠️ Unaudited |
| Convex3CRVStaker | core_logic | ethereum | [`0xbff202...af196c`](./contracts/ethereum-1/0xbff202e3cb58ab0a09b2eb1d9a50352b9aaf196c/) | ⚠️ Unaudited |
| ConvexLUSDv3CRVStaker | core_logic | ethereum | [`0x965082...c35976`](./contracts/ethereum-1/0x9650821b3555fe6318586be997cc0fb163c35976/) | ⚠️ Unaudited |
| Core | unknown | ethereum | [`0x61ed74...30b7c3`](./contracts/ethereum-1/0x61ed74de9ca5796cf2f8fd60d54160d47e30b7c3/) | ⚠️ Unaudited |
| CoreBorrow | core_logic | ethereum | 4 deployments: ethereum [`0x0e632a...e389a6`](./contracts/ethereum-1/0x0e632a15ebcba463151b5367b4fcf91313e389a6/); ethereum `0x3fc5a1...923039`; ethereum `0x4d144b...1461fe`; ethereum `0x5bc6be...ec89be` | ⚠️ Unaudited |
| DiamondCut | unknown | ethereum | [`0x53b7d7...5c2900`](./contracts/ethereum-1/0x53b7d70013dec21a97f216e80eefcf45f25c2900/) | ⚠️ Unaudited |
| DiamondEtherscan | unknown | ethereum | [`0xfa94cd...62cf12`](./contracts/ethereum-1/0xfa94cd9d711de75695693c877beca5473462cf12/) | ⚠️ Unaudited |
| DiamondLoupe | unknown | ethereum | [`0x65ddee...249967`](./contracts/ethereum-1/0x65ddeedf8e68f26d787b678e28af13fde0249967/) | ⚠️ Unaudited |
| DistributionCreator | unknown | ethereum | 3 deployments: ethereum [`0x6a9eb4...e4d27b`](./contracts/ethereum-1/0x6a9eb4a409e6354bcebb0dfaba1eb33eb5e4d27b/); ethereum `0x9b2f11...0a1a4c`; ethereum `0xcf019a...1cf592` | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | [`0xca4702...8788ff`](./contracts/ethereum-1/0xca470209117faae06e3a9113cab684febc8788ff/) | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | ethereum | [`0x5d3483...d39072`](./contracts/ethereum-1/0x5d34839a3d4051f630d36e26698d53c58dd39072/) | ⚠️ Unaudited |
| ERC20Lib | token | ethereum | [`0x57724f...90f509`](./contracts/ethereum-1/0x57724f65b3f914de7820c6f76b2099fa3a90f509/) | ⚠️ Unaudited |
| ERC677Lib | unknown | ethereum | [`0x0d43c5...6f0820`](./contracts/ethereum-1/0x0d43c529aab2a3c1bca65827eb5136c3276f0820/) | ⚠️ Unaudited |
| EUR | unknown | ethereum | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | 3 deployments: ethereum [`0x3c6983...aa4753`](./contracts/ethereum-1/0x3c69835bc56cf4f356cdede634415f847daa4753/); ethereum `0x97b689...1f227f`; ethereum `0xe6d9bd...c3c1c4` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| FlashAngle | unknown | ethereum | 2 deployments: ethereum [`0x4a2ff9...506f7f`](./contracts/ethereum-1/0x4a2ff9bc686a0a23da13b6194c69939189506f7f/); ethereum `0x4e551d...7e52e1` | ⚠️ Unaudited |
| FlashMintLib | unknown | ethereum | [`0x169487...37a373`](./contracts/ethereum-1/0x169487a55de79476125a56b07c36ca8dbf37a373/) | ⚠️ Unaudited |
| FPSWrapper | unknown | ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ⚠️ Unaudited |
| Frankencoin | unknown | ethereum | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ⚠️ Unaudited |
| GenericAaveFraxConvexStaker | core_logic | ethereum | [`0x9354f4...ff854a`](./contracts/ethereum-1/0x9354f45b62c4217652053df752ae7ad2f9ff854a/) | ⚠️ Unaudited |
| GenericAaveFraxStaker | core_logic | ethereum | [`0xf0f2c4...20794f`](./contracts/ethereum-1/0xf0f2c46396e1f5ad07c0cf93f4190974e220794f/) | ⚠️ Unaudited |
| GenericAaveNoStaker | core_logic | ethereum | 5 deployments: ethereum [`0x0e124c...3c34a9`](./contracts/ethereum-1/0x0e124c25253e8ca32117073230a983868b3c34a9/); ethereum `0x53890a...928792`; ethereum `0xa30b7a...a413a4`; ethereum `0xbe67bb...2a56bd`; ethereum `0xe43776...b3f081` | ⚠️ Unaudited |
| GenericCompoundUpgradeable | unknown | ethereum | 5 deployments: ethereum [`0x07d174...87f507`](./contracts/ethereum-1/0x07d174df93bc8e90709846a69d571afcf587f507/); ethereum `0x63dc54...466105`; ethereum `0x6d7ccd...c677ea`; ethereum `0x6e97be...9a9e06`; ethereum `0xe2773f...064ce3` | ⚠️ Unaudited |
| GenericEuler | unknown | ethereum | 5 deployments: ethereum [`0x1f25fa...b3e86a`](./contracts/ethereum-1/0x1f25fabc5bf3f3a185ca051de22511a4e9b3e86a/); ethereum `0x713513...3b6d05`; ethereum `0x7eda38...1ce5da`; ethereum `0xc83650...f634ba`; ethereum `0xced32e...2d64d7` | ⚠️ Unaudited |
| GenericEulerStaker | core_logic | ethereum | 7 deployments: ethereum [`0x0b72a6...f06bef`](./contracts/ethereum-1/0x0b72a6ad1182c6ca56ffb7ad7776c4496af06bef/); ethereum `0x2a7290...5b88dc`; ethereum `0xbc1ace...b1ab4d`; ethereum `0xd51069...1731eb`; ethereum `0xea6cd5...c34689`; ethereum `0xeaca75...96abb7`; ethereum `0xf5ad02...2a7c5a` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | ethereum | [`0x54b96f...909794`](./contracts/ethereum-1/0x54b96fee8208ea7ace3d415e5c14798112909794/) | ⚠️ Unaudited |
| Getters | unknown | ethereum | [`0xd1b575...83c84a`](./contracts/ethereum-1/0xd1b575ed715e4630340bfdc4fb8a37df3383c84a/) | ⚠️ Unaudited |
| Governor | governance | ethereum | 2 deployments: ethereum [`0x3e399a...62c03b`](./contracts/ethereum-1/0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b/); ethereum `0x59153e...55373b` | ⚠️ Unaudited |
| KeeperMulticall | operational_periphery | ethereum | 2 deployments: ethereum [`0x3c2c2e...7b40a8`](./contracts/ethereum-1/0x3c2c2e6ce8b9b086a46369a9be32f88f9f7b40a8/); ethereum `0xa0062b...bfaafe` | ⚠️ Unaudited |
| KeeperRegistry | operational_periphery | ethereum | 2 deployments: ethereum [`0x2201fa...b5af6e`](./contracts/ethereum-1/0x2201fa47bb4080fea7b41a4673eb1ded3eb5af6e/); ethereum `0xc48b15...88e942` | ⚠️ Unaudited |
| LayerZeroBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x4fa745...cdf982`](./contracts/ethereum-1/0x4fa745fccc04555f2afa8874cd23961636cdf982/); ethereum `0xec0b13...002961` | ⚠️ Unaudited |
| LayerZeroBridgeERC20 | operational_periphery | ethereum | [`0x105617...e28670`](./contracts/ethereum-1/0x1056178977457a5f4be33929520455a7d2e28670/) | ⚠️ Unaudited |
| LenderMigrator | periphery | ethereum | [`0xd2a211...e24396`](./contracts/ethereum-1/0xd2a211acea98c799a67ac47c274ebdf7dee24396/) | ⚠️ Unaudited |
| MerkleRootDistributor | operational_periphery | ethereum | [`0x317018...58626b`](./contracts/ethereum-1/0x3170185264eb140bcba070ec3fd7d820e558626b/) | ⚠️ Unaudited |
| MerkleRootDistributorV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x20d434...60af4b`](./contracts/ethereum-1/0x20d43427fa6210ffb0305c00555e38ce0660af4b/); ethereum `0x5a93d5...dde2f1` | ⚠️ Unaudited |
| MerklGaugeMiddleman | operational_periphery | ethereum | [`0x46918e...210b87`](./contracts/ethereum-1/0x46918e4b0e64279c1d5f16d13aeb0c7bcd210b87/) | ⚠️ Unaudited |
| MintableTokenLib | token | ethereum | [`0x3fd2c5...69d53f`](./contracts/ethereum-1/0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f/) | ⚠️ Unaudited |
| MultiBlockHarvester | operational_periphery | ethereum | 6 deployments: ethereum [`0x0a10f8...a10b77`](./contracts/ethereum-1/0x0a10f87f55d89eb2a89c264ebe46c90785a10b77/); ethereum `0x16ca29...5a1560`; ethereum `0x27042f...87989b`; ethereum `0x51401a...5f6a7b`; ethereum `0x5bedd8...59369d`; ethereum `0xf156d2...a38d18` | ⚠️ Unaudited |
| MultiCallWithFailure | periphery | ethereum | [`0xbd26a9...ca0135`](./contracts/ethereum-1/0xbd26a92d587981482b4eec012d13fa0d55ca0135/) | ⚠️ Unaudited |
| MultiStakerCurveAgEURvEUROCAMO | core_logic | ethereum | [`0xc1e8db...bca736`](./contracts/ethereum-1/0xc1e8dba1cbf29f1caa8343cae96d5adfd9bca736/) | ⚠️ Unaudited |
| OptimizerAPRStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x05e08e...bca9c2`](./contracts/ethereum-1/0x05e08e1bf31c1882822cc48d7d51d6fe49bca9c2/); ethereum `0x5577f8...e734c4`; ethereum `0xbfa445...54557b` | ⚠️ Unaudited |
| OracleDAI | operational_periphery | ethereum | [`0xc9cb57...2a6947`](./contracts/ethereum-1/0xc9cb5703c109d4fe46d2f29b0454c434e42a6947/) | ⚠️ Unaudited |
| OracleMulti | operational_periphery | ethereum | [`0x04f44d...64d681`](./contracts/ethereum-1/0x04f44d60c5366047ffe8bd112ab091d02464d681/) | ⚠️ Unaudited |
| OracleMultiUSDWithKeeper | operational_periphery | ethereum | 2 deployments: ethereum [`0x98aa71...54cf69`](./contracts/ethereum-1/0x98aa7123e524f7d60dae238bdd35ec53a654cf69/); ethereum `0xb41a7c...99daa5` | ⚠️ Unaudited |
| OracleMultiWithKeeper | operational_periphery | ethereum | [`0xf7be58...90fe3c`](./contracts/ethereum-1/0xf7be58afea895c3dde1dbe4cfdb5a815d990fe3c/) | ⚠️ Unaudited |
| Orchestrator | unknown | ethereum | [`0x2101f6...0a6671`](./contracts/ethereum-1/0x2101f65a51d545cd51896160230bcc6a360a6671/) | ⚠️ Unaudited |
| PerpetualManagerFront | governance | ethereum | 6 deployments: ethereum [`0x07c89c...920ac0`](./contracts/ethereum-1/0x07c89cc845d046aead377dddc61114aa9d920ac0/); ethereum `0x5efe48...ea9fb5`; ethereum `0x62cba6...ff5f73`; ethereum `0x9ca144...2e02df`; ethereum `0xb92449...f227ba`; ethereum `0xfc8f9e...1787c4` | ⚠️ Unaudited |
| PoolAddress | core_logic | ethereum | 6 deployments: ethereum [`0x029f04...d407a8`](./contracts/ethereum-1/0x029f049c59a6b56610a34ba01d0d28e26ed407a8/); ethereum `0x0d7105...eccf52`; ethereum `0x1033dd...68ac6d`; ethereum `0x12f31b...fe5f89`; ethereum `0x840b25...230a72`; ethereum `0xf1ddca...efe123` | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | 4 deployments: ethereum [`0x9485ac...c8b1ed`](./contracts/ethereum-1/0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed/); ethereum `0xa014a4...97a549`; ethereum `0xb01871...e46842`; ethereum `0xf381e8...e622d1` | ⚠️ Unaudited |
| Production | unknown | ethereum | [`0xe8c2c3...d3c479`](./contracts/ethereum-1/0xe8c2c34599eaf8006e466398b378067db7d3c479/) | ⚠️ Unaudited |
| ProductionUSD | unknown | ethereum | [`0x9c70c6...dff4b4`](./contracts/ethereum-1/0x9c70c6c8efd84084f9e6ded91790318b8edff4b4/) | ⚠️ Unaudited |
| ProposalSender | unknown | ethereum | 2 deployments: ethereum [`0x71d670...587f49`](./contracts/ethereum-1/0x71d670a690ef3e0dbd819f63168ce58ee5587f49/); ethereum `0x896d64...9790a8` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x1d941e...53a32b`](./contracts/ethereum-1/0x1d941ef0d3bba4ad67dbfbcee5262f4cee53a32b/); ethereum `0xd9f1a8...cec017` | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | [`0x1e45b6...985e59`](./contracts/ethereum-1/0x1e45b65cdd3712fef0024d063d6574a609985e59/) | ⚠️ Unaudited |
| RewardHandler | unknown | ethereum | [`0x770756...0211f3`](./contracts/ethereum-1/0x770756e43b9ac742538850003791def3020211f3/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0xc06481...b24e20`](./contracts/ethereum-1/0xc06481fc1d0196c138770fd2148dcb306cb24e20/) | ⚠️ Unaudited |
| SanFRAXEURERC4626AdapterStakable | adapter | ethereum | [`0x142449...2e9846`](./contracts/ethereum-1/0x14244978b1cc189324c3e35685d6ae2f632e9846/) | ⚠️ Unaudited |
| SanToken | token | ethereum | 5 deployments: ethereum [`0x04437e...5173b9`](./contracts/ethereum-1/0x04437e94af860afbb0429a7d36b9c00a5a5173b9/); ethereum `0x30c955...6333c8`; ethereum `0x6cd24a...07eaf5`; ethereum `0x7b8e89...bdb450`; ethereum `0x9c2152...a36dad` | ⚠️ Unaudited |
| SettersGovernor | governance | ethereum | [`0x1f37f9...8eeb43`](./contracts/ethereum-1/0x1f37f93c6aa7d987ae04786145d3066eab8eeb43/) | ⚠️ Unaudited |
| SettersGuardian | governance | ethereum | [`0xdda8f0...6a999f`](./contracts/ethereum-1/0xdda8f002925a0dfb151c0eacb48d7136ce6a999f/) | ⚠️ Unaudited |
| SmartTokenLib | token | ethereum | [`0x7f0a5b...6df70e`](./contracts/ethereum-1/0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e/) | ⚠️ Unaudited |
| StableMasterFront | unknown | ethereum | 3 deployments: ethereum [`0x282dff...8850ab`](./contracts/ethereum-1/0x282dffb8d0215d7efb8d8c5ff90aed185d8850ab/); ethereum `0x5addc8...086a87`; ethereum `0xc16b81...1e3049` | ⚠️ Unaudited |
| StakeDAO3CRVStaker | core_logic | ethereum | 2 deployments: ethereum [`0x5cf241...a9e9e1`](./contracts/ethereum-1/0x5cf24110de52326eb6e051f42a9a056f74a9e9e1/); ethereum `0xe80298...4469bc` | ⚠️ Unaudited |
| StakeDAOLevSwapper3CRV | adapter | ethereum | [`0xbdfde2...95e28c`](./contracts/ethereum-1/0xbdfde284c7d8e712214c037c7f4c9f321a95e28c/) | ⚠️ Unaudited |
| StakeDAOLevSwapperLUSDv3CRV | adapter | ethereum | [`0x633ba1...710d0b`](./contracts/ethereum-1/0x633ba1eedbe63a779eca6a1ebe86908ac2710d0b/) | ⚠️ Unaudited |
| StakeDAOLUSDv3CRVStaker | core_logic | ethereum | 2 deployments: ethereum [`0x3e6647...b91953`](./contracts/ethereum-1/0x3e664750cde8c616e9778b65f107205d84b91953/); ethereum `0x97f0a7...e5f321` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 6 deployments: ethereum [`0x2fa125...6850a3`](./contracts/ethereum-1/0x2fa1255383364f6e17be6a6ac7a56c9acd6850a3/); ethereum `0x65e499...07e91d`; ethereum `0xa86cc1...673267`; ethereum `0xb1f2a2...a3eaab`; ethereum `0xd97f48...a1f7d1`; ethereum `0xf868da...a7bae3` | ⚠️ Unaudited |
| Strategy | core_logic | ethereum | 2 deployments: ethereum [`0x5fe0e4...ce14a3`](./contracts/ethereum-1/0x5fe0e497ac676d8ba78598fc8016ebc1e6ce14a3/); ethereum `0xfd04bc...e22461` | ⚠️ Unaudited |
| Swapper | adapter | ethereum | 4 deployments: ethereum [`0x06c33a...3d93d7`](./contracts/ethereum-1/0x06c33a0c80c3970cbedde641c7a6419d703d93d7/); ethereum `0x4e4a60...b3c4fd`; ethereum `0x601057...04186e`; ethereum `0xd7cf34...fb5346` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x5183f0...32301e`](./contracts/ethereum-1/0x5183f032bf42109cd370b9559fd22207e432301e/) | ⚠️ Unaudited |
| TimelockControllerWithCounter | governance | ethereum | 2 deployments: ethereum [`0x09d814...e9d53f`](./contracts/ethereum-1/0x09d81464c7293c774203e46e3c921559c8e9d53f/); ethereum `0x270005...33b193` | ⚠️ Unaudited |
| TokenStorageLib | token | ethereum | [`0x13e657...cdde06`](./contracts/ethereum-1/0x13e6574730e4ae1b425967db30e9d5dd5bcdde06/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 4 deployments: ethereum [`0x3f6686...bc30a2`](./contracts/ethereum-1/0x3f66867b4b6eceba0dbb6776be15619f73bc30a2/); ethereum `0x4f4983...6d10d6`; ethereum `0xc9daab...7a5915`; ethereum `0xe9f183...9ad8ed` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 4 deployments: ethereum [`0x19f925...07effb`](./contracts/ethereum-1/0x19f925a26a3a8eee2438603cb04f39cbc007effb/); ethereum `0x8667db...067d60`; ethereum `0xc77251...063831`; ethereum `0xf85885...0830ee` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | [`0x9d74de...0acacb`](./contracts/polygon-137/0x9d74de101e2a54ad42198f37bdcce0a0160acacb/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniMigrator | periphery | ethereum | [`0x411802...d39f8b`](./contracts/ethereum-1/0x41180273e5d6f0fbf812d9d675ed7956f0d39f8b/) | ⚠️ Unaudited |
| VaultManager | core_logic | ethereum | [`0xf6cf74...4969c3`](./contracts/ethereum-1/0xf6cf7415e425644e4beebf172c177006cd4969c3/) | ⚠️ Unaudited |
| VaultManagerListing | core_logic | ethereum | 7 deployments: ethereum [`0x0652b4...397f3b`](./contracts/ethereum-1/0x0652b4b3d205300f9848f0431296d67ca4397f3b/); ethereum `0x0b3af9...4bf87b`; ethereum `0x29e9d3...032306`; ethereum `0x989ed2...738e31`; ethereum `0xce4322...105ae4`; ethereum `0xdeee8e...02b479`; ethereum `0xe0c8b6...e7a10b` | ⚠️ Unaudited |
| VeANGLEVotingDelegation | unknown | ethereum | [`0x2d7bd1...d63078`](./contracts/ethereum-1/0x2d7bd1c4e7720084d535b36de1b4327462d63078/) | ⚠️ Unaudited |
| Vester | operational_periphery | ethereum | [`0x433652...ae2ad5`](./contracts/ethereum-1/0x43365213237ab259c707bc2cbc3e07d123ae2ad5/) | ⚠️ Unaudited |
| VNXCToken | token | ethereum | [`0x6ba75d...89b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 5 deployments: ethereum [`0x411e14...846f29`](./contracts/ethereum-1/0x411e140da9aece566c783c38eac9c4a1ed846f29/); ethereum `0x74024f...1de0b9`; ethereum `0x8ea26a...64ed1e`; ethereum `0xb07df8...0df0a6`; ethereum `0xe09e56...11d38a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x042b24...174a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x071b13...251036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b3ef6...4a59da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11e2a3...d2c923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x183e33...3eb09e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18a885...5d6b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1faa6f...5f02cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x215587...668d8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e7e62...580880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff329...d295e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35f728...7e16a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ea4e0...3baa9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ec81c...89b8fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x496d5a...6adeef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54eb7e...4f42a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6015bf...afbf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6196d6...6efbf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x651be1...f15265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c9195...b9e6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ca959...d8115c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e5efc...922e7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e9e62...c47944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7411b6...41013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a83d8...3ebdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ab641...142ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82d59b...dcc451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a026c...5e6f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d652c...f29898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e669f...b9fe8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x943ce9...398301` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b8fd8...044b37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c39f0...6581f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa693ab...62af8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa78eb...a6eb49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa881b...0b8762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac493a...ca5370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac8d2d...dabb67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb63bd1...489510` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc21474...2fabb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4fc47...8e7562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcaaa01...e6593c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd142b...b22453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd19769...bcaa23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdffbaf...bea65e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf38a10...a6bf9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7958b...13b623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf93cb1...cddc54` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 25 | high |
| [ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 28 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | token | $151,685,596.69 | Verified native implementation with $151,685,596.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039a26...d6712d`](./contracts/ethereum-1/0x039a26c8239d6d0c8d8fbdc6e60a6cc465d6712d/) | Stablecoin | token | $54,835,373.54 | Verified native implementation with $54,835,373.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/) | SavingsVaultDEURO | core_logic | $1,118,381.75 | Verified native implementation with $1,118,381.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3899d9...8a5b6f`](./contracts/ethereum-1/0x3899d92041401eb127886689924d637fc28a5b6f/) | StETHStrategy | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a19a7...a7644e`](./contracts/ethereum-1/0x7a19a7f19b664ee8bee9ae5f7db5005eaaa7644e/) | AgToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb44c57...ac521c`](./contracts/ethereum-1/0xb44c57a274bf5737873236f218b0c70c4aac521c/) | AgTokenIntermediateUpgrade | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x381a81...ef85a2`](./contracts/ethereum-1/0x381a815b112a394f27121e2a99e86f88b1ef85a2/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf1243...7fd804`](./contracts/ethereum-1/0xaf12439c786d5c3b629da519491a8168627fd804/) | AMOMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31429d...e214c2`](./contracts/ethereum-1/0x31429d1856ad1377a8a0079410b297e1a9e214c2/) | ANGLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18fdea...80c52f`](./contracts/ethereum-1/0x18fdeaf9ecc8f6c985d73fed10a12f4bf580c52f/) | AngleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748ba9...ca4436`](./contracts/ethereum-1/0x748ba9cd5a5ddba5aba70a4ac861b2413dca4436/) | AngleGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x774681...57254e`](./contracts/ethereum-1/0x774681a648125d46f35017cf6cec43a41857254e/) | BlacklistValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4337d...a9b02f`](./contracts/ethereum-1/0xa4337db04ce4826b234dba22d35b38a124a9b02f/) | BPAMOJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b5f7f...65a264`](./contracts/optimism-10/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | BridgedDecentralizedEURO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | BridgedDEPS | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf48aa7...cdd9c2`](./contracts/ethereum-1/0xf48aa76b4f2cd71682c05afbccf1ccb444cdd9c2/) | BridgeStarknet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ed74...30b7c3`](./contracts/ethereum-1/0x61ed74de9ca5796cf2f8fd60d54160d47e30b7c3/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53b7d7...5c2900`](./contracts/ethereum-1/0x53b7d70013dec21a97f216e80eefcf45f25c2900/) | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa94cd...62cf12`](./contracts/ethereum-1/0xfa94cd9d711de75695693c877beca5473462cf12/) | DiamondEtherscan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9eb4...e4d27b`](./contracts/ethereum-1/0x6a9eb4a409e6354bcebb0dfaba1eb33eb5e4d27b/) | DistributionCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca4702...8788ff`](./contracts/ethereum-1/0xca470209117faae06e3a9113cab684febc8788ff/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57724f...90f509`](./contracts/ethereum-1/0x57724f65b3f914de7820c6f76b2099fa3a90f509/) | ERC20Lib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c6983...aa4753`](./contracts/ethereum-1/0x3c69835bc56cf4f356cdede634415f847daa4753/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x169487...37a373`](./contracts/ethereum-1/0x169487a55de79476125a56b07c36ca8dbf37a373/) | FlashMintLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | FPSWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | Frankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f25fa...b3e86a`](./contracts/ethereum-1/0x1f25fabc5bf3f3a185ca051de22511a4e9b3e86a/) | GenericEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b72a6...f06bef`](./contracts/ethereum-1/0x0b72a6ad1182c6ca56ffb7ad7776c4496af06bef/) | GenericEulerStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54b96f...909794`](./contracts/ethereum-1/0x54b96fee8208ea7ace3d415e5c14798112909794/) | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1b575...83c84a`](./contracts/ethereum-1/0xd1b575ed715e4630340bfdc4fb8a37df3383c84a/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e399a...62c03b`](./contracts/ethereum-1/0x3e399ae5b4d8bc0021e53b51c8bcdd66dd62c03b/) | Governor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c2c2e...7b40a8`](./contracts/ethereum-1/0x3c2c2e6ce8b9b086a46369a9be32f88f9f7b40a8/) | KeeperMulticall | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2a211...e24396`](./contracts/ethereum-1/0xd2a211acea98c799a67ac47c274ebdf7dee24396/) | LenderMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317018...58626b`](./contracts/ethereum-1/0x3170185264eb140bcba070ec3fd7d820e558626b/) | MerkleRootDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d434...60af4b`](./contracts/ethereum-1/0x20d43427fa6210ffb0305c00555e38ce0660af4b/) | MerkleRootDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46918e...210b87`](./contracts/ethereum-1/0x46918e4b0e64279c1d5f16d13aeb0c7bcd210b87/) | MerklGaugeMiddleman | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fd2c5...69d53f`](./contracts/ethereum-1/0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f/) | MintableTokenLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a10f8...a10b77`](./contracts/ethereum-1/0x0a10f87f55d89eb2a89c264ebe46c90785a10b77/) | MultiBlockHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd26a9...ca0135`](./contracts/ethereum-1/0xbd26a92d587981482b4eec012d13fa0d55ca0135/) | MultiCallWithFailure | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05e08e...bca9c2`](./contracts/ethereum-1/0x05e08e1bf31c1882822cc48d7d51d6fe49bca9c2/) | OptimizerAPRStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f44d...64d681`](./contracts/ethereum-1/0x04f44d60c5366047ffe8bd112ab091d02464d681/) | OracleMulti | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98aa71...54cf69`](./contracts/ethereum-1/0x98aa7123e524f7d60dae238bdd35ec53a654cf69/) | OracleMultiUSDWithKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7be58...90fe3c`](./contracts/ethereum-1/0xf7be58afea895c3dde1dbe4cfdb5a815d990fe3c/) | OracleMultiWithKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2101f6...0a6671`](./contracts/ethereum-1/0x2101f65a51d545cd51896160230bcc6a360a6671/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c89c...920ac0`](./contracts/ethereum-1/0x07c89cc845d046aead377dddc61114aa9d920ac0/) | PerpetualManagerFront | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9485ac...c8b1ed`](./contracts/ethereum-1/0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8c2c3...d3c479`](./contracts/ethereum-1/0xe8c2c34599eaf8006e466398b378067db7d3c479/) | Production | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c70c6...dff4b4`](./contracts/ethereum-1/0x9c70c6c8efd84084f9e6ded91790318b8edff4b4/) | ProductionUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71d670...587f49`](./contracts/ethereum-1/0x71d670a690ef3e0dbd819f63168ce58ee5587f49/) | ProposalSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e45b6...985e59`](./contracts/ethereum-1/0x1e45b65cdd3712fef0024d063d6574a609985e59/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x770756...0211f3`](./contracts/ethereum-1/0x770756e43b9ac742538850003791def3020211f3/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc06481...b24e20`](./contracts/ethereum-1/0xc06481fc1d0196c138770fd2148dcb306cb24e20/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f37f9...8eeb43`](./contracts/ethereum-1/0x1f37f93c6aa7d987ae04786145d3066eab8eeb43/) | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdda8f0...6a999f`](./contracts/ethereum-1/0xdda8f002925a0dfb151c0eacb48d7136ce6a999f/) | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f0a5b...6df70e`](./contracts/ethereum-1/0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e/) | SmartTokenLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282dff...8850ab`](./contracts/ethereum-1/0x282dffb8d0215d7efb8d8c5ff90aed185d8850ab/) | StableMasterFront | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdfde2...95e28c`](./contracts/ethereum-1/0xbdfde284c7d8e712214c037c7f4c9f321a95e28c/) | StakeDAOLevSwapper3CRV | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x633ba1...710d0b`](./contracts/ethereum-1/0x633ba1eedbe63a779eca6a1ebe86908ac2710d0b/) | StakeDAOLevSwapperLUSDv3CRV | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6647...b91953`](./contracts/ethereum-1/0x3e664750cde8c616e9778b65f107205d84b91953/) | StakeDAOLUSDv3CRVStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fa125...6850a3`](./contracts/ethereum-1/0x2fa1255383364f6e17be6a6ac7a56c9acd6850a3/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fe0e4...ce14a3`](./contracts/ethereum-1/0x5fe0e497ac676d8ba78598fc8016ebc1e6ce14a3/) | Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c33a...3d93d7`](./contracts/ethereum-1/0x06c33a0c80c3970cbedde641c7a6419d703d93d7/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5183f0...32301e`](./contracts/ethereum-1/0x5183f032bf42109cd370b9559fd22207e432301e/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e657...cdde06`](./contracts/ethereum-1/0x13e6574730e4ae1b425967db30e9d5dd5bcdde06/) | TokenStorageLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411802...d39f8b`](./contracts/ethereum-1/0x41180273e5d6f0fbf812d9d675ed7956f0d39f8b/) | UniMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6cf74...4969c3`](./contracts/ethereum-1/0xf6cf7415e425644e4beebf172c177006cd4969c3/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7bd1...d63078`](./contracts/ethereum-1/0x2d7bd1c4e7720084d535b36de1b4327462d63078/) | VeANGLEVotingDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x433652...ae2ad5`](./contracts/ethereum-1/0x43365213237ab259c707bc2cbc3e07d123ae2ad5/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411e14...846f29`](./contracts/ethereum-1/0x411e140da9aece566c783c38eac9c4a1ed846f29/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 93 |
| upstream | 8 |
| standard_library | 30 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=53

Zero-match audit list:

- [2927] www.chainsecurity.com/security-audit/deuro-smart-contracts

Fork inheritance lineage and inherited audits are included when available.
