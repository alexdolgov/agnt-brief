# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Generated: 2026-05-20T09:31:07.966Z
- Pipeline run: v2-2026-05-20-fcd52d
- Chains: arbitrum one, base, ethereum, optimism, polygon
- Contract surface: 298 logical contracts (356 raw addresses)
- On-chain TVL (included contracts): $228,804,643.47

## Fork Lineage

This project is a code fork of **Frankencoin** (`frankencoin`) ([GitHub](https://github.com/Frankencoin-ZCHF)).
11 audits are inherited from this parent project.

Total inherited audits: 11.

## Audit Coverage Summary

- Audited logical contracts: 20/298 (6.7%)
- Raw deployed addresses: 356
- Unaudited contracts: 278
- Audits discovered: 11
- Scoreable audits (matched contracts): 8
- ASD (unaudited native TVL): $1,382,081.99

## Contract Surface

### native (180)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x04f44d...64d681` | OracleMulti | operational_periphery | n/a | no | none |
| ethereum | `0x05620f...771702` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x05e08e...bca9c2` | OptimizerAPRStrategy | core_logic | n/a | no | ethereum `0x5577f8...e734c4`; ethereum `0xbfa445...54557b` |
| ethereum | `0x06c33a...3d93d7` | Swapper | adapter | n/a | no | none |
| ethereum | `0x073493...972303` | SavingsGateway | unknown | n/a | no | none |
| ethereum | `0x07c89c...920ac0` | PerpetualManagerFront | governance | n/a | no | ethereum `0x5efe48...ea9fb5`; ethereum `0xb92449...f227ba`; ethereum `0xfc8f9e...1787c4` |
| ethereum | `0x0a10f8...a10b77` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x0b72a6...f06bef` | GenericEulerStaker | core_logic | n/a | no | ethereum `0xd51069...1731eb`; ethereum `0xf5ad02...2a7c5a` |
| ethereum | `0x0b997a...d0245b` | GenericCompoundUpgradeable | unknown | n/a | no | ethereum `0x07d174...87f507`; ethereum `0x63dc54...466105`; ethereum `0x6d7ccd...c677ea`; ethereum `0x6e97be...9a9e06`; ethereum `0xe2773f...064ce3` |
| ethereum | `0x103747...ffa380` | DEPSWrapper | unknown | n/a | no | none |
| ethereum | `0x167144...1ee5a8` | PositionFactory | registry | n/a | yes | none |
| ethereum | `0x169487...37a373` | FlashMintLib | unknown | n/a | no | none |
| ethereum | `0x16ca29...5a1560` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x1ba267...e341b2` | Equity | unknown | n/a | yes | none |
| ethereum | `0x1da37d...ee89d2` | CoinLendingGateway | core_logic | n/a | no | none |
| ethereum | `0x1e45b6...985e59` | Redeemer | unknown | n/a | no | none |
| ethereum | `0x1e9f00...b4fa40` | SavingsVaultDEURO | core_logic | $1.23 | no | none |
| ethereum | `0x1f25fa...b3e86a` | GenericEuler | unknown | n/a | no | ethereum `0x7eda38...1ce5da`; ethereum `0xc83650...f634ba`; ethereum `0xced32e...2d64d7` |
| ethereum | `0x1f37f9...8eeb43` | SettersGovernor | governance | n/a | no | none |
| ethereum | `0x20b0a1...19f1a7` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x20d434...60af4b` | MerkleRootDistributorV2 | operational_periphery | n/a | no | ethereum `0x5a93d5...dde2f1` |
| ethereum | `0x2101f6...0a6671` | Orchestrator | unknown | n/a | no | none |
| ethereum | `0x2353d1...2c609f` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x270005...33b193` | TimelockControllerWithCounter | governance | n/a | no | none |
| ethereum | `0x27042f...87989b` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x282dff...8850ab` | StableMasterFront | unknown | n/a | no | ethereum `0x5addc8...086a87` |
| ethereum | `0x2908cd...ccf62b` | GenericAaveFraxStaker | core_logic | n/a | no | ethereum `0xf0f2c4...20794f` |
| ethereum | `0x2a7290...5b88dc` | GenericEulerStaker | core_logic | n/a | no | none |
| ethereum | `0x2d7bd1...d63078` | VeANGLEVotingDelegation | unknown | n/a | no | none |
| ethereum | `0x31429d...e214c2` | ANGLE | unknown | n/a | no | none |
| ethereum | `0x317018...58626b` | MerkleRootDistributor | operational_periphery | n/a | no | none |
| ethereum | `0x337de9...0639ba` | AaveFlashloanStrategy | core_logic | n/a | no | ethereum `0x1f847f...bff81f`; ethereum `0x9fbbcb...a847aa` |
| ethereum | `0x381a81...ef85a2` | Airdrop | operational_periphery | n/a | no | none |
| ethereum | `0x3899d9...8a5b6f` | StETHStrategy | core_logic | $0.00 | no | ethereum `0x41a65a...72758e` |
| ethereum | `0x3a3985...defe81` | PositionFactory | registry | n/a | yes | none |
| ethereum | `0x3c2c2e...7b40a8` | KeeperMulticall | operational_periphery | n/a | no | ethereum `0xa0062b...bfaafe` |
| ethereum | `0x3c6983...aa4753` | FeeManager | governance | n/a | no | none |
| ethereum | `0x3e1fd7...76cefa` | Convex3CRVStaker | core_logic | n/a | no | ethereum `0xbff202...af196c` |
| ethereum | `0x3e399a...62c03b` | Governor | governance | n/a | no | ethereum `0x59153e...55373b` |
| ethereum | `0x3e6647...b91953` | StakeDAOLUSDv3CRVStaker | core_logic | n/a | no | ethereum `0x97f0a7...e5f321` |
| ethereum | `0x3ef3d0...630341` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x3fd2c5...69d53f` | MintableTokenLib | token | n/a | no | none |
| ethereum | `0x411802...d39f8b` | UniMigrator | periphery | n/a | no | none |
| ethereum | `0x433652...ae2ad5` | Vester | operational_periphery | n/a | no | none |
| ethereum | `0x46918e...210b87` | MerklGaugeMiddleman | operational_periphery | n/a | no | none |
| ethereum | `0x490bc0...9a9d72` | ConvexLevSwapper3CRV | adapter | n/a | no | none |
| ethereum | `0x4ce0ab...57dc79` | PositionRoller | unknown | n/a | yes | none |
| ethereum | `0x4d144b...1461fe` | CoreBorrow | core_logic | n/a | no | ethereum `0x0e632a...e389a6`; ethereum `0x3fc5a1...923039`; ethereum `0x5bc6be...ec89be` |
| ethereum | `0x4dfd46...3a13b1` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x4e4a60...b3c4fd` | Swapper | adapter | n/a | no | none |
| ethereum | `0x4e551d...7e52e1` | FlashAngle | unknown | n/a | no | ethereum `0x4a2ff9...506f7f` |
| ethereum | `0x4ed4dd...e44fc8` | GenericCompoundUpgradeable | unknown | n/a | no | none |
| ethereum | `0x5052d3...80b182` | FPSWrapper | unknown | n/a | yes | none |
| ethereum | `0x51401a...5f6a7b` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x5183f0...32301e` | Timelock | governance | n/a | no | none |
| ethereum | `0x53b7d7...5c2900` | DiamondCut | unknown | n/a | no | none |
| ethereum | `0x54b96f...909794` | GenericHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x57724f...90f509` | ERC20Lib | token | n/a | no | none |
| ethereum | `0x5bedd8...59369d` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0x5c22d5...f7c5cd` | PositionRoller | unknown | n/a | yes | none |
| ethereum | `0x5c49c0...180994` | FrontendGateway | unknown | n/a | no | none |
| ethereum | `0x5d3483...d39072` | DummyDiamondImplementation | unknown | n/a | no | none |
| ethereum | `0x5fe0e4...ce14a3` | Strategy | core_logic | n/a | no | none |
| ethereum | `0x601057...04186e` | Swapper | adapter | n/a | no | none |
| ethereum | `0x6015bf...afbf89` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x61ed74...30b7c3` | Core | unknown | n/a | no | none |
| ethereum | `0x6238cd...f1e4ae` | Rebalancer | adapter | n/a | no | none |
| ethereum | `0x62cba6...ff5f73` | PerpetualManagerFront | governance | n/a | no | none |
| ethereum | `0x633ba1...710d0b` | StakeDAOLevSwapperLUSDv3CRV | adapter | n/a | no | none |
| ethereum | `0x651be1...f15265` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x65e499...07e91d` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0x66acc5...684f7b` | MintingHub | unknown | n/a | yes | none |
| ethereum | `0x6a9eb4...e4d27b` | DistributionCreator | unknown | n/a | no | none |
| ethereum | `0x6c9195...b9e6be` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6ca959...d8115c` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6e5efc...922e7a` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6e9e62...c47944` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x713513...3b6d05` | GenericEuler | unknown | n/a | no | none |
| ethereum | `0x71d670...587f49` | ProposalSender | unknown | n/a | no | none |
| ethereum | `0x71e1ae...50ed22` | StakeDAOLevSwapperFRAXBP | adapter | n/a | no | none |
| ethereum | `0x73f38c...4f5897` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x74024f...1de0b9` | Vyper_contract | unknown | n/a | no | none |
| ethereum | `0x7411b6...41013b` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x748ba9...ca4436` | AngleGovernor | governance | n/a | no | none |
| ethereum | `0x75beb3...612979` | SavingsVaultDEURO | core_logic | $1,100,313.83 | no | none |
| ethereum | `0x760233...90d3d9` | Savings | unknown | n/a | yes | none |
| ethereum | `0x76d8f5...43692b` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0x770756...0211f3` | RewardHandler | unknown | n/a | no | none |
| ethereum | `0x774681...57254e` | BlacklistValidator | unknown | n/a | no | none |
| ethereum | `0x7a19a7...a7644e` | AgToken | token | n/a | no | none |
| ethereum | `0x7a4c8a...980d38` | ConvexLevSwapperLUSDv3CRV | adapter | n/a | no | none |
| ethereum | `0x7a83d8...3ebdd6` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x7ab641...142ddb` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x7e54d1...373f77` | VaultManagerLiquidationBoost | core_logic | $281,766.93 | no | ethereum `0x1b396a...654463`; ethereum `0x1bece8...ad18b1`; ethereum `0x241d75...623679`; ethereum `0x72ac07...440b91`; ethereum `0x73aaf8...5f227b`; ethereum `0x8e2277...e6add0`; ethereum `0x913e8e...85094c`; ethereum `0x96de5c...f8868a`; ethereum `0x9ffc8a...26a001`; ethereum `0xba018e...c68f3a`; ethereum `0xca2d79...c3dec1`; ethereum `0xe1c084...b9ee58` |
| ethereum | `0x7f0a5b...6df70e` | SmartTokenLib | token | n/a | no | none |
| ethereum | `0x82d59b...dcc451` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x874eb5...59fd1a` | VaultManagerLiquidationBoost | core_logic | n/a | no | none |
| ethereum | `0x88fe06...0f995a` | VaultManagerLiquidationBoost | core_logic | n/a | no | none |
| ethereum | `0x896d64...9790a8` | ProposalSender | unknown | n/a | no | none |
| ethereum | `0x8a026c...5e6f59` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x8b3c41...604618` | MintingHubGateway | unknown | n/a | no | none |
| ethereum | `0x8d652c...f29898` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x8e669f...b9fe8f` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x8ea26a...64ed1e` | Vyper_contract | unknown | n/a | no | none |
| ethereum | `0x91d088...c27b05` | GenericAaveFraxStaker | core_logic | n/a | no | none |
| ethereum | `0x91ecb2...8a1cfd` | ConvexLUSDv3CRVStaker | core_logic | n/a | no | ethereum `0x965082...c35976` |
| ethereum | `0x943ce9...398301` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x9485ac...c8b1ed` | PoolManager | core_logic | n/a | no | none |
| ethereum | `0x97b689...1f227f` | FeeManager | governance | n/a | no | none |
| ethereum | `0x98aa71...54cf69` | OracleMultiUSDWithKeeper | operational_periphery | n/a | no | none |
| ethereum | `0x9a8a1d...13e3c3` | SanFRAXEURERC4626AdapterStakable | adapter | n/a | no | ethereum `0x142449...2e9846` |
| ethereum | `0x9abc25...0f4fe0` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x9b2f11...0a1a4c` | DistributionCreator | unknown | n/a | no | none |
| ethereum | `0x9b8fd8...044b37` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x9c39f0...6581f5` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x9c70c6...dff4b4` | ProductionUSD | unknown | n/a | no | none |
| ethereum | `0x9ca144...2e02df` | PerpetualManagerFront | governance | n/a | no | none |
| ethereum | `0xa014a4...97a549` | PoolManager | core_logic | n/a | no | none |
| ethereum | `0xa21d90...a1a723` | AngleHelpers | periphery | n/a | no | ethereum `0x1b17ac...4e068e` |
| ethereum | `0xa4337d...a9b02f` | BPAMOJob | unknown | n/a | no | ethereum `0xaa8787...79e348` |
| ethereum | `0xa61beb...1125b4` | AgToken | token | n/a | no | none |
| ethereum | `0xa693ab...62af8c` | UnnamedContract | unknown | n/a | no | ethereum `0x4f4983...6d10d6` |
| ethereum | `0xa86cc1...673267` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0xaa78eb...a6eb49` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xaa881b...0b8762` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xac493a...ca5370` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xac8d2d...dabb67` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xae4d5a...3346a7` | VaultManagerLiquidationBoost | core_logic | n/a | no | none |
| ethereum | `0xaf1243...7fd804` | AMOMinter | unknown | n/a | no | ethereum `0xec876e...952f84` |
| ethereum | `0xb01871...e46842` | PoolManager | core_logic | n/a | no | none |
| ethereum | `0xb07df8...0df0a6` | Vyper_contract | unknown | n/a | no | none |
| ethereum | `0xb1f2a2...a3eaab` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0xb3036c...1830aa` | AngleRouterMainnet | adapter | n/a | no | ethereum `0x457970...890930` |
| ethereum | `0xb41a7c...99daa5` | OracleMultiUSDWithKeeper | operational_periphery | n/a | no | none |
| ethereum | `0xb44c57...ac521c` | AgTokenIntermediateUpgrade | token | n/a | no | none |
| ethereum | `0xb4ff74...092fd1` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0xb58e61...0921cb` | Frankencoin | unknown | n/a | yes | none |
| ethereum | `0xb63bd1...489510` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xb66a40...8c9afe` | StablecoinBridge | operational_periphery | n/a | yes | none |
| ethereum | `0xba3f53...e0a3ea` | DecentralizedEURO | unknown | n/a | no | none |
| ethereum | `0xbc1ace...b1ab4d` | GenericEulerStaker | core_logic | n/a | no | none |
| ethereum | `0xbd26a9...ca0135` | MultiCallWithFailure | periphery | n/a | no | none |
| ethereum | `0xbdfde2...95e28c` | StakeDAOLevSwapper3CRV | adapter | n/a | no | none |
| ethereum | `0xc06481...b24e20` | RewardsDistributor | operational_periphery | n/a | no | none |
| ethereum | `0xc16b81...1e3049` | StableMasterFront | unknown | n/a | no | none |
| ethereum | `0xc4fc47...8e7562` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xc71104...fe8ee6` | Equity | unknown | n/a | yes | none |
| ethereum | `0xc77251...063831` | Treasury | operational_periphery | n/a | no | ethereum `0x19f925...07effb`; ethereum `0x8667db...067d60`; ethereum `0xf85885...0830ee` |
| ethereum | `0xca4702...8788ff` | Distributor | operational_periphery | n/a | no | none |
| ethereum | `0xcaaa01...e6593c` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xcd142b...b22453` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xcda39b...ca8df4` | AaveFlashloanStrategy | core_logic | n/a | no | none |
| ethereum | `0xce4322...105ae4` | VaultManagerListing | core_logic | n/a | no | ethereum `0x0652b4...397f3b`; ethereum `0x0b3af9...4bf87b`; ethereum `0x29e9d3...032306`; ethereum `0x989ed2...738e31`; ethereum `0xdeee8e...02b479`; ethereum `0xe0c8b6...e7a10b` |
| ethereum | `0xcf019a...1cf592` | DistributionCreator | unknown | n/a | no | none |
| ethereum | `0xd19769...bcaa23` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xd1b575...83c84a` | Getters | unknown | n/a | no | none |
| ethereum | `0xd2a211...e24396` | LenderMigrator | periphery | n/a | no | none |
| ethereum | `0xd7cf34...fb5346` | Swapper | adapter | n/a | no | none |
| ethereum | `0xd97f48...a1f7d1` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0xdda8f0...6a999f` | SettersGuardian | governance | n/a | no | none |
| ethereum | `0xdeee84...0313e2` | GenericCompoundUpgradeable | unknown | n/a | no | none |
| ethereum | `0xdffbaf...bea65e` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xe09e56...11d38a` | Vyper_contract | unknown | n/a | no | none |
| ethereum | `0xe1a6d8...670266` | ConvexLevSwapperFRAXBP | adapter | n/a | no | none |
| ethereum | `0xe59d2c...5b919b` | AgToken | token | n/a | no | none |
| ethereum | `0xe6d9bd...c3c1c4` | FeeManager | governance | n/a | no | none |
| ethereum | `0xe87634...d172a6` | AgTokenSideChain | token | n/a | no | ethereum `0x5f2718...18a290` |
| ethereum | `0xe8c2c3...d3c479` | Production | unknown | n/a | no | none |
| ethereum | `0xea6cd5...c34689` | GenericEulerStaker | core_logic | n/a | no | none |
| ethereum | `0xeaca75...96abb7` | GenericEulerStaker | core_logic | n/a | no | none |
| ethereum | `0xf156d2...a38d18` | MultiBlockHarvester | operational_periphery | n/a | no | none |
| ethereum | `0xf6cf74...4969c3` | VaultManager | core_logic | n/a | no | none |
| ethereum | `0xf7be58...90fe3c` | OracleMultiWithKeeper | operational_periphery | n/a | no | none |
| ethereum | `0xf868da...a7bae3` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0xf93cb1...cddc54` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xfd04bc...e22461` | Strategy | core_logic | n/a | no | none |
| ethereum | `0xfd2ccc...2670f9` | Savings | unknown | n/a | yes | none |
| optimism | `0x1b5f7f...65a264` | BridgedDecentralizedEURO | operational_periphery | n/a | no | none |
| base | `0x1b5f7f...65a264` | BridgedDecentralizedEURO | operational_periphery | n/a | no | none |
| base | `0x5f674b...282722` | BridgedDEPS | operational_periphery | n/a | no | none |

### upstream (41)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x042d98...1aad3a` | AngleRouterMainnet | adapter | n/a | no | none |
| ethereum | `0x14ba0b...81ae30` | GenericAaveNoStaker | core_logic | n/a | no | none |
| ethereum | `0x18fdea...80c52f` | AngleDistributor | operational_periphery | n/a | no | none |
| ethereum | `0x1abaea...1bc33c` | Proxy (impl: FiatTokenV2_2) | token | n/a | no | proxy only (impl: FiatTokenV2_2) |
| ethereum | `0x1b2ffd...36fcd7` | AngleRouterMainnet | adapter | n/a | no | none |
| ethereum | `0x1be302...957e99` | ConvexFRAXBPStaker | core_logic | n/a | no | none |
| ethereum | `0x2201fa...b5af6e` | KeeperRegistry | operational_periphery | n/a | no | none |
| ethereum | `0x221bbd...3c41b3` | MultiStakerCurveAgEURvEUROCAMO | core_logic | n/a | no | none |
| ethereum | `0x253406...671e2c` | OracleUSDCXAUChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x2859a4...642b20` | OracleChainlinkSingle | operational_periphery | n/a | no | none |
| ethereum | `0x533438...cc4d09` | GenericAave | unknown | n/a | no | none |
| ethereum | `0x576e41...8f42e4` | OracleWSTETHXAUChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x57bc37...bf00ec` | AngleRouterMainnet | adapter | n/a | no | none |
| ethereum | `0x598342...195019` | OracleIB01EURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x5cf241...a9e9e1` | StakeDAO3CRVStaker | core_logic | n/a | no | none |
| ethereum | `0x5d5d30...7c51eb` | GenericAaveFraxConvexStaker | core_logic | n/a | no | none |
| ethereum | `0x631c43...7fb7fe` | OracleUSDCEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x6eca8e...984cd9` | OracleETHXAUChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x796de0...71d7c1` | AaveFlashloanStrategy | core_logic | n/a | no | none |
| ethereum | `0x85a2a9...9ef6a6` | OracleLUSD3CRVEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x85c13d...4cf093` | OracleIB01EURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x885448...32baf0` | OracleWSTETHEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x8c55a4...bdce68` | OracleUSDCEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0x93a3a7...825721` | Oracle3CRVEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xaf2daa...d66fc8` | OracleFRAXBPEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xc0837e...15289a` | OracleETHEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xc1603c...25155a` | OracleHIGHEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xc581b7...ede491` | Proxy (impl: TetherToken) | token | $3,766,730.26 | no | proxy only (impl: TetherToken) |
| ethereum | `0xc9cb57...2a6947` | OracleDAI | operational_periphery | n/a | no | none |
| ethereum | `0xccac05...a604bc` | OracleUSDCEURChainlinkWithKeeper | operational_periphery | n/a | no | none |
| ethereum | `0xcf1ae6...ce6568` | OracleWSTETHUSDChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xd23269...b2348d` | OracleBTCEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xd7134e...c03220` | LayerZeroBridgeERC20 | operational_periphery | n/a | no | none |
| ethereum | `0xd73561...64d15e` | LayerZeroBridge | operational_periphery | n/a | no | none |
| ethereum | `0xd8ef81...591a5e` | AngleRouter | adapter | n/a | no | none |
| ethereum | `0xd9f22a...f8418d` | AngleDistributor | operational_periphery | n/a | no | none |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | no | none |
| ethereum | `0xe37ff7...814cb3` | OracleLUSDEURChainlink | operational_periphery | n/a | no | none |
| ethereum | `0xf98a20...c9dd8c` | OracleCBETHEURChainlink | operational_periphery | n/a | no | none |
| polygon | `0xc2132d...b58e8f` | Proxy (impl: UChildUSDT0) | token | n/a | no | proxy only (impl: UChildUSDT0) |
| polygon | `0xc2ff25...f14e47` | Proxy (impl: UChildERC20) | token | $18,226.21 | no | proxy only (impl: UChildERC20) |

### standard_library (35)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x09d814...e9d53f` | TimelockControllerWithCounter | governance | n/a | no | none |
| ethereum | `0x0d43c5...6f0820` | ERC677Lib | unknown | n/a | no | none |
| ethereum | `0x0e124c...3c34a9` | Proxy (impl: GenericAaveNoStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveNoStaker) |
| ethereum | `0x105617...e28670` | Proxy (impl: LayerZeroBridgeERC20) | operational_periphery | n/a | no | proxy only (impl: LayerZeroBridgeERC20) |
| ethereum | `0x13e657...cdde06` | TokenStorageLib | token | n/a | no | none |
| ethereum | `0x1a7e4e...fcbce8` | Proxy (impl: AgEURNameable) | unknown | n/a | no | proxy only (impl: AgEURNameable) |
| ethereum | `0x1d941e...53a32b` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0x2fa125...6850a3` | StakingRewards | unknown | n/a | no | none |
| ethereum | `0x30c955...6333c8` | Proxy (impl: SanToken) | token | n/a | no | proxy only (impl: SanToken) |
| ethereum | `0x3f6686...bc30a2` | Proxy (impl: 0xcee383c5ad0cc99a9da2975c5bd572d0e7769d1f) | proxy | n/a | no | proxy only (impl: TransparentUpgradeableProxy) |
| ethereum | `0x4fa745...cdf982` | Proxy (impl: LayerZeroBridge) | operational_periphery | n/a | no | proxy only (impl: LayerZeroBridge) |
| ethereum | `0x50753c...91e408` | Proxy (impl: HadronToken) | token | $12,414,807.41 | no | proxy only (impl: HadronToken) |
| ethereum | `0x53890a...928792` | Proxy (impl: GenericAaveNoStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveNoStaker) |
| ethereum | `0x65ddee...249967` | DiamondLoupe | unknown | n/a | no | none |
| ethereum | `0x6ba75d...89b5d3` | Proxy (impl: VNXCToken) | token | $17,750.90 | no | proxy only (impl: VNXCToken) |
| ethereum | `0x7b8e89...bdb450` | Proxy (impl: SanToken) | token | n/a | no | proxy only (impl: SanToken) |
| ethereum | `0x888883...0e5e51` | Proxy (impl: EUROPToken) | token | $4,387,600.18 | no | proxy only (impl: EUROPToken) |
| ethereum | `0x9354f4...ff854a` | Proxy (impl: GenericAaveFraxConvexStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveFraxConvexStaker) |
| ethereum | `0x9c2152...a36dad` | Proxy (impl: SanToken) | token | n/a | no | proxy only (impl: SanToken) |
| ethereum | `0x9d1a7a...dcbae7` | Proxy (impl: Stablecoin) | token | $54,746,518.09 | no | proxy only (impl: Stablecoin) |
| ethereum | `0xa30b7a...a413a4` | Proxy (impl: GenericAaveNoStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveNoStaker) |
| ethereum | `0xa9d2ee...1dcb26` | Proxy (impl: StakeDAOFRAXBPStaker) | core_logic | $241.45 | no | proxy only (impl: StakeDAOFRAXBPStaker) |
| ethereum | `0xbb7552...71561d` | Proxy (impl: AngleRouter) | adapter | n/a | no | proxy only (impl: AngleRouter) |
| ethereum | `0xbe67bb...2a56bd` | Proxy (impl: GenericAaveNoStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveNoStaker) |
| ethereum | `0xc1e8db...bca736` | Proxy (impl: MultiStakerCurveAgEURvEUROCAMO) | core_logic | n/a | no | proxy only (impl: MultiStakerCurveAgEURvEUROCAMO) |
| ethereum | `0xc48b15...88e942` | Proxy (impl: KeeperRegistry) | operational_periphery | n/a | no | proxy only (impl: KeeperRegistry) |
| ethereum | `0xc68421...c0331e` | Proxy (impl: ConvexFRAXBPStaker) | core_logic | $10.09 | no | proxy only (impl: ConvexFRAXBPStaker) |
| ethereum | `0xc9daab...7a5915` | Proxy (impl: 0xcee383c5ad0cc99a9da2975c5bd572d0e7769d1f) | proxy | n/a | no | proxy only (impl: TransparentUpgradeableProxy) |
| ethereum | `0xd9f1a8...cec017` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0xe43776...b3f081` | Proxy (impl: GenericAaveNoStaker) | core_logic | n/a | no | proxy only (impl: GenericAaveNoStaker) |
| ethereum | `0xe80298...4469bc` | Proxy (impl: StakeDAO3CRVStaker) | core_logic | n/a | no | proxy only (impl: StakeDAO3CRVStaker) |
| ethereum | `0xe9f183...9ad8ed` | Proxy (impl: 0xcee383c5ad0cc99a9da2975c5bd572d0e7769d1f) | proxy | n/a | no | proxy only (impl: TransparentUpgradeableProxy) |
| ethereum | `0xec0b13...002961` | Proxy (impl: LayerZeroBridge) | operational_periphery | n/a | no | proxy only (impl: LayerZeroBridge) |
| ethereum | `0xfa94cd...62cf12` | DiamondEtherscan | unknown | n/a | no | none |
| arbitrum one | `0x5e85fa...57d537` | ClonableBeaconProxy | registry | n/a | no | none |

### needs_review (42)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x029f04...d407a8` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0x042b24...174a81` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x04437e...5173b9` | SanToken | token | n/a | no | none |
| ethereum | `0x071b13...251036` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x0b3ef6...4a59da` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x0d7105...eccf52` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0x1033dd...68ac6d` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0x11e2a3...d2c923` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x12f31b...fe5f89` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0x183e33...3eb09e` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x18a885...5d6b7d` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x1faa6f...5f02cc` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x215587...668d8b` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x2e7e62...580880` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x2ff329...d295e4` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x3231cb...da273f` | EUR | unknown | n/a | no | none |
| ethereum | `0x35f728...7e16a5` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x3ea4e0...3baa9b` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x3ec81c...89b8fe` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x411e14...846f29` | Vyper_contract | unknown | n/a | no | none |
| ethereum | `0x4924e9...046ed5` | AngleHelpers | periphery | n/a | no | none |
| ethereum | `0x496d5a...6adeef` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x4b0010...165f13` | AngleMiddleman | unknown | n/a | no | none |
| ethereum | `0x5145f3...75807b` | GenericAave | unknown | n/a | no | none |
| ethereum | `0x54eb7e...4f42a7` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6196d6...6efbf3` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6cd24a...07eaf5` | SanToken | token | n/a | no | none |
| ethereum | `0x840b25...230a72` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0xbef4ae...66c568` | StakeDAOFRAXBPStaker | core_logic | n/a | no | none |
| ethereum | `0xc01188...640c8f` | GenericCompound | unknown | n/a | no | none |
| ethereum | `0xc2132d...b58e8f` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xc21474...2fabb4` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xc28490...2c2dff` | AngleRouter | adapter | n/a | no | none |
| ethereum | `0xdb25f2...807ad8` | Proxy (impl: EURSToken) | token | $152,070,676.88 | no | proxy only (impl: EURSToken) |
| ethereum | `0xf0abda...6e1c3f` | GenericAaveNoStaker | core_logic | n/a | no | none |
| ethereum | `0xf1ddca...efe123` | PoolAddress | core_logic | n/a | no | none |
| ethereum | `0xf381e8...e622d1` | PoolManager | core_logic | n/a | no | none |
| ethereum | `0xf38a10...a6bf9c` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xf48aa7...cdd9c2` | BridgeStarknet | operational_periphery | n/a | no | none |
| ethereum | `0xf7958b...13b623` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xf89fa5...7c8e12` | GenericCompound | unknown | n/a | no | none |
| polygon | `0x9d74de...0acacb` | UChildERC20Proxy | token | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| ChainSecurity-audit.pdf | ChainSecurity | 2023-10 | Inherited from Frankencoin | UNKNOWN | 15 | high |
| blockbite-audit.pdf | Blockbite | 2023-02 | Inherited from Frankencoin | UNKNOWN | 13 | high |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | ChainSecurity | 2024-11 | Inherited from Frankencoin | UNKNOWN | 9 | high |
| frankencoin-audit-report-2024-1.1.pdf (also discovered via alternate URL) | unknown | 2024-09 | Inherited from Frankencoin | UNKNOWN | 7 | high |
| blockbite-audit.md | Blockbite | n/a | Inherited from Frankencoin | n/a | 0 | n/a |
| code4rena-audit.md | Code4rena | n/a | Inherited from Frankencoin | n/a | 0 | n/a |
| code4rena.com/reports/2023-04-frankencoin | Code4rena | 2023-04 | Inherited from Frankencoin | UNKNOWN | 15 | high |
| www.chainsecurity.com/security-audit/frankencoin-smart-contracts | ChainSecurity | n/a | Inherited from Frankencoin | UNKNOWN | 1 | low |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | ChainSecurity | n/a | Inherited from Frankencoin | UNKNOWN | 6 | low |
| www.chainsecurity.com/security-audit/frankencoin-ccip-bridge | ChainSecurity | n/a | Inherited from Frankencoin | n/a | 0 | n/a |
| AuditReport-Frankencoin.pdf | Code4rena | 2023-02 | Inherited from Frankencoin | UNKNOWN | 13 | high |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x75beb3...612979` | SavingsVaultDEURO | core_logic | $1,100,313.83 | Native contract with $1,100,313.83 on-chain TVL and no extraction_exact audit coverage |
| ethereum | `0x7e54d1...373f77` | VaultManagerLiquidationBoost | core_logic | $281,766.93 | Native contract with $281,766.93 on-chain TVL and no extraction_exact audit coverage |
| ethereum | `0x1e9f00...b4fa40` | SavingsVaultDEURO | core_logic | $1.23 | Native contract with $1.23 on-chain TVL and no extraction_exact audit coverage |
| ethereum | `0x3899d9...8a5b6f` | StETHStrategy | core_logic | $0.00 | Native contract with $0.00 on-chain TVL and no extraction_exact audit coverage |
| ethereum | `0x04f44d...64d681` | OracleMulti | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x05e08e...bca9c2` | OptimizerAPRStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x06c33a...3d93d7` | Swapper | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x073493...972303` | SavingsGateway | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x07c89c...920ac0` | PerpetualManagerFront | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x0a10f8...a10b77` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x0b72a6...f06bef` | GenericEulerStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x0b997a...d0245b` | GenericCompoundUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x103747...ffa380` | DEPSWrapper | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x169487...37a373` | FlashMintLib | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x16ca29...5a1560` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x1da37d...ee89d2` | CoinLendingGateway | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x1e45b6...985e59` | Redeemer | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x1f25fa...b3e86a` | GenericEuler | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x1f37f9...8eeb43` | SettersGovernor | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x20d434...60af4b` | MerkleRootDistributorV2 | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x2101f6...0a6671` | Orchestrator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x270005...33b193` | TimelockControllerWithCounter | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x27042f...87989b` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x282dff...8850ab` | StableMasterFront | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x2908cd...ccf62b` | GenericAaveFraxStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x2a7290...5b88dc` | GenericEulerStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x2d7bd1...d63078` | VeANGLEVotingDelegation | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x31429d...e214c2` | ANGLE | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x317018...58626b` | MerkleRootDistributor | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x337de9...0639ba` | AaveFlashloanStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x381a81...ef85a2` | Airdrop | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3c2c2e...7b40a8` | KeeperMulticall | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3c6983...aa4753` | FeeManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3e1fd7...76cefa` | Convex3CRVStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3e399a...62c03b` | Governor | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3e6647...b91953` | StakeDAOLUSDv3CRVStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x3fd2c5...69d53f` | MintableTokenLib | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x411802...d39f8b` | UniMigrator | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x433652...ae2ad5` | Vester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x46918e...210b87` | MerklGaugeMiddleman | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x490bc0...9a9d72` | ConvexLevSwapper3CRV | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x4d144b...1461fe` | CoreBorrow | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x4e4a60...b3c4fd` | Swapper | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x4e551d...7e52e1` | FlashAngle | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x4ed4dd...e44fc8` | GenericCompoundUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x51401a...5f6a7b` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x5183f0...32301e` | Timelock | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x53b7d7...5c2900` | DiamondCut | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x54b96f...909794` | GenericHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x57724f...90f509` | ERC20Lib | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x5bedd8...59369d` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x5c49c0...180994` | FrontendGateway | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x5d3483...d39072` | DummyDiamondImplementation | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x5fe0e4...ce14a3` | Strategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x601057...04186e` | Swapper | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6015bf...afbf89` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x61ed74...30b7c3` | Core | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6238cd...f1e4ae` | Rebalancer | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x62cba6...ff5f73` | PerpetualManagerFront | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x633ba1...710d0b` | StakeDAOLevSwapperLUSDv3CRV | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x651be1...f15265` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x65e499...07e91d` | StakingRewards | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6a9eb4...e4d27b` | DistributionCreator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6c9195...b9e6be` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6ca959...d8115c` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6e5efc...922e7a` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6e9e62...c47944` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x713513...3b6d05` | GenericEuler | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x71d670...587f49` | ProposalSender | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x71e1ae...50ed22` | StakeDAOLevSwapperFRAXBP | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x74024f...1de0b9` | Vyper_contract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7411b6...41013b` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x748ba9...ca4436` | AngleGovernor | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x770756...0211f3` | RewardHandler | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x774681...57254e` | BlacklistValidator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7a19a7...a7644e` | AgToken | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7a4c8a...980d38` | ConvexLevSwapperLUSDv3CRV | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7a83d8...3ebdd6` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7ab641...142ddb` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x7f0a5b...6df70e` | SmartTokenLib | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x82d59b...dcc451` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x874eb5...59fd1a` | VaultManagerLiquidationBoost | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x88fe06...0f995a` | VaultManagerLiquidationBoost | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x896d64...9790a8` | ProposalSender | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x8a026c...5e6f59` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x8b3c41...604618` | MintingHubGateway | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x8d652c...f29898` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x8e669f...b9fe8f` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x8ea26a...64ed1e` | Vyper_contract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x91d088...c27b05` | GenericAaveFraxStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x91ecb2...8a1cfd` | ConvexLUSDv3CRVStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x943ce9...398301` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9485ac...c8b1ed` | PoolManager | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x97b689...1f227f` | FeeManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x98aa71...54cf69` | OracleMultiUSDWithKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9a8a1d...13e3c3` | SanFRAXEURERC4626AdapterStakable | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9abc25...0f4fe0` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9b2f11...0a1a4c` | DistributionCreator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9b8fd8...044b37` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9c39f0...6581f5` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9c70c6...dff4b4` | ProductionUSD | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9ca144...2e02df` | PerpetualManagerFront | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa014a4...97a549` | PoolManager | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa21d90...a1a723` | AngleHelpers | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa4337d...a9b02f` | BPAMOJob | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa61beb...1125b4` | AgToken | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa693ab...62af8c` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa86cc1...673267` | StakingRewards | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xaa78eb...a6eb49` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xaa881b...0b8762` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xac493a...ca5370` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xac8d2d...dabb67` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xae4d5a...3346a7` | VaultManagerLiquidationBoost | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xaf1243...7fd804` | AMOMinter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb01871...e46842` | PoolManager | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb07df8...0df0a6` | Vyper_contract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb1f2a2...a3eaab` | StakingRewards | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb3036c...1830aa` | AngleRouterMainnet | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb41a7c...99daa5` | OracleMultiUSDWithKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb44c57...ac521c` | AgTokenIntermediateUpgrade | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xb63bd1...489510` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xba3f53...e0a3ea` | DecentralizedEURO | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xbc1ace...b1ab4d` | GenericEulerStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xbd26a9...ca0135` | MultiCallWithFailure | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xbdfde2...95e28c` | StakeDAOLevSwapper3CRV | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xc06481...b24e20` | RewardsDistributor | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xc16b81...1e3049` | StableMasterFront | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xc4fc47...8e7562` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xc77251...063831` | Treasury | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xca4702...8788ff` | Distributor | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xcaaa01...e6593c` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xcd142b...b22453` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xcda39b...ca8df4` | AaveFlashloanStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xce4322...105ae4` | VaultManagerListing | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xcf019a...1cf592` | DistributionCreator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd19769...bcaa23` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd1b575...83c84a` | Getters | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd2a211...e24396` | LenderMigrator | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd7cf34...fb5346` | Swapper | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd97f48...a1f7d1` | StakingRewards | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xdda8f0...6a999f` | SettersGuardian | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xdeee84...0313e2` | GenericCompoundUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xdffbaf...bea65e` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe09e56...11d38a` | Vyper_contract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe1a6d8...670266` | ConvexLevSwapperFRAXBP | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe59d2c...5b919b` | AgToken | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe6d9bd...c3c1c4` | FeeManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe87634...d172a6` | AgTokenSideChain | token | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xe8c2c3...d3c479` | Production | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xea6cd5...c34689` | GenericEulerStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xeaca75...96abb7` | GenericEulerStaker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xf156d2...a38d18` | MultiBlockHarvester | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xf6cf74...4969c3` | VaultManager | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xf7be58...90fe3c` | OracleMultiWithKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xf868da...a7bae3` | StakingRewards | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xf93cb1...cddc54` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xfd04bc...e22461` | Strategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| optimism | `0x1b5f7f...65a264` | BridgedDecentralizedEURO | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| base | `0x1b5f7f...65a264` | BridgedDecentralizedEURO | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| base | `0x5f674b...282722` | BridgedDEPS | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 180 |
| upstream | 41 |
| standard_library | 35 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Extraction confidence breakdown: high=6, low=2
- Match method counts: extraction_exact=86

Zero-match audit list:

- [1298] blockbite-audit.md
- [1299] code4rena-audit.md
- [1304] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge

Fork inheritance lineage and inherited audits are included when available.
