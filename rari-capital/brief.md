# Agentic Audit Brief: Rari Capital

⚠️ Lifecycle status: DEAD - TVL dropped 2.3% over 90 days

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-05-24T21:37:40.432Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 253 unique implementations (508 raw deployments)
- DeFi Llama TVL: $1,506,316.16
- On-chain TVL (included contracts): $321,373,404.89
- TVL by chain: Ethereum $321,373,404.89

## Project Description

Rari Capital is a yield aggregation protocol that optimizes user deposits across lending markets and stablecoin pools. It includes Fuse, a permissionless lending pool creation platform, and Rari Fund, which auto-allocates stablecoins to earn yield.

### Architecture

The FusePoolDirectory manages lending pools, while RariFundProxy handles stablecoin yield strategies; both rely on shared governance and token distribution contracts like RariGovernanceTokenUniswapDistributor.

## Audit Coverage Summary

- Verified implementations audited: 0/89 (0.0%)
- Verified + Unaudited implementations: 89
- Verified by bytecode match: 0
- Unverified implementations: 164
- Unique implementations: 253
- Raw deployments: 508
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $321,373,404.89
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $321,373,404.89 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (89)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Delegate | token | ethereum | 99 deployments: ethereum [`0x00ce8e...8ae5b8`](./contracts/ethereum-1/0x00ce8e3746240b0ca44046b550c8e54e848ae5b8/); ethereum `0x027255...3f7e03`; ethereum `0x0302f5...1c3464`; ethereum `0x03b6bf...a2412b`; ethereum `0x04281f...326531`; ethereum `0x04543d...65901b`; ethereum `0x0879db...2d415a`; ethereum `0x09bd9e...072c15`; ethereum `0x0d8272...c8448b`; ethereum `0x0d9034...c9fdc9`; ethereum `0x10e095...3933d4`; ethereum `0x1531c1...51de44`; ethereum `0x17b1a2...664efc`; ethereum `0x185ab8...acc87c`; ethereum `0x195f83...328f92`; ethereum `0x19d13b...af410c`; ethereum `0x1db6b7...0ab714`; ethereum `0x1f9045...b344c7`; ethereum `0x1fc28e...aa464b`; ethereum `0x202586...0c933e`; ethereum `0x20d676...198158`; ethereum `0x213052...24fe59`; ethereum `0x22d207...6da145`; ethereum `0x2914e8...73e807`; ethereum `0x2b3dd0...a79ed1`; ethereum `0x2d853a...43aa90`; ethereum `0x2f251e...528fc5`; ethereum `0x312688...25b21f`; ethereum `0x3490db...370ec3`; ethereum `0x352169...b9c940`; ethereum `0x35a1ac...ab6d50`; ethereum `0x3611bd...256652`; ethereum `0x3ab1e4...c2a7f8`; ethereum `0x3e5c12...ea1a5d`; ethereum `0x41d3ab...5b6503`; ethereum `0x484d06...2c7637`; ethereum `0x4a9e32...ede2f6`; ethereum `0x4ac346...f5aac3`; ethereum `0x4b789c...fb7535`; ethereum `0x4c8700...97c77c`; ethereum `0x4e686e...9c2122`; ethereum `0x4f1481...450bb1`; ethereum `0x527983...21cce4`; ethereum `0x59bd67...a9ae25`; ethereum `0x6160aa...27eb8c`; ethereum `0x6313c1...f0d9d1`; ethereum `0x63475a...17d931`; ethereum `0x65acb4...bec4e6`; ethereum `0x67130c...f2cd91`; ethereum `0x67db14...bbfcf9`; ethereum `0x67e70e...5e706c`; ethereum `0x6856f0...84ebcd`; ethereum `0x69aed4...7e0858`; ethereum `0x6d53b4...f7ad41`; ethereum `0x6eda4b...6ec97b`; ethereum `0x6f95d4...4a8cf2`; ethereum `0x78c15e...1acd16`; ethereum `0x85b294...e4812e`; ethereum `0x869192...f6b1e7`; ethereum `0x86afd7...6b6ff5`; ethereum `0x880e2b...989ee1`; ethereum `0x8a200f...7482b6`; ethereum `0x8ad747...80caff`; ethereum `0x8c2ab5...483671`; ethereum `0x8e0b2e...1c8cd8`; ethereum `0x8e4e02...f20d19`; ethereum `0x8eacb5...d2cfdf`; ethereum `0x8f0861...6ede00`; ethereum `0x94c495...359c7e`; ethereum `0x9b9b93...cba693`; ethereum `0xa37d6d...09433c`; ethereum `0xa6be84...605b0a`; ethereum `0xad1716...5670cc`; ethereum `0xb61946...77a6df`; ethereum `0xb9f873...ff4b00`; ethereum `0xc03bba...159e9a`; ethereum `0xc12b58...ad747e`; ethereum `0xca56af...c02abc`; ethereum `0xca9219...3371c9`; ethereum `0xcf9055...f7ee44`; ethereum `0xd09bf4...369595`; ethereum `0xd66922...a97d09`; ethereum `0xd8f379...72a87b`; ethereum `0xd9c110...66bb00`; ethereum `0xdb55b7...6b6cc9`; ethereum `0xe2451a...db185e`; ethereum `0xe33928...351441`; ethereum `0xe42de3...258e61`; ethereum `0xe640e9...cb30c4`; ethereum `0xe742e1...3d4ff6`; ethereum `0xeb37ce...82be39`; ethereum `0xeebc9d...e32cfd`; ethereum `0xf06f65...2a5963`; ethereum `0xf0fe94...cedc2c`; ethereum `0xf13c91...997ba9`; ethereum `0xf31737...890def`; ethereum `0xf574e2...c0a638`; ethereum `0xf9f0ef...011c3e`; ethereum `0xfb6b44...0bcb2f` | ⚠️ Unaudited |
| MetaToken | token | ethereum | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| RariGovernanceToken | token | ethereum | 6 deployments: ethereum [`0x54745f...3596d9`](./contracts/ethereum-1/0x54745fe0a4309f48d57550aeb6385dc8303596d9/); ethereum `0xb528e8...ab1520`; ethereum `0xcd8adb...9bb94d`; ethereum `0xd291e7...6cc623`; ethereum `0xf00d7d...af3117`; ethereum `0xf727c8...c8e2c1` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | 33 deployments: ethereum [`0x037107...3e2cde`](./contracts/ethereum-1/0x037107c38a734f6e50f1db5f964056689e3e2cde/); ethereum `0x07a81e...73fd57`; ethereum `0x0a0406...c20656`; ethereum `0x137bbe...5d946d`; ethereum `0x1b332b...78582e`; ethereum `0x1f947e...b90e98`; ethereum `0x260ca1...0d989e`; ethereum `0x28f979...a1a60d`; ethereum `0x37356b...1b72e0`; ethereum `0x396cea...3fafe3`; ethereum `0x3f279c...536f44`; ethereum `0x3f3631...8640d5`; ethereum `0x4288e4...449f08`; ethereum `0x4cd2ed...597783`; ethereum `0x4fe680...cda164`; ethereum `0x532356...651bdf`; ethereum `0x5459ea...1c1133`; ethereum `0x6a6a5b...46f613`; ethereum `0x6f28b8...db6ced`; ethereum `0x7403a2...b5e1ee`; ethereum `0x7ab45c...4372a4`; ethereum `0x82eecf...b91c60`; ethereum `0x86fc4f...3f8449`; ethereum `0x8a6eb0...b57640`; ethereum `0x949186...261dda`; ethereum `0x98da94...3f7997`; ethereum `0xacfae4...b8c372`; ethereum `0xbbacea...049674`; ethereum `0xc10d8b...8ff6d4`; ethereum `0xc5b5e4...fd999f`; ethereum `0xdeeee4...c91e8a`; ethereum `0xeff71d...8a93af`; ethereum `0xff859f...dfe6c6` | ⚠️ Unaudited |
| AaveIntegration | unknown | ethereum | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | ethereum | 3 deployments: ethereum [`0x0833cf...2d7648`](./contracts/ethereum-1/0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648/); ethereum `0x8da386...730493`; ethereum `0x96ce4c...d82a7f` | ⚠️ Unaudited |
| BadgerPriceOracle | operational_periphery | ethereum | [`0xd0c869...80ef8d`](./contracts/ethereum-1/0xd0c86943e594640c4598086a2359a0e70b80ef8d/) | ⚠️ Unaudited |
| BadgerSettLiquidator | operational_periphery | ethereum | [`0xc743c9...98d817`](./contracts/ethereum-1/0xc743c9d1801ad9169be176761e8bb95c1298d817/) | ⚠️ Unaudited |
| BasketManager | governance | ethereum | 3 deployments: ethereum [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/); ethereum `0x6efa26...79bf61`; ethereum `0x968030...69d7db` | ⚠️ Unaudited |
| BoostDirector | unknown | ethereum | [`0x8892d7...e10aaf`](./contracts/ethereum-1/0x8892d7a5e018cddb631f4733b5c1654e9de10aaf/) | ⚠️ Unaudited |
| BoostedSavingsVault | core_logic | ethereum | 10 deployments: ethereum [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/); ethereum `0x8dacbe...476958`; ethereum `0x931420...fd7df8`; ethereum `0xa283fc...559d5d`; ethereum `0xadeedd...343c99`; ethereum `0xb1ad72...99851b`; ethereum `0xce1284...d33dc4`; ethereum `0xd124b5...2a6207`; ethereum `0xf5ad2b...352107`; ethereum `0xf65d53...75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | core_logic | ethereum | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | ⚠️ Unaudited |
| CEtherDelegate | unknown | ethereum | 13 deployments: ethereum [`0x258592...4b3c1b`](./contracts/ethereum-1/0x258592543a2d018e5bdd3bd74d422f952d4b3c1b/); ethereum `0x29f0a2...cbfaff`; ethereum `0x53ca7a...0f0cae`; ethereum `0x54b12f...7000dc`; ethereum `0x60884c...f849ba`; ethereum `0x92cc95...d86fa1`; ethereum `0x95fd9a...8419c6`; ethereum `0x97fe54...133552`; ethereum `0xca1ee2...a9542b`; ethereum `0xd557c7...2afb87`; ethereum `0xd77e28...853cbf`; ethereum `0xf6551c...b89789`; ethereum `0xfa1057...38f56e` | ⚠️ Unaudited |
| CEtherDelegator | unknown | ethereum | [`0xc4bec5...af9876`](./contracts/ethereum-1/0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876/) | ⚠️ Unaudited |
| Collector | unknown | ethereum | [`0x3f63e5...6c0e43`](./contracts/ethereum-1/0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43/) | ⚠️ Unaudited |
| CompoundIntegration | unknown | ethereum | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 6 deployments: ethereum [`0x8a78a9...4543fe`](./contracts/ethereum-1/0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe/); ethereum `0x934c2b...3e7d81`; ethereum `0x94b220...3a994e`; ethereum `0xddcbad...4010d7`; ethereum `0xe16db3...c18217`; arbitrum `0xc7d021...d61716` | ⚠️ Unaudited |
| CToken | token | ethereum | 3 deployments: ethereum [`0x02beff...342ad4`](./contracts/ethereum-1/0x02beff6668a0c8b7b16c978de8807527d9342ad4/); ethereum `0x46f196...f05f7e`; ethereum `0x896dfb...3594a1` | ⚠️ Unaudited |
| DelayedProxyAdmin | governance | ethereum | [`0x5c8eb5...f92386`](./contracts/ethereum-1/0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386/) | ⚠️ Unaudited |
| DydxPoolController | core_logic | ethereum | [`0x631b0d...2e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | ⚠️ Unaudited |
| Ejector | unknown | ethereum | [`0x71061e...7a0434`](./contracts/ethereum-1/0x71061e3f432fc5bee3a6763cd35f50d3c77a0434/) | ⚠️ Unaudited |
| FeederLogic | unknown | ethereum | [`0x2837c7...4125de`](./contracts/ethereum-1/0x2837c77527c37d61d9763f53005211dacb4125de/) | ⚠️ Unaudited |
| FeederManager | governance | ethereum | [`0x90ae54...0abd8b`](./contracts/ethereum-1/0x90ae544e8cc76d2867987ee4f5456c02c50abd8b/) | ⚠️ Unaudited |
| FeederPool | core_logic | ethereum | 6 deployments: ethereum [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/); ethereum `0x62aa1d...9e063c`; ethereum `0x9ab586...8c90e2`; ethereum `0xa88328...22b9ea`; ethereum `0xb61a6f...4921e0`; ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederWrapper | unknown | ethereum | [`0xdc6611...9f3a35`](./contracts/ethereum-1/0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35/) | ⚠️ Unaudited |
| FixedEurPriceOracle | operational_periphery | ethereum | [`0x817158...463e2a`](./contracts/ethereum-1/0x817158553f4391b0d53d242fc332f2ef82463e2a/) | ⚠️ Unaudited |
| FixedTokenPriceOracle | operational_periphery | ethereum | [`0x71fe48...807cc5`](./contracts/ethereum-1/0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5/) | ⚠️ Unaudited |
| ForgeValidator | unknown | ethereum | 2 deployments: ethereum [`0x4ca912...138ded`](./contracts/ethereum-1/0x4ca9123afc43dc9dde52a57a51afc44324138ded/); ethereum `0xbb90d0...12eaa1` | ⚠️ Unaudited |
| FuseFeeDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x50ce13...707583`](./contracts/ethereum-1/0x50ce132ebe395d35b8cf6df6ce5f817107707583/); ethereum `0xa73158...e18f85` | ⚠️ Unaudited |
| FusePoolController | core_logic | ethereum | [`0x5959db...375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | ⚠️ Unaudited |
| FusePoolDirectory | core_logic | ethereum | 3 deployments: ethereum [`0x835482...d5c77e`](./contracts/ethereum-1/0x835482fe0532f169024d5e9410199369aad5c77e/); ethereum `0xbc81c8...cc80c6`; ethereum `0xd662ef...919abd` | ⚠️ Unaudited |
| FYToken | token | ethereum | [`0xef9bfa...75e650`](./contracts/ethereum-1/0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650/) | ⚠️ Unaudited |
| GelatoGUniPriceOracle | operational_periphery | ethereum | [`0xea3633...992b43`](./contracts/ethereum-1/0xea3633b38c747cea231adb74b511dc2ed3992b43/) | ⚠️ Unaudited |
| GOhmPriceOracle | operational_periphery | ethereum | [`0x057ecd...9c3249`](./contracts/ethereum-1/0x057ecda7f61c73c3adcc36899d2626c7b79c3249/) | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | ethereum | 5 deployments: ethereum [`0x4f6058...358b39`](./contracts/ethereum-1/0x4f60585a80cec402fffa1d85f152b522e7358b39/); ethereum `0x663e01...e422e6`; ethereum `0x91d9c2...2cefd6`; ethereum `0x9ecc58...24c759`; ethereum `0xfd6aca...da039f` | ⚠️ Unaudited |
| HarvestPriceOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x6141d9...a92514`](./contracts/ethereum-1/0x6141d9353bb1fb8131d07d358c112b372aa92514/); ethereum `0x8d3646...c91792` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InitializableClones | unknown | ethereum | [`0x91ce55...b47415`](./contracts/ethereum-1/0x91ce5566dc3170898c5aee4ae4dd314654b47415/) | ⚠️ Unaudited |
| InterestValidator | unknown | ethereum | 2 deployments: ethereum [`0x98c54f...f7ba0e`](./contracts/ethereum-1/0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e/); ethereum `0xf1049a...ff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | 2 deployments: ethereum [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/); ethereum `0xd36050...0f2f3f` | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | ethereum | 12 deployments: ethereum [`0x075538...12c1d7`](./contracts/ethereum-1/0x075538650a9c69ac8019507a7dd1bd879b12c1d7/); ethereum `0x4ef294...f2ad60`; ethereum `0x5fdcb6...b7a4df`; ethereum `0x640dce...54c317`; ethereum `0x8f47be...aba0a5`; ethereum `0xb579d2...09c04b`; ethereum `0xbab47e...15f819`; ethereum `0xc35db3...a11672`; ethereum `0xc8acad...d490ad`; ethereum `0xcdc0a4...36cfc7`; ethereum `0xe1d35f...fe6680`; ethereum `0xede473...bd40f7` | ⚠️ Unaudited |
| Liquidator | operational_periphery | ethereum | 4 deployments: ethereum [`0x87a59a...449b01`](./contracts/ethereum-1/0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01/); ethereum `0x8bd8ec...e093cc`; ethereum `0xb7c77d...0d5b9d`; ethereum `0xe595d6...1f1dbd` | ⚠️ Unaudited |
| Manager | governance | ethereum | [`0x1e91f8...188848`](./contracts/ethereum-1/0x1e91f826fa8aa4fa4d3f595898af3a64dd188848/) | ⚠️ Unaudited |
| Masset | unknown | ethereum | 4 deployments: ethereum [`0x69ad13...2b587f`](./contracts/ethereum-1/0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f/); ethereum `0xb83a5a...686f7e`; ethereum `0xe0d0d0...3df1c4`; ethereum `0xe4c5b1...a7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | ethereum | [`0xe7e41f...9d5944`](./contracts/ethereum-1/0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944/) | ⚠️ Unaudited |
| MassetValidationHelper | periphery | ethereum | 2 deployments: ethereum [`0x4c5e03...eac89b`](./contracts/ethereum-1/0x4c5e03065bc52cce84f3ac94df14bbac27eac89b/); ethereum `0xabcc93...c16911` | ⚠️ Unaudited |
| MasterPriceOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x188711...4a764d`](./contracts/ethereum-1/0x1887118e49e0f4a78bd71b792a49de03504a764d/); ethereum `0x4f2373...e36515`; ethereum `0xb3c8ee...36d8fb` | ⚠️ Unaudited |
| MerkleDrop | operational_periphery | ethereum | [`0xf6e53b...9bc7a5`](./contracts/ethereum-1/0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | [`0xda681d...df9001`](./contracts/ethereum-1/0xda681d409319b1f4122b1402c8b5cd4baedf9001/) | ⚠️ Unaudited |
| MStableHelper | periphery | ethereum | [`0xe15aad...f6e8a3`](./contracts/ethereum-1/0xe15aad5d6b7433e5988415274529311f6bf6e8a3/) | ⚠️ Unaudited |
| MStablePoolController | core_logic | ethereum | [`0x2afe31...d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | ⚠️ Unaudited |
| MStableVoterProxy | unknown | ethereum | 2 deployments: ethereum [`0x10d96b...585a6e`](./contracts/ethereum-1/0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e/); ethereum `0x7c4cf0...a5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| Nexus | unknown | ethereum | [`0xafce80...845eb3`](./contracts/ethereum-1/0xafce80b19a8ce13dec0739a1aab7a028d6845eb3/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 8 deployments: ethereum [`0x038e3f...886298`](./contracts/ethereum-1/0x038e3fb79bbe37c804f6d5ee6b5323537c886298/); ethereum `0x1c9aa5...2c6ad3`; ethereum `0x3cd782...ace0c0`; ethereum `0x482136...65e3b1`; ethereum `0x485dd1...613f61`; ethereum `0xa6ae69...b4605b`; ethereum `0xab2543...5fcc6e`; ethereum `0xec5572...b67cae` | ⚠️ Unaudited |
| RariFundController | governance | ethereum | 10 deployments: ethereum [`0x369855...f4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/); ethereum `0x3f4931...e43657`; ethereum `0x66f485...3da569`; ethereum `0x6afe6c...b09a8d`; ethereum `0x9245ef...dc3ffa`; ethereum `0xa42289...7e24b6`; ethereum `0xafd2aa...190d74`; ethereum `0xb42bc0...2b43b8`; ethereum `0xd9f223...f91a3c`; ethereum `0xdac458...be0d47` | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | 3 deployments: ethereum [`0x59fa43...13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/); ethereum `0xb465ba...7d9635`; ethereum `0xd6e194...61275e` | ⚠️ Unaudited |
| RariFundPriceConsumer | operational_periphery | ethereum | 4 deployments: ethereum [`0x00815e...0e5561`](./contracts/ethereum-1/0x00815e0e9d118769542ce24be95f8e21c60e5561/); ethereum `0xc34d76...8954ee`; ethereum `0xd7d2d9...4083c5`; ethereum `0xfe98a5...202244` | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | 4 deployments: ethereum [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/); ethereum `0x4a785f...996d4d`; ethereum `0xa3cc9e...3ebe5c`; ethereum `0xe4dee9...b3b439` | ⚠️ Unaudited |
| RariFundToken | token | ethereum | 4 deployments: ethereum [`0x17728f...96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/); ethereum `0x3baa6b...8559ae`; ethereum `0xb849da...5911c6`; ethereum `0xcda477...1d65f4` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | ethereum | [`0x9c0cae...fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | ethereum | [`0x1fa69a...cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/) | ⚠️ Unaudited |
| RariGovernanceTokenVesting | operational_periphery | ethereum | 3 deployments: ethereum [`0x5888e7...66840c`](./contracts/ethereum-1/0x5888e7e6d0fbfc8c1d214cab8441658e9266840c/); ethereum `0x6526fa...d6d027`; ethereum `0xa54b47...f9b98a` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x7fd9da...c47ada`](./contracts/ethereum-1/0x7fd9da386f01f83cef3ebc01e13c040428c47ada/); ethereum `0xc0ce1e...5a2708` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x014b22...78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/); ethereum `0xdee870...566d79` | ⚠️ Unaudited |
| RevenueRecipient | operational_periphery | ethereum | 2 deployments: ethereum [`0xa78242...14fed5`](./contracts/ethereum-1/0xa7824292efdee1177a1c1bed0649cfdd6114fed5/); ethereum `0xffe2cd...6b6bec` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0x04dfdf...916c50`](./contracts/ethereum-1/0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50/) | ⚠️ Unaudited |
| RgtTempPriceOracle | operational_periphery | ethereum | [`0x0b43d7...80aaed`](./contracts/ethereum-1/0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed/) | ⚠️ Unaudited |
| SaveWrapper | unknown | ethereum | 2 deployments: ethereum [`0x7cb157...270eb9`](./contracts/ethereum-1/0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9/); ethereum `0xd7c346...09dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | ethereum | 3 deployments: ethereum [`0x1c728f...572a39`](./contracts/ethereum-1/0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39/); ethereum `0x3563cb...0b2bf8`; ethereum `0xcf3f73...b2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| SavingsManager | governance | ethereum | 6 deployments: ethereum [`0x6f0566...e07d3f`](./contracts/ethereum-1/0x6f05662109b296afb0f02bf490300c6b95e07d3f/); ethereum `0x7046b0...815370`; ethereum `0x7594ae...e46136`; ethereum `0x84e563...2ee6d1`; ethereum `0x9781c4...b6b301`; ethereum `0xcefcbb...50234f` | ⚠️ Unaudited |
| SimpleAirdropper | operational_periphery | ethereum | [`0xda13e3...b178fd`](./contracts/ethereum-1/0xda13e3afed9c112bd906c732684a49dd65b178fd/) | ⚠️ Unaudited |
| StakedFodlPriceOracle | operational_periphery | ethereum | [`0x92cf22...5e08e2`](./contracts/ethereum-1/0x92cf2299680c063ccaf18f62a60c500a625e08e2/) | ⚠️ Unaudited |
| StakedSpellPriceOracle | operational_periphery | ethereum | [`0xb544f6...b4ed9c`](./contracts/ethereum-1/0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 4 deployments: ethereum [`0x0d4cd2...f94be4`](./contracts/ethereum-1/0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4/); ethereum `0x6de3a9...651fb5`; ethereum `0x9b4aba...6c9a6f`; ethereum `0xe6e6e2...a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | 4 deployments: ethereum [`0x259702...ad4e70`](./contracts/ethereum-1/0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70/); ethereum `0x881c72...790c80`; ethereum `0xf4a7d2...f7f027`; ethereum `0xf7575d...baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | core_logic | ethereum | [`0x54d06a...f603f3`](./contracts/ethereum-1/0x54d06a0e1ce55a7a60ee175abceac7e363f603f3/) | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | core_logic | ethereum | [`0xd409c5...06d30a`](./contracts/ethereum-1/0xd409c506742b7f76f164909025ab29a47e06d30a/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 3 deployments: ethereum [`0x2859e4...bba8ee`](./contracts/ethereum-1/0x2859e4f36784d2ea72379ea036699aa477bba8ee/); ethereum `0x3a4498...e2d1c8`; ethereum `0x8ace03...1d19fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 3 deployments: ethereum [`0x6c806e...739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/); ethereum `0x6dc585...836eec`; ethereum `0xc76190...44165d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x18a797...cacf04`](./contracts/ethereum-1/0x18a797c7c70c1bf22fdee1c09062aba709cacf04/) | ⚠️ Unaudited |
| WSTEthPriceOracle | operational_periphery | ethereum | [`0xb11de4...71c517`](./contracts/ethereum-1/0xb11de4c003c80dc36a810254b433d727ac71c517/) | ⚠️ Unaudited |
| ZeroExExchangeController | governance | ethereum | [`0x1573a4...1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (164)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x5e829d997294f7f1d40a45c0f6431af13a381e63) | proxy | ethereum | `0x1bbf31...2cd76c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x015e43...88f757` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0573cc...576d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x084ec1...49a6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x122ee0...75d02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14ee02...909f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1510c1...46d4d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x159dc8...fef013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a1e7b...7f8ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a5655...a54ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ac1ec...071a06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c77d2...3a9baf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x216c30...68e1d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25f9ce...96ecb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x290e0f...557245` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b88f7...06dd29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ba5f8...914da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c0cd5...b0fe63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2da13a...adc651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f116c...0553d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3288a2...325de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33f738...94982a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3472f7...c64b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3659a0...f552e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37c909...736c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x397f22...13d1c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a8a76...08eae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3adc1f...b6bf1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b1c9f...5c6888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f0ae9...ba80d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f44ca...7a5e9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f579f...ec9966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x402026...1c9ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41c7f2...27452f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42e004...1c0d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49a4af...8baf18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4af56e...599874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4afb2b...f477e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d10ca...959ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d9e06...173735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f9b31...34c7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50293e...f592c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5447c8...7176cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x545d7c...6755dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55448f...426b29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57a729...af29a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58c3e7...b47012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x594bca...7b1aa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5aab54...bb1d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5add5c...095d71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5aeeb3...3f7cee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e829d...381e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f2df2...bec4d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60a315...96c054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6127e3...4cde98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x619de9...65557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x626a6f...723890` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x626d69...13bc11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63b79a...646fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66159b...ae7b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x679680...5b2f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68ac6a...2d51c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ab249...70af09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6bcc07...fd125d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dd8e1...219a88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x704bff...d8ec77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70e345...e12c4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x710416...1bb790` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72609c...c47ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72ad93...c9ba4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72fd4c...fd851a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7328a0...f5a3b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x771575...59ea9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x775234...4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bc6da...8af007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c332f...3dc399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c99ae...fa3f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ecaf9...63e0a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80829b...51cd89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83728b...14b814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85aaa6...742c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87a405...e23e85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x884159...cbfdeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89e4a3...70a721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c1e81...a69d21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8db188...69b958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e9e1a...232e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f3eaa...60be20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x948e58...4dae66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97b687...74fcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97e6e9...e0afe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99f7cb...8219ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a1c51...c114c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e35ce...bf52d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fa9ff...9b0fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa13a42...0b24cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa18c88...5b8c8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa27be1...021f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa32858...0aaa11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6f8dd...6ea928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae130f...4019cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae7c21...6e4aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb04be6...9b5c5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb202ca...b9792e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5e8e4...cb7000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5eeae...fc2784` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb669d0...2b668b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb77a6...0f873b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf29f8...7fea4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf8abd...8d854f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc09e98...92b39a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0d4c4...a204e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc11581...a808fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc201b8...dd6a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7a842...4af3b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca8448...922fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbe7a8...567157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc29fe...5c140e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1a758...c184a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd57ba8...f22e57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6a8ca...e39869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7590e...b8228a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd80678...2431fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9456c...3d8ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9a294...184544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9eefd...c1ea21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddb0d8...6b5530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddf281...afd001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde6796...35fc09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdeacc4...a78f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe17852...92a29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe23b82...4d0042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe26463...bf6f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5bb43...c47d50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7db5c...79b9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb988f...bfe357` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xebc075...c35ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xebea14...9d0163` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec7577...7440b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec929d...ad7117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed2cd6...7c623f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef1a4e...a13cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef3035...165ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefb106...65d3c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf02391...7388b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0f3a1...fc13d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf3a36b...e86b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf3c10a...7dbf17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5c914...719f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8731e...c9ed36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xffc9ec...1fb7f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | MetaToken | token | $2,542,884.97 | Verified native implementation with $2,542,884.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/) | FeederPoolV2 | core_logic | $3,517.28 | Verified native implementation with $3,517.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54745f...3596d9`](./contracts/ethereum-1/0x54745fe0a4309f48d57550aeb6385dc8303596d9/) | RariGovernanceToken | token | $2,702.30 | Verified native implementation with $2,702.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | AaveIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0c869...80ef8d`](./contracts/ethereum-1/0xd0c86943e594640c4598086a2359a0e70b80ef8d/) | BadgerPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc743c9...98d817`](./contracts/ethereum-1/0xc743c9d1801ad9169be176761e8bb95c1298d817/) | BadgerSettLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/) | BasketManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8892d7...e10aaf`](./contracts/ethereum-1/0x8892d7a5e018cddb631f4733b5c1654e9de10aaf/) | BoostDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | BoostedSavingsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | BoostedSavingsVault_imbtc_mainnet_2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f63e5...6c0e43`](./contracts/ethereum-1/0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | CompoundIntegration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a78a9...4543fe`](./contracts/ethereum-1/0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02beff...342ad4`](./contracts/ethereum-1/0x02beff6668a0c8b7b16c978de8807527d9342ad4/) | CToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631b0d...2e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | DydxPoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71061e...7a0434`](./contracts/ethereum-1/0x71061e3f432fc5bee3a6763cd35f50d3c77a0434/) | Ejector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2837c7...4125de`](./contracts/ethereum-1/0x2837c77527c37d61d9763f53005211dacb4125de/) | FeederLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90ae54...0abd8b`](./contracts/ethereum-1/0x90ae544e8cc76d2867987ee4f5456c02c50abd8b/) | FeederManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/) | FeederPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc6611...9f3a35`](./contracts/ethereum-1/0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35/) | FeederWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817158...463e2a`](./contracts/ethereum-1/0x817158553f4391b0d53d242fc332f2ef82463e2a/) | FixedEurPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71fe48...807cc5`](./contracts/ethereum-1/0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5/) | FixedTokenPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca912...138ded`](./contracts/ethereum-1/0x4ca9123afc43dc9dde52a57a51afc44324138ded/) | ForgeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50ce13...707583`](./contracts/ethereum-1/0x50ce132ebe395d35b8cf6df6ce5f817107707583/) | FuseFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5959db...375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | FusePoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea3633...992b43`](./contracts/ethereum-1/0xea3633b38c747cea231adb74b511dc2ed3992b43/) | GelatoGUniPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057ecd...9c3249`](./contracts/ethereum-1/0x057ecda7f61c73c3adcc36899d2626c7b79c3249/) | GOhmPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6058...358b39`](./contracts/ethereum-1/0x4f60585a80cec402fffa1d85f152b522e7358b39/) | GovernorBravoDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6141d9...a92514`](./contracts/ethereum-1/0x6141d9353bb1fb8131d07d358c112b372aa92514/) | HarvestPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98c54f...f7ba0e`](./contracts/ethereum-1/0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e/) | InterestValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | InvariantValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87a59a...449b01`](./contracts/ethereum-1/0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e91f8...188848`](./contracts/ethereum-1/0x1e91f826fa8aa4fa4d3f595898af3a64dd188848/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | MassetBtcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c5e03...eac89b`](./contracts/ethereum-1/0x4c5e03065bc52cce84f3ac94df14bbac27eac89b/) | MassetValidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188711...4a764d`](./contracts/ethereum-1/0x1887118e49e0f4a78bd71b792a49de03504a764d/) | MasterPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6e53b...9bc7a5`](./contracts/ethereum-1/0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5/) | MerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda681d...df9001`](./contracts/ethereum-1/0xda681d409319b1f4122b1402c8b5cd4baedf9001/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe15aad...f6e8a3`](./contracts/ethereum-1/0xe15aad5d6b7433e5988415274529311f6bf6e8a3/) | MStableHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afe31...d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | MStablePoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | MusdV3_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369855...f4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/) | RariFundController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17728f...96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/) | RariFundToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5888e7...66840c`](./contracts/ethereum-1/0x5888e7e6d0fbfc8c1d214cab8441658e9266840c/) | RariGovernanceTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa78242...14fed5`](./contracts/ethereum-1/0xa7824292efdee1177a1c1bed0649cfdd6114fed5/) | RevenueRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dfdf...916c50`](./contracts/ethereum-1/0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b43d7...80aaed`](./contracts/ethereum-1/0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed/) | RgtTempPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cb157...270eb9`](./contracts/ethereum-1/0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9/) | SaveWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c728f...572a39`](./contracts/ethereum-1/0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39/) | SavingsContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | SavingsContract_imbtc_mainnet_22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f0566...e07d3f`](./contracts/ethereum-1/0x6f05662109b296afb0f02bf490300c6b95e07d3f/) | SavingsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda13e3...b178fd`](./contracts/ethereum-1/0xda13e3afed9c112bd906c732684a49dd65b178fd/) | SimpleAirdropper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cf22...5e08e2`](./contracts/ethereum-1/0x92cf2299680c063ccaf18f62a60c500a625e08e2/) | StakedFodlPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb544f6...b4ed9c`](./contracts/ethereum-1/0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c/) | StakedSpellPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259702...ad4e70`](./contracts/ethereum-1/0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70/) | StakingRewardsWithPlatformToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb11de4...71c517`](./contracts/ethereum-1/0xb11de4c003c80dc36a810254b433d727ac71c517/) | WSTEthPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1573a4...1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ZeroExExchangeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 102 |
| upstream | 3 |
| standard_library | 10 |
| needs_review | 138 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3048] DL audit link

Fork inheritance lineage and inherited audits are included when available.
