# Agentic Audit Brief: B.Protocol

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-25T16:59:16.554Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 162 unique implementations (323 raw deployments)
- DeFi Llama TVL: $1,787,702.97
- On-chain TVL (included contracts): $79,003.72
- TVL by chain: Polygon $73,825.94 | Ethereum $5,177.78

## Project Description

B.Protocol is a DeFi protocol that optimizes liquidations by allowing users to backstop lending markets and share in liquidation proceeds. It integrates with lending platforms like Compound and Hundred Finance to provide a more efficient liquidation mechanism.

### Architecture

The B.Protocol family provides governance and core liquidation logic, while the Contract Addresses families deploy BAMM and Vault contracts that interact with lending markets. All families share the BAMM concept, with the Arbitrum family extending it to a new chain, and the B.Protocol family integrating with Compound-like tokens via CErc20Delegator proxies.

## Audit Coverage Summary

- Verified implementations audited: 5/99 (5.1%)
- Verified + Unaudited implementations: 92
- Verified by bytecode match: 2
- Unverified implementations: 63
- Unique implementations: 162
- Raw deployments: 323
- Audits discovered: 5
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $79,003.72
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 0 unknown
- Tier 1 coverage: 2.0% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $79,003.72 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 4 | 4.0% | 2021-02 |
| Code4rena | Tier 1 | 2 | 2.0% | 2021-02 |
| Fixed Point Solutions | Tier 2 | 1 | 1.0% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BAMM | unknown | ethereum | 13 deployments: ethereum [`0x00ff66...a0849a`](./contracts/ethereum-1/0x00ff66ab8699aafa050ee5ef5041d1503aa0849a/); ethereum `0x0d3aba...a8c598`; ethereum `0x60d7de...4e7c42`; ethereum `0x896d8a...7dc20b`; ethereum `0x9062d1...3fc27a`; ethereum `0xcb6e2f...08b697`; ethereum `0xdea7e0...d270d7`; arbitrum `0x04208f...5eb719`; arbitrum `0x0a3096...034c41`; arbitrum `0x12c60b...24329e`; arbitrum `0x240990...29b168`; arbitrum `0xa00cdc...db2a79`; arbitrum `0xebf825...afe66b` | ✅ Audited |
| BCdpManager | governance | ethereum | 3 deployments: ethereum [`0x22d3fb...f051ae`](./contracts/ethereum-1/0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae/); ethereum `0x3320f0...f7e147`; ethereum `0x3f30c2...24bbed` | ✅ Audited |
| BProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x351626...c9e6a1`](./contracts/ethereum-1/0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1/); ethereum `0x4bcad4...725ab0` | ✅ Audited |
| Pool | core_logic | ethereum | 4 deployments: ethereum [`0x3add75...186a2c`](./contracts/ethereum-1/0x3add75647681d3ba7a4ecfabf75d393936186a2c/); ethereum `0x84ff97...4faf23`; ethereum `0x912d19...362d4c`; ethereum `0xba791e...0aa47f` | ✅ Audited |
| Registry | registry | ethereum | [`0xbf698d...ed666a`](./contracts/ethereum-1/0xbf698df5591caf546a7e087f5806e216afed666a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (92)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Delegate | token | polygon | 10 deployments: polygon [`0x103f2c...4e9a27`](./contracts/polygon-137/0x103f2ca2148b863942397dbc50a425cc4f4e9a27/); polygon `0x243e33...8818ee`; polygon `0x30a026...66beb8`; polygon `0x5b9451...f7bb22`; polygon `0x607312...6e69d0`; polygon `0x6bb6eb...ce8586`; polygon `0xb4300e...b5f2bc`; polygon `0xbb93c7...a55807`; polygon `0xe4e438...ab7fcc`; polygon `0xfcd857...0bd64d` | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| CErc20Delegator | token | polygon | 3 deployments: polygon [`0x090a00...f394fe`](./contracts/polygon-137/0x090a00a2de0ea83def700b5e216f87a5d4f394fe/); polygon `0x2c7a9d...09be7c`; polygon `0x36208a...8ac35d` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 6 deployments: ethereum [`0x3328d5...54b6ce`](./contracts/ethereum-1/0x3328d5b2cabdf25a9aad31ae52f660398c54b6ce/); ethereum `0x7095f0...cf52c9`; ethereum `0x9f69be...a9843a`; ethereum `0xb03927...a0bbb2`; ethereum `0xc507a2...288880`; arbitrum `0xf2bb80...c93a39` | ⚠️ Unaudited |
| Admin | unknown | polygon | 6 deployments: polygon [`0x0bdcbc...1e10cd`](./contracts/polygon-137/0x0bdcbcebcdcee127e15872fe4fb904b0a41e10cd/); polygon `0x30129f...989b5e`; polygon `0x838766...576bfc`; polygon `0xe1561e...e94eb9`; polygon `0xe5d36f...9bde63`; polygon `0xe71355...6d349a` | ⚠️ Unaudited |
| Arb | unknown | ethereum | 5 deployments: ethereum [`0x12c60b...24329e`](./contracts/ethereum-1/0x12c60b3170fb43e6a8f8ba2d843621c19324329e/); ethereum `0xb19aae...253a2a`; ethereum `0xbc7e25...ead7f3`; ethereum `0xcaf3e0...de28e6`; arbitrum `0xceaf62...4fc7b2` | ⚠️ Unaudited |
| ArbChecker | unknown | ethereum | 2 deployments: ethereum [`0x364854...695ce0`](./contracts/ethereum-1/0x3648542ef46ae173aa2c4fe19707aa1078695ce0/); ethereum `0xde843d...e9ab9d` | ⚠️ Unaudited |
| ARTHOracle | operational_periphery | ethereum | [`0x5b827c...381a3b`](./contracts/ethereum-1/0x5b827cb346f7358eb3b921acbe88bbbe62381a3b/) | ⚠️ Unaudited |
| BAdmin | unknown | arbitrum | 5 deployments: arbitrum [`0x214937...ef4c1c`](./contracts/arbitrum-42161/0x214937a1777e28f188df0ecf3c53189894ef4c1c/); arbitrum `0x28cd4a...82b1a3`; arbitrum `0x547e25...e69e76`; arbitrum `0x654b41...8017be`; arbitrum `0x711f66...ec2971` | ⚠️ Unaudited |
| BalanceInfo | periphery | ethereum | [`0xdd0c40...55344b`](./contracts/ethereum-1/0xdd0c40203a6c25bc454d1e528962a4e6a755344b/) | ⚠️ Unaudited |
| Balances | unknown | ethereum | [`0x0ae823...478082`](./contracts/ethereum-1/0x0ae823c44b3485918b359329f9f77925c1478082/) | ⚠️ Unaudited |
| BAMMLens | periphery | ethereum | [`0xfae2e2...414ccb`](./contracts/ethereum-1/0xfae2e2d3f11bab10ee0ddd0332f6dfe957414ccb/) | ⚠️ Unaudited |
| BCdpScore | unknown | ethereum | [`0x46dfdf...2344cf`](./contracts/ethereum-1/0x46dfdffe7592eb565e702c4f8fc631065b2344cf/) | ⚠️ Unaudited |
| BGelato | unknown | ethereum | 3 deployments: ethereum [`0x0c8405...7cf380`](./contracts/ethereum-1/0x0c8405ab6f8fd1b2838e4782bc88c4d30d7cf380/); ethereum `0x221ab7...389102`; ethereum `0x9552d6...2433ac` | ⚠️ Unaudited |
| BIP1 | unknown | ethereum | [`0xa0ceca...85da4e`](./contracts/ethereum-1/0xa0ceca20349dcc3556e0fbaaac8f8aa1bf85da4e/) | ⚠️ Unaudited |
| BIP3to6 | unknown | ethereum | [`0x6dc133...e7e1b4`](./contracts/ethereum-1/0x6dc1338ef4117c031c4c1dc61b969e45e6e7e1b4/) | ⚠️ Unaudited |
| BKeeper | operational_periphery | arbitrum | 7 deployments: ethereum `0x31d85e...b6eade`; ethereum `0x48420f...e0e778`; ethereum `0x8676cb...e1c1f2`; ethereum `0xc57071...d941ac`; ethereum `0xeae019...bb5371`; arbitrum [`0x102887...e542c8`](./contracts/arbitrum-42161/0x102887d6bfc58b0abe721aad1ce5a036ace542c8/); arbitrum `0xddcaf1...8e0323` | ⚠️ Unaudited |
| BlackFriday | unknown | ethereum | [`0x20f7cf...35a7e6`](./contracts/ethereum-1/0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6/) | ⚠️ Unaudited |
| BLens | periphery | ethereum | 3 deployments: ethereum [`0x384301...0c7129`](./contracts/ethereum-1/0x3843019c19259117ed473947007bcafc5c0c7129/); ethereum `0x9dcc15...572064`; arbitrum `0x539a3f...26e7d9` | ⚠️ Unaudited |
| BPROAggregated | unknown | ethereum | 4 deployments: ethereum [`0x6eaa36...358194`](./contracts/ethereum-1/0x6eaa36cb264ced039de3762635f098c20c358194/); ethereum `0x78000b...3efd2a`; ethereum `0xa01eb8...c41cc5`; ethereum `0xcfadc0...599c5d` | ⚠️ Unaudited |
| BStats | unknown | ethereum | [`0x79c3ce...86a7ad`](./contracts/ethereum-1/0x79c3ceb9decd2de5f70e50b0eb2aeb4bca86a7ad/) | ⚠️ Unaudited |
| BTCArb | unknown | arbitrum | [`0x82b414...784770`](./contracts/arbitrum-42161/0x82b4141c7a71cbcd9c95181f057f7dee35784770/) | ⚠️ Unaudited |
| BTVL | unknown | ethereum | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | ⚠️ Unaudited |
| BudConnector | unknown | ethereum | 3 deployments: ethereum [`0x2325aa...c79dc3`](./contracts/ethereum-1/0x2325aa20deaa9770a978f1dc7c073589ffc79dc3/); ethereum `0x47f935...cb2553`; ethereum `0x78a049...0cac6d` | ⚠️ Unaudited |
| CEther | unknown | polygon | [`0xebd7f3...b55e31`](./contracts/polygon-137/0xebd7f3349aba8bb15b897e03d6c1a4ba95b55e31/) | ⚠️ Unaudited |
| ChainLogConnector | unknown | ethereum | [`0xbb043f...54a31b`](./contracts/ethereum-1/0xbb043ffb54442e9fbdd720e666fb7292b654a31b/) | ⚠️ Unaudited |
| CheapHelper | periphery | arbitrum | [`0xe7d140...7e001f`](./contracts/arbitrum-42161/0xe7d1406cc09f6444973c798393f393f7e57e001f/) | ⚠️ Unaudited |
| CLiquidationBotHelper | periphery | polygon | 2 deployments: polygon [`0x8ede50...c1bb6e`](./contracts/polygon-137/0x8ede503c2df9fbd2be33726818dcb87a76c1bb6e/); polygon `0xd739a7...c02c4a` | ⚠️ Unaudited |
| CollateralAdder | unknown | arbitrum | 5 deployments: polygon `0x7d30d0...6e1245`; polygon `0xe8f99d...daccef`; arbitrum [`0x447945...3a9a57`](./contracts/arbitrum-42161/0x44794511f06d09ba45fac50312a6f7f7ab3a9a57/); arbitrum `0x6a28e3...cf053d`; arbitrum `0xc1de3c...b604c4` | ⚠️ Unaudited |
| Comp | unknown | polygon | [`0x100100...073c73`](./contracts/polygon-137/0x10010069de6bd5408a6ded075cf6ae2498073c73/) | ⚠️ Unaudited |
| Comptroller | unknown | polygon | 7 deployments: ethereum `0x3d9819...c9cd3b`; polygon [`0x287072...f6fb79`](./contracts/polygon-137/0x28707252fdea41b72cf321d153a6c01fa9f6fb79/); polygon `0x376020...078d8a`; polygon `0x8c6139...a0a831`; polygon `0xa8cd5d...ea48f8`; polygon `0xb426c1...c7df13`; polygon `0xedba32...26e499` | ⚠️ Unaudited |
| ConnectV2BLiquity | unknown | ethereum | [`0x19574e...29b2ff`](./contracts/ethereum-1/0x19574e5dfb40bbd63a4f3bdcf27ed662b329b2ff/) | ⚠️ Unaudited |
| Dripper | unknown | ethereum | [`0xc86097...e8ac71`](./contracts/ethereum-1/0xc860975ce853aa1eb4dea902839827a17ce8ac71/) | ⚠️ Unaudited |
| DutchReserve | unknown | ethereum | 7 deployments: ethereum [`0x3d4575...ae3958`](./contracts/ethereum-1/0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958/); ethereum `0x625302...f497db`; ethereum `0x7c6fc9...86ae50`; ethereum `0x918308...5d1b37`; ethereum `0xa45f9b...46ca1d`; ethereum `0xa58c6d...32ea1a`; ethereum `0xb173dd...d2431e` | ⚠️ Unaudited |
| EIP20 | unknown | polygon | 2 deployments: polygon [`0x606b54...759605`](./contracts/polygon-137/0x606b54659c185b669ef90f920d0b93c06a759605/); polygon `0x851bcc...6c63f1` | ⚠️ Unaudited |
| ETHArb | unknown | arbitrum | 7 deployments: arbitrum [`0x8e0f69...159475`](./contracts/arbitrum-42161/0x8e0f69a4d5bfdff4847255c95db3d571de159475/); arbitrum `0x8f8043...eaf0d6`; arbitrum `0xb8b451...c29331`; arbitrum `0xc199d1...70ead9`; arbitrum `0xc7b03b...279f68`; arbitrum `0xdb872f...4108a8`; arbitrum `0xeb66db...ca0d4b` | ⚠️ Unaudited |
| ETHFeeCollector | unknown | arbitrum | 2 deployments: arbitrum [`0x3d39a1...df6919`](./contracts/arbitrum-42161/0x3d39a116f257f2eb6a63ce400197565e18df6919/); arbitrum `0x4fe29c...f5f990` | ⚠️ Unaudited |
| Experiment | unknown | ethereum | [`0x9e80b3...062472`](./contracts/ethereum-1/0x9e80b3cd3ebe427dcafa230fc6064eac10062472/) | ⚠️ Unaudited |
| Exponent | unknown | ethereum | 4 deployments: ethereum [`0x29c24a...f08332`](./contracts/ethereum-1/0x29c24aad19750753289e414053546f54dff08332/); ethereum `0x515643...e44a8d`; ethereum `0x89f58d...e4d54b`; ethereum `0xf79a20...70997c` | ⚠️ Unaudited |
| FakeAmpOracle | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x89d4f9...6a414e`](./contracts/arbitrum-42161/0x89d4f9fbd7eaedb6209e9706a94ae1fadc6a414e/); arbitrum `0xc9ac45...0790e6` | ⚠️ Unaudited |
| FakeBComptroller | unknown | ethereum | [`0xa6ba9a...008b6e`](./contracts/ethereum-1/0xa6ba9a68430dc7b21f7b8ab9d23ea3ff0c008b6e/) | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | ethereum | [`0xcb7932...09c669`](./contracts/ethereum-1/0xcb79323ada11af9d7869d0d5563e561bd609c669/) | ⚠️ Unaudited |
| FeeVault | core_logic | polygon | 7 deployments: polygon [`0x07de5d...ae33b3`](./contracts/polygon-137/0x07de5de2bc71223744523e31e613533a04ae33b3/); polygon `0x61c790...91c750`; polygon `0x8cf0b1...8161eb`; polygon `0x902810...019bbb`; polygon `0xb48bd8...fe63e7`; polygon `0xb9bc08...b80d34`; polygon `0xc4518e...f9ae31` | ⚠️ Unaudited |
| FixedSupplyToken | token | ethereum | 5 deployments: ethereum [`0x094c87...99c446`](./contracts/ethereum-1/0x094c875704c14783049ddf8136e298b3a099c446/); ethereum `0x09677d...f4228d`; ethereum `0x3d3b48...6f61d1`; ethereum `0x6132db...fbb381`; ethereum `0x71168c...48f8a2` | ⚠️ Unaudited |
| FlashArbPolygon | unknown | polygon | 2 deployments: polygon [`0x07f8c1...2933e2`](./contracts/polygon-137/0x07f8c13ce5a8347c9ba264a3fc0271427e2933e2/); polygon `0x315358...d41939` | ⚠️ Unaudited |
| FlashKeeper | operational_periphery | polygon | 3 deployments: polygon [`0x0bc51a...d01f2a`](./contracts/polygon-137/0x0bc51a773e75de9c0953e837b989cf5426d01f2a/); polygon `0x83b806...6874c0`; polygon `0x86efe1...b7b154` | ⚠️ Unaudited |
| FlashKeeperFantom | operational_periphery | polygon | [`0xcc969e...40abba`](./contracts/polygon-137/0xcc969efa01bc20369862381192b0c7a8bf40abba/) | ⚠️ Unaudited |
| FlashLoanImport | unknown | ethereum | [`0xa5c48e...5e11d6`](./contracts/ethereum-1/0xa5c48ef0301437bb2f5afdda8aedbe817f5e11d6/) | ⚠️ Unaudited |
| FuseBAMM | unknown | arbitrum | 2 deployments: arbitrum [`0x2227a0...26c70c`](./contracts/arbitrum-42161/0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c/); arbitrum `0x94fd84...399ef4` | ⚠️ Unaudited |
| GaugeHelper | operational_periphery | polygon | [`0xbf689f...24d382`](./contracts/polygon-137/0xbf689f50cb446f171f08691367f7d9398b24d382/) | ⚠️ Unaudited |
| GemSeller | unknown | ethereum | 4 deployments: ethereum [`0x7605aa...4f8b7b`](./contracts/ethereum-1/0x7605aaa45344f91315e0c596ab679159784f8b7b/); ethereum `0x94a64b...eb2a00`; ethereum `0x9f99f6...423d92`; ethereum `0xb9bc08...b80d34` | ⚠️ Unaudited |
| GetDecimals | unknown | ethereum | 3 deployments: ethereum [`0x7bfd2c...950fd5`](./contracts/ethereum-1/0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5/); ethereum `0xb4acba...1fb0b6`; ethereum `0xfa1ba4...c99d2d` | ⚠️ Unaudited |
| GOHMArb | unknown | arbitrum | [`0x787af9...105f91`](./contracts/arbitrum-42161/0x787af92cf661fb7b21a935389ec6505c84105f91/) | ⚠️ Unaudited |
| GOHMOracleAdapter | operational_periphery | arbitrum | [`0x471059...8887d0`](./contracts/arbitrum-42161/0x4710597795ccacdf99054afcc9459e91f08887d0/) | ⚠️ Unaudited |
| GovernanceExecutor | unknown | ethereum | 4 deployments: ethereum [`0x09908c...dff9fe`](./contracts/ethereum-1/0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe/); ethereum `0x7b57a6...2301ad`; ethereum `0x81c4b9...c4ac68`; ethereum `0x8f95c9...31a7f7` | ⚠️ Unaudited |
| Jar | unknown | ethereum | 3 deployments: ethereum [`0x3c36cc...763cff`](./contracts/ethereum-1/0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff/); ethereum `0xbde0ba...a2e6c1`; ethereum `0xdb89a7...c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | ethereum | 2 deployments: ethereum [`0x2cd6ea...99c34c`](./contracts/ethereum-1/0x2cd6eaf23f73bc4f359b69711fb34728c599c34c/); ethereum `0xf10bb2...1aaa69` | ⚠️ Unaudited |
| JumpRateModelV4 | operational_periphery | polygon | 2 deployments: polygon [`0x29ddb4...4425b0`](./contracts/polygon-137/0x29ddb4c4f9baae366dbd40eff79d364e004425b0/); polygon `0x42b458...e1f559` | ⚠️ Unaudited |
| KeeperProxy | operational_periphery | ethereum | [`0xbc0f18...cf14db`](./contracts/ethereum-1/0xbc0f18d0b9f2239331efb86de92618749ccf14db/) | ⚠️ Unaudited |
| KeeperRebate | operational_periphery | ethereum | [`0xb67200...b38f82`](./contracts/ethereum-1/0xb67200fefcbf36b0ca3d70d59ebf90d0b9b38f82/) | ⚠️ Unaudited |
| KyberBancorReserve | unknown | ethereum | 2 deployments: ethereum [`0xb02063...d6d6ce`](./contracts/ethereum-1/0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce/); ethereum `0xba9298...f47239` | ⚠️ Unaudited |
| KyberNetworkENSResolver | unknown | ethereum | [`0x198213...8c9759`](./contracts/ethereum-1/0x1982131c7d6959ff7768ee39c023ad002d8c9759/) | ⚠️ Unaudited |
| LiquidationBotHelper | periphery | polygon | [`0x198300...5151d8`](./contracts/polygon-137/0x19830074ceee045362eca46c972d3e3a225151d8/) | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | ethereum | 3 deployments: ethereum [`0x1f3b21...cc90d0`](./contracts/ethereum-1/0x1f3b218869e2ce02671d64298a19589341cc90d0/); ethereum `0xdba0bf...59aeb2`; ethereum `0xf0c02c...655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | ethereum | 4 deployments: ethereum [`0x0b7497...cccc6b`](./contracts/ethereum-1/0x0b74978ff389f2c720fbf5827ab848b447cccc6b/); ethereum `0x5fd74c...a1064d`; ethereum `0x720a2b...5ad9fd`; ethereum `0xbe02c5...8ce884` | ⚠️ Unaudited |
| LQTYArb | unknown | ethereum | 2 deployments: ethereum [`0x61c790...91c750`](./contracts/ethereum-1/0x61c79045f21244981e1323fd2bb7c7702791c750/); ethereum `0xf9a0e6...f28d49` | ⚠️ Unaudited |
| LQTYReserve | unknown | ethereum | [`0x4f73ad...05b8b6`](./contracts/ethereum-1/0x4f73ad319193320ed20eefaefb8f30b89b05b8b6/) | ⚠️ Unaudited |
| Maximillion | unknown | polygon | [`0x89db3b...78ef02`](./contracts/polygon-137/0x89db3b59381bc06fe9bf74532afd777e5f78ef02/) | ⚠️ Unaudited |
| Migrate | unknown | ethereum | 3 deployments: ethereum [`0x9eacb9...bd0a49`](./contracts/ethereum-1/0x9eacb93cb65f8ad428e270690653b156e1bd0a49/); ethereum `0xa30b96...a17c89`; ethereum `0xf4062d...7ed0ca` | ⚠️ Unaudited |
| MockComptroller | unknown | ethereum | [`0x3c5c18...78f123`](./contracts/ethereum-1/0x3c5c1851626e379e069fb1543fb479a87a78f123/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | 3 deployments: ethereum [`0x4dbbbf...851e80`](./contracts/ethereum-1/0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80/); ethereum `0x7ba651...db3538`; ethereum `0xb7d931...b7862c` | ⚠️ Unaudited |
| OneOracle | operational_periphery | ethereum | [`0x951e1d...61e5b9`](./contracts/ethereum-1/0x951e1d6936deef30d2d28a8f2393aece7361e5b9/) | ⚠️ Unaudited |
| OracleAdapter | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x190b8c...87820f`](./contracts/arbitrum-42161/0x190b8c66e8e1694ae9ff16170122feb2d287820f/); arbitrum `0xa5e1ae...4a4cdb` | ⚠️ Unaudited |
| PauseGuardian | governance | polygon | [`0x110614...2ce8cf`](./contracts/polygon-137/0x110614276f7b9ae8586a1c1d9bc079771e2ce8cf/) | ⚠️ Unaudited |
| Pay | unknown | ethereum | 2 deployments: ethereum [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/); ethereum `0x1ea6f1...48a157` | ⚠️ Unaudited |
| PBAMM | unknown | ethereum | 4 deployments: ethereum [`0x2c6af4...54ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/); ethereum `0x5123bf...31c70f`; ethereum `0x54bc91...f6d972`; ethereum `0xe4c3d5...43e6f3` | ⚠️ Unaudited |
| PickleUniLPOracle | operational_periphery | arbitrum | [`0x495559...1b5ab8`](./contracts/arbitrum-42161/0x4955592be28b26acf4e9d2670d27d696141b5ab8/) | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | ethereum | 2 deployments: ethereum [`0x3b755a...8b9f75`](./contracts/ethereum-1/0x3b755a375921c248250b03e0afffee779c8b9f75/); ethereum `0x7c3f1c...be8c17` | ⚠️ Unaudited |
| PublicKeeper | operational_periphery | arbitrum | [`0x48420f...e0e778`](./contracts/arbitrum-42161/0x48420fad7cc1b517e3b49126edc9988df6e0e778/) | ⚠️ Unaudited |
| Redeemer | unknown | arbitrum | 2 deployments: arbitrum [`0xe4086c...f629d7`](./contracts/arbitrum-42161/0xe4086cccad1d9c71ab96e01be444fc8d51f629d7/); arbitrum `0xea6b7b...bde55d` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0xaf50fe...1d0d57`](./contracts/ethereum-1/0xaf50fe9282e1be8c08b899a51628a085e81d0d57/) | ⚠️ Unaudited |
| SafeChecker | unknown | ethereum | [`0x2686ad...1e4bc5`](./contracts/ethereum-1/0x2686ad73b7e09269672a2c3368883b4f271e4bc5/) | ⚠️ Unaudited |
| Split3 | unknown | ethereum | [`0xceaf62...4fc7b2`](./contracts/ethereum-1/0xceaf62ba209e2fb7990d29c5f5157377d54fc7b2/) | ⚠️ Unaudited |
| Swap | unknown | arbitrum | 2 deployments: polygon `0xb5b8df...7bf02d`; arbitrum [`0x2980ba...a9f824`](./contracts/arbitrum-42161/0x2980baa3f234efb3beb7793ec8ae1a428aa9f824/) | ⚠️ Unaudited |
| TransferToReward | unknown | ethereum | 2 deployments: ethereum [`0x0bc250...11256a`](./contracts/ethereum-1/0x0bc250d17261b6c31521c8cd6cbba71ce211256a/); ethereum `0x9c58e0...5182bc` | ⚠️ Unaudited |
| UniV3Twap | unknown | ethereum | [`0x1459da...1f17d6`](./contracts/ethereum-1/0x1459dac936578bbe620e2a22e3026ce9791f17d6/) | ⚠️ Unaudited |
| UserInfo | periphery | ethereum | 3 deployments: ethereum [`0x468960...6ad3ff`](./contracts/ethereum-1/0x468960199c8045dedcf6aeb33e28dc57346ad3ff/); ethereum `0x791678...1ddfb1`; ethereum `0x907403...f233ea` | ⚠️ Unaudited |
| Utils | unknown | ethereum | 2 deployments: ethereum [`0x6fc613...20ee02`](./contracts/ethereum-1/0x6fc61357f00b7735e5a75156522def9cfb20ee02/); ethereum `0xaec7fa...018dcc` | ⚠️ Unaudited |
| VoteAndClaim | unknown | ethereum | [`0x923e21...4ed404`](./contracts/ethereum-1/0x923e21308f2468377b5655cd470662e3c24ed404/) | ⚠️ Unaudited |
| WhitePaperInterestRateModelV3 | operational_periphery | polygon | 2 deployments: polygon [`0x772918...96bb65`](./contracts/polygon-137/0x772918d032cfd4ff09ea7af623e56e2d8d96bb65/); polygon `0xb1c442...d1f5a8` | ⚠️ Unaudited |
| Wrapper | unknown | ethereum | 2 deployments: ethereum [`0x8f1a36...fcb608`](./contracts/ethereum-1/0x8f1a369ee7916491e43e412b0dcc7717e2fcb608/); ethereum `0xb6a1c0...e382b2` | ⚠️ Unaudited |
| wstETHArb | unknown | arbitrum | [`0x0d3377...c9e076`](./contracts/arbitrum-42161/0x0d3377912135a4083c10e60af7ff72763ac9e076/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CPriceFeed | operational_periphery | arbitrum | 5 deployments: polygon `0x7025cb...51d32b`; polygon `0xdbb8aa...723d36`; arbitrum [`0x0ab366...176bde`](./contracts/arbitrum-42161/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/); arbitrum `0x7874fd...60f869`; arbitrum `0x96d240...60c21a` | ⚠️ Unaudited (bytecode match) |
| HundredBAMM | unknown | polygon | 15 deployments: polygon [`0x0f0dd6...b80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/); polygon `0x1346e1...1e05ca`; polygon `0x1ecf1b...17b41d`; polygon `0x240b3e...810247`; polygon `0x2da135...0f9feb`; polygon `0x2ee900...4d64c7`; polygon `0x753c75...d0feac`; polygon `0x998bf3...078f49`; polygon `0xa5e148...85e0e4`; polygon `0xa8d60f...449e3d`; polygon `0xbdac31...5c7247`; polygon `0xcebdf1...b17e25`; polygon `0xda57c0...c00bdb`; polygon `0xedce1c...a440f1`; arbitrum `0x51fbf8...5d9565` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04208f...5eb719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ad1af...62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x183994...12e28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f97df...c793dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29e7d0...80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55e8be...bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ad29d...c98865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d444c...da8322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7025cb...51d32b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x753c75...d0feac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x856895...f287f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9247d4...c79c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa42c5...bb3bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc970e2...30570a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe574cc...e06545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf06c81...9d2e79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc0898...a49200` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x028245...6f44b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0aed20...2bb039` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0ba89d...7ae2b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x138f5b...6aeee1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x17625a...15a086` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1a1d74...361c6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cbdf5...27094e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x207a0b...d5dff7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x262175...1ac0bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x285e2e...592d90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x288a38...0ded55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x28da2d...1bb532` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4db1d2...eb1e71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x55fb2a...5c415e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x60d7de...4e7c42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6f5e88...2d118e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x757ad8...26bd7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7a0187...ff4a96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8a0d63...e82c28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8e15a2...ff0235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9062d1...3fc27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x94a64b...eb2a00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9a79a2...517a12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9a9e6e...9e4374` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9d5680...7caf3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f99f6...423d92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa2fa2b...81d8ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa8236e...e3db00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadeba4...e0bb27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xae6277...bbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xafbc55...d542e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb04cc6...4868ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb1ace6...3e21a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb54f98...52521e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe76cd...cba11c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcb6e2f...08b697` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcc2e62...fe937e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe539b9...e91186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8f12f...6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf2feba...ab0252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf426eb...feb8f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf9c45c...511f45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfacd20...75738c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xff6a0d...f238f1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xedc790...138a3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MakerDAO Integration](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | 9 | high |
| [**Compound Integration**](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | 5 | high |
| [**Liquity Integration**](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | 13 | high |
| [**Compound Compatible Platforms (Hundred, Fuse)**](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | 13 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | StabilityPool | core_logic | $5,090.00 | Verified native implementation with $5,090.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3328d5...54b6ce`](./contracts/ethereum-1/0x3328d5b2cabdf25a9aad31ae52f660398c54b6ce/) | Vault | core_logic | $87.78 | Verified native implementation with $87.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0bdcbc...1e10cd`](./contracts/polygon-137/0x0bdcbcebcdcee127e15872fe4fb904b0a41e10cd/) | Admin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c60b...24329e`](./contracts/ethereum-1/0x12c60b3170fb43e6a8f8ba2d843621c19324329e/) | Arb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x364854...695ce0`](./contracts/ethereum-1/0x3648542ef46ae173aa2c4fe19707aa1078695ce0/) | ArbChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x214937...ef4c1c`](./contracts/arbitrum-42161/0x214937a1777e28f188df0ecf3c53189894ef4c1c/) | BAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd0c40...55344b`](./contracts/ethereum-1/0xdd0c40203a6c25bc454d1e528962a4e6a755344b/) | BalanceInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae823...478082`](./contracts/ethereum-1/0x0ae823c44b3485918b359329f9f77925c1478082/) | Balances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfae2e2...414ccb`](./contracts/ethereum-1/0xfae2e2d3f11bab10ee0ddd0332f6dfe957414ccb/) | BAMMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46dfdf...2344cf`](./contracts/ethereum-1/0x46dfdffe7592eb565e702c4f8fc631065b2344cf/) | BCdpScore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0ceca...85da4e`](./contracts/ethereum-1/0xa0ceca20349dcc3556e0fbaaac8f8aa1bf85da4e/) | BIP1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dc133...e7e1b4`](./contracts/ethereum-1/0x6dc1338ef4117c031c4c1dc61b969e45e6e7e1b4/) | BIP3to6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x102887...e542c8`](./contracts/arbitrum-42161/0x102887d6bfc58b0abe721aad1ce5a036ace542c8/) | BKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20f7cf...35a7e6`](./contracts/ethereum-1/0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6/) | BlackFriday | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x384301...0c7129`](./contracts/ethereum-1/0x3843019c19259117ed473947007bcafc5c0c7129/) | BLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6eaa36...358194`](./contracts/ethereum-1/0x6eaa36cb264ced039de3762635f098c20c358194/) | BPROAggregated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79c3ce...86a7ad`](./contracts/ethereum-1/0x79c3ceb9decd2de5f70e50b0eb2aeb4bca86a7ad/) | BStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82b414...784770`](./contracts/arbitrum-42161/0x82b4141c7a71cbcd9c95181f057f7dee35784770/) | BTCArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | BTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2325aa...c79dc3`](./contracts/ethereum-1/0x2325aa20deaa9770a978f1dc7c073589ffc79dc3/) | BudConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7d140...7e001f`](./contracts/arbitrum-42161/0xe7d1406cc09f6444973c798393f393f7e57e001f/) | CheapHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8ede50...c1bb6e`](./contracts/polygon-137/0x8ede503c2df9fbd2be33726818dcb87a76c1bb6e/) | CLiquidationBotHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x447945...3a9a57`](./contracts/arbitrum-42161/0x44794511f06d09ba45fac50312a6f7f7ab3a9a57/) | CollateralAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ab366...176bde`](./contracts/arbitrum-42161/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | CPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc86097...e8ac71`](./contracts/ethereum-1/0xc860975ce853aa1eb4dea902839827a17ce8ac71/) | Dripper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4575...ae3958`](./contracts/ethereum-1/0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958/) | DutchReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8e0f69...159475`](./contracts/arbitrum-42161/0x8e0f69a4d5bfdff4847255c95db3d571de159475/) | ETHArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d39a1...df6919`](./contracts/arbitrum-42161/0x3d39a116f257f2eb6a63ce400197565e18df6919/) | ETHFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e80b3...062472`](./contracts/ethereum-1/0x9e80b3cd3ebe427dcafa230fc6064eac10062472/) | Experiment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29c24a...f08332`](./contracts/ethereum-1/0x29c24aad19750753289e414053546f54dff08332/) | Exponent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89d4f9...6a414e`](./contracts/arbitrum-42161/0x89d4f9fbd7eaedb6209e9706a94ae1fadc6a414e/) | FakeAmpOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6ba9a...008b6e`](./contracts/ethereum-1/0xa6ba9a68430dc7b21f7b8ab9d23ea3ff0c008b6e/) | FakeBComptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb7932...09c669`](./contracts/ethereum-1/0xcb79323ada11af9d7869d0d5563e561bd609c669/) | FeeBurnerResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07de5d...ae33b3`](./contracts/polygon-137/0x07de5de2bc71223744523e31e613533a04ae33b3/) | FeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094c87...99c446`](./contracts/ethereum-1/0x094c875704c14783049ddf8136e298b3a099c446/) | FixedSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07f8c1...2933e2`](./contracts/polygon-137/0x07f8c13ce5a8347c9ba264a3fc0271427e2933e2/) | FlashArbPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0bc51a...d01f2a`](./contracts/polygon-137/0x0bc51a773e75de9c0953e837b989cf5426d01f2a/) | FlashKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcc969e...40abba`](./contracts/polygon-137/0xcc969efa01bc20369862381192b0c7a8bf40abba/) | FlashKeeperFantom | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5c48e...5e11d6`](./contracts/ethereum-1/0xa5c48ef0301437bb2f5afdda8aedbe817f5e11d6/) | FlashLoanImport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2227a0...26c70c`](./contracts/arbitrum-42161/0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c/) | FuseBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbf689f...24d382`](./contracts/polygon-137/0xbf689f50cb446f171f08691367f7d9398b24d382/) | GaugeHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7605aa...4f8b7b`](./contracts/ethereum-1/0x7605aaa45344f91315e0c596ab679159784f8b7b/) | GemSeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bfd2c...950fd5`](./contracts/ethereum-1/0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5/) | GetDecimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x787af9...105f91`](./contracts/arbitrum-42161/0x787af92cf661fb7b21a935389ec6505c84105f91/) | GOHMArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09908c...dff9fe`](./contracts/ethereum-1/0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe/) | GovernanceExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f0dd6...b80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/) | HundredBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c36cc...763cff`](./contracts/ethereum-1/0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff/) | Jar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd6ea...99c34c`](./contracts/ethereum-1/0x2cd6eaf23f73bc4f359b69711fb34728c599c34c/) | JarConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc0f18...cf14db`](./contracts/ethereum-1/0xbc0f18d0b9f2239331efb86de92618749ccf14db/) | KeeperProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb67200...b38f82`](./contracts/ethereum-1/0xb67200fefcbf36b0ca3d70d59ebf90d0b9b38f82/) | KeeperRebate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb02063...d6d6ce`](./contracts/ethereum-1/0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce/) | KyberBancorReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x198213...8c9759`](./contracts/ethereum-1/0x1982131c7d6959ff7768ee39c023ad002d8c9759/) | KyberNetworkENSResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x198300...5151d8`](./contracts/polygon-137/0x19830074ceee045362eca46c972d3e3a225151d8/) | LiquidationBotHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f3b21...cc90d0`](./contracts/ethereum-1/0x1f3b218869e2ce02671d64298a19589341cc90d0/) | LiquidatorBalanceInfo | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b7497...cccc6b`](./contracts/ethereum-1/0x0b74978ff389f2c720fbf5827ab848b447cccc6b/) | LiquidatorInfo | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61c790...91c750`](./contracts/ethereum-1/0x61c79045f21244981e1323fd2bb7c7702791c750/) | LQTYArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9eacb9...bd0a49`](./contracts/ethereum-1/0x9eacb93cb65f8ad428e270690653b156e1bd0a49/) | Migrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x951e1d...61e5b9`](./contracts/ethereum-1/0x951e1d6936deef30d2d28a8f2393aece7361e5b9/) | OneOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x190b8c...87820f`](./contracts/arbitrum-42161/0x190b8c66e8e1694ae9ff16170122feb2d287820f/) | OracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | Pay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6af4...54ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/) | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b755a...8b9f75`](./contracts/ethereum-1/0x3b755a375921c248250b03e0afffee779c8b9f75/) | PTToDaiConversionRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48420f...e0e778`](./contracts/arbitrum-42161/0x48420fad7cc1b517e3b49126edc9988df6e0e778/) | PublicKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4086c...f629d7`](./contracts/arbitrum-42161/0xe4086cccad1d9c71ab96e01be444fc8d51f629d7/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf50fe...1d0d57`](./contracts/ethereum-1/0xaf50fe9282e1be8c08b899a51628a085e81d0d57/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2686ad...1e4bc5`](./contracts/ethereum-1/0x2686ad73b7e09269672a2c3368883b4f271e4bc5/) | SafeChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xceaf62...4fc7b2`](./contracts/ethereum-1/0xceaf62ba209e2fb7990d29c5f5157377d54fc7b2/) | Split3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2980ba...a9f824`](./contracts/arbitrum-42161/0x2980baa3f234efb3beb7793ec8ae1a428aa9f824/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc250...11256a`](./contracts/ethereum-1/0x0bc250d17261b6c31521c8cd6cbba71ce211256a/) | TransferToReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x468960...6ad3ff`](./contracts/ethereum-1/0x468960199c8045dedcf6aeb33e28dc57346ad3ff/) | UserInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fc613...20ee02`](./contracts/ethereum-1/0x6fc61357f00b7735e5a75156522def9cfb20ee02/) | Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x923e21...4ed404`](./contracts/ethereum-1/0x923e21308f2468377b5655cd470662e3c24ed404/) | VoteAndClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1a36...fcb608`](./contracts/ethereum-1/0x8f1a369ee7916491e43e412b0dcc7717e2fcb608/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d3377...c9e076`](./contracts/arbitrum-42161/0x0d3377912135a4083c10e60af7ff72763ac9e076/) | wstETHArb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 16 |
| standard_library | 2 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=45

Fork inheritance lineage and inherited audits are included when available.
