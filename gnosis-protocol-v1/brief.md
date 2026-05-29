# Agentic Audit Brief: Gnosis Protocol v1

⚠️ Lifecycle status: DECLINING - TVL changed 9.2% over 90 days

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-29T07:55:16.348Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 112 unique implementations (165 raw deployments)
- DeFi Llama TVL: $2,227,602.00
- On-chain TVL (included contracts): $95,875,443.05
- TVL by chain: Ethereum $95,875,443.05

## Project Description

Gnosis Protocol v1 is a decentralized exchange protocol that enables batch auctions for trading tokens, with a focus on prediction market outcomes and conditional tokens. It provides infrastructure for trustless, on-chain order matching and settlement.

### Architecture

The BatchExchange contract relies on IdToAddressBiMap for efficient address-to-ID mapping, while ConditionalTokens enable prediction market outcomes. Proxy contracts like AdminUpgradeabilityProxy and MassetProxy provide upgradeability and asset management, with various tokens serving as trading pairs or governance assets.

## Audit Coverage Summary

- Verified implementations audited: 1/75 (1.3%)
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 112
- Raw deployments: 165
- Audits discovered: 12
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $94,385,998.56
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 9 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $94,385,998.56 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConditionalTokens | token | ethereum | [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Api3Token | token | ethereum | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| DIAToken | token | ethereum | [`0x84ca8b...3c9419`](./contracts/ethereum-1/0x84ca8bc7997272c7cfb4d0cd3d55cd942b3c9419/) | ⚠️ Unaudited |
| MetaToken | token | ethereum | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| AaveIntegration | unknown | ethereum | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | ⚠️ Unaudited |
| BaseToken | token | ethereum | [`0x22eeab...a0f0e4`](./contracts/ethereum-1/0x22eeab2f980e8ed7824f8ea548c9595564a0f0e4/) | ⚠️ Unaudited |
| BasketManager | governance | ethereum | 3 deployments: ethereum [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/); ethereum `0x6efa26...79bf61`; ethereum `0x968030...69d7db` | ⚠️ Unaudited |
| BatchExchange | periphery | ethereum | 2 deployments: ethereum [`0x46f3f2...5e87b5`](./contracts/ethereum-1/0x46f3f2f9662f66a6ddd6a8d1ddec3cd9ae5e87b5/); ethereum `0x6d210b...059015` | ⚠️ Unaudited |
| BoostDirector | unknown | ethereum | [`0x8892d7...e10aaf`](./contracts/ethereum-1/0x8892d7a5e018cddb631f4733b5c1654e9de10aaf/) | ⚠️ Unaudited |
| BoostedSavingsVault | core_logic | ethereum | 10 deployments: ethereum [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/); ethereum `0x8dacbe...476958`; ethereum `0x931420...fd7df8`; ethereum `0xa283fc...559d5d`; ethereum `0xadeedd...343c99`; ethereum `0xb1ad72...99851b`; ethereum `0xce1284...d33dc4`; ethereum `0xd124b5...2a6207`; ethereum `0xf5ad2b...352107`; ethereum `0xf65d53...75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | core_logic | ethereum | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | ⚠️ Unaudited |
| Collector | unknown | ethereum | [`0x3f63e5...6c0e43`](./contracts/ethereum-1/0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | [`0xc00e94...f26888`](./contracts/ethereum-1/0xc00e94cb662c3520282e6f5717214004a7f26888/) | ⚠️ Unaudited |
| CompoundIntegration | unknown | ethereum | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | ethereum | 3 deployments: ethereum [`0x2825f4...016cfa`](./contracts/ethereum-1/0x2825f4ddaa5809da1af2a2d240c4ac4733016cfa/); ethereum `0x334cd6...0a7764`; ethereum `0xa1d65e...725521` | ⚠️ Unaudited |
| DelayedProxyAdmin | governance | ethereum | [`0x5c8eb5...f92386`](./contracts/ethereum-1/0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386/) | ⚠️ Unaudited |
| DIACoingeckoOracle | operational_periphery | ethereum | [`0x07e412...c35d60`](./contracts/ethereum-1/0x07e4120dd7411a49e091a20fa0be33a183c35d60/) | ⚠️ Unaudited |
| DIACompanyLockup | unknown | ethereum | [`0xfaeb4f...503d85`](./contracts/ethereum-1/0xfaeb4f91cf256036015f5f6c2ddfdab171503d85/) | ⚠️ Unaudited |
| Disbursement | unknown | ethereum | [`0xff2e23...377370`](./contracts/ethereum-1/0xff2e231b3d6260937edc698da5f77b6d3d377370/) | ⚠️ Unaudited |
| Dispute | unknown | ethereum | [`0x889cdd...92af86`](./contracts/ethereum-1/0x889cdd162cd5125dcecd465f5accd65fff92af86/) | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | ethereum | [`0xba22d7...1cfcd6`](./contracts/ethereum-1/0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6/) | ⚠️ Unaudited |
| DutchXSellerModule | unknown | ethereum | [`0xe3ebeb...0aa84d`](./contracts/ethereum-1/0xe3ebeb3a6a535131f2861f866d98d555580aa84d/) | ⚠️ Unaudited |
| DXDBurnRelayer | unknown | ethereum | [`0x95f823...4635db`](./contracts/ethereum-1/0x95f8231621c47e64bf7037d399cb4bc3e34635db/) | ⚠️ Unaudited |
| DXDPayRelayer | unknown | ethereum | [`0xa96e6c...2e0576`](./contracts/ethereum-1/0xa96e6c81a5fd03c95ae83aea810774a5c02e0576/) | ⚠️ Unaudited |
| DXDSellRelayer | unknown | ethereum | [`0xdee210...e5c095`](./contracts/ethereum-1/0xdee210b9b3f4e1bd3f64944c277d4dcbe4e5c095/) | ⚠️ Unaudited |
| DXTokenRegistry | registry | ethereum | [`0x14a588...21fafb`](./contracts/ethereum-1/0x14a588f15a043913b30c19a80049876e4a21fafb/) | ⚠️ Unaudited |
| Ejector | unknown | ethereum | [`0x71061e...7a0434`](./contracts/ethereum-1/0x71061e3f432fc5bee3a6763cd35f50d3c77a0434/) | ⚠️ Unaudited |
| Enum | unknown | ethereum | [`0xb1e1ae...2f43ee`](./contracts/ethereum-1/0xb1e1ae60607f24a6647d0339050cb69c312f43ee/) | ⚠️ Unaudited |
| FeederLogic | unknown | ethereum | [`0x2837c7...4125de`](./contracts/ethereum-1/0x2837c77527c37d61d9763f53005211dacb4125de/) | ⚠️ Unaudited |
| FeederManager | governance | ethereum | [`0x90ae54...0abd8b`](./contracts/ethereum-1/0x90ae544e8cc76d2867987ee4f5456c02c50abd8b/) | ⚠️ Unaudited |
| FeederPool | core_logic | ethereum | 6 deployments: ethereum [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/); ethereum `0x62aa1d...9e063c`; ethereum `0x9ab586...8c90e2`; ethereum `0xa88328...22b9ea`; ethereum `0xb61a6f...4921e0`; ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| FeederWrapper | unknown | ethereum | [`0xdc6611...9f3a35`](./contracts/ethereum-1/0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35/) | ⚠️ Unaudited |
| Fixed192x64Math | unknown | ethereum | [`0x75a6d6...3805f3`](./contracts/ethereum-1/0x75a6d6251511af081f77f2b531c14808fb3805f3/) | ⚠️ Unaudited |
| ForgeValidator | unknown | ethereum | 2 deployments: ethereum [`0x4ca912...138ded`](./contracts/ethereum-1/0x4ca9123afc43dc9dde52a57a51afc44324138ded/); ethereum `0xbb90d0...12eaa1` | ⚠️ Unaudited |
| IdToAddressBiMap | unknown | ethereum | 2 deployments: ethereum [`0x6f4008...aa841f`](./contracts/ethereum-1/0x6f400810b62df8e13fded51be75ff5393eaa841f/); ethereum `0xed4d05...8d1761` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InterestValidator | unknown | ethereum | 2 deployments: ethereum [`0x98c54f...f7ba0e`](./contracts/ethereum-1/0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e/); ethereum `0xf1049a...ff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | 2 deployments: ethereum [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/); ethereum `0xd36050...0f2f3f` | ⚠️ Unaudited |
| Liquidator | operational_periphery | ethereum | 4 deployments: ethereum [`0x87a59a...449b01`](./contracts/ethereum-1/0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01/); ethereum `0x8bd8ec...e093cc`; ethereum `0xb7c77d...0d5b9d`; ethereum `0xe595d6...1f1dbd` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | registry | ethereum | [`0x37186b...256c4b`](./contracts/ethereum-1/0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b/) | ⚠️ Unaudited |
| Manager | governance | ethereum | [`0x1e91f8...188848`](./contracts/ethereum-1/0x1e91f826fa8aa4fa4d3f595898af3a64dd188848/) | ⚠️ Unaudited |
| Masset | unknown | ethereum | 4 deployments: ethereum [`0x69ad13...2b587f`](./contracts/ethereum-1/0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f/); ethereum `0xb83a5a...686f7e`; ethereum `0xe0d0d0...3df1c4`; ethereum `0xe4c5b1...a7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | ethereum | [`0xe7e41f...9d5944`](./contracts/ethereum-1/0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944/) | ⚠️ Unaudited |
| MassetValidationHelper | periphery | ethereum | 2 deployments: ethereum [`0x4c5e03...eac89b`](./contracts/ethereum-1/0x4c5e03065bc52cce84f3ac94df14bbac27eac89b/); ethereum `0xabcc93...c16911` | ⚠️ Unaudited |
| MerkleDrop | operational_periphery | ethereum | [`0xf6e53b...9bc7a5`](./contracts/ethereum-1/0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | [`0xda681d...df9001`](./contracts/ethereum-1/0xda681d409319b1f4122b1402c8b5cd4baedf9001/) | ⚠️ Unaudited |
| MStableHelper | periphery | ethereum | [`0xe15aad...f6e8a3`](./contracts/ethereum-1/0xe15aad5d6b7433e5988415274529311f6bf6e8a3/) | ⚠️ Unaudited |
| MStableVoterProxy | unknown | ethereum | 2 deployments: ethereum [`0x10d96b...585a6e`](./contracts/ethereum-1/0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e/); ethereum `0x7c4cf0...a5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| Nexus | unknown | ethereum | [`0xafce80...845eb3`](./contracts/ethereum-1/0xafce80b19a8ce13dec0739a1aab7a028d6845eb3/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x07ed32...e7fb5e`](./contracts/ethereum-1/0x07ed323e96b5b37f49432ce86277a56015e7fb5e/); ethereum `0x3cd782...ace0c0`; ethereum `0xc8451d...d79cc6` | ⚠️ Unaudited |
| PSYieldContract | unknown | ethereum | [`0x057657...d36eca`](./contracts/ethereum-1/0x0576577e89485d377de13e76aec99955b8d36eca/) | ⚠️ Unaudited |
| ReserveBuyBackLimit | unknown | ethereum | [`0x40da0d...286477`](./contracts/ethereum-1/0x40da0d076a5004beb0b97d08e8cee2667b286477/) | ⚠️ Unaudited |
| RevenueRecipient | operational_periphery | ethereum | 2 deployments: ethereum [`0xa78242...14fed5`](./contracts/ethereum-1/0xa7824292efdee1177a1c1bed0649cfdd6114fed5/); ethereum `0xffe2cd...6b6bec` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | ethereum | [`0xb8be71...ae4316`](./contracts/ethereum-1/0xb8be713fee0b3f437be4793a23f96fec7eae4316/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0x04dfdf...916c50`](./contracts/ethereum-1/0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50/) | ⚠️ Unaudited |
| SaveWrapper | unknown | ethereum | 2 deployments: ethereum [`0x7cb157...270eb9`](./contracts/ethereum-1/0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9/); ethereum `0xd7c346...09dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | ethereum | 3 deployments: ethereum [`0x1c728f...572a39`](./contracts/ethereum-1/0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39/); ethereum `0x3563cb...0b2bf8`; ethereum `0xcf3f73...b2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| SavingsManager | governance | ethereum | 6 deployments: ethereum [`0x6f0566...e07d3f`](./contracts/ethereum-1/0x6f05662109b296afb0f02bf490300c6b95e07d3f/); ethereum `0x7046b0...815370`; ethereum `0x7594ae...e46136`; ethereum `0x84e563...2ee6d1`; ethereum `0x9781c4...b6b301`; ethereum `0xcefcbb...50234f` | ⚠️ Unaudited |
| SimpleAirdropper | operational_periphery | ethereum | [`0xda13e3...b178fd`](./contracts/ethereum-1/0xda13e3afed9c112bd906c732684a49dd65b178fd/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 4 deployments: ethereum [`0x0d4cd2...f94be4`](./contracts/ethereum-1/0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4/); ethereum `0x6de3a9...651fb5`; ethereum `0x9b4aba...6c9a6f`; ethereum `0xe6e6e2...a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | 4 deployments: ethereum [`0x259702...ad4e70`](./contracts/ethereum-1/0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70/); ethereum `0x881c72...790c80`; ethereum `0xf4a7d2...f7f027`; ethereum `0xf7575d...baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | core_logic | ethereum | [`0x54d06a...f603f3`](./contracts/ethereum-1/0x54d06a0e1ce55a7a60ee175abceac7e363f603f3/) | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | core_logic | ethereum | [`0xd409c5...06d30a`](./contracts/ethereum-1/0xd409c506742b7f76f164909025ab29a47e06d30a/) | ⚠️ Unaudited |
| TimeLock | governance | ethereum | [`0x75dae1...ab1478`](./contracts/ethereum-1/0x75dae1eca073cf35ba203e3aca0e21e7d2ab1478/) | ⚠️ Unaudited |
| TimelockManager | governance | ethereum | 2 deployments: ethereum [`0x41ab01...ba1f03`](./contracts/ethereum-1/0x41ab01244c3f466294dbc36916a8b62d56ba1f03/); ethereum `0xfaef86...f02baa` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x18ccbc...69ec79`](./contracts/ethereum-1/0x18ccbcf6a8a415206838bd1ad6e2f648da69ec79/); ethereum `0xbd12eb...ae3fd0` | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | 2 deployments: ethereum [`0x3af2ae...2157c9`](./contracts/ethereum-1/0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9/); ethereum `0x5250b9...d8ae7d` | ⚠️ Unaudited |
| YieldContract | unknown | ethereum | 2 deployments: ethereum [`0x594900...56d353`](./contracts/ethereum-1/0x59490052ea18d4fd974657d0aa7c8424d456d353/); ethereum `0x90ef22...2a5f4f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bf9f7...290dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x453378...bee787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5adaa0...e8b463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60cbf3...fad4d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9494d6...96f743` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9864db...7a6570` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d066c...48a673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3b3fb...e4ce9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaebd84...e8af43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcddb32...8d2636` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf4482...973d20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe290c1...3c5c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6bc5a...59aa96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea61f9...4cbf3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf02391...7388b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2020-01-20_accumulator_audit.pdf](https://github.com/gnosis/conditional-tokens-contracts/blob/master/docs/audit/2020-01-20_accumulator_audit.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | 1 | high |
| [AuditReport-ConditionalTokens.md](https://github.com/gnosis/conditional-tokens-contracts/blob/master/docs/audit/AuditReport-ConditionalTokens.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Gnosis_Audit_Report.pdf](https://github.com/gnosis/pm-contracts/blob/master/docs/audit/Gnosis_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GnosisProtocolV2May2021.pdf](https://github.com/gnosis/gp-v2-contracts/blob/main/audits/GnosisProtocolV2May2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [[Cowswap_10122021]SCAudit_Report_2.pdf](https://github.com/gnosis/gp-v2-contracts/blob/main/audits/%5BCowswap_10122021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [architecture.md](https://github.com/gnosis/gp-v2-contracts/blob/main/docs/architecture.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.md](https://github.com/gnosis/gp-v2-contracts/blob/main/docs/index.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HashiMay2023.pdf](https://github.com/gnosis/hashi/blob/main/audits/HashiMay2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [g0-HashiMar2024.pdf](https://github.com/gnosis/hashi/blob/main/audits/g0-HashiMar2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | MetaToken | token | $2,579,477.45 | Verified native implementation with $2,579,477.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | AaveIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/) | BasketManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46f3f2...5e87b5`](./contracts/ethereum-1/0x46f3f2f9662f66a6ddd6a8d1ddec3cd9ae5e87b5/) | BatchExchange | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | BoostedSavingsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | BoostedSavingsVault_imbtc_mainnet_2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f63e5...6c0e43`](./contracts/ethereum-1/0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | CompoundIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2825f4...016cfa`](./contracts/ethereum-1/0x2825f4ddaa5809da1af2a2d240c4ac4733016cfa/) | DecentralizedAutonomousTrust | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c8eb5...f92386`](./contracts/ethereum-1/0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386/) | DelayedProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff2e23...377370`](./contracts/ethereum-1/0xff2e231b3d6260937edc698da5f77b6d3d377370/) | Disbursement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889cdd...92af86`](./contracts/ethereum-1/0x889cdd162cd5125dcecd465f5accd65fff92af86/) | Dispute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3ebeb...0aa84d`](./contracts/ethereum-1/0xe3ebeb3a6a535131f2861f866d98d555580aa84d/) | DutchXSellerModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95f823...4635db`](./contracts/ethereum-1/0x95f8231621c47e64bf7037d399cb4bc3e34635db/) | DXDBurnRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa96e6c...2e0576`](./contracts/ethereum-1/0xa96e6c81a5fd03c95ae83aea810774a5c02e0576/) | DXDPayRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdee210...e5c095`](./contracts/ethereum-1/0xdee210b9b3f4e1bd3f64944c277d4dcbe4e5c095/) | DXDSellRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14a588...21fafb`](./contracts/ethereum-1/0x14a588f15a043913b30c19a80049876e4a21fafb/) | DXTokenRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2837c7...4125de`](./contracts/ethereum-1/0x2837c77527c37d61d9763f53005211dacb4125de/) | FeederLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/) | FeederPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/) | FeederPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc6611...9f3a35`](./contracts/ethereum-1/0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35/) | FeederWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca912...138ded`](./contracts/ethereum-1/0x4ca9123afc43dc9dde52a57a51afc44324138ded/) | ForgeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f4008...aa841f`](./contracts/ethereum-1/0x6f400810b62df8e13fded51be75ff5393eaa841f/) | IdToAddressBiMap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | IncentivisedVotingLockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98c54f...f7ba0e`](./contracts/ethereum-1/0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e/) | InterestValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37186b...256c4b`](./contracts/ethereum-1/0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b/) | LMSRMarketMakerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e91f8...188848`](./contracts/ethereum-1/0x1e91f826fa8aa4fa4d3f595898af3a64dd188848/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | MassetBtcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c5e03...eac89b`](./contracts/ethereum-1/0x4c5e03065bc52cce84f3ac94df14bbac27eac89b/) | MassetValidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6e53b...9bc7a5`](./contracts/ethereum-1/0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5/) | MerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda681d...df9001`](./contracts/ethereum-1/0xda681d409319b1f4122b1402c8b5cd4baedf9001/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | MusdV3_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40da0d...286477`](./contracts/ethereum-1/0x40da0d076a5004beb0b97d08e8cee2667b286477/) | ReserveBuyBackLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa78242...14fed5`](./contracts/ethereum-1/0xa7824292efdee1177a1c1bed0649cfdd6114fed5/) | RevenueRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dfdf...916c50`](./contracts/ethereum-1/0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c728f...572a39`](./contracts/ethereum-1/0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39/) | SavingsContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | SavingsContract_imbtc_mainnet_22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda13e3...b178fd`](./contracts/ethereum-1/0xda13e3afed9c112bd906c732684a49dd65b178fd/) | SimpleAirdropper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d4cd2...f94be4`](./contracts/ethereum-1/0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259702...ad4e70`](./contracts/ethereum-1/0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70/) | StakingRewardsWithPlatformToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75dae1...ab1478`](./contracts/ethereum-1/0x75dae1eca073cf35ba203e3aca0e21e7d2ab1478/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41ab01...ba1f03`](./contracts/ethereum-1/0x41ab01244c3f466294dbc36916a8b62d56ba1f03/) | TimelockManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18ccbc...69ec79`](./contracts/ethereum-1/0x18ccbcf6a8a415206838bd1ad6e2f648da69ec79/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3af2ae...2157c9`](./contracts/ethereum-1/0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x594900...56d353`](./contracts/ethereum-1/0x59490052ea18d4fd974657d0aa7c8424d456d353/) | YieldContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [9139] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9140] 0002-metadata-manifest-and-pull-command.md
- [9141] 0003-bun-package-manager-node-runtime.md
- [9144] Gnosis_Audit_Report.pdf
- [9145] GnosisProtocolV2May2021.pdf
- [9146] [Cowswap_10122021]SCAudit_Report_2.pdf
- [9147] architecture.md
- [9148] index.md
- [9149] HashiMay2023.pdf
- [9150] g0-HashiMar2024.pdf

Fork inheritance lineage and inherited audits are included when available.
