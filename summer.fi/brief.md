# Agentic Audit Brief: Summer.fi

⚠️ Lifecycle status: DECLINING - TVL dropped 33.7% over 90 days

## Project Overview

- Project: Summer.fi (`summer.fi`)
- Website: [https://summer.fi/earn?referralCode=2001317](https://summer.fi/earn?referralCode=2001317)
- Lifecycle: declining (Tier 0, 91% below peak)
- Generated: 2026-06-17T07:00:42.575Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism, sonic
- Contract surface: 70 unique implementations (262 raw deployments)
- DeFi Llama TVL: $32,919,445.00
- On-chain TVL (included contracts): $3,659,867.64
- TVL by chain: Ethereum $1,847,747.50 | Base $1,812,101.44 | Arbitrum $18.70

## Project Description

Summer.fi is a DeFi protocol offering Borrow, Multiply, and Earn products for managing collateralized debt positions and accessing Lazy Summer yield vaults across multiple chains.

### Architecture

The Lazy Summer Protocol and Summer.fi Pro share governance infrastructure (SummerGovernor, SummerTimelockController, ProtocolAccessManager) and the SummerToken. Summer.fi Pro's automation bots can interact with Lazy Summer Protocol vaults, while both families rely on external protocol adapters (e.g., Aave, Morpho) for data and execution.

## Contract Surface Quality

- Indexed contracts: 1966; live-surface contracts included: 262 (247 live, 15 unknown).
- Excluded by liveness: 1684 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: aave-v2, makerdao-dss, uniswap-v3
- Unverified dependencies: 390/1788.

## Audit Coverage Summary

- Verified implementations audited: 0/60 (0.0%)
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 1
- Unverified implementations: 10
- Unique implementations: 70
- Raw deployments: 262
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,659,867.64
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,659,867.64 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MorphoVaultArk | core_logic | arbitrum | n/a | 27 deployments: ethereum `0x2b8078...917524`; ethereum `0x2e8a73...9b50bc`; ethereum `0x40087b...8a8aeb`; ethereum `0x43aa39...0bcb59`; ethereum `0x59c628...31039a`; ethereum `0x679794...1fa53f`; ethereum `0x756ca6...40d275`; ethereum `0x842a5a...1708fa`; ethereum `0x8929cb...6bc2b8`; ethereum `0x8c9878...f12ab9`; ethereum `0xa6fb46...23c84c`; ethereum `0xb5bc81...019716`; ethereum `0xe0212e...1c950f`; ethereum `0xe399c3...df76a8`; ethereum `0xe885a9...456e2b`; ethereum `0xf2b2cf...3ee114`; ethereum `0xf38a86...f77daa`; base `0x55bd40...a735bc`; base `0x7d3607...2ecd6b`; base `0xece30e...e9f8c7`; arbitrum [`0x106b67...0197d3`](./contracts/arbitrum-42161/0x106b67d2621113fdd8f6e58f5ebee418400197d3/); arbitrum `0x4a45a5...306140`; arbitrum `0x525360...7135ad`; arbitrum `0x832af0...189ed6`; arbitrum `0x8a350d...9ac0e7`; arbitrum `0xb3d1be...2e6d25`; arbitrum `0xc26f0f...86e684` | ⚠️ Unaudited |
| SummerToken | token | ethereum | n/a | 4 deployments: ethereum [`0x194f36...ea1624`](./contracts/ethereum-1/0x194f360d130f2393a5e9f3117a6a1b78abea1624/); sonic `0x4e0037...6099e3`; base [`0x194f36...ea1624`](./contracts/base-8453/0x194f360d130f2393a5e9f3117a6a1b78abea1624/); base `0x932ccb...d4db32` | ⚠️ Unaudited |
| SiloManagedVaultArk | core_logic | arbitrum | n/a | 8 deployments: ethereum `0x61d706...bc76c2`; ethereum `0xd7038e...80a170`; ethereum `0xe4917b...efe268`; sonic `0x8faf71...69db53`; arbitrum [`0x125dae...08783c`](./contracts/arbitrum-42161/0x125dae47930c1118cf2db5a140877c64b408783c/); arbitrum `0x286a55...55a06b`; arbitrum `0xa46531...5be5e6`; arbitrum `0xdd9417...3a2cc9` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | [`0xbd7d6a...b11704`](./contracts/ethereum-1/0xbd7d6a9ad7865463de44b05f04559f65e3b11704/) | ⚠️ Unaudited |
| FluidFTokenArk | token | arbitrum | n/a | 12 deployments: ethereum `0x41ee96...77a5fd`; ethereum `0x78d0bf...864cfd`; ethereum `0x7a9b57...9c771f`; ethereum `0x7b1e86...a494f3`; ethereum `0x9bd156...a089b6`; base `0x24e035...8ec05e`; base `0x4e764d...5407f1`; base `0x60a575...c3b386`; arbitrum [`0x00eb82...cebc72`](./contracts/arbitrum-42161/0x00eb8210743f4d4aa2b44e2744ae8ffd2dcebc72/); arbitrum `0x01f61b...a462fc`; arbitrum `0x1bf59c...0a045c`; arbitrum `0x3d3e49...5881c7` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | optimism | n/a | 4 deployments: ethereum `0x497a19...b7c8a6`; optimism [`0x14496b...56fde5`](./contracts/optimism-10/0x14496b405d62c24f91f04cda1c69dc526d56fde5/); base `0xc4fcf9...587981`; arbitrum [`0x14496b...56fde5`](./contracts/arbitrum-42161/0x14496b405d62c24f91f04cda1c69dc526d56fde5/) | ⚠️ Unaudited |
| AccountFactory | registry | ethereum | n/a | [`0xf7b751...aee2b6`](./contracts/ethereum-1/0xf7b75183a2829843db06266c114297dfbfaee2b6/) | ⚠️ Unaudited |
| AccountGuard | governance | ethereum | n/a | [`0xce9134...7f2847`](./contracts/ethereum-1/0xce91349d2a4577bbd0fc91fe6019600e047f2847/) | ⚠️ Unaudited |
| AdmiralsQuarters | unknown | base | n/a | 9 deployments: ethereum `0x1fff83...fc63ee`; ethereum `0x8b8235...a12922`; sonic `0xaab08a...0206ef`; sonic `0xc5b2e6...125459`; base [`0x08e195...8528c6`](./contracts/base-8453/0x08e19585548c8439e83239bbed99afc8e28528c6/); base `0x34f72f...e750db`; base `0x92176c...3512c0`; arbitrum `0x0b966c...f57f0b`; arbitrum `0x8423c3...d3a983` | ⚠️ Unaudited |
| AdmiralsQuarters | unknown | base | unit-26008 | [`0x16160c...514515`](./contracts/base-8453/0x16160cd5c54de1caba7c567c6d232c1a9d514515/) | ⚠️ Unaudited |
| AdmiralsQuartersWhitelist | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x43d2c9...5a4615`](./contracts/arbitrum-42161/0x43d2c9786e8f5a960e75d6141e44411d065a4615/); arbitrum `0x4963c6...85b1d3` | ⚠️ Unaudited |
| AeraArk | unknown | base | n/a | 2 deployments: base [`0x2b6789...8064dd`](./contracts/base-8453/0x2b678927e50afe692fdcf5d87be4c590258064dd/); base `0x6b58ae...213766` | ⚠️ Unaudited |
| ArmArk | unknown | ethereum | n/a | 2 deployments: ethereum [`0x219ccb...3c86a3`](./contracts/ethereum-1/0x219ccbf0d3990e1cdaaf3ea840c7b233553c86a3/); ethereum `0x42f4be...30bceb` | ⚠️ Unaudited |
| AutomationExecutor | unknown | optimism | n/a | 5 deployments: ethereum `0x34b689...a622f6`; ethereum `0xe14597...0a9cc2`; optimism [`0x1631fa...e221fc`](./contracts/optimism-10/0x1631faf05bffa2200698d71893667c9de1e221fc/); base `0x7a2ed2...85349b`; arbitrum `0x2d43e8...868d8f` | ⚠️ Unaudited |
| BridgeQueue | operational_periphery | base | n/a | 3 deployments: base [`0x5e59a6...cb6c70`](./contracts/base-8453/0x5e59a629103809b105745178649e2692e0cb6c70/); base `0x803c5a...b4cb6c`; arbitrum `0xddccce...e6fd8d` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | base | n/a | 5 deployments: base [`0x11fdaa...eff657`](./contracts/base-8453/0x11fdaa50347865f1e8e506529309364437eff657/); base `0x75793d...9057c3`; base `0xcce1f2...8d9496`; base `0xda716b...3e270a`; arbitrum `0x4042df...ada0ad` | ⚠️ Unaudited |
| BuyAndBurn | unknown | base | n/a | [`0x092c41...dd6f57`](./contracts/base-8453/0x092c41c6e9a8a54577cede5d077971116ddd6f57/) | ⚠️ Unaudited |
| ConfigurationManager | governance | ethereum | n/a | [`0xbb906a...77807b`](./contracts/ethereum-1/0xbb906aae2db6366b7141aee2e5b9d57bc177807b/) | ⚠️ Unaudited |
| ConfigurationManagerWhitelist | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x5632b3...eeddc5`](./contracts/arbitrum-42161/0x5632b3df8a030001d0a89c2d9b420c2210eeddc5/); arbitrum `0xe0d250...8912b6` | ⚠️ Unaudited |
| CrossChainArk | unknown | base | n/a | 2 deployments: base [`0x3eebb3...b69be2`](./contracts/base-8453/0x3eebb35f3e85cfe8ca2dc023f5c6aca46fb69be2/); base `0x5dcd92...6afbd4` | ⚠️ Unaudited |
| CrossChainRegistry | registry | arbitrum | n/a | 5 deployments: base `0xa435f1...59c278`; base `0xb53dbe...dc8905`; base `0xcdb834...5dc0e9`; base `0xfb7dad...34c010`; arbitrum [`0x57047e...bcbb0c`](./contracts/arbitrum-42161/0x57047ebc3adeda70d58c51676301bf3990bcbb0c/) | ⚠️ Unaudited |
| DSROracleForwarderArbitrumOne | operational_periphery | ethereum | n/a | [`0x7f36e7...b85799`](./contracts/ethereum-1/0x7f36e7f562ee3f320644f6031e03e12a02b85799/) | ⚠️ Unaudited |
| DSROracleForwarderBase | operational_periphery | ethereum | n/a | [`0x8ed551...563e0e`](./contracts/ethereum-1/0x8ed551d485701fe489c215e13e42f6fc59563e0e/) | ⚠️ Unaudited |
| DSROracleForwarderOptimism | operational_periphery | ethereum | n/a | [`0x404212...94def3`](./contracts/ethereum-1/0x4042127decc0cf7cc0966791abebf7f76294def3/) | ⚠️ Unaudited |
| DSROracleForwarderWorldChain | operational_periphery | ethereum | n/a | [`0xa34437...3e547b`](./contracts/ethereum-1/0xa34437daae56a7cc6dc757048933d7777b3e547b/) | ⚠️ Unaudited |
| DssCdpManager | governance | ethereum | n/a | [`0x5ef30b...435e39`](./contracts/ethereum-1/0x5ef30b9986345249bc32d8928b7ee64de9435e39/) | ⚠️ Unaudited |
| DutchAuctionLibrary | unknown | sonic | n/a | 4 deployments: ethereum `0x5dfacd...877407`; sonic [`0x355e2e...ba87d7`](./contracts/sonic-146/0x355e2e10a0056a0ae18f5f67925b74fdd9ba87d7/); arbitrum `0x3a4c99...edbb99`; arbitrum `0x4b3d7d...8e0e80` | ⚠️ Unaudited |
| ERC4626Ark | unknown | ethereum | n/a | 24 deployments: ethereum [`0x0264f3...3b45e3`](./contracts/ethereum-1/0x0264f3a10526b5eb5f75eb4004df6e3ccc3b45e3/); ethereum `0x068df9...87b26c`; ethereum `0x0b1332...f3bf13`; ethereum `0x0fa036...ac29c8`; ethereum `0x1534e3...c80cb8`; ethereum `0x205ae9...75f793`; ethereum `0x46955b...b72d47`; ethereum `0x5d8ad7...5fbeb5`; ethereum `0x793174...207061`; ethereum `0xbc7070...52eea6`; ethereum `0xc320ff...0c5470`; ethereum `0xdc931f...b49ce9`; base `0x2a6e16...ec5a2c`; base `0xa18ac9...119175`; arbitrum `0x45ff58...5ac8b5`; arbitrum `0x497d89...9a38df`; arbitrum `0x571350...efafe4`; arbitrum `0x580b9a...fdee1d`; arbitrum `0x65ef67...cd0094`; arbitrum `0x7b7551...00a302`; arbitrum `0xcf5870...841985`; arbitrum `0xd0aadd...e1958f`; arbitrum `0xd17c91...7213ce`; arbitrum `0xf803ba...e0131e` | ⚠️ Unaudited |
| Exchange | unknown | ethereum | n/a | [`0x12dcc7...258b91`](./contracts/ethereum-1/0x12dcc776525c35836b10026929558208d1258b91/) | ⚠️ Unaudited |
| FleetCommander | unknown | ethereum | n/a | 23 deployments: ethereum [`0x17ee2d...54ad8d`](./contracts/ethereum-1/0x17ee2d03e88b55e762c66c76ec99c3a28a54ad8d/); ethereum `0x1f221b...de67dd`; ethereum `0x27d535...c462e4`; ethereum `0x2e6abc...a88e10`; ethereum `0x40e9c8...e55651`; ethereum `0x67e536...0ab506`; ethereum `0x8360e8...81187d`; ethereum `0x98c49e...9ecf17`; ethereum `0xd94d5f...010ba8`; ethereum `0xe9cda4...70cb06`; sonic `0x507a2d...7964f8`; base `0x2bb9ad...f834af`; base `0x53d0a0...e6feea`; base `0x64db8f...48e0f0`; base `0x879eb3...e1e90c`; base `0x98c49e...9ecf17`; base `0xef7905...a90900`; base `0xf762b4...33a4d9`; arbitrum `0x45342a...7e7cae`; arbitrum `0x4774d1...ae1856`; arbitrum `0x4f63cf...34bb58`; arbitrum `0x98c49e...9ecf17`; arbitrum `0xb95a1e...149b7d` | ⚠️ Unaudited |
| FleetCommanderDao | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c1fbc...632114`](./contracts/ethereum-1/0x0c1fbccc019320032d9acd193447560c8c632114/); ethereum `0x218f32...6b15fc`; ethereum `0x48d047...2a3b8f`; ethereum `0xd77f9a...0c76fc` | ⚠️ Unaudited |
| FleetCommanderWhitelist | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6e23cf...dfdbeb`](./contracts/arbitrum-42161/0x6e23cfe8d830488bc824c0add201a1a2e1dfdbeb/); arbitrum `0xb960ba...676def` | ⚠️ Unaudited |
| FleetProxy | unknown | base | n/a | 9 deployments: base [`0x113e5a...b480f7`](./contracts/base-8453/0x113e5a468b2ddf550fd714ef6f6ff8dc96b480f7/); base `0x687e17...132262`; base `0x6bdcf1...49dc0f`; base `0x77d633...e8cba4`; base `0x9fa92c...3d18fb`; base `0xf909ee...ff659e`; base `0xfa92fe...0b2e8d`; base `0xff3231...2582ea`; arbitrum `0x8c6a27...3b3dc8` | ⚠️ Unaudited |
| FluidLiteArk | unknown | ethereum | n/a | 2 deployments: ethereum [`0x457436...374a29`](./contracts/ethereum-1/0x457436fdb96fb234a91c5516e1eb9303e3374a29/); ethereum `0x60390d...75d90e` | ⚠️ Unaudited |
| HarborCommand | unknown | ethereum | n/a | 5 deployments: ethereum [`0x07060e...bf5fc4`](./contracts/ethereum-1/0x07060e282bd0fb99607c8915f1e538f8cebf5fc4/); base `0xe355f3...6613af`; arbitrum `0x47c327...a040cf`; arbitrum `0x6de9f5...00cbfb`; arbitrum `0x7fbfb9...0c9a17` | ⚠️ Unaudited |
| InstitutionalVaultRegistry | registry | arbitrum | n/a | [`0x209dcc...d6d9b6`](./contracts/arbitrum-42161/0x209dcc11c4a3424d7aa6c0690cbea07de9d6d9b6/) | ⚠️ Unaudited |
| MigrationActions | operational_periphery | ethereum | n/a | [`0xf86141...714b89`](./contracts/ethereum-1/0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/); base [`0xbbbbbb...eeffcb`](./contracts/base-8453/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| OperationsRegistry | registry | arbitrum | n/a | 2 deployments: base `0xe018ae...ab937a`; arbitrum [`0x3637df...e6883c`](./contracts/arbitrum-42161/0x3637df43f938b05a71bb828f13d9f14498e6883c/) | ⚠️ Unaudited |
| OriginETHArk | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd84247...51404d`](./contracts/ethereum-1/0xd84247a3e0ee8480214a0472d6fbc5c04251404d/); ethereum `0xf28536...2ae826` | ⚠️ Unaudited |
| OriginSuperOETHArk | unknown | base | n/a | [`0xd9755f...60dc0e`](./contracts/base-8453/0xd9755f1541103333132e2c90c67f7e513060dc0e/) | ⚠️ Unaudited |
| ProtocolAccessManager | governance | arbitrum | n/a | 6 deployments: ethereum `0x092c41...dd6f57`; sonic `0xa55cd6...0f3f27`; base `0x603821...4ae861`; arbitrum [`0x058c58...a98f8a`](./contracts/arbitrum-42161/0x058c586cd8eb06aae4a4e1d7584db48c10a98f8a/); arbitrum `0x2e208e...cb8371`; arbitrum `0xd72309...1284c5` | ⚠️ Unaudited |
| PsmLiteERC4626Ark | unknown | ethereum | n/a | [`0x534162...1faeb3`](./contracts/ethereum-1/0x534162a2072a2929b6713065414eedc53e1faeb3/) | ⚠️ Unaudited |
| PSMVariant1Actions | unknown | ethereum | n/a | [`0xd0a61f...9f39e0`](./contracts/ethereum-1/0xd0a61f2963622e992e6534bde4d52fd0a89f39e0/) | ⚠️ Unaudited |
| Raft | unknown | sonic | n/a | 7 deployments: ethereum `0xd1bccf...10bc6e`; ethereum `0xeccd16...8616e2`; sonic [`0x2a828b...f4f018`](./contracts/sonic-146/0x2a828b0e5cb549ee568923e815d9a781b6f4f018/); sonic `0x6e6b9c...05e204`; arbitrum `0x60a81c...65926d`; arbitrum `0xa57efa...1fef36`; arbitrum `0xd771bf...efa104` | ⚠️ Unaudited |
| ServiceRegistry | registry | arbitrum | n/a | [`0x85859a...33ef49`](./contracts/arbitrum-42161/0x85859ab683019a4e345d963e455b5e3ce133ef49/) | ⚠️ Unaudited |
| SiloVaultArkV2 | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x269938...895d28`](./contracts/arbitrum-42161/0x269938df5c0110a9e8de1f76cf8279f745895d28/); arbitrum `0x54749c...fcb800` | ⚠️ Unaudited |
| SiUSDArk | unknown | ethereum | n/a | [`0x5ebbc4...a3f264`](./contracts/ethereum-1/0x5ebbc493fd41dd607cdad244a9e6ca7466a3f264/) | ⚠️ Unaudited |
| SSROracleForwarderArbitrum | operational_periphery | ethereum | n/a | [`0x1a229a...6247d5`](./contracts/ethereum-1/0x1a229adbac83a948226783f2a3257b52006247d5/) | ⚠️ Unaudited |
| SSROracleForwarderOptimism | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x6ac25b...038724`](./contracts/ethereum-1/0x6ac25b8638767a3c27a65597a74792d599038724/); ethereum `0xb28333...ef188e` | ⚠️ Unaudited |
| StakedSummerToken | token | base | n/a | 3 deployments: base [`0x49fea7...adfd8c`](./contracts/base-8453/0x49fea727a60469f2c25376ad3c7d5f3810adfd8c/); base `0x4f4674...a7666b`; base `0x60a716...efc825` | ⚠️ Unaudited |
| SummerGovernor | governance | base | n/a | 2 deployments: base [`0xbe5a4d...01e9fa`](./contracts/base-8453/0xbe5a4dd68c3526f32b454fe28c9909ca0601e9fa/); base `0xd76ad6...798d0c` | ⚠️ Unaudited |
| SummerOracleFactory | operational_periphery | base | n/a | 4 deployments: ethereum `0xd3bba5...2b3291`; base [`0x5511c3...59721a`](./contracts/base-8453/0x5511c30c50762520e36ccc42af2b528ee759721a/); base `0x9a35b9...f419ba`; base `0xe414b2...535fc0` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | base | n/a | [`0x54a2ea...80b8dd`](./contracts/base-8453/0x54a2ea2b8f57d62c149ace01d7ac1fd9a880b8dd/) | ⚠️ Unaudited |
| SummerStaking | unknown | base | n/a | 2 deployments: base [`0x902ac4...470a3f`](./contracts/base-8453/0x902ac48f45fefec167fe65963bff714287470a3f/); base `0xe94e8f...ed248f` | ⚠️ Unaudited |
| SummerTimelockController | governance | sonic | n/a | 7 deployments: ethereum `0x364a0f...e6ccae`; ethereum `0x447bf9...4c3796`; sonic [`0x363139...b53ac5`](./contracts/sonic-146/0x363139edcb1994e6f9f928ceb33b431e9db53ac5/); sonic `0x4c32a2...721ed9`; base `0x447bf9...4c3796`; base `0xc03b52...eeddcb`; arbitrum `0x9ffc25...7b8347` | ⚠️ Unaudited |
| SummerVestingWalletsEscrow | operational_periphery | base | n/a | 2 deployments: base [`0x0225d8...fb20b8`](./contracts/base-8453/0x0225d878d8b5ef51c0c97a41379ec5bf8ffb20b8/); base `0x3c11d8...43d14e` | ⚠️ Unaudited |
| SyrupArk | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0f9da4...43f495`](./contracts/ethereum-1/0x0f9da4b515fdab1aec67cfa6a66c24625543f495/); ethereum `0x1bf7ef...5dd1a3`; ethereum `0x2f5034...857496`; ethereum `0x3f9e19...2976e5`; ethereum `0x6d54c2...9c1462`; ethereum `0xcac00f...e3a27e` | ⚠️ Unaudited |
| TipJar | unknown | arbitrum | n/a | 6 deployments: ethereum `0x2d1a26...88a401`; sonic `0xa68959...853e6c`; base `0xad30bc...caa374`; arbitrum [`0x1fe082...7dfa83`](./contracts/arbitrum-42161/0x1fe082f764c86b362adec12691d1fb979a7dfa83/); arbitrum `0x8af05d...4ab398`; arbitrum `0xbeb68a...6b1c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BufferArk | unknown | ethereum | n/a | 11 deployments: ethereum [`0x106cbb...f6dd2b`](./contracts/ethereum-1/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); ethereum `0x88e7b6...0073a2`; ethereum `0x8b43a5...329b0e`; ethereum `0xde1f07...c778f0`; ethereum `0xeb60a8...0c0d9d`; sonic `0x809a0c...2562af`; base [`0x106cbb...f6dd2b`](./contracts/base-8453/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); base `0x72d417...8bd302`; base `0xc65b7e...e4b3ec`; arbitrum [`0x106cbb...f6dd2b`](./contracts/arbitrum-42161/0x106cbb1f445f0bffa7894f4199ee940bf7f6dd2b/); arbitrum `0xbb7924...9b1419` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x61be33...76f123` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03dfed...e1e38c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e0264...9f981d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5677f9...1687e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a8542...8b199e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72aead...764a70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851e0d...4fb104` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x917fea...573bf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5c83f...065641` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8564c...bec718` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://github.com/phoenixlabsresearch/spark-docs/blob/main/deployed-contracts/ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11695] {% embed url="<>" %}
- [11696] {% embed url="<>" %}
- [11697] {% embed url="<>" %}
- [11698] {% embed url="<>" %}
- [11699] {% embed url="<>" %}
- [11700] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
