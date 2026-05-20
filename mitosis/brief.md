# Agentic Audit Brief: Mitosis

⚠️ Lifecycle status: DEAD - TVL dropped 33.4% over 90 days

## Project Overview

- Project: Mitosis (`mitosis`)
- Generated: 2026-05-20T19:33:26.402Z
- Pipeline run: v2-pipeline-2026-05-20-db37c4
- Chains: arbitrum one, base, blast, bsc, ethereum, linea, manta, mantle, mode, optimism, scroll
- Contract surface: 424 logical contracts (483 raw addresses)
- On-chain TVL (included contracts): $546,543,591.30

## Audit Coverage Summary

- Audited logical contracts: 4/424 (0.9%)
- Raw deployed addresses: 483
- Unaudited contracts: 420
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (unaudited native TVL): $356,752,218.28
- Note: This protocol is classified as [dead]. ASD of $356,752,218.28 represents exposure in a protocol with dead activity.

## Contract Surface

### native (208)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x004e9c...350568` | Proxy (impl: uniBTC) | unknown | n/a | no | proxy only (impl: uniBTC) |
| ethereum | `0x02656f...bac65b` | LiquidityPool | core_logic | n/a | no | ethereum `0x308861...daf216` |
| ethereum | `0x047a77...f15889` | MembershipManager | governance | n/a | no | ethereum `0x3d3202...3e3000` |
| ethereum | `0x04f744...b7b5c0` | Restaking | unknown | n/a | no | ethereum `0x3f4eac...6e9850` |
| ethereum | `0x078452...98880e` | Vault | core_logic | n/a | no | none |
| ethereum | `0x07a5d3...0eef57` | DirectStaking | unknown | n/a | no | ethereum `0xe8239b...5c4572` |
| ethereum | `0x0ac774...e76f52` | PodOwner | unknown | n/a | no | none |
| ethereum | `0x0b75e1...eaa2fa` | TheoDepositVault | core_logic | n/a | no | none |
| ethereum | `0x0c4a8a...3d63c4` | MockEtherFiAdmin | unknown | n/a | no | ethereum `0x46c4ab...cc29a8` |
| ethereum | `0x0c5631...b69295` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x0fb6cc...f85fe7` | EtherFiViewer | periphery | n/a | no | ethereum `0x2ecd15...2fab81` |
| ethereum | `0x10f2c5...c561d6` | depositRootGenerator | unknown | n/a | no | none |
| ethereum | `0x11858b...21cf63` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x11964b...09954b` | directBTC | unknown | n/a | no | ethereum `0xa70099...c0b090` |
| ethereum | `0x130e22...3a0729` | BoringVaultPriceProvider | operational_periphery | n/a | no | none |
| ethereum | `0x138f08...ea7743` | LRTSquared | unknown | n/a | no | none |
| ethereum | `0x176bfd...e18bbb` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0x190f44...a3cfee` | MembershipManager | governance | n/a | no | none |
| ethereum | `0x191a8f...8155c7` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x19c10a...0594d7` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x1cb489...1957de` | LRTSquaredCore | unknown | n/a | no | ethereum `0x8f08b7...8e6040` |
| ethereum | `0x1d716d...f2cd24` | LoyaltyPointsMarketSafe | unknown | n/a | no | none |
| ethereum | `0x1e4d0a...c4e518` | Restaking | unknown | n/a | no | none |
| ethereum | `0x1fcb83...2cd0b4` | RegulationsManager | governance | n/a | no | ethereum `0xbd23ff...35f4de` |
| ethereum | `0x20e885...b509ad` | DummyTokenUpgradeable | token | n/a | no | ethereum `0x0295e0...a5ae46`; ethereum `0x4e1da7...04081d`; ethereum `0x61ff31...f9a2bf`; ethereum `0x83998e...2d4b28`; ethereum `0xabc12e...f04ae8`; ethereum `0xdc400f...644cf3` |
| ethereum | `0x20ee00...e38cc7` | AddressProvider | registry | n/a | no | none |
| ethereum | `0x20f2a7...ee9073` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x2225c9...6b6ed3` | Liquifier | unknown | n/a | no | ethereum `0x9ffdf4...ef764f`; ethereum `0xfdb757...f8ce41` |
| ethereum | `0x2261ef...280138` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0x26542f...dd0c65` | CumulativeMerkleDrop | operational_periphery | n/a | no | ethereum `0x6db24e...ba6b64` |
| ethereum | `0x26a2ca...79c22a` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x274bbd...cb2fc8` | NetworkRestakeResetHook | core_logic | n/a | no | none |
| ethereum | `0x28a6e7...c1f32f` | PriceProvider | operational_periphery | n/a | no | ethereum `0x2b9010...0f19e3` |
| ethereum | `0x290d98...307106` | MembershipNFT | token | n/a | no | ethereum `0xb49e44...27e479` |
| ethereum | `0x29b06c...50a415` | RewardPool | core_logic | $0.00 | no | ethereum `0xb7019c...732064` |
| ethereum | `0x2b7790...120655` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x316554...f4ee24` | LoyaltyPointsMarketSafe | unknown | n/a | no | none |
| ethereum | `0x317b8e...876ef6` | Vault | core_logic | n/a | no | none |
| ethereum | `0x325ea0...c85fb9` | globalIndexLibrary | unknown | n/a | no | none |
| ethereum | `0x35fa16...118ac2` | Proxy (impl: EETH) | unknown | n/a | no | proxy only (impl: EETH) |
| ethereum | `0x39272e...d334c0` | L1SyncPoolETH | core_logic | n/a | no | ethereum `0x33757a...f43ee7` |
| ethereum | `0x3dbe6b...a6d4e2` | EtherFiRestaker | core_logic | $217,003,475.84 | no | ethereum `0x1b7a4c...736fff` |
| ethereum | `0x3ed97c...0a9cd4` | WithdrawRequestNFT | operational_periphery | n/a | no | ethereum `0x7d5706...9d4e2c` |
| ethereum | `0x403ba4...310cef` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x40819e...6311ca` | L1ModeReceiverETHUpgradeable | unknown | n/a | no | ethereum `0x27e120...5985c2`; ethereum `0x8963c9...ccbc37` |
| ethereum | `0x472372...108e45` | Vault | core_logic | n/a | no | none |
| ethereum | `0x47b091...cc9ebb` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0x48276d...9f78f8` | Liquifier | unknown | n/a | no | none |
| ethereum | `0x4ad639...72fa1e` | StakingManager | governance | n/a | no | none |
| ethereum | `0x4d6c23...7a9f04` | Restaking | unknown | n/a | no | none |
| ethereum | `0x4d784a...d93860` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x51a7f8...db6c5e` | uniBTC | unknown | n/a | no | none |
| ethereum | `0x52bbf2...54e3c0` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x5573d6...e77fa8` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x5769ff...395455` | Liquifier | unknown | n/a | no | none |
| ethereum | `0x595994...a0fa96` | Restaking | unknown | n/a | no | none |
| ethereum | `0x605f17...426399` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x61e2ca...3f296a` | Liquifier | unknown | n/a | no | none |
| ethereum | `0x642fb9...0b6583` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0x6494c1...a41042` | NFTExchange | token | n/a | no | ethereum `0x200057...d903a2` |
| ethereum | `0x6827bf...09b710` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x683840...2430c1` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x6882ae...57497d` | Redeem | unknown | n/a | no | ethereum `0x981692...1d3b8d` |
| ethereum | `0x68fe80...ba5366` | AuctionManager | governance | n/a | no | none |
| ethereum | `0x6a3938...687242` | BNFT | token | n/a | no | none |
| ethereum | `0x6b5c61...c929bc` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x6b6d4e...6bacdf` | Liquifier | unknown | n/a | no | none |
| ethereum | `0x704a2f...9481ee` | DirectBTCMinter | unknown | n/a | no | ethereum `0x91fd8c...d64500` |
| ethereum | `0x7106e8...6d29dc` | MembershipNFT | token | n/a | no | none |
| ethereum | `0x720081...eb859d` | DelayRedeemRouter | adapter | n/a | no | ethereum `0xaa732c...f89246` |
| ethereum | `0x72481f...b97f4a` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x76c57e...805ad8` | SEthFiStrategy | core_logic | n/a | no | none |
| ethereum | `0x792ef6...e9b44a` | EtherFiAvsOperator | unknown | n/a | no | none |
| ethereum | `0x79ef32...f98c0a` | MembershipNFT | token | n/a | no | none |
| ethereum | `0x7c37cd...bcf63f` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0x7c8efd...1e4543` | NFTExchange | token | n/a | no | none |
| ethereum | `0x7e8e03...288f20` | PodOwner | unknown | n/a | no | none |
| ethereum | `0x812e3d...57bfaa` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x81be35...31b523` | eBtcRateProvider | unknown | n/a | no | none |
| ethereum | `0x82c12f...31c4b8` | Liquifier | unknown | n/a | no | none |
| ethereum | `0x833514...3cc0b8` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0x83dd4b...c43c7f` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x8487c5...e4a848` | AddressProvider | registry | n/a | no | none |
| ethereum | `0x8969d7...3960f5` | AvsOperator | unknown | n/a | no | none |
| ethereum | `0x8b7a14...97ff44` | PreOrder | unknown | n/a | no | none |
| ethereum | `0x8dac64...43ed6a` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x8e35d6...aa26f5` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x91121c...75edcb` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0x942ced...8f4748` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x97176e...de57e9` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0x997c54...1009f7` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0x9c377a...f11708` | TNFT | token | n/a | no | none |
| ethereum | `0x9c8725...a5f412` | Restaking | unknown | n/a | no | none |
| ethereum | `0x9cfbf2...d665d6` | Restaking | unknown | n/a | no | none |
| ethereum | `0x9f0ae0...982da9` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0x9f26d4...d20761` | EtherFiTimelock | governance | n/a | no | none |
| ethereum | `0x9f4c27...076776` | depositRootGenerator | unknown | n/a | no | none |
| ethereum | `0xa20caf...d9a8de` | Staking | unknown | n/a | no | ethereum `0x4befa2...269e9d` |
| ethereum | `0xa2f5e6...1082ae` | NetworkRestakeResetHook | core_logic | n/a | no | none |
| ethereum | `0xa4ab5e...b7583d` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0xa6c706...98f223` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0xa7581e...9b2a0f` | wstETH_Burner | unknown | n/a | no | none |
| ethereum | `0xa8a8be...4ffb1f` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0xa9094e...acb147` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0xaae009...86fee6` | DummyTokenUpgradeable | token | n/a | no | none |
| ethereum | `0xab47d7...fbe70d` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0xad5074...f2130f` | EtherFiAvsOperator | unknown | n/a | no | none |
| ethereum | `0xad6ad4...c35599` | BNFT | token | n/a | no | none |
| ethereum | `0xad8bd6...62b96a` | Restaking | unknown | n/a | no | none |
| ethereum | `0xaf8749...e0d322` | ProtocolRevenueManager | governance | n/a | no | none |
| ethereum | `0xafb82c...1afea7` | TNFT | token | n/a | no | none |
| ethereum | `0xb27b1d...1f02c1` | Liquifier | unknown | n/a | no | none |
| ethereum | `0xb27d4e...d5868f` | StakingManager | governance | n/a | no | none |
| ethereum | `0xb27e1b...de3b84` | MembershipManager | governance | n/a | no | none |
| ethereum | `0xb619f9...6dd42c` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0xb737e9...bf19c3` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0xb98331...05dcd2` | PreOrder | unknown | n/a | no | none |
| ethereum | `0xba4f87...65f10e` | Proxy (impl: DummyTokenUpgradeable) | token | n/a | no | proxy only (impl: DummyTokenUpgradeable) |
| ethereum | `0xc22c7f...87e691` | Liquifier | unknown | n/a | no | none |
| ethereum | `0xc2455e...f12aa9` | DummyTokenUpgradeable | token | n/a | no | none |
| ethereum | `0xc2709a...a3d321` | EtherFiAvsOperatorsManager | governance | n/a | no | none |
| ethereum | `0xc2743a...6fb5e5` | AvsOperatorManager | governance | n/a | no | ethereum `0x2093bb...a37a6a` |
| ethereum | `0xc55cfc...af280a` | NetworkRestakeResetHook | core_logic | n/a | no | none |
| ethereum | `0xc7d81a...8334c7` | brVault | core_logic | $40,632.23 | no | ethereum `0x1419b4...0e3386` |
| ethereum | `0xc8160b...0569ca` | UnnamedContract | unknown | n/a | no | ethereum `0x6d20bb...76aea9` |
| ethereum | `0xc8ad09...e1696f` | Proxy (impl: L1ModeReceiverETHUpgradeable) | unknown | n/a | no | proxy only (impl: L1ModeReceiverETHUpgradeable) |
| ethereum | `0xcb674f...36ba8c` | VaultWithoutNative | core_logic | $24,644.31 | no | ethereum `0x047d41...10d6da`; arbitrum one `0x84e5c8...c26800` |
| ethereum | `0xcbf18f...6433a0` | AuctionManager | governance | n/a | no | none |
| ethereum | `0xcd5fe2...59b7ee` | Proxy (impl: WeETH) | unknown | n/a | no | proxy only (impl: WeETH) |
| ethereum | `0xcef428...cfc474` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0xd27a57...1f5a8b` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0xd2b8c7...d02ff5` | LRTSquaredAdmin | unknown | n/a | no | none |
| ethereum | `0xd60ec8...0277c7` | TNFT | token | n/a | no | none |
| ethereum | `0xd88f3f...89fed3` | EtherFiViewer | periphery | n/a | no | none |
| ethereum | `0xd90c56...725fda` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0xdaaac9...008ca7` | WithdrawRequestNFT | operational_periphery | n/a | no | none |
| ethereum | `0xdc9e0d...04fae7` | AvsOperatorManager | governance | n/a | no | none |
| ethereum | `0xdce5ac...4800f2` | EtherFiAvsOperator | unknown | n/a | no | none |
| ethereum | `0xe41aea...e33f72` | Liquifier | unknown | n/a | no | none |
| ethereum | `0xe55eac...008c69` | StakingManager | governance | n/a | no | none |
| ethereum | `0xe6179d...b144dd` | MembershipNFT | token | n/a | no | none |
| ethereum | `0xe86922...a5eb79` | LiquidityPool | core_logic | n/a | no | none |
| ethereum | `0xeda445...419e55` | AvsOperatorManager | governance | n/a | no | none |
| ethereum | `0xee179d...575b54` | LRTSquared | unknown | n/a | no | none |
| ethereum | `0xefc323...cf2e8f` | L1ModeReceiverETHUpgradeable | unknown | n/a | no | none |
| ethereum | `0xf0ab75...bc342b` | TransferProxy | unknown | n/a | no | none |
| ethereum | `0xf1376b...df51f4` | Proxy (impl: RockXETH) | unknown | n/a | no | proxy only (impl: RockXETH) |
| ethereum | `0xf38098...248f53` | EtherFiAvsOperator | unknown | n/a | no | none |
| ethereum | `0xf47187...064d29` | AvsOperator | unknown | n/a | no | none |
| ethereum | `0xf68f84...9d3d60` | L1ModeReceiverETH | unknown | n/a | no | ethereum `0x3b099b...6b7f24` |
| ethereum | `0xf710e9...8f5142` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0xf8208a...9f0625` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0xfa7ab3...a1c319` | EtherFiNodesManager | governance | n/a | no | none |
| ethereum | `0xfab5f2...425ed1` | L1ModeReceiverETHUpgradeable | unknown | n/a | no | none |
| ethereum | `0xfba2e9...2466c1` | EtherFiAvsOperator | unknown | n/a | no | none |
| ethereum | `0xfc9268...9d4c36` | RewardPool | core_logic | n/a | no | none |
| ethereum | `0xfca266...c695ae` | EtherFiNode | unknown | n/a | no | none |
| ethereum | `0xfcc674...ee2caf` | NodeOperatorManager | governance | n/a | no | ethereum `0xd5edf7...54e35e` |
| ethereum | `0xfdb118...8747fb` | EtherFiNodesManager | governance | n/a | no | none |
| optimism | `0x346e03...0e08f0` | OptimismMintableERC20 | bridge_template | n/a | no | none |
| optimism | `0x939197...2b593e` | Proxy (impl: uniBTC) | unknown | n/a | no | proxy only (impl: uniBTC) |
| mantle | `0x6ff000...dbce55` | BasicVaultMigration | operational_periphery | n/a | no | ethereum `0x0109e9...fa5358`; ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec`; optimism `0x5616fe...6821be`; optimism `0xea8edd...da0dd7`; bsc `0xadd585...1abfc2`; arbitrum one `0x3c09fb...beb0df`; arbitrum one `0x73981b...f2a007`; arbitrum one `0x7e8cff...53e8ba`; arbitrum one `0xbed575...749471` |
| mode | `0x04c059...6c150a` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x01f90a...43381d` | TheoDepositVault | core_logic | n/a | no | none |
| arbitrum one | `0x04af63...e58638` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x08cb45...46775d` | Vault | core_logic | n/a | no | none |
| arbitrum one | `0x13cad3...56aab4` | ATM | unknown | n/a | no | arbitrum one `0xbc33eb...a1b46c` |
| arbitrum one | `0x1d28de...c57c56` | Cap | unknown | n/a | yes | ethereum `0x451d79...2b16f9`; optimism `0xb883ee...92b1d2`; arbitrum one `0xb883ee...92b1d2` |
| arbitrum one | `0x1f6c2e...257b5a` | Sigma | unknown | n/a | no | arbitrum one `0x8cc6d6...853915` |
| arbitrum one | `0x263b7b...55da11` | TheoDepositVault | core_logic | n/a | no | none |
| arbitrum one | `0x2f99b9...9a55e1` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x357510...cf4dbe` | Proxy (impl: StandardArbERC20) | token | $139,683,465.90 | no | proxy only (impl: StandardArbERC20) |
| arbitrum one | `0x361a4d...404968` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x3ca8f1...319009` | TheoDepositVault | core_logic | n/a | no | none |
| arbitrum one | `0x3cda62...fc0f1f` | BasicVaultFactory | registry | n/a | no | arbitrum one `0x3067f3...db328f` |
| arbitrum one | `0x472edc...86e584` | BasicVault | core_logic | n/a | no | none |
| arbitrum one | `0x4a6219...5ea382` | VaultHub | core_logic | n/a | no | arbitrum one `0xcd3287...f33a91` |
| arbitrum one | `0x4d11a4...9e87ce` | TheoVaultRoundsTracker | core_logic | n/a | no | none |
| arbitrum one | `0x54602e...2cee34` | TheoDepositVault | core_logic | n/a | no | none |
| arbitrum one | `0x6712a3...1c9924` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x67c90f...4dd83a` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x6b2a01...bd726a` | Proxy (impl: uniBTC) | unknown | n/a | no | proxy only (impl: uniBTC) |
| arbitrum one | `0x72fb06...be74f2` | LiFiMigrationHelper | operational_periphery | n/a | no | arbitrum one `0x373c48...d4ec6d` |
| arbitrum one | `0x7401ac...8356e1` | VaultKeeper | operational_periphery | n/a | no | none |
| arbitrum one | `0x74c691...f38c17` | RefundUSDC | unknown | n/a | no | none |
| arbitrum one | `0x7671f4...4e0c41` | CCDMHost | unknown | n/a | yes | none |
| arbitrum one | `0x77ef79...252eb3` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x7ca71e...4e8225` | TheoVaultRoundsTracker | core_logic | n/a | no | none |
| arbitrum one | `0x83c6ac...ec19b4` | VaultKeeper | operational_periphery | n/a | no | none |
| arbitrum one | `0x877b9e...0a6031` | CCDMClient | unknown | n/a | no | arbitrum one `0x8c3bb8...ff522d` |
| arbitrum one | `0x96d98f...087b23` | BasicVaultMigration | operational_periphery | n/a | no | none |
| arbitrum one | `0xa1958f...4538f0` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xa3819f...4bd9c3` | TheoVaultRoundsTracker | core_logic | n/a | no | none |
| arbitrum one | `0xa79f1f...ff136b` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xbb691e...9018fb` | VaultKeeper | operational_periphery | n/a | no | none |
| arbitrum one | `0xbc986f...b158b2` | Proxy (impl: Cap) | unknown | n/a | yes | proxy only (impl: Cap) |
| arbitrum one | `0xcf101e...95b28c` | TheoVaultRoundsTracker | core_logic | n/a | no | none |
| arbitrum one | `0xd2b24b...7516d3` | VaultKeeper | operational_periphery | n/a | no | none |
| arbitrum one | `0xdd8bea...00d9aa` | Proxy (impl: Cap) | unknown | n/a | yes | proxy only (impl: Cap) |
| arbitrum one | `0xddded3...df94d8` | BasicVaultMigration | operational_periphery | n/a | no | none |
| arbitrum one | `0xeaf024...9501d3` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xee518a...d418a3` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xf57104...3ad1b3` | BasicVault | core_logic | n/a | no | none |
| arbitrum one | `0xf91d94...f1c2d2` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xf95d42...b98f2f` | LiFiMigrationHelper | operational_periphery | n/a | no | none |
| arbitrum one | `0xfa8c3e...f41e5f` | Vault | core_logic | n/a | no | none |
| arbitrum one | `0xfe5c7e...519f99` | LiFiMigrationHelper | operational_periphery | n/a | no | none |
| linea | `0x04c059...6c150a` | UnnamedContract | unknown | n/a | no | none |

### upstream (73)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x11b380...66be7b` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x1a7158...032a38` | EtherFiStaking | unknown | n/a | no | none |
| ethereum | `0x1b47a6...eff72f` | EETH | unknown | n/a | no | none |
| ethereum | `0x1df46e...90ad93` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x204d10...08d17d` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0x285418...363446` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0x2c28ae...f50155` | EtherfiL1SyncPoolETH | core_logic | n/a | no | none |
| ethereum | `0x2c3b8c...4a9ff7` | BalancerRateProxy | unknown | n/a | no | none |
| ethereum | `0x2d12e6...0ee126` | AxelarMintBridge | operational_periphery | n/a | no | none |
| ethereum | `0x2f2342...54cf3e` | EEigenStrategy | core_logic | n/a | no | none |
| ethereum | `0x332754...ef27f1` | L1LineaReceiverETH | unknown | n/a | no | none |
| ethereum | `0x3376eb...61514a` | RockXETH | unknown | n/a | no | none |
| ethereum | `0x351eea...69a098` | RockXRestaking | unknown | n/a | no | none |
| ethereum | `0x361a67...d10289` | EtherFiOFTAdapter | adapter | n/a | no | none |
| ethereum | `0x3774af...4ba818` | RockXRedeem | unknown | n/a | no | none |
| ethereum | `0x38a3e2...6234e7` | uniBTC | unknown | n/a | no | none |
| ethereum | `0x3e904a...33eab5` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x3f310c...44c5bd` | uniBTC | unknown | n/a | no | none |
| ethereum | `0x3f924b...e5791b` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x413c36...4d1247` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x46c51d...c369dd` | EETH | unknown | n/a | no | none |
| ethereum | `0x56adf8...c334db` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x5c9b33...02cfd7` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x5cb960...648a39` | EtherfiL1SyncPoolETH | core_logic | n/a | no | none |
| ethereum | `0x5e8fd0...618ae0` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x5e9035...9e5242` | EETH | unknown | n/a | no | none |
| ethereum | `0x62cea4...f1ca61` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x655bc4...63d5ae` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0x680d9f...40f565` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x698cb4...781d9a` | EtherFiOracle | operational_periphery | n/a | no | none |
| ethereum | `0x747cac...52232e` | Swapper1InchV6 | adapter | n/a | no | none |
| ethereum | `0x755357...48f7c0` | EtherfiL1LineaReceiverETH | unknown | n/a | no | none |
| ethereum | `0x774c97...f2070d` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x7c3f1f...465c95` | CelerMinterReceiver | unknown | n/a | no | none |
| ethereum | `0x876868...7de595` | RockXRedeem | unknown | n/a | no | none |
| ethereum | `0x8a9486...98e590` | RockXETH | unknown | n/a | no | none |
| ethereum | `0x8d671a...92920c` | RegulationsManager | governance | n/a | no | none |
| ethereum | `0x8ee512...6779ca` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0x901043...605945` | EtherFiOperationParameters | unknown | n/a | no | none |
| ethereum | `0x90687a...2fc487` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x917cee...909d88` | BoringVault | core_logic | $321,567.92 | no | none |
| ethereum | `0x9203ce...718031` | Payment | unknown | n/a | no | none |
| ethereum | `0x92c27b...bd3c4c` | EtherFiAdmin | unknown | n/a | no | none |
| ethereum | `0x92e2bd...e5927e` | EtherFiAdmin | unknown | n/a | no | none |
| ethereum | `0x99be55...377b70` | EtherFiOracle | operational_periphery | n/a | no | none |
| ethereum | `0x9a74f7...630560` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x9b9608...9f22f4` | EtherFiOracle | operational_periphery | n/a | no | none |
| ethereum | `0x9ba573...f7c757` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x9c3749...88d6b2` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x9ca778...3c5f8c` | Redeem | unknown | n/a | no | none |
| ethereum | `0x9d6fc3...7a4aea` | EtherFiAdmin | unknown | n/a | no | none |
| ethereum | `0xbb879a...241ab5` | RockXRestaking | unknown | n/a | no | none |
| ethereum | `0xbc48e8...33d03d` | RockXRedeem | unknown | n/a | no | none |
| ethereum | `0xbed9c1...7e8259` | DirectStaking | unknown | n/a | no | none |
| ethereum | `0xc0ad77...e93f86` | EtherFiAdmin | unknown | n/a | no | none |
| ethereum | `0xc2cba4...221923` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0xc92a22...cd0bde` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0xd4408c...c779e8` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0xd48d3e...905e11` | RockXETH | unknown | n/a | no | none |
| ethereum | `0xd6e217...fd1c6a` | EtherFiOperationParameters | unknown | n/a | no | none |
| ethereum | `0xd96849...ff31b1` | Staking | unknown | n/a | no | none |
| ethereum | `0xdd7835...b08f79` | WeETH | unknown | n/a | no | none |
| ethereum | `0xde31e6...7f3d5b` | EtherFiOracle | operational_periphery | n/a | no | none |
| ethereum | `0xdfc7d2...2b511e` | RockXRedeem | unknown | n/a | no | none |
| ethereum | `0xe629ee...e7d5d9` | WeETH | unknown | n/a | no | none |
| ethereum | `0xfe7fe0...cf7d0d` | EtherFiOFTAdapter | adapter | n/a | no | none |
| bsc | `0x55d398...197955` | BEP20USDT | token | n/a | no | none |
| base | `0x833589...a02913` | Proxy (impl: FiatTokenV2_2) | token | n/a | no | proxy only (impl: FiatTokenV2_2) |
| arbitrum one | `0x3d15fd...e2c3a0` | MultiBridgeToken | operational_periphery | n/a | no | none |
| arbitrum one | `0x8c6653...bb00cb` | LiFiMigrationHelper | operational_periphery | n/a | no | none |
| arbitrum one | `0x91c1f4...e81a67` | LiFiMigrationHelper | operational_periphery | n/a | no | none |
| arbitrum one | `0xbb4b50...8fc38b` | LiFiMigrationHelper | operational_periphery | n/a | no | none |
| arbitrum one | `0xedaaf2...bc320a` | LiFiMigrationHelper | operational_periphery | n/a | no | none |

### standard_library (40)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x02e3e2...af25ea` | Proxy (impl: RockXStaking) | unknown | n/a | no | proxy only (impl: RockXStaking) |
| ethereum | `0x0ef8fa...42d705` | Proxy (impl: EtherFiAdmin) | unknown | n/a | no | proxy only (impl: EtherFiAdmin) |
| ethereum | `0x2ec37d...8f6646` | Proxy (impl: brBTC) | unknown | n/a | no | proxy only (impl: brBTC) |
| ethereum | `0x552b0c...42fa05` | Proxy (impl: Payment) | unknown | n/a | no | proxy only (impl: Payment) |
| ethereum | `0x55a67c...b60edc` | Proxy (impl: CCIPPeer) | unknown | n/a | no | proxy only (impl: CCIPPeer) |
| ethereum | `0x57aaf0...bb6a41` | Proxy (impl: EtherFiOracle) | operational_periphery | n/a | no | proxy only (impl: EtherFiOracle) |
| ethereum | `0x58cb26...9d187d` | Proxy (impl: RockXETH) | unknown | n/a | no | proxy only (impl: RockXETH) |
| ethereum | `0x595677...9a29a5` | Proxy (impl: L1LineaReceiverETH) | unknown | n/a | no | proxy only (impl: L1LineaReceiverETH) |
| ethereum | `0x5e3787...58d2f9` | Proxy (impl: RockXRedeem) | unknown | n/a | no | proxy only (impl: RockXRedeem) |
| ethereum | `0x652199...92ba62` | Create2Factory | registry | n/a | no | none |
| ethereum | `0x6f149f...94aa35` | Proxy (impl: EtherfiL1LineaReceiverETH) | unknown | n/a | no | proxy only (impl: EtherfiL1LineaReceiverETH) |
| ethereum | `0x79f2c3...449597` | Proxy (impl: RockXETH) | unknown | n/a | no | proxy only (impl: RockXETH) |
| ethereum | `0x818116...d4cf3c` | Proxy (impl: GnosisSafe) | governance | n/a | no | proxy only (impl: GnosisSafe) |
| ethereum | `0x89b2c7...740aeb` | Proxy (impl: RockXRedeem) | unknown | n/a | no | proxy only (impl: RockXRedeem) |
| ethereum | `0x8e4304...e37638` | Proxy (impl: 0x4af6c5711171de95d5134056abc12b89d84d209f) | proxy | n/a | no | proxy only |
| ethereum | `0x9f6326...e7f002` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0xbf5495...8d2110` | Proxy (impl: EzEthToken) | token | $174,297,166.12 | no | proxy only (impl: EzEthToken) |
| ethereum | `0xd0ff89...fead1a` | Proxy (impl: EtherFiOperationParameters) | unknown | n/a | no | proxy only (impl: EtherFiOperationParameters) |
| ethereum | `0xd78987...5da146` | Proxy (impl: EtherfiL1SyncPoolETH) | core_logic | n/a | no | proxy only (impl: EtherfiL1SyncPoolETH) |
| ethereum | `0xdfb48a...c1042d` | Proxy (impl: ExtensibleVaultWithExtraData) | core_logic | $4,666.70 | no | proxy only (impl: ExtensibleVaultWithExtraData) |
| ethereum | `0xe54291...abc716` | Proxy (impl: uniBTCRate) | unknown | n/a | no | proxy only (impl: uniBTCRate) |
| ethereum | `0xf4954a...755024` | TimelockController | governance | n/a | no | none |
| optimism | `0xce0d51...2e7fa6` | Proxy (impl: GnosisSafeL2) | governance | n/a | no | proxy only (impl: GnosisSafeL2) |
| bsc | `0x213e5f...aa3bdb` | SafeProxy | unknown | n/a | no | none |
| bsc | `0x4320e5...b86de9` | Proxy (impl: ExtensibleVaultWithExtraData) | core_logic | $12,419.11 | no | proxy only (impl: ExtensibleVaultWithExtraData) |
| bsc | `0x6d1703...1a5943` | Proxy (impl: ExtensibleVaultWithExtraData) | core_logic | $142,642.80 | no | proxy only (impl: ExtensibleVaultWithExtraData) |
| bsc | `0x8e1e6b...16caef` | Proxy (impl: HypERC20) | token | $8,364,751.73 | no | proxy only (impl: HypERC20) |
| bsc | `0xa5deb1...8df42d` | Proxy (impl: ExtensibleVaultWithExtraData) | core_logic | $1,058,611.82 | no | proxy only (impl: ExtensibleVaultWithExtraData) |
| mantle | `0x213e5f...aa3bdb` | GnosisSafeProxy | governance | n/a | no | none |
| mantle | `0xe6829d...59e8fa` | Proxy (impl: L2cmETH) | unknown | n/a | no | proxy only (impl: L2cmETH) |
| base | `0x420000...000006` | WETH9 | token | n/a | no | none |
| base | `0x747a3d...809c55` | Proxy (impl: MitosisHypERC20) | token | n/a | no | proxy only (impl: MitosisHypERC20) |
| base | `0x8a7f54...97a98b` | Proxy (impl: MitosisHypERC20) | token | n/a | no | proxy only (impl: MitosisHypERC20) |
| mode | `0x978fc4...032701` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x241609...cceea5` | Proxy (impl: XERC20) | token | $5,589,546.83 | no | proxy only (impl: XERC20) |
| arbitrum one | `0x5bd649...a4b5e2` | ProxyAdmin | governance | n/a | no | none |
| arbitrum one | `0x978fc4...032701` | Proxy (impl: GnosisSafeL2) | governance | n/a | no | proxy only (impl: GnosisSafeL2) |
| linea | `0x213e5f...aa3bdb` | UnnamedContract | unknown | n/a | no | none |
| blast | `0x213e5f...aa3bdb` | UnnamedContract | unknown | n/a | no | none |
| scroll | `0x213e5f...aa3bdb` | SafeL2 | unknown | n/a | no | none |

### needs_review (103)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x073058...23cc42` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x0bd74c...2d97bd` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x0fe418...dc12f8` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x10f91a...7723dc` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0x124816...5b05fa` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x124816...bd5cea` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x17ea3d...908ee1` | CCIPPeer | unknown | n/a | no | none |
| ethereum | `0x18d0d9...d021b5` | Sigma | unknown | n/a | no | none |
| ethereum | `0x2da0f5...442e39` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x2e346c...61085e` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x309696...888b16` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x3d987e...9a16a2` | LRTSquare | unknown | n/a | no | none |
| ethereum | `0x4af6c5...4d209f` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x56ea97...2f999e` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x5bb017...4d809b` | Proxy (impl: EtherFiOracle) | operational_periphery | n/a | no | proxy only (impl: EtherFiOracle) |
| ethereum | `0x69fd3e...21bbdb` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x6d1703...1a5943` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x747a3d...809c55` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x780a69...f375c5` | uniBTC | unknown | n/a | no | none |
| ethereum | `0x7997cf...2e7eaa` | Proxy (impl: EtherFiOracle) | operational_periphery | n/a | no | proxy only (impl: EtherFiOracle) |
| ethereum | `0x857b4f...d16f8b` | Proxy (impl: EtherFiStaking) | unknown | n/a | no | proxy only (impl: EtherFiStaking) |
| ethereum | `0x8a7f54...97a98b` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0x8f3bcf...75d3f3` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xa3a30f...85b1ae` | FBTCProxy | unknown | n/a | no | none |
| ethereum | `0xa5deb1...8df42d` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xa838b3...03ec54` | LRTSquare | unknown | n/a | no | none |
| ethereum | `0xac3977...79f4d5` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xac6f8c...e9f7f0` | brBTC | unknown | n/a | no | none |
| ethereum | `0xae8afc...3b3cdd` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xb6b4a4...6c7d36` | Proxy (impl: EtherFiStaking) | unknown | n/a | no | proxy only (impl: EtherFiStaking) |
| ethereum | `0xb9e834...b86690` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xe8e55a...22e3e6` | EETH | unknown | n/a | no | none |
| ethereum | `0xf35df2...28a09d` | RockXStaking | unknown | n/a | no | none |
| ethereum | `0xf50dba...bcdae9` | uniBTCRate | unknown | n/a | no | none |
| ethereum | `0xf75cf7...e31953` | UnnamedContract | unknown | n/a | no | none |
| manta | `0x77b6f9...1c2300` | UnnamedContract | unknown | n/a | no | none |
| manta | `0x8735c8...61981e` | UnnamedContract | unknown | n/a | no | none |
| manta | `0xb883ee...92b1d2` | UnnamedContract | unknown | n/a | no | none |
| mode | `0xa30c15...dfa442` | UnnamedContract | unknown | n/a | no | none |
| mode | `0xb883ee...92b1d2` | UnnamedContract | unknown | n/a | no | none |
| mode | `0xbed575...749471` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x8a6abd...170ac3` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x9002d8...c606ae` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0x94c7f8...cce2b3` | uniBTC | unknown | n/a | no | none |
| arbitrum one | `0xd1945a...780be2` | UnnamedContract | unknown | n/a | no | none |
| arbitrum one | `0xf781ac...c3cca6` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x03d020...d2c275` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x13cad3...56aab4` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x1b3588...8a5f12` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x1bf74c...0b8aa6` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x1d28de...c57c56` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x20ee00...e38cc7` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x22c498...30f5dc` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x241a91...518344` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x2bfbb9...f567d4` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x3478de...b5eaa5` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x34a40e...5f5923` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x3a1986...5a3975` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x3cda62...fc0f1f` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x4a6219...5ea382` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x4e2293...1690ea` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x52c422...96623b` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x56ced4...b08768` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x5bd649...a4b5e2` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x5e9035...9e5242` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x6000ed...487e9b` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x60be06...238755` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x632829...cbdb0a` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x666402...d83b73` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x6b8717...f4c4d7` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x6d2cf7...e7e7af` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x6e4b3f...13f425` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x7671f4...4e0c41` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x823106...6d9cca` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x86c4dc...5f6e99` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x877b9e...0a6031` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x8c3bb8...ff522d` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x8f34cf...3ebb4c` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x95f113...c76781` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x96d6ce...d9ec2d` | UnnamedContract | unknown | n/a | no | none |
| linea | `0x9b6544...cf42e0` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xb73676...0eb065` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xb883ee...92b1d2` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xbb4b50...8fc38b` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xbc33eb...a1b46c` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xc42853...087dcb` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xcd3287...f33a91` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xcf101e...95b28c` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xd1945a...780be2` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xf57104...3ad1b3` | UnnamedContract | unknown | n/a | no | none |
| linea | `0xfd503f...04402c` | UnnamedContract | unknown | n/a | no | none |
| blast | `0x0817b8...ae31ef` | UnnamedContract | unknown | n/a | no | none |
| blast | `0x096430...4169de` | UnnamedContract | unknown | n/a | no | none |
| blast | `0x8506fd...3f60a0` | UnnamedContract | unknown | n/a | no | none |
| scroll | `0x01f0a3...a1c506` | TransparentUpgradeableProxy | unknown | n/a | no | none |
| scroll | `0x0b75e1...eaa2fa` | UnnamedContract | unknown | n/a | no | none |
| scroll | `0x15eefe...ef4d25` | MultiBridgeToken | unknown | n/a | no | none |
| scroll | `0x54602e...2cee34` | UnnamedContract | unknown | n/a | no | none |
| scroll | `0xa0eeb4...28bd28` | BasicVaultMigration | unknown | n/a | no | none |
| scroll | `0xb9ca61...4308d6` | BeaconProxy | unknown | n/a | no | none |
| scroll | `0xb9e834...b86690` | UnnamedContract | unknown | n/a | no | none |
| scroll | `0xcd3287...f33a91` | TransparentUpgradeableProxy | unknown | n/a | no | none |
| scroll | `0xcf101e...95b28c` | UnnamedContract | unknown | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| Introduction | Code4rena | 2024-04 | Direct | UNKNOWN | 7 | low |
| : The audit report from [Zellic](https://www.zellic.io/) can be found [here](). (also discovered via alternate URL) | Zellic | 2025-05 | Direct | n/a | 0 | n/a |
| 2025-09-21_Zenith_Protocol.pdf | Zenith | 2025-09 | Direct | n/a | 0 | n/a |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3dbe6b...a6d4e2` | EtherFiRestaker | core_logic | $217,003,475.84 | Native contract with $217,003,475.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x357510...cf4dbe` | Proxy (impl: StandardArbERC20) | token | $139,683,465.90 | Native contract with $139,683,465.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7d81a...8334c7` | brVault | core_logic | $40,632.23 | Native contract with $40,632.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb674f...36ba8c` | VaultWithoutNative | core_logic | $24,644.31 | Native contract with $24,644.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29b06c...50a415` | RewardPool | core_logic | $0.00 | Native contract with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c...350568` | Proxy (impl: uniBTC) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02656f...bac65b` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x047a77...f15889` | MembershipManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04f744...b7b5c0` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x078452...98880e` | Vault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07a5d3...0eef57` | DirectStaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ac774...e76f52` | PodOwner | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b75e1...eaa2fa` | TheoDepositVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c4a8a...3d63c4` | MockEtherFiAdmin | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c5631...b69295` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fb6cc...f85fe7` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10f2c5...c561d6` | depositRootGenerator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x11858b...21cf63` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x11964b...09954b` | directBTC | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x130e22...3a0729` | BoringVaultPriceProvider | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x138f08...ea7743` | LRTSquared | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x176bfd...e18bbb` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x190f44...a3cfee` | MembershipManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x191a8f...8155c7` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19c10a...0594d7` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1cb489...1957de` | LRTSquaredCore | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d716d...f2cd24` | LoyaltyPointsMarketSafe | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e4d0a...c4e518` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fcb83...2cd0b4` | RegulationsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20e885...b509ad` | DummyTokenUpgradeable | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20ee00...e38cc7` | AddressProvider | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20f2a7...ee9073` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2225c9...6b6ed3` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2261ef...280138` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26542f...dd0c65` | CumulativeMerkleDrop | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26a2ca...79c22a` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x274bbd...cb2fc8` | NetworkRestakeResetHook | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28a6e7...c1f32f` | PriceProvider | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x290d98...307106` | MembershipNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b7790...120655` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x316554...f4ee24` | LoyaltyPointsMarketSafe | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x317b8e...876ef6` | Vault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x325ea0...c85fb9` | globalIndexLibrary | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35fa16...118ac2` | Proxy (impl: EETH) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39272e...d334c0` | L1SyncPoolETH | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ed97c...0a9cd4` | WithdrawRequestNFT | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x403ba4...310cef` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x40819e...6311ca` | L1ModeReceiverETHUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x472372...108e45` | Vault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x47b091...cc9ebb` | DirectStaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48276d...9f78f8` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ad639...72fa1e` | StakingManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d6c23...7a9f04` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d784a...d93860` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51a7f8...db6c5e` | uniBTC | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52bbf2...54e3c0` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5573d6...e77fa8` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5769ff...395455` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x595994...a0fa96` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x605f17...426399` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61e2ca...3f296a` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x642fb9...0b6583` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6494c1...a41042` | NFTExchange | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6827bf...09b710` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x683840...2430c1` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6882ae...57497d` | Redeem | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68fe80...ba5366` | AuctionManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a3938...687242` | BNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b5c61...c929bc` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b6d4e...6bacdf` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x704a2f...9481ee` | DirectBTCMinter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7106e8...6d29dc` | MembershipNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x720081...eb859d` | DelayRedeemRouter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72481f...b97f4a` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76c57e...805ad8` | SEthFiStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x792ef6...e9b44a` | EtherFiAvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79ef32...f98c0a` | MembershipNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c37cd...bcf63f` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c8efd...1e4543` | NFTExchange | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e8e03...288f20` | PodOwner | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x812e3d...57bfaa` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x81be35...31b523` | eBtcRateProvider | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82c12f...31c4b8` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x833514...3cc0b8` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83dd4b...c43c7f` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8487c5...e4a848` | AddressProvider | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8969d7...3960f5` | AvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b7a14...97ff44` | PreOrder | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dac64...43ed6a` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e35d6...aa26f5` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x91121c...75edcb` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x942ced...8f4748` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97176e...de57e9` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x997c54...1009f7` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c377a...f11708` | TNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c8725...a5f412` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9cfbf2...d665d6` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f0ae0...982da9` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f26d4...d20761` | EtherFiTimelock | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f4c27...076776` | depositRootGenerator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa20caf...d9a8de` | Staking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2f5e6...1082ae` | NetworkRestakeResetHook | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa4ab5e...b7583d` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6c706...98f223` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa7581e...9b2a0f` | wstETH_Burner | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8a8be...4ffb1f` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9094e...acb147` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaae009...86fee6` | DummyTokenUpgradeable | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab47d7...fbe70d` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad5074...f2130f` | EtherFiAvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad6ad4...c35599` | BNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad8bd6...62b96a` | Restaking | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf8749...e0d322` | ProtocolRevenueManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafb82c...1afea7` | TNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb27b1d...1f02c1` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb27d4e...d5868f` | StakingManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb27e1b...de3b84` | MembershipManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb619f9...6dd42c` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb737e9...bf19c3` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb98331...05dcd2` | PreOrder | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba4f87...65f10e` | Proxy (impl: DummyTokenUpgradeable) | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc22c7f...87e691` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2455e...f12aa9` | DummyTokenUpgradeable | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2709a...a3d321` | EtherFiAvsOperatorsManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2743a...6fb5e5` | AvsOperatorManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc55cfc...af280a` | NetworkRestakeResetHook | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8160b...0569ca` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc8ad09...e1696f` | Proxy (impl: L1ModeReceiverETHUpgradeable) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbf18f...6433a0` | AuctionManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe2...59b7ee` | Proxy (impl: WeETH) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcef428...cfc474` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd27a57...1f5a8b` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd2b8c7...d02ff5` | LRTSquaredAdmin | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd60ec8...0277c7` | TNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd88f3f...89fed3` | EtherFiViewer | periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd90c56...725fda` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdaaac9...008ca7` | WithdrawRequestNFT | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc9e0d...04fae7` | AvsOperatorManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdce5ac...4800f2` | EtherFiAvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe41aea...e33f72` | Liquifier | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe55eac...008c69` | StakingManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6179d...b144dd` | MembershipNFT | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe86922...a5eb79` | LiquidityPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeda445...419e55` | AvsOperatorManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xee179d...575b54` | LRTSquared | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xefc323...cf2e8f` | L1ModeReceiverETHUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0ab75...bc342b` | TransferProxy | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf1376b...df51f4` | Proxy (impl: RockXETH) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf38098...248f53` | EtherFiAvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf47187...064d29` | AvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf68f84...9d3d60` | L1ModeReceiverETH | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf710e9...8f5142` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8208a...9f0625` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa7ab3...a1c319` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfab5f2...425ed1` | L1ModeReceiverETHUpgradeable | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfba2e9...2466c1` | EtherFiAvsOperator | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc9268...9d4c36` | RewardPool | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfca266...c695ae` | EtherFiNode | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfcc674...ee2caf` | NodeOperatorManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdb118...8747fb` | EtherFiNodesManager | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x346e03...0e08f0` | OptimismMintableERC20 | bridge_template | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x939197...2b593e` | Proxy (impl: uniBTC) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x6ff000...dbce55` | BasicVaultMigration | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x04c059...6c150a` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x01f90a...43381d` | TheoDepositVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x04af63...e58638` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x08cb45...46775d` | Vault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x13cad3...56aab4` | ATM | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x1f6c2e...257b5a` | Sigma | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x263b7b...55da11` | TheoDepositVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x2f99b9...9a55e1` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x361a4d...404968` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x3ca8f1...319009` | TheoDepositVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x3cda62...fc0f1f` | BasicVaultFactory | registry | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x472edc...86e584` | BasicVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x4a6219...5ea382` | VaultHub | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x4d11a4...9e87ce` | TheoVaultRoundsTracker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x54602e...2cee34` | TheoDepositVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x6712a3...1c9924` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x67c90f...4dd83a` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x6b2a01...bd726a` | Proxy (impl: uniBTC) | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x72fb06...be74f2` | LiFiMigrationHelper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x7401ac...8356e1` | VaultKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x74c691...f38c17` | RefundUSDC | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x77ef79...252eb3` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x7ca71e...4e8225` | TheoVaultRoundsTracker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x83c6ac...ec19b4` | VaultKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x877b9e...0a6031` | CCDMClient | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0x96d98f...087b23` | BasicVaultMigration | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xa1958f...4538f0` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xa3819f...4bd9c3` | TheoVaultRoundsTracker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xa79f1f...ff136b` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xbb691e...9018fb` | VaultKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xcf101e...95b28c` | TheoVaultRoundsTracker | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xd2b24b...7516d3` | VaultKeeper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xddded3...df94d8` | BasicVaultMigration | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xeaf024...9501d3` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xee518a...d418a3` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xf57104...3ad1b3` | BasicVault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xf91d94...f1c2d2` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xf95d42...b98f2f` | LiFiMigrationHelper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xfa8c3e...f41e5f` | Vault | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum one | `0xfe5c7e...519f99` | LiFiMigrationHelper | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x04c059...6c150a` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 208 |
| upstream | 73 |
| standard_library | 40 |
| needs_review | 103 |

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
