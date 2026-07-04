# Agentic Audit Brief: Fringe Finance

## Project Overview

- Project: Fringe Finance (`fringe-finance`)
- Website: [https://fringe.fi](https://fringe.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.547Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dfb3
- Chains: arbitrum, base, ethereum, optimism, polygon, zksync-era
- Contract surface: 817 unique implementations (1267 raw deployments)
- DeFi Llama TVL: $45,225.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 882 project-authored contract(s) across 5 chain(s); 3 ERC4626 vaults, 179 ERC20 tokens, 40 ERC721 NFTs, 7 ERC1155 multi-tokens, 4 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 169 common project-authored base contract(s) (erc20mintable, minterrole, erc20detailed). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1465; live-surface contracts included: 1219 (791 live, 428 unknown).
- Excluded by liveness: 246 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/434 (0.0%)
- Deployed-live implementations: 448 of 817 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/449
- Verified + Unaudited implementations: 449
- Verified by bytecode match: 0
- Unverified implementations: 368
- Unique implementations: 817
- Raw deployments: 1267
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (449)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0xeffdcb...230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | ethereum | n/a | [`0xfde4c9...699bb2`](./contracts/ethereum-1/0xfde4c96c8593536e31f229ea8f37b2ada2699bb2/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Asset | unknown | ethereum | n/a | 3 deployments: ethereum [`0x067a1e...d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/); ethereum `0x266003...1ae34f`; ethereum `0xd99ad2...9065a6` | ⚠️ Unaudited |
| Asset | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fbf5c...5f853b`](./contracts/ethereum-1/0x7fbf5c9af42a6d146dcc18762f515692cd5f853b/); ethereum `0xa342f5...478db5` | ⚠️ Unaudited |
| AssetGiveaway | unknown | ethereum | n/a | 5 deployments: ethereum [`0x058315...4be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/); ethereum `0x38f9e6...6941ff`; ethereum `0xcd18fb...e74db0`; ethereum `0xd6e2d3...cb35fd`; ethereum `0xf3297c...de1e3d` | ⚠️ Unaudited |
| AssetSignedAuction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5167c6...70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/); ethereum `0x921fd4...4c2858` | ⚠️ Unaudited |
| AuthValidator | unknown | polygon | n/a | [`0x7804fb...29ffda`](./contracts/polygon-137/0x7804fb2af15bb1323795a888b09913cef629ffda/) | ⚠️ Unaudited |
| AutomationMaster | unknown | base | n/a | [`0x384eab...95a613`](./contracts/base-8453/0x384eab89048520e35309e48ea933d845c495a613/) | ⚠️ Unaudited |
| AvatarCollection | unknown | polygon | n/a | [`0xa4ead4...00fbb4`](./contracts/polygon-137/0xa4ead40707f1ae901c4bde6641b29fb91900fbb4/) | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | n/a | [`0xd0c61e...3727dc`](./contracts/ethereum-1/0xd0c61e8f15d9def697e1100663ed7da74d3727dc/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | ethereum | n/a | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | base | n/a | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| Batch | unknown | polygon | n/a | [`0x03bcd6...6edfb6`](./contracts/polygon-137/0x03bcd63abaf8452e2675e5ddf5f62dc8036edfb6/) | ⚠️ Unaudited |
| BatchSender | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| Bitcoin | unknown | ethereum | n/a | [`0x72e4f9...4eeea9`](./contracts/ethereum-1/0x72e4f9f808c49a2a61de9c5896298920dc4eeea9/) | ⚠️ Unaudited |
| BondWrapper | unknown | arbitrum | n/a | [`0xdc1321...af34e5`](./contracts/arbitrum-42161/0xdc132116a76683f5355042e1b67819551aaf34e5/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| Bracket | unknown | base | n/a | [`0x24fb3d...968529`](./contracts/base-8453/0x24fb3dfba019e73ed45c884a31b5a60608968529/) | ⚠️ Unaudited |
| BrettToken | token | base | n/a | [`0x532f27...b142e4`](./contracts/base-8453/0x532f27101965dd16442e59d40670faf5ebb142e4/) | ⚠️ Unaudited |
| BTT | unknown | ethereum | n/a | [`0xc66992...797957`](./contracts/ethereum-1/0xc669928185dbce49d2230cc9b0979be6dc797957/) | ⚠️ Unaudited |
| CamelotExchangeRouter | unknown | arbitrum | n/a | [`0x1be46c...268f25`](./contracts/arbitrum-42161/0x1be46c7a40906c19d91d07b3ae69ef5893268f25/) | ⚠️ Unaudited |
| CamelotFactory | registry | arbitrum | n/a | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ⚠️ Unaudited |
| CamelotMaster | unknown | arbitrum | n/a | [`0x55401a...fc21f4`](./contracts/arbitrum-42161/0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4/) | ⚠️ Unaudited |
| CamelotRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4672f4...35d091`](./contracts/arbitrum-42161/0x4672f4327a099ae5e4bfc42cdf0c2a400535d091/); arbitrum `0xdd8e1a...d8a453` | ⚠️ Unaudited |
| CamelotRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc873fe...b2448d`](./contracts/arbitrum-42161/0xc873fecbd354f5a56e00e710b90ef4201db2448d/); arbitrum `0xe45801...1b8175` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x09fa9d...eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/); arbitrum `0x0afae9...595fe4`; arbitrum `0x44fac3...7feaa4` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68c4a7...3b619b`](./contracts/arbitrum-42161/0x68c4a79bb793c354614a798b70aff3ae623b619b/); arbitrum `0xe8c0d2...f3e3c2` | ⚠️ Unaudited |
| CappedBptToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cdb61...6ef826`](./contracts/ethereum-1/0x0cdb61ab468a2f89d1636c95b32d88c0ea6ef826/); ethereum `0x7d3cd0...19303d` | ⚠️ Unaudited |
| CappedERC4626 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09fd32...831c7a`](./contracts/ethereum-1/0x09fd32c702117bb1deaa2dd43e2bc8a63a831c7a/); ethereum `0x739d34...d4ac88` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x054985...8f8a85`](./contracts/ethereum-1/0x05498574bd0fa99eecb01e1241661e7ee58f8a85/); ethereum `0xe565e1...7ea18a` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cef7f...a07e0a`](./contracts/ethereum-1/0x0cef7fcc8d24782c21b08694526600e190a07e0a/); ethereum `0xddad1d...203897` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f23dc...2df4ff`](./contracts/ethereum-1/0x4f23dcc38438fb01960aff49daeeeef7242df4ff/); ethereum `0x7c1caa...4ecde9` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5a6752...5baf1a`](./contracts/ethereum-1/0x5a6752f16b81a8dfed84c785b49693573e5baf1a/); ethereum `0xddb3bc...0e357a` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f39ad...479165`](./contracts/ethereum-1/0x5f39ad3df3ed9cf383eeee45218c33da86479165/); ethereum `0xf8243e...93b58a` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x64ea01...731f41`](./contracts/ethereum-1/0x64ea012919fd9e53bdccdc0fc89201f484731f41/); ethereum `0xdc94d0...38765a` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6b68c5...6346ae`](./contracts/ethereum-1/0x6b68c5708daffd0393acc6a8cc92f8c2146346ae/); ethereum `0x73ccb0...c4c04b`; ethereum `0x9f86bf...ae88da`; ethereum `0xe2c1d2...ebb579` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99bd1f...798fc3`](./contracts/ethereum-1/0x99bd1f28a5a7fecbe39a53463a916794be798fc3/); ethereum `0xb9318f...236baf` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9d878e...2822a8`](./contracts/ethereum-1/0x9d878ec06f628e883d2f9f1d793adbcfd52822a8/); ethereum `0xf5b8ee...ac5df8` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb9cb62...b351b8`](./contracts/ethereum-1/0xb9cb624d4b21e0239bb149b1b1f1992a0eb351b8/); ethereum `0xdf6232...0ab6d2` | ⚠️ Unaudited |
| CappedGovToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbdcf0b...1f0651`](./contracts/ethereum-1/0xbdcf0bb40eb8642f907133bdb5fcc681d81f0651/); ethereum `0xd3bd7a...135dd2` | ⚠️ Unaudited |
| CappedMkrToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2c52ee...e8247e`](./contracts/ethereum-1/0x2c52ee10bd58efa20fc6ee418bf9085639e8247e/); ethereum `0xe4fd7f...368f01` | ⚠️ Unaudited |
| CappedMkrToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99904e...2e1b0f`](./contracts/ethereum-1/0x99904e5369c551e0a9824e9e95141c46ae2e1b0f/); ethereum `0xbb5578...2a9148` | ⚠️ Unaudited |
| CareBears | unknown | polygon | n/a | 2 deployments: polygon [`0x670966...ff8aab`](./contracts/polygon-137/0x6709660a6237723f278188bcae9e21b21eff8aab/); polygon `0x89a205...6cd002` | ⚠️ Unaudited |
| Catalyst | unknown | polygon | n/a | 2 deployments: polygon [`0x44e9e6...581cd6`](./contracts/polygon-137/0x44e9e688faa91f5ac6a8f9bb239eacc18f581cd6/); polygon `0xa90970...9bed95` | ⚠️ Unaudited |
| CatalystMinter | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4d103f...672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/); ethereum `0x598985...a6ec66`; ethereum `0xa4e177...838cac`; ethereum `0xc107a1...60d824` | ⚠️ Unaudited |
| CatalystRegistry | unknown | ethereum | n/a | [`0xefa52f...6d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | ⚠️ Unaudited |
| Chain | unknown | ethereum | n/a | 4 deployments: ethereum [`0x00613c...3e9cec`](./contracts/ethereum-1/0x00613c3fa6fb4448a4746385c331c17ee23e9cec/); ethereum `0x861f81...03daf8`; ethereum `0xa2cd3d...94fb18`; ethereum `0xde9e7d...0e754b` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| CollectionFactory | unknown | polygon | n/a | [`0x3ef580...6bff4a`](./contracts/polygon-137/0x3ef580a4a6b862183558625126bcc186436bff4a/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| CommonMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27b4c4...40643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/); ethereum `0xa5d562...045152` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| ContributionRules | unknown | polygon | n/a | [`0x6b4831...04a774`](./contracts/polygon-137/0x6b4831e24f0cd73d4150ef4694aa87d6c104a774/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x24ccd4...616117`](./contracts/ethereum-1/0x24ccd4d3ac8529ff08c58f74ff6755036e616117/) | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | optimism | n/a | 2 deployments: optimism [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/); arbitrum `0x9d2f29...a988a7` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | arbitrum | n/a | 5 deployments: optimism `0x484c2d...36578c`; optimism `0x680641...b9838b`; optimism `0x8368dc...428dee`; arbitrum [`0x178412...770c2a`](./contracts/arbitrum-42161/0x178412e79c25968a32e89b11f63b33f733770c2a/); arbitrum `0x95ab45...053f39` | ⚠️ Unaudited |
| CrossChainOracle | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/); arbitrum `0xe5fd90...b9a474` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | operational_periphery | arbitrum | n/a | 3 deployments: optimism `0x7655a3...23d502`; optimism `0xc55a7f...f83071`; arbitrum [`0x6a0fc2...7f3d03`](./contracts/arbitrum-42161/0x6a0fc220d129f4d21e40764ed0bea4ec777f3d03/) | ⚠️ Unaudited |
| Curation | unknown | ethereum | n/a | [`0x6d2b24...2c176c`](./contracts/ethereum-1/0x6d2b24947680fce35d5c9dd6a4e32649f12c176c/) | ⚠️ Unaudited |
| Curation | unknown | ethereum | n/a | [`0x8fe00a...ce1538`](./contracts/ethereum-1/0x8fe00a685bcb3b2cc296ff6ffeab10aca4ce1538/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); arbitrum `0xda1000...000da1` | ⚠️ Unaudited |
| DanceFight | unknown | polygon | n/a | 2 deployments: polygon [`0x224c3c...87903e`](./contracts/polygon-137/0x224c3c4d90477a80e82903f3e7a2d267b087903e/); polygon `0xc6054f...b911e8` | ⚠️ Unaudited |
| DanceFight | unknown | polygon | n/a | [`0x38f6c7...eba391`](./contracts/polygon-137/0x38f6c7e09d2686d65b4b7dec1f22e183a1eba391/) | ⚠️ Unaudited |
| DefiEdgeProxyHelper | unknown | arbitrum | n/a | [`0xc4eb9f...09c11f`](./contracts/arbitrum-42161/0xc4eb9fff53581130e65e3b60b31295c52509c11f/) | ⚠️ Unaudited |
| DegenToken | token | base | n/a | [`0x4ed4e8...efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | ⚠️ Unaudited |
| DisputeManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x444c13...a5bfc2`](./contracts/ethereum-1/0x444c138bf2b151f28a713b0ee320240365a5bfc2/); ethereum `0x97307b...c4fb0b` | ⚠️ Unaudited |
| DisputeManager | unknown | ethereum | n/a | [`0x9c837a...56517f`](./contracts/ethereum-1/0x9c837ac7818d9d2653061579d479cf691056517f/) | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | n/a | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | [`0x9f8f72...a579a2`](./contracts/ethereum-1/0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2/) | ⚠️ Unaudited |
| DummyERC1155 | unknown | ethereum | n/a | [`0x556f50...aa9e6d`](./contracts/ethereum-1/0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| ENSToken | token | ethereum | n/a | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ⚠️ Unaudited |
| EpochManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/); ethereum `0x64f990...e05ddb` | ⚠️ Unaudited |
| ERC1155 | unknown | polygon | n/a | [`0xd19cc1...6761dc`](./contracts/polygon-137/0xd19cc137bb848d3a48ad8ad883886b67c26761dc/) | ⚠️ Unaudited |
| ERC1155Predicate | unknown | ethereum | n/a | [`0x0b9020...6eb88f`](./contracts/ethereum-1/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/); arbitrum `0x887f4d...163d20` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | n/a | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC20GroupCatalyst | unknown | ethereum | n/a | [`0x2fc246...0227f1`](./contracts/ethereum-1/0x2fc246149b4b8d7bcef6188a10af1791380227f1/) | ⚠️ Unaudited |
| ERC20GroupGem | unknown | ethereum | n/a | [`0x8ff261...851ba5`](./contracts/ethereum-1/0x8ff2611da386de427fc96a8073963619c5851ba5/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | n/a | [`0x40ec5b...5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ⚠️ Unaudited |
| ERC20Predicate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89a93f...ffd3ec`](./contracts/ethereum-1/0x89a93f94c0a3f388930c4a568430f5e8ffffd3ec/); ethereum `0xcede21...2fe0ad` | ⚠️ Unaudited |
| ERC20RewardPool | core_logic | polygon | n/a | [`0xd3a9ca...3d8b8f`](./contracts/polygon-137/0xd3a9caa25393765c05ce9f332b5e33b5e33d8b8f/) | ⚠️ Unaudited |
| ERC20SubToken | token | ethereum | n/a | 9 deployments: ethereum [`0x3b8af2...ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/); ethereum `0x3d0c16...442cbb`; ethereum `0x3d0e26...db539b`; ethereum `0x483305...4f0a78`; ethereum `0x53b5f2...16c8b6`; ethereum `0x68fa88...4012ea`; ethereum `0x725079...919b18`; ethereum `0x939d2a...226070`; ethereum `0xe4315c...865e95` | ⚠️ Unaudited |
| ERC721Predicate | unknown | ethereum | n/a | [`0x54cd01...774a0c`](./contracts/ethereum-1/0x54cd017f0d7cdef1d0dc265926aa9b3ac7774a0c/) | ⚠️ Unaudited |
| ERC721Predicate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99cdd3...cc8eb1`](./contracts/ethereum-1/0x99cdd3dad1efcffa57a5e622939c9d5411cc8eb1/); ethereum `0xb555a0...574050` | ⚠️ Unaudited |
| ERC721Predicate | unknown | ethereum | n/a | [`0xe6f453...80f7ad`](./contracts/ethereum-1/0xe6f45376f64e1f568bd1404c155e5ffd2f80f7ad/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | ⚠️ Unaudited |
| EstateSale | unknown | ethereum | n/a | [`0xe372ed...2e2903`](./contracts/ethereum-1/0xe372ed8d188517ef4d4bc464c0c068d2002e2903/) | ⚠️ Unaudited |
| EstateSaleWithAuth | unknown | polygon | n/a | 12 deployments: polygon [`0x0d879d...85199c`](./contracts/polygon-137/0x0d879dc15790a42ebe802d8a0c833ef23485199c/); polygon `0x196c41...6b9439`; polygon `0x300771...bef7cb`; polygon `0x3d62a5...0bf09a`; polygon `0x40bded...f1acbf`; polygon `0x5c0d09...ab4a8e`; polygon `0x918be3...ad9c77`; polygon `0xb49a45...44645e`; polygon `0xb7df7a...17ccf2`; polygon `0xb8e4ff...b1d5c7`; polygon `0xfb9bb8...338ca3`; polygon `0xfc7910...8b33cb` | ⚠️ Unaudited |
| EstateSaleWithFee | unknown | ethereum | n/a | 10 deployments: ethereum [`0x089a55...648d9d`](./contracts/ethereum-1/0x089a55baf7052321cbce4bdbf3be568955648d9d/); ethereum `0x2e9531...e91b68`; ethereum `0x55b7b8...3f97fe`; ethereum `0x656acf...04e819`; ethereum `0x6ee6b3...23632d`; ethereum `0xaf93fe...1bced2`; ethereum `0xb11822...d6a666`; ethereum `0xb9beca...1d9a6b`; ethereum `0xc3ab64...ab2d84`; ethereum `0xd66e15...e15d39` | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | n/a | [`0x8484ef...922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa2611f...9925b5`](./contracts/ethereum-1/0xa2611f4488c92e1a91eb4d2a8d30110eba9925b5/); ethereum `0xe7424a...98c782` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | ethereum | n/a | [`0xf0ad5c...700455`](./contracts/ethereum-1/0xf0ad5cad05e10572efceb849f6ff0c68f9700455/) | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | ethereum | n/a | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | ⚠️ Unaudited |
| EventsHub | unknown | ethereum | n/a | [`0x4028a3...79c215`](./contracts/ethereum-1/0x4028a3c7ae9a0555293225135e54a6fa2879c215/) | ⚠️ Unaudited |
| EXCLegacyToken | token | arbitrum | n/a | [`0x83bbc9...13c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | ⚠️ Unaudited |
| Execute | unknown | base | n/a | [`0xdbdd7b...2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | ⚠️ Unaudited |
| FairAuction | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x06b5c1...883362`](./contracts/arbitrum-42161/0x06b5c17857c32f96daa2f43aee465e962c883362/); arbitrum `0x0ca4fc...f6c20b`; arbitrum `0x149ace...87975b`; arbitrum `0x232243...98bbb8`; arbitrum `0x2eb79e...36ffe1`; arbitrum `0x40bf24...4b47d4`; arbitrum `0x4a867f...4adca3`; arbitrum `0x7079ed...b58b66`; arbitrum `0x9c613a...5d7248`; arbitrum `0xb09a74...f6c88d`; arbitrum `0xb955cb...648a0c`; arbitrum `0xdac17c...09e54c`; arbitrum `0xe0e0b0...bbc1ec`; arbitrum `0xea0817...42cc73` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | arbitrum | n/a | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | n/a | [`0xcbb7c0...ed33bf`](./contracts/ethereum-1/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | 2 deployments: base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589...a02913` | ⚠️ Unaudited |
| FistOfTheNorthStar | unknown | polygon | n/a | 2 deployments: polygon [`0x5521b0...784429`](./contracts/polygon-137/0x5521b00e7952948babc84f052b5d017792784429/); polygon `0xd826d8...031299` | ⚠️ Unaudited |
| FlashLoanLever | unknown | ethereum | n/a | [`0x88f280...8487b9`](./contracts/ethereum-1/0x88f2803a9e52ca7c26b2f52740facd50d38487b9/) | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| FRAXShares | unknown | ethereum | n/a | [`0x3432b6...c964d0`](./contracts/ethereum-1/0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0/) | ⚠️ Unaudited |
| frxETH | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0304a3...f0c00e`](./contracts/ethereum-1/0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e/); ethereum `0x0363a3...8b8182`; ethereum `0x2c37fb...2773c3`; ethereum `0x5e8422...8caa1f`; ethereum `0x67218f...5a42da`; ethereum `0xd1738e...9c2562` | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2dd1b4...b3b532`](./contracts/ethereum-1/0x2dd1b4d4548accea497050619965f91f78b3b532/); ethereum `0x3405e8...eea320`; ethereum `0xa63f56...1a55f3`; ethereum `0xb1c4e5...916462`; ethereum `0xbafa44...9c1138`; ethereum `0xfbcb0f...d6276f` | ⚠️ Unaudited |
| FundRetriever | unknown | ethereum | n/a | [`0x912ce5...9e6548`](./contracts/ethereum-1/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GainsNetworkNft1 | token | arbitrum | n/a | [`0x75cbcc...2d6f89`](./contracts/arbitrum-42161/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89/) | ⚠️ Unaudited |
| GainsNetworkNft2 | token | arbitrum | n/a | [`0xd1f024...8e8a4e`](./contracts/arbitrum-42161/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e/) | ⚠️ Unaudited |
| GainsNetworkNft3 | token | arbitrum | n/a | [`0x983415...84b384`](./contracts/arbitrum-42161/0x9834159eaf9811cf4c568294d5c7c9158f84b384/) | ⚠️ Unaudited |
| GainsNetworkNft4 | token | arbitrum | n/a | [`0x40f0ae...1a21a1`](./contracts/arbitrum-42161/0x40f0aeab6383be2f254ce40b79089070fa1a21a1/) | ⚠️ Unaudited |
| GainsNetworkNft5 | unknown | arbitrum | n/a | [`0x5e3b54...ffc9be`](./contracts/arbitrum-42161/0x5e3b541ad6acc4381c110247946c863e05ffc9be/) | ⚠️ Unaudited |
| GainsNetworkToken | token | arbitrum | n/a | [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | arbitrum | n/a | [`0x851b3f...5a30f1`](./contracts/arbitrum-42161/0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GenesisBouncer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x48dee1...831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/); ethereum `0x52316f...2b4509`; ethereum `0xf1652d...9069dd` | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | ⚠️ Unaudited |
| GnosisToken | token | ethereum | n/a | [`0x6810e7...386b96`](./contracts/ethereum-1/0x6810e776880c02933d47db1b9fc05908e5386b96/) | ⚠️ Unaudited |
| GNS | unknown | ethereum | n/a | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | ⚠️ Unaudited |
| GNSBorrowingFees | unknown | arbitrum | n/a | [`0xa03e32...393154`](./contracts/arbitrum-42161/0xa03e32a42c75fdddc9a39973ddd082f147393154/) | ⚠️ Unaudited |
| GNSNftRewardsV6 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x7ce604...b4135f`](./contracts/arbitrum-42161/0x7ce604449d00ef758a10a21c4eba3490e2b4135f/); arbitrum `0xa74000...ce60a6`; arbitrum `0xf69639...13b4c2` | ⚠️ Unaudited |
| GNSNftRewardsV6 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x95120e...a266bb`](./contracts/arbitrum-42161/0x95120ef241dbda33d6c94bd0052d408446a266bb/); arbitrum `0xc2d107...3505b8` | ⚠️ Unaudited |
| GNSNftRewardsV6 | unknown | arbitrum | n/a | [`0xa65448...9afdb8`](./contracts/arbitrum-42161/0xa654486ac316ab5cf7662e6b8f770eccc39afdb8/) | ⚠️ Unaudited |
| GNSNftRewardsV6_3_1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09a5a0...6840a9`](./contracts/arbitrum-42161/0x09a5a0e9cccac3db70e6954386ca0eeb7f6840a9/); arbitrum `0xd901f0...8c193b` | ⚠️ Unaudited |
| GNSNftRewardsV6_4_1 | unknown | arbitrum | n/a | [`0xde5750...acfec3`](./contracts/arbitrum-42161/0xde5750071caca8db173fc6543d23d0bcacacfec3/) | ⚠️ Unaudited |
| GNSPairInfosV6_1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x04a5e3...82d497`](./contracts/arbitrum-42161/0x04a5e3cf21b0080b72facdca634349a56982d497/); arbitrum `0x0b5216...4501a6` | ⚠️ Unaudited |
| GNSPairInfosV6_1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x21caf0...b57d86`](./contracts/arbitrum-42161/0x21caf065e86223473cdc29465e15805771b57d86/); arbitrum `0xa6e3e6...5b1b2b`; arbitrum `0xf13819...603f2d` | ⚠️ Unaudited |
| GNSPairInfosV6_1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x522004...e50a38`](./contracts/arbitrum-42161/0x522004f927fc66021aacef56ce71d2506fe50a38/); arbitrum `0xd5e687...a2f9b6` | ⚠️ Unaudited |
| GNSPairsStorageV6 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3157d6...4d65ad`](./contracts/arbitrum-42161/0x3157d67c044e1e7f066752ad026d7272234d65ad/); arbitrum `0xf67df2...960d4b` | ⚠️ Unaudited |
| GNSPairsStorageV6 | unknown | arbitrum | n/a | [`0x619179...961893`](./contracts/arbitrum-42161/0x619179ccc0f43d460170ac2a482bac7bc1961893/) | ⚠️ Unaudited |
| GNSPairsStorageV6 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x779528...736d28`](./contracts/arbitrum-42161/0x779528e852fbda71942554510f17ad67b8736d28/); arbitrum `0xd1c3fa...d32045`; arbitrum `0xfda4d5...11ac1f` | ⚠️ Unaudited |
| GNSReferralsV6_2 | unknown | arbitrum | n/a | [`0x2df07d...0f7b51`](./contracts/arbitrum-42161/0x2df07ded0b6cec225f047e64527e43c4220f7b51/) | ⚠️ Unaudited |
| GNSReferralsV6_2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4899e0...ce6092`](./contracts/arbitrum-42161/0x4899e09e9f8a4a52dc62dff90453ed34ffce6092/); arbitrum `0x564e35...0f834a`; arbitrum `0xca0f88...d04b5a` | ⚠️ Unaudited |
| GNSReferralsV6_2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8c617f...2d124f`](./contracts/arbitrum-42161/0x8c617f3e9f1ef3c04d537da99d69ef15b42d124f/); arbitrum `0xaa379d...231b8f` | ⚠️ Unaudited |
| GNSStakingV6_2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6b8d3c...d3f9d6`](./contracts/arbitrum-42161/0x6b8d3c08072a020ac065c467ce922e3a36d3f9d6/); arbitrum `0x905f03...28dd4a` | ⚠️ Unaudited |
| GNSStakingV6_2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x749e8b...b289cc`](./contracts/arbitrum-42161/0x749e8bb58bdf842ac4ec3f45f93634c7acb289cc/); arbitrum `0xb190b3...0cceac`; arbitrum `0xcd05e2...7b7fb6` | ⚠️ Unaudited |
| GNSStakingV6_2 | unknown | arbitrum | n/a | [`0xa37547...c522e4`](./contracts/arbitrum-42161/0xa375476645d5d015796f07557084654fecc522e4/) | ⚠️ Unaudited |
| GNSTestNft1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x292338...b01e8a`](./contracts/arbitrum-42161/0x29233896201c1fa8a475bad3ce71f98c75b01e8a/); arbitrum `0x615473...d7e01f`; arbitrum `0x87693d...be0a92` | ⚠️ Unaudited |
| GNSTestNft2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x26c1ec...ed8edf`](./contracts/arbitrum-42161/0x26c1ec6166ebb99b2ed94dc833d1d2696eed8edf/); arbitrum `0xaae00b...78dc45`; arbitrum `0xdaea35...3b7a49` | ⚠️ Unaudited |
| GNSTestNft3 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x305267...5eda1a`](./contracts/arbitrum-42161/0x305267df8d93a0a92425ef487303a75f185eda1a/); arbitrum `0x936519...0beb72`; arbitrum `0xe368b6...9d3707` | ⚠️ Unaudited |
| GNSTestNft4 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x449b7c...5d02c9`](./contracts/arbitrum-42161/0x449b7cae22d1fe19c2d8dbad66440140655d02c9/); arbitrum `0x891580...8781d4`; arbitrum `0x938012...cf65fb` | ⚠️ Unaudited |
| GNSTestNft5 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x065f97...6d0572`](./contracts/arbitrum-42161/0x065f97a37d298695e7d3488509937b21f66d0572/); arbitrum `0x0f1428...bad088`; arbitrum `0x9474b1...a7be9d` | ⚠️ Unaudited |
| GNSTimelockManager | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1632c3...26f637`](./contracts/arbitrum-42161/0x1632c38cb208df8409753729dbfba5c58626f637/); arbitrum `0x7b85c3...b07b5b`; arbitrum `0x8e6ed4...8766b5`; arbitrum `0xd9ced0...5f4640` | ⚠️ Unaudited |
| GNSTimelockOwner | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x53c880...5afad1`](./contracts/arbitrum-42161/0x53c880583a1543bdbce3805267340794bc5afad1/); arbitrum `0x5f5e48...c4df0f`; arbitrum `0x649ad3...f3facb`; arbitrum `0xb94591...5d1382` | ⚠️ Unaudited |
| GNSTradingCallbacks | unknown | arbitrum | n/a | [`0x298a69...0b7522`](./contracts/arbitrum-42161/0x298a695906e16aea0a184a2815a76ead1a0b7522/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3 | unknown | arbitrum | n/a | [`0x2769bb...725f89`](./contracts/arbitrum-42161/0x2769bb38c57fdd465b05cd3cd70cb8075b725f89/) | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x66f0d3...b2b179`](./contracts/arbitrum-42161/0x66f0d317328e56c2696053e76c16b6fd8ab2b179/); arbitrum `0x697c74...9172cd`; arbitrum `0xad65b9...735a55` | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c612c...b28f46`](./contracts/arbitrum-42161/0x6c612c804c84e3d20e3109c8efd06cd2d8b28f46/); arbitrum `0xae31db...d06121` | ⚠️ Unaudited |
| GNSTradingCallbacksV6_3_1 | unknown | arbitrum | n/a | [`0x5eb6cd...db983a`](./contracts/arbitrum-42161/0x5eb6cdebc825a0717d8bb2d26af78702b7db983a/) | ⚠️ Unaudited |
| GNSTradingInteractions | unknown | arbitrum | n/a | [`0x9197b7...db471a`](./contracts/arbitrum-42161/0x9197b730af08b9f8b5ab233560feb2ecd1db471a/) | ⚠️ Unaudited |
| GNSTradingStorageV5 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x05e765...7cf117`](./contracts/arbitrum-42161/0x05e765253bec77ce27a6ec4819c2f32d6e7cf117/); arbitrum `0x5c05e5...5e0e80` | ⚠️ Unaudited |
| GNSTradingStorageV5 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x138ed8...60bdec`](./contracts/arbitrum-42161/0x138ed80642d9ba6f9a33736cb6abd61fa160bdec/); arbitrum `0x54422d...c5b09b`; arbitrum `0x9f73fa...d22781` | ⚠️ Unaudited |
| GNSTradingStorageV5 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2bc36a...203ee7`](./contracts/arbitrum-42161/0x2bc36a4379b37c232025df81f478c45e2c203ee7/); arbitrum `0xcfa6eb...5be33c` | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e87d8...0114e9`](./contracts/ethereum-1/0x5e87d84828eddd249e7463e9fbd06a49920114e9/); ethereum `0x9a15f3...03a8ef` | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| GrailTokenV2 | token | arbitrum | n/a | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ⚠️ Unaudited |
| GraphToken | token | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/); ethereum `0xfcf78a...dfa128` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/); ethereum `0x578517...0666db` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | ethereum | n/a | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | ⚠️ Unaudited |
| GToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x7621c2...ec0093`](./contracts/arbitrum-42161/0x7621c29f55a05466435d6ce353fea29cefec0093/); arbitrum `0x9d27a7...369316`; arbitrum `0xf0cf7e...455659` | ⚠️ Unaudited |
| GToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa388d4...5444f2`](./contracts/arbitrum-42161/0xa388d4c2fdf6e9236a37a3bb6068a1e19f5444f2/); arbitrum `0xf40808...564d53` | ⚠️ Unaudited |
| GToken | unknown | arbitrum | n/a | [`0xd85e03...b9b91b`](./contracts/arbitrum-42161/0xd85e038593d7a098614721eae955ec2022b9b91b/) | ⚠️ Unaudited |
| GTokenLockedDepositNft | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0c299d...dfaaad`](./contracts/arbitrum-42161/0x0c299d41b6ee07feb7adaf73e234e3cb29dfaaad/); arbitrum `0x673cf5...3e4cc6`; arbitrum `0xa1d3cf...6dcc47`; arbitrum `0xcf4e6b...1fdafc`; arbitrum `0xd846b1...df3804` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | arbitrum | n/a | 4 deployments: arbitrum [`0x018d9a...f9f27e`](./contracts/arbitrum-42161/0x018d9a3f0d06ccb7c305b7c9219a4307e1f9f27e/); arbitrum `0x4ca163...30e0d1`; arbitrum `0x990ba9...a4a23d`; arbitrum `0xbf55c7...d47982` | ⚠️ Unaudited |
| HellsKitchen | unknown | polygon | n/a | 2 deployments: polygon [`0x39a696...c8924f`](./contracts/polygon-137/0x39a6964c29fd8dac86b5c785c506648238c8924f/); polygon `0xc3f3ef...377a8f` | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| JoeTokenOFT | token | arbitrum | n/a | [`0x371c7e...f52f07`](./contracts/arbitrum-42161/0x371c7ec6d8039ff7933a2aa28eb827ffe1f52f07/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| L1GNS | unknown | ethereum | n/a | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | n/a | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | n/a | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2DaiGateway | unknown | arbitrum | n/a | [`0x467194...c76c65`](./contracts/arbitrum-42161/0x467194771dae2967aef3ecbedd3bf9a310c76c65/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | n/a | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | 5 deployments: optimism [`0x9bcef7...8eb81d`](./contracts/optimism-10/0x9bcef72be871e61ed4fbbc7630889bee758eb81d/); optimism `0x9e1028...6840e0`; optimism `0xa00e3a...753819`; optimism `0xc40f94...7b2819`; optimism `0xfdb794...96735f` | ⚠️ Unaudited |
| L2TBTC | unknown | optimism | n/a | 2 deployments: optimism [`0x6c84a8...d0de40`](./contracts/optimism-10/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); optimism `0xda534b...681365` | ⚠️ Unaudited |
| L2TBTC | unknown | polygon | n/a | 2 deployments: polygon [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/); polygon `0x41c9b5...79d91a` | ⚠️ Unaudited |
| L2TBTC | unknown | base | n/a | 2 deployments: base [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/); base `0x41c9b5...79d91a` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | optimism | n/a | [`0x1293a5...a15458`](./contracts/optimism-10/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| L2WormholeGateway | unknown | polygon | n/a | [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| Land | unknown | ethereum | n/a | 3 deployments: ethereum [`0x50f547...fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/); ethereum `0x75b1b1...e68d51`; ethereum `0xe09b54...295c28` | ⚠️ Unaudited |
| LandContributionCalculator | unknown | polygon | n/a | [`0x7695b9...ebfe70`](./contracts/polygon-137/0x7695b9ac52e49f1a8c4c554a072edb225eebfe70/) | ⚠️ Unaudited |
| LandSaleWithETHAndDAI | unknown | ethereum | n/a | 4 deployments: ethereum [`0x471363...839859`](./contracts/ethereum-1/0x47136343c616c3d6713b3ad4a223deda42839859/); ethereum `0x6ce626...860a95`; ethereum `0xb2fb1d...4508b0`; ethereum `0xd9e0f5...d865ed` | ⚠️ Unaudited |
| LandSaleWithReferral | unknown | ethereum | n/a | 12 deployments: ethereum [`0x126a34...f4adaa`](./contracts/ethereum-1/0x126a3437f3b76155e5e574abdc048b54f2f4adaa/); ethereum `0x1a8028...f57132`; ethereum `0x1b67d8...c4ddfc`; ethereum `0x1cc765...84dbee`; ethereum `0x3364a8...902718`; ethereum `0x36c8dd...5c95fd`; ethereum `0x3a6d6e...413ba3`; ethereum `0x3eee9c...dddca3`; ethereum `0x717e67...3059f3`; ethereum `0x772c34...6bdd2a`; ethereum `0xb6c949...e40bc4`; ethereum `0xe0c07d...ab1be1` | ⚠️ Unaudited |
| LandWeightedSANDRewardPool | core_logic | ethereum | n/a | [`0xeae6fd...60b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | n/a | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| LinkToken | token | ethereum | n/a | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | ⚠️ Unaudited |
| LinkTokenOptimism | token | optimism | n/a | [`0x350a79...ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1cc72e...f91c78`](./contracts/ethereum-1/0x1cc72efbdfb08803bdda911ad895a861e1f91c78/); ethereum `0x384eab...95a613`; ethereum `0x48fa75...c84130` | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LiquidityManagerFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x979bc6...be2520`](./contracts/arbitrum-42161/0x979bc658871368cef694490b24a79c41ddbe2520/); arbitrum `0xf23e24...edf363` | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| LRC_v2 | unknown | ethereum | n/a | [`0xbbbbca...7aeafd`](./contracts/ethereum-1/0xbbbbca6a901c926f240b89eacb641d8aec7aeafd/) | ⚠️ Unaudited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| MadBalls | unknown | polygon | n/a | 2 deployments: polygon [`0x8463b7...6722b4`](./contracts/polygon-137/0x8463b73ea174d04db5fff567c77be968666722b4/); polygon `0xb6db2c...7cb1c4` | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/); base `0x223039...ed52e1` | ⚠️ Unaudited |
| MaticToken | token | ethereum | n/a | [`0x7d1afa...cfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MaviaOFT | unknown | base | n/a | [`0x24fcfc...c93584`](./contracts/base-8453/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | ⚠️ Unaudited |
| MaviaOFTAdapter | adapter | ethereum | n/a | [`0xe6c2b6...7abd4d`](./contracts/ethereum-1/0xe6c2b672b3eb64a1f460adcd9676a3b6c67abd4d/) | ⚠️ Unaudited |
| MaviaToken | token | ethereum | n/a | 2 deployments: ethereum [`0x24fcfc...c93584`](./contracts/ethereum-1/0x24fcfc492c1393274b6bcd568ac9e225bec93584/); ethereum `0xcfac03...c5aaa8` | ⚠️ Unaudited |
| Merkle | unknown | ethereum | n/a | [`0x195fe6...5dfa0b`](./contracts/ethereum-1/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | ethereum | n/a | [`0xa6fa4f...d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/); ethereum `0x5a98fc...ef1b32` | ⚠️ Unaudited |
| MintableBaseToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/); arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| MintableERC20Predicate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9277a4...352433`](./contracts/ethereum-1/0x9277a463a508f45115fdeaf22ffeda1b16352433/); ethereum `0xff7684...890e1c` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f5ab1...18da73`](./contracts/ethereum-1/0x8f5ab128fa9fb570b5df9c909f4d51dadb18da73/); ethereum `0xb932da...c37b6c` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | ethereum | n/a | [`0x932532...15f2b7`](./contracts/ethereum-1/0x932532aa4c0174b8453839a6e44ee09cc615f2b7/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MKRVotingVaultController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x491397...1f217f`](./contracts/ethereum-1/0x491397f7eb6f5d9b82b15cecabff835ba31f217f/); ethereum `0x7b6160...c60137` | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| MultiGiveaway | unknown | polygon | n/a | 2 deployments: polygon [`0x214d52...dd4020`](./contracts/polygon-137/0x214d52880b1e4e17d020908cd8eaa988ffdd4020/); polygon `0x21bf46...fc8ba3` | ⚠️ Unaudited |
| NFT | token | ethereum | n/a | [`0x198d14...3f850a`](./contracts/ethereum-1/0x198d14f2ad9ce69e76ea330b374de4957c3f850a/) | ⚠️ Unaudited |
| NFTPoolFactory | unknown | arbitrum | n/a | [`0x6db1ef...1dbf6d`](./contracts/arbitrum-42161/0x6db1ef0df42e30acf139a70c1ed0b7e6c51dbf6d/) | ⚠️ Unaudited |
| NitroPoolFactory | unknown | arbitrum | n/a | [`0xe0a6b3...c24569`](./contracts/arbitrum-42161/0xe0a6b372ac6af4b37c7f3a989fe5d5b194c24569/) | ⚠️ Unaudited |
| NttManager | unknown | base | n/a | 2 deployments: base [`0x0c46f4...2ede4f`](./contracts/base-8453/0x0c46f496c410465975a427e34a976fc15a2ede4f/); base `0xdf6542...41f4c4` | ⚠️ Unaudited |
| NttManager | unknown | base | n/a | 2 deployments: base [`0x132254...3d26f7`](./contracts/base-8453/0x132254097ee3ca0858365828e21dc419073d26f7/); base `0x2663a2...c5d2b9` | ⚠️ Unaudited |
| NttManager | unknown | base | n/a | 2 deployments: base [`0x3eb418...cd1bc1`](./contracts/base-8453/0x3eb418bdbe95b4b9cf465ecfbd8424685acd1bc1/); base `0x7d6151...c38366` | ⚠️ Unaudited |
| NttManager | unknown | base | n/a | 2 deployments: base [`0x4a4537...048285`](./contracts/base-8453/0x4a453700d157717fe02fb62e7700ed7845048285/); base `0xa29d7a...456299` | ⚠️ Unaudited |
| NttManager | unknown | base | n/a | 2 deployments: base [`0x964d45...2ec157`](./contracts/base-8453/0x964d45256c73df0239a26216cec155d7e12ec157/); base `0xbf5180...f5f491` | ⚠️ Unaudited |
| Ondo | unknown | ethereum | n/a | [`0xfaba6f...269be3`](./contracts/ethereum-1/0xfaba6f8e4a5e8ab82f62fe7c39859fa577269be3/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x368181...86b8c6`](./contracts/base-8453/0x368181499736d0c0cc614dbb145e2ec1ac86b8c6/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PairInfos | periphery | base | n/a | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ⚠️ Unaudited |
| ParisHilton | unknown | polygon | n/a | 2 deployments: polygon [`0x1cc25b...9f2de0`](./contracts/polygon-137/0x1cc25b38d7eb7711e5acc2828d7577cb8a9f2de0/); polygon `0x6180fc...da3090` | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| PlayboyPartyPeople | unknown | polygon | n/a | 2 deployments: polygon [`0x1cefeb...3dfad6`](./contracts/polygon-137/0x1cefebe5f947e421906b60b47ff35c99a23dfad6/); polygon `0x347619...f8891f` | ⚠️ Unaudited |
| PolygonLand | unknown | polygon | n/a | [`0x9d305a...dce63f`](./contracts/polygon-137/0x9d305a42a3975ee4c1c57555bed5919889dce63f/) | ⚠️ Unaudited |
| PolygonLandBaseToken | unknown | polygon | n/a | [`0x4ebcfb...6a03bd`](./contracts/polygon-137/0x4ebcfb9f8b4df38ce149c655541d591afb6a03bd/) | ⚠️ Unaudited |
| PolygonLandTunnel | unknown | polygon | n/a | [`0xcd1c7c...b5f860`](./contracts/polygon-137/0xcd1c7c85113b16a5b9e09576112d162281b5f860/) | ⚠️ Unaudited |
| PolygonLandTunnelV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x21b083...72eea8`](./contracts/polygon-137/0x21b083e128fa7bcc31214a0c000b56fd4372eea8/); polygon `0xaa85fc...8ab49a` | ⚠️ Unaudited |
| PolygonLandV1 | unknown | polygon | n/a | [`0x16f78d...cbbfcf`](./contracts/polygon-137/0x16f78d75fabb869835236b5fb59c2b29f6cbbfcf/) | ⚠️ Unaudited |
| PolygonLandV2 | unknown | polygon | n/a | [`0x95847a...b9a672`](./contracts/polygon-137/0x95847a1982db4622dc9014f6f0bec7cbc6b9a672/) | ⚠️ Unaudited |
| PolygonLandWeightedSANDRewardPool | core_logic | polygon | n/a | 4 deployments: polygon [`0x4ab071...b20f30`](./contracts/polygon-137/0x4ab071c42c28c4858c4bac171f06b13586b20f30/); polygon `0x7644df...f152ec`; polygon `0x82f1b7...7dfcbe`; polygon `0xe468bb...b80714` | ⚠️ Unaudited |
| PolygonSand | unknown | polygon | n/a | 2 deployments: polygon [`0x8917b0...db2f34`](./contracts/polygon-137/0x8917b0360a46bbd09cca71e3db78268437db2f34/); polygon `0xbbba07...695683` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x6cdcb1...fb971d`](./contracts/base-8453/0x6cdcb1c4a4d1c3c6d054b27ac5b77e89eafb971d/) | ⚠️ Unaudited |
| Portico | unknown | base | n/a | 10 deployments: ethereum `0x48b610...e6f476`; ethereum `0x4db168...b9d06e`; base [`0x054985...8f8a85`](./contracts/base-8453/0x05498574bd0fa99eecb01e1241661e7ee58f8a85/); base `0x4568aa...9be9bf`; base `0x610d4d...6a1889`; base `0x9128ba...4560db`; base `0x9816d7...9e8c75`; base `0xc3a17d...f84a73`; base `0xf352dc...7d90f2`; base `0xfd76d7...fa71b6` | ⚠️ Unaudited |
| PositionManager | governance | arbitrum | n/a | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | ⚠️ Unaudited |
| PositionRouter | adapter | arbitrum | n/a | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | ⚠️ Unaudited |
| Presale | unknown | arbitrum | n/a | [`0x66ec1e...365d29`](./contracts/arbitrum-42161/0x66ec1ee6c3ad04d7629ce4a6d5d19ba99c365d29/) | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | n/a | [`0x64e262...3da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | n/a | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | 16 deployments: ethereum `0x46ac83...cd3886`; optimism [`0x02612d...8a3db3`](./contracts/optimism-10/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); polygon `0x1293a5...a15458`; polygon `0x29bee8...036fdb`; polygon `0xb1a4a2...f671e0`; base `0x1293a5...a15458`; arbitrum `0x1523fa...2f7c6b`; arbitrum `0x45edb5...41eec6`; arbitrum `0x51ebd1...2e103b`; arbitrum `0x7f4a92...f7b948`; arbitrum `0x969721...f527f9`; arbitrum `0x96cb68...a8c2b4`; arbitrum `0x9eb6df...31e5a4`; arbitrum `0xb40476...7adb84`; arbitrum `0xdd42aa...69bcc1`; arbitrum `0xe18be0...bcb2eb` | ⚠️ Unaudited |
| ProxyERC20 | token | ethereum | n/a | [`0xc011a7...af2a6f`](./contracts/ethereum-1/0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | ⚠️ Unaudited |
| PublicResolver | unknown | ethereum | n/a | [`0x4976fb...baba41`](./contracts/ethereum-1/0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0xb5c064...94ee17`](./contracts/polygon-137/0xb5c064f955d8e7f38fe0460c556a72987494ee17/) | ⚠️ Unaudited |
| Rabbids | unknown | polygon | n/a | 2 deployments: polygon [`0x821ca4...068a35`](./contracts/polygon-137/0x821ca4cc7960597f597205d2cedcd26709068a35/); polygon `0xa090e0...41fa40` | ⚠️ Unaudited |
| RadiantOFT | unknown | arbitrum | n/a | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xa96f57...dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | ⚠️ Unaudited |
| ReferralStorage | token | arbitrum | n/a | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ⚠️ Unaudited |
| Refund | unknown | arbitrum | n/a | [`0x0f31ce...0e36eb`](./contracts/arbitrum-42161/0x0f31ce35169e64e0783a625a594c1df75d0e36eb/) | ⚠️ Unaudited |
| Registrar | unknown | ethereum | n/a | 3 deployments: ethereum [`0x328328...6bdf51`](./contracts/ethereum-1/0x328328ba09293a4002b4b7615cba2c816d6bdf51/); ethereum `0xa96153...d50684`; ethereum `0xa964ed...b4003b` | ⚠️ Unaudited |
| RegistrarMigration | unknown | ethereum | n/a | [`0x6109dd...75c662`](./contracts/ethereum-1/0x6109dd117aa5486605fc85e040ab00163a75c662/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x4c9984...c11da4`](./contracts/ethereum-1/0x4c99846fcafd7bede2827788f05796ed4bc11da4/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/); arbitrum `0x986b4e...7f43aa` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x842ddf...94940e`](./contracts/ethereum-1/0x842ddfe3f5cadfd45c45421329cddf0af994940e/); ethereum `0xdbafb0...301ceb` | ⚠️ Unaudited |
| RewardsManager | unknown | ethereum | n/a | [`0x9ac758...93ed66`](./contracts/ethereum-1/0x9ac758ab77733b4150a901ebd659cbf8cb93ed66/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| RLPReader | unknown | ethereum | n/a | [`0xbefe61...b1bc47`](./contracts/ethereum-1/0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47/) | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| RootChain | unknown | ethereum | n/a | 2 deployments: ethereum [`0x98dfb3...000f02`](./contracts/ethereum-1/0x98dfb360cbc65045a8415fa2514f549cd3000f02/); ethereum `0xbacb0a...ca5620` | ⚠️ Unaudited |
| RootChain | unknown | ethereum | n/a | [`0x99a41e...028085`](./contracts/ethereum-1/0x99a41e568e3547881cdfec11b08c9d1c8b028085/) | ⚠️ Unaudited |
| RootChainManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x74e4e5...5cb466`](./contracts/ethereum-1/0x74e4e5eb5aae2fbef42ec07298cab532425cb466/); ethereum `0xd06029...8f0dd9` | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | n/a | [`0xa0c68c...c77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| RootChainProxy | unknown | ethereum | n/a | [`0xae45c7...94d787`](./contracts/ethereum-1/0xae45c757acd5658e806c31785fd9ea988d94d787/) | ⚠️ Unaudited |
| RootERC721 | unknown | ethereum | n/a | [`0x656760...adfb86`](./contracts/ethereum-1/0x65676055e58b02e61272cedec6e5c6d56badfb86/) | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | 2 deployments: base `0xcf77a3...874e43`; arbitrum [`0xabbc5f...2f4064`](./contracts/arbitrum-42161/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/) | ⚠️ Unaudited |
| RoyaltyManager | unknown | polygon | n/a | 2 deployments: polygon [`0x4063c6...848e2f`](./contracts/polygon-137/0x4063c6ccd3d9541e53a514e83fba3843a7848e2f/); polygon `0x5d0d09...426f04` | ⚠️ Unaudited |
| RoyaltySplitter | unknown | polygon | n/a | [`0xafd5f5...21a87a`](./contracts/polygon-137/0xafd5f5c6e72f0f6441e4abf2ae8ff23dee21a87a/) | ⚠️ Unaudited |
| RvlPNP | unknown | arbitrum | n/a | [`0x279427...5356af`](./contracts/arbitrum-42161/0x279427df97b34da65d96e92efdd2b961085356af/) | ⚠️ Unaudited |
| SafeMath | unknown | ethereum | n/a | [`0x6ebeac...a93aab`](./contracts/ethereum-1/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| Sand | unknown | ethereum | n/a | [`0x3845ba...03a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | ⚠️ Unaudited |
| SandRewardPool | core_logic | polygon | n/a | 2 deployments: ethereum `0xce7467...ec33b8`; polygon [`0xa6e383...669abd`](./contracts/polygon-137/0xa6e383bda26e4c52a3a3a3463552c42494669abd/) | ⚠️ Unaudited |
| ServiceRegistry | unknown | ethereum | n/a | [`0xad0c9d...ec26e6`](./contracts/ethereum-1/0xad0c9dacf1e515615b0581c8d7e295e296ec26e6/) | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | n/a | [`0xac3e01...bbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| SignedERC20Giveaway | unknown | polygon | n/a | 2 deployments: polygon [`0x5df78e...3e5f76`](./contracts/polygon-137/0x5df78ee0568befc4b1e5e9f3ac4611235c3e5f76/); polygon `0x64aec6...33c1ce` | ⚠️ Unaudited |
| SignedMultiGiveaway | unknown | polygon | n/a | 2 deployments: polygon [`0x2c0521...2c8426`](./contracts/polygon-137/0x2c0521ea8b94bdfbc981621a7bfdc3314a2c8426/); polygon `0x3d49b6...e53035` | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| StakedGlp | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/); arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| StakeManager | unknown | ethereum | n/a | [`0xdb2871...d34a15`](./contracts/ethereum-1/0xdb28719f7f938507dbfe4f0eae55668903d34a15/) | ⚠️ Unaudited |
| StakeManagerExtension | unknown | ethereum | n/a | [`0x62119a...96f89a`](./contracts/ethereum-1/0x62119ab740214ffd6a236e16143470c8c796f89a/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x296ebf...9e2a53`](./contracts/ethereum-1/0x296ebf81430ea5561143b4b15b17cc3c549e2a53/); ethereum `0x99660f...27c602`; ethereum `0xc3d14a...a1e55c` | ⚠️ Unaudited |
| StakingInfo | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3929ff...9d20c7`](./contracts/ethereum-1/0x3929ffab35937ab32f6ea0d9849174161d9d20c7/); ethereum `0xe1f07d...a2e5ff` | ⚠️ Unaudited |
| StakingNFT | unknown | ethereum | n/a | [`0x1f4fc6...e3de72`](./contracts/ethereum-1/0x1f4fc6388905815519e153c9b5a41a6ed5e3de72/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 12 deployments: arbitrum [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/); arbitrum `0x13ad51...5efa60`; arbitrum `0x2f2a25...fc5b0f`; arbitrum `0x561877...be0766`; arbitrum `0x93b346...41425b`; arbitrum `0xae6aab...aba689`; arbitrum `0xd4d42f...85c61a`; arbitrum `0xe4dddf...dc01cb`; arbitrum `0xe72ba9...a37333`; arbitrum `0xec70dc...a5ffa8`; arbitrum `0xf97f4d...539fb4`; arbitrum `0xfa7f89...f1f7f0` | ⚠️ Unaudited |
| StarterPackV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x157372...db1bbf`](./contracts/ethereum-1/0x157372f9d3c94609adfb967741a0afc0c1db1bbf/); ethereum `0x628f64...8ed7d1` | ⚠️ Unaudited |
| StopLimit | unknown | base | n/a | [`0xd82843...54aede`](./contracts/base-8453/0xd8284305b520ff5486ab718dbdfe46f18454aede/) | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | ethereum | n/a | [`0xa9a4ee...63e3d2`](./contracts/ethereum-1/0xa9a4ee56d91985a886affce7eb407492d263e3d2/) | ⚠️ Unaudited |
| SUN | unknown | ethereum | n/a | [`0xf6a36a...bfb505`](./contracts/ethereum-1/0xf6a36a5a942dec8bb60e5cbf005d70d89abfb505/) | ⚠️ Unaudited |
| SushiToken | token | ethereum | n/a | [`0x6b3595...c90fe2`](./contracts/ethereum-1/0x6b3595068778dd592e39a122f4f5a5cf09c90fe2/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | optimism | n/a | [`0xf47b8b...b33535`](./contracts/optimism-10/0xf47b8b1daf12c3058b757a1446dadfa8e4b33535/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TestToken | unknown | ethereum | n/a | [`0xcbb9ed...7e9a4e`](./contracts/ethereum-1/0xcbb9edf6775e39748ea6483a7fa6a385cd7e9a4e/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | 8 deployments: ethereum `0x1a9c81...be35bc`; arbitrum [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/); arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | n/a | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | ⚠️ Unaudited |
| Trading | unknown | base | n/a | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ⚠️ Unaudited |
| TradingStorage | unknown | base | n/a | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x83084c...7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x944766...c9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x31f74d...416683`](./contracts/polygon-137/0x31f74dc99528895b56823a00f5c7d71c30416683/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x002a0e...6fedf3`](./contracts/arbitrum-42161/0x002a0eee81dfc6de5a108cbf83d4d74d406fedf3/); arbitrum `0x0b3404...296e1c`; arbitrum `0x2fef01...38ca1f`; arbitrum `0x5b0ef3...96973d`; arbitrum `0x99f696...198587`; arbitrum `0x9fab99...33c0e8`; arbitrum `0xa6a8a6...144a2f`; arbitrum `0xb29e8b...fc3185`; arbitrum `0xf37a0f...12dc64` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0043fb...405341`](./contracts/arbitrum-42161/0x0043fb6e761304d5bbe65b7ce6ae4a2136405341/); arbitrum `0x0c19d8...885b36`; arbitrum `0x1f4ec4...668f0a`; arbitrum `0x6a438b...4bcc0b`; arbitrum `0xc88c7d...689999`; arbitrum `0xcc6fb1...dacc30`; arbitrum `0xdd9c98...81d860`; arbitrum `0xddb5a1...413445`; arbitrum `0xf00c39...bf6eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x02bd53...ee9f35`](./contracts/arbitrum-42161/0x02bd53deaf5ca5ce2eb51dc54a1dec6170ee9f35/); arbitrum `0x1d017d...aabcc9`; arbitrum `0x6805dd...629690`; arbitrum `0x7a54e2...a2b0ac`; arbitrum `0x918675...0d49e6`; arbitrum `0xc431aa...d04f09`; arbitrum `0xd9c759...7b1cfc`; arbitrum `0xfc779c...3e1bc7`; arbitrum `0xfe7386...519516` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x038b6c...a7deeb`](./contracts/arbitrum-42161/0x038b6c2125c8800e4d5606331cbcf9e0daa7deeb/); arbitrum `0x53af6d...766e90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x03c86d...889c0b`](./contracts/arbitrum-42161/0x03c86d38143908ef53305e8184cfe4aed9889c0b/); arbitrum `0x81a073...491862` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x04643a...8d9791`](./contracts/arbitrum-42161/0x04643a17598d4d0dbf04e198b8cb68a7228d9791/); arbitrum `0x501843...e17d57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x059f28...ecb322`](./contracts/arbitrum-42161/0x059f286f469072d0a14fc12ff07fd600f7ecb322/); arbitrum `0x4ed3b2...86548c`; arbitrum `0x6528ed...cf9b9c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0638a3...fc2b78`](./contracts/arbitrum-42161/0x0638a3f28b4aeba84db920eb6f7586e270fc2b78/); arbitrum `0x3d7a8a...7eba9e`; arbitrum `0x3de7e5...0fc48f`; arbitrum `0x6558c6...a7c2e9`; arbitrum `0x85319e...0b07a9`; arbitrum `0x9e30d3...5a40bf`; arbitrum `0xdd25cf...0e15e0`; arbitrum `0xf8861e...904070`; arbitrum `0xfb06a7...c0819d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0a02f9...5bff39`](./contracts/arbitrum-42161/0x0a02f9b9013918c27e404ac5ae4377d0455bff39/); arbitrum `0x0b2cce...a63f8f`; arbitrum `0x1669e2...00d3e4`; arbitrum `0x191f19...0b64ea`; arbitrum `0x46cb98...dea471`; arbitrum `0x51c315...5ded81`; arbitrum `0x58dcd5...7532e1`; arbitrum `0x64e8a5...6ce4a9`; arbitrum `0x6fbfbd...59597e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0bcadb...6aa541`](./contracts/arbitrum-42161/0x0bcadb23ba1df7de9878f8d0bd31e86bdf6aa541/); arbitrum `0x1d5e7a...c4e2e9`; arbitrum `0x3d4283...8fbe94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0cf423...3c0557`](./contracts/arbitrum-42161/0x0cf42339b537234213435e1d2ef19d0ac73c0557/); arbitrum `0x6ea3e1...c74667` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0dfb52...5ed321`](./contracts/arbitrum-42161/0x0dfb52a813ff244a90d73927cb21bd9e0c5ed321/); arbitrum `0x2010c3...fcc4ea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e96d4...1b2c7b`](./contracts/arbitrum-42161/0x0e96d4c7ba33ab1e28e8e01c8b40df10ac1b2c7b/); arbitrum `0xb25966...d3014b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x173ac3...6b1a72`](./contracts/arbitrum-42161/0x173ac3c203536accf3916da9430f349c4a6b1a72/); arbitrum `0x434fcc...fc44ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1858c9...fe80c2`](./contracts/arbitrum-42161/0x1858c94591edcd76733d53597c3112a4d7fe80c2/); arbitrum `0xda91c9...bba5f6`; arbitrum `0xf39ed3...a82544` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x19a6b5...50da97`](./contracts/arbitrum-42161/0x19a6b5bb1cc61b1d775a26c7702872165750da97/); arbitrum `0x269225...91ef27`; arbitrum `0x3b738c...8db41c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x252403...787913`](./contracts/arbitrum-42161/0x2524034e093997d3542f5f5267735eacbb787913/); arbitrum `0x7ac6d1...fd912a`; arbitrum `0xdff9a5...460209` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x25538b...ae5b9a`](./contracts/arbitrum-42161/0x25538be79d2f07a1baf6391508d7b1faccae5b9a/); arbitrum `0x294d0f...d7e8e9`; arbitrum `0x326b43...18272e`; arbitrum `0x635173...4fb1ca`; arbitrum `0x8288a4...196672`; arbitrum `0x98afe3...4e6a52`; arbitrum `0xaccd80...9d65c4`; arbitrum `0xf10681...e04b81`; arbitrum `0xf9b76e...b1af5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x26f091...006692`](./contracts/arbitrum-42161/0x26f091a16ed194819741335c8f7b66d8ba006692/); arbitrum `0xb1aec6...a81e0a`; arbitrum `0xe58144...448b08` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x308cd9...fddba4`](./contracts/arbitrum-42161/0x308cd9ec7490f882a8449c37696cbb0510fddba4/); arbitrum `0x465453...28dcbd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x312c06...1abab9`](./contracts/arbitrum-42161/0x312c06494f334f595da1e25759710d3d791abab9/); arbitrum `0xf9ae45...9cc368` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x31820a...74ea8c`](./contracts/arbitrum-42161/0x31820ad4a62d03fbc494ec4658bc33df5e74ea8c/); arbitrum `0x6db4e7...2816be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x31dfb4...f552be`](./contracts/arbitrum-42161/0x31dfb45c6c805b50112d093a47277dbf2df552be/); arbitrum `0x3ae197...422fc3`; arbitrum `0xabc8b9...23f95d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x335336...af1d85`](./contracts/arbitrum-42161/0x335336c3eb5643d5e1bc6f0a390502c20daf1d85/); arbitrum `0x55735b...6f52e2`; arbitrum `0x6d91ed...810e17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x37e2bb...833628`](./contracts/arbitrum-42161/0x37e2bb7580df96199d66955380f7dc213b833628/); arbitrum `0xa40110...a2dd00`; arbitrum `0xfa9680...65d5a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x37e565...13d264`](./contracts/arbitrum-42161/0x37e565048c400422b510fb8458e40c0de313d264/); arbitrum `0x66f9b9...ceec78`; arbitrum `0x69ba52...f1f266` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x38926d...f72745`](./contracts/arbitrum-42161/0x38926d0fc79ad2ab58b2d942f1a68b9a6bf72745/); arbitrum `0xac59a7...836b47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3e6a26...4707de`](./contracts/arbitrum-42161/0x3e6a2693d21a074566e2e378e1976839b74707de/); arbitrum `0x90d13b...85c1dc`; arbitrum `0xe35737...d58c9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x456cb4...9ed99e`](./contracts/arbitrum-42161/0x456cb4b4d37a389d11ba42156207d0c1ec9ed99e/); arbitrum `0xd9405a...ba6492` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x47e69a...4ebacd`](./contracts/arbitrum-42161/0x47e69ac2c2c8e35e03d94b4aecc35619694ebacd/); arbitrum `0xba3d59...f10143`; arbitrum `0xf2d733...685c00` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4abb62...b84504`](./contracts/arbitrum-42161/0x4abb62bc394b15e1b87f2a76f8ab80dd35b84504/); arbitrum `0x7b1ff4...6c4408` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4eaa87...f9a3ad`](./contracts/arbitrum-42161/0x4eaa8738203bf6f96b441f4cd1409f02b9f9a3ad/); arbitrum `0xb7e937...ce751d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4ef305...8c22f4`](./contracts/arbitrum-42161/0x4ef30513d6d661d23db6b21781d43c5ec98c22f4/); arbitrum `0x5ed745...979a8f`; arbitrum `0xf4ce16...4d972f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x56a3a1...9c4c11`](./contracts/arbitrum-42161/0x56a3a15f01d7ccd806d35a7c9fdf6196169c4c11/); arbitrum `0x85592d...fcf016`; arbitrum `0xdd6d48...92d0c7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5a4785...fd20c9`](./contracts/arbitrum-42161/0x5a4785abf941a51dcbaab470cc2127122afd20c9/); arbitrum `0x6b5a7d...4d0ac8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5ac841...49abb6`](./contracts/arbitrum-42161/0x5ac841ab23d501c1aa98b1ffe23588f06749abb6/); arbitrum `0x7859a5...fd8862`; arbitrum `0xe46500...485f67` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5cb0f4...c64b46`](./contracts/arbitrum-42161/0x5cb0f449fdbb008a01ecd4952bb3f32f2bc64b46/); arbitrum `0x62aeb2...172834`; arbitrum `0xf1c315...b57245` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6304f4...63dc25`](./contracts/arbitrum-42161/0x6304f411d8a0d89a1a342490023648379563dc25/); arbitrum `0xc17e26...600b2b`; arbitrum `0xf2e84e...bd7c8f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6a17cb...84cd06`](./contracts/arbitrum-42161/0x6a17cb63f088d0f84dce3a173cdc5d3b4384cd06/); arbitrum `0x8c74b2...e2beca`; arbitrum `0xc7d91a...6df6ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x79398e...a4168c`](./contracts/arbitrum-42161/0x79398ef05a3108b61add72666e894980f3a4168c/); arbitrum `0x894c9c...1c9ca3`; arbitrum `0xa4ea25...2f489a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x79cbfb...56f56c`](./contracts/arbitrum-42161/0x79cbfb987ccca6d02255d3643cf07a7e2456f56c/); arbitrum `0xfcb70e...c4ce44` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8bef5d...c67bd8`](./contracts/arbitrum-42161/0x8bef5d714e427b85dd913049afd3082acfc67bd8/); arbitrum `0x8fc60a...537964` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x8d6872...f4440c`](./contracts/arbitrum-42161/0x8d687276543b92819f2f2b5c3faad4ad27f4440c/); arbitrum `0xb488a9...d8a970`; arbitrum `0xfc28bb...8fbea4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x90ea07...1c6d35`](./contracts/arbitrum-42161/0x90ea07d322ca0072da7130b94258d4c1431c6d35/); arbitrum `0xa2520d...41e4c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x92ee7d...a73d84`](./contracts/arbitrum-42161/0x92ee7d0b86d038729daec2e671c8f70efca73d84/); arbitrum `0xd4465e...6d318c`; arbitrum `0xfe3e29...86b537` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x93bdc8...7de694`](./contracts/arbitrum-42161/0x93bdc85299c7f24a43578181a01f1ab7e47de694/); arbitrum `0xbe5591...84748f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x9b2833...6f9d5f`](./contracts/arbitrum-42161/0x9b2833a5284f461193969dcc433e6d25b86f9d5f/); arbitrum `0xb454d8...44e0fa`; arbitrum `0xc07d1d...5cbc86` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9da85d...1d6c7c`](./contracts/arbitrum-42161/0x9da85dbbcf5250fed7fa06cf92b83e63571d6c7c/); arbitrum `0xc64367...a36385` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9ffafa...6c233b`](./contracts/arbitrum-42161/0x9ffafae58fb835e53080900d9536fc1fb36c233b/); arbitrum `0xbd6fbf...89b5af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xa747a1...38caab`](./contracts/arbitrum-42161/0xa747a166d6b7254b2e129c6300bc5d8a2238caab/); arbitrum `0xd9b1e2...d21279`; arbitrum `0xfbeaf3...fcf47a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xa839ac...faa968`](./contracts/arbitrum-42161/0xa839ac03298b27c6b85975a2ae03f5c82afaa968/); arbitrum `0xbc47a6...6ba368`; arbitrum `0xf904aa...fd94a4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb7e282...8c8375`](./contracts/arbitrum-42161/0xb7e2825cd246bc1d2c5944ee32697142f68c8375/); arbitrum `0xbd825a...d6a087` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbe7751...2c55ef`](./contracts/arbitrum-42161/0xbe775117b0d360c966107e1f3b83eeb5602c55ef/); arbitrum `0xe33ed7...cbfd5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xc139f8...10b82e`](./contracts/arbitrum-42161/0xc139f8dcb17a8d9ae4a08781d5415841c010b82e/); arbitrum `0xd7a4ba...e02dc2`; arbitrum `0xe167d7...24dae5` | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| TRX | unknown | ethereum | n/a | [`0x50327c...f87ab5`](./contracts/ethereum-1/0x50327c6c5a14dcade707abad2e27eb517df87ab5/) | ⚠️ Unaudited |
| UChildERC20 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x02daef...057966`](./contracts/ethereum-1/0x02daefc2e8aad089d094579499508398e3057966/); ethereum `0x2791bc...a84174`; ethereum `0x5adf17...2e0a58`; ethereum `0x9d0f82...ec93ae`; ethereum `0xcf97bc...1ab6bd`; ethereum `0xd24289...937a22`; ethereum `0xdd9185...812226`; polygon `0x422432...804046` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x03b54a...b3bccd`](./contracts/polygon-137/0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x385eea...fb54a7`](./contracts/polygon-137/0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x9a7101...0e76a3`](./contracts/polygon-137/0x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xd6df93...21c90b`](./contracts/polygon-137/0xd6df932a45c0f255f85145f286ea0b292b21c90b/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0d4a11...1f1852`](./contracts/ethereum-1/0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852/); polygon `0x34965b...8dea27`; polygon `0xc4e595...0bac0e`; polygon `0xe62ec2...f89816`; polygon `0xfc4912...9cba04` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | token | base | n/a | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | ⚠️ Unaudited |
| USDT | token | optimism | n/a | 2 deployments: optimism [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/); base `0xfde4c9...699bb2` | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d9aa3...6b5aba`](./contracts/ethereum-1/0x0d9aa3f32a538da6fbf3c3c9b8f8edf01e6b5aba/); ethereum `0x185486...aa08fb` | ⚠️ Unaudited |
| ValidatorShareFactory | unknown | ethereum | n/a | [`0x58f930...65fe91`](./contracts/ethereum-1/0x58f93087c03a2049a1a19745311399d6dd65fe91/) | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultController | unknown | ethereum | n/a | [`0x9bdb55...b38246`](./contracts/ethereum-1/0x9bdb5575e24eeb2dca7ba6ce367d609bdeb38246/) | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VelaToken | token | arbitrum | n/a | [`0x088cd8...0cd704`](./contracts/arbitrum-42161/0x088cd8f5ef3652623c22d48b1605dcfe860cd704/) | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e` | ⚠️ Unaudited |
| VestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8b4ee9...0cb155`](./contracts/arbitrum-42161/0x8b4ee9a030c50fd02c845a171064f8fca90cb155/); arbitrum `0x953bf6...683aaa` | ⚠️ Unaudited |
| VestingWallet2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5a5a7c...294da3`](./contracts/arbitrum-42161/0x5a5a7c0108cef44549b7782495b1df2ad5294da3/); arbitrum `0x770066...df0f45` | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x691411...d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x7bf094...8efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3669c4...fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/); ethereum `0x707f91...963fc8`; ethereum `0xbbcf16...8b29cf`; ethereum `0xc8418a...adc5b0` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/); optimism `0x68f180...0a2095` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 3 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/); base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | n/a | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0x15c465...3f4467`](./contracts/base-8453/0x15c465e7df34f8ca06fdcae0569206cedf3f4467/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0x27321f...89a3d5`](./contracts/base-8453/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0x307348...338656`](./contracts/base-8453/0x307348b0ae21c47efe212b4a1f304aa867338656/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0x82ab5f...c76108`](./contracts/base-8453/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0x94afb5...93c193`](./contracts/base-8453/0x94afb503dbca74ac3e4929baceedfce19b93c193/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0xe4b591...a07c8b`](./contracts/base-8453/0xe4b5913c0c82db2efc553b95c0173efb90a07c8b/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XGrailToken | token | arbitrum | n/a | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| YieldBooster | unknown | arbitrum | n/a | [`0xd27c37...c0b1b1`](./contracts/arbitrum-42161/0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (368)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x107da3...c25e4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144b7c...4b025a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16dbe8...8f54fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ca86b...be3682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e927...7865fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a135a...1f8d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a5020...012c56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53e0bc...abad39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fd49e...722568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71449a...a4e425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75c1e2...1ffddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78fcf4...a8bd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c7cd6...f9a86a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81b1e6...740922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x935faa...4b43d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f29f0...9eae57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa490ce...ecfe54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa938b8...8caff0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabfe39...80a6cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae1794...d39e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb075ab...893a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc05580...a39ca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd652db...557e6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda0dfc...f8d0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc55f6...4d4efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0ac0f...b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1d66c...a16be6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf54d26...fb1e9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3355df...83aaf4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3a287a...31cecd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3ecf9b...609f17` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x493257...52ba4c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4b9eb6...8cb656` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5a7d6b...7eaf3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x703b52...9fe867` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x787c09...9ee508` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8f1d37...a9fec8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbbeb51...281011` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbf26d0...000e7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e82f2...572097` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x985a9a...bdabd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdcf0b...1f0651` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00d22a...e2ee94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00d87a...a3bb95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01e229...f79fd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03a0a1...4ab791` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03a643...d9331c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03c757...8c5f41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x050a30...d786ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09ebbe...f5755a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b0e70...ca7138` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bd65f...100545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cbd54...4e2fee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d75d1...6ed885` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dbc6f...cee334` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e350a...8a28e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f5438...c5bcce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x105a04...80598e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11d530...48881d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12effd...472ea3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x150b32...5ec5f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x170cc5...998a37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18d300...d366e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18d39f...6cf82c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1915c0...65a013` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x192845...c5b372` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ac456...03f796` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ac737...74959d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bba24...ae769a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c000a...016dc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cc216...0e9d2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf137...bc2586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d655c...7064e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f59f3...ed559d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f8e7a...5dc02d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f9c8d...cda741` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20425a...3728b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21147d...3c9535` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2162b9...77845b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22d91b...fc95a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234c90...181fe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x251131...8dbd33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25cf93...12047d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26196c...001b80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27002a...6f925b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27e1a4...234678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29550f...b6d289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29ed1a...11f902` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b2395...3cfa83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b9335...23fa2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c09fe...f14ec4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cc665...2bdbf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f2a41...dcf861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3057fb...370a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30a4bd...c8e230` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322e18...96da0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32537f...3e1457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32b4eb...939649` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32d6ac...f21c36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32e5fe...d178f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33fe6f...d968f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35879f...549c46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x372a92...13ef6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x375a65...2f5728` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x383396...7bc758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x383d61...511b51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x399491...2e7297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b0fd5...01164f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b3e18...a2d981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ca58c...65b34d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d5a8a...a3506e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e20a2...97de38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f1e68...2a8117` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fd759...1d32b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40aeb9...97fdb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40b87f...89ed4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40cdfd...501c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4186d4...3fff0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41e342...b47a78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4229ff...177595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4548ab...b04574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46306b...4d8820` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x470e0f...172527` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4775f3...00f276` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48df05...a7cb59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x491d55...6cf3f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49b5ef...584510` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c578c...990494` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d7d00...93a586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e419d...e9e9b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4feb2b...dd255f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50db70...7e234d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52a4d3...575a5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52ab56...e7043f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x535537...09270d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53d830...566238` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54ebab...af5c5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x558e00...dc393b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5610ac...109652` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56ebe5...651b56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57559c...af7159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x586496...3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58f4f7...219563` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x590655...553f34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x591106...a88da3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x591c46...90ca64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x599b77...c442ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b2899...e3a9c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b41d9...4a7968` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b98ac...e8e46e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c58a8...5d83da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d333f...fa1634` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e11bb...f326ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e26ba...35897a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f7a1e...fdaaf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60a186...79e68b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x616e7a...430938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x617314...8ac4e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61c874...68ea9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61e69f...55c717` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x621256...cc8c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x622264...e0dc4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x631e88...8f6632` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64e995...175146` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65dff6...525fcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65fbb3...9efcb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67f9e2...abe545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x683195...152c9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68d42d...1f5d93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68d4a8...95ea24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69ce98...20538a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6805...da4422` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c61d5...45faa1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cd9c1...9de36b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6df677...ac4f9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f2ac9...78f09f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f5c1b...8cb948` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x725c2b...e5c607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x736939...450240` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x744f44...59fa0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74a06b...4f74ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x758508...487058` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x763b38...fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7695c2...2c5096` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76bb00...0bf9fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77957f...1a067c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x787c1a...1ada48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a8f74...92a1cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7abb47...30bee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ad802...b651a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b14e9...88fb73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7be082...2dbd2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc9a3...e96f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d8c6b...0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dfcd3...4d4c73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f10f0...f43a86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f1bca...b29bc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f917f...65d73c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x819164...b41d73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8211b5...7e2a7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82e593...a6b311` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82e9b8...6c404e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83ae6f...96fe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84e5ba...06c9a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86149c...281e5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8628ef...bbee90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x872850...55a9fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8789d7...26ec97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x888905...1c4b85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x897e5d...8d1e66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898cf4...ba069d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x899280...cd050c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89f7b9...fe51ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a3041...0143f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ba748...f7ca8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bb0c3...c8a7e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c0971...33689b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c1766...b823a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ccccc...b7f627` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x907544...3c6ace` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x908b3c...88235f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x91b84c...d3656f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9248e0...d8b4f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9324a3...d4348a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9439fc...27cef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x950f9b...f32400` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x955a70...2fedca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95ccc8...697ef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x966333...1e2d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x970d1a...cf743d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x999835...47648b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99f28a...28893a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a4975...11e4e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a6627...0a1621` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b0bce...ddfcf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b98cc...0dc91b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9be876...f95ed6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cfdc8...7dabcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d6304...e9a504` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e055f...811861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f4ee4...372380` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f8785...40dc44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1434b...1e3a10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa16e00...91c879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1aafe...753552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1ca3e...cc227d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1e93a...28b576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa22b43...464bb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa28370...ea6147` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2c6db...b90e90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3033c...939ac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa33f70...218362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4b6ea...c49f12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5caa8...a45ed2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa64e9d...ef269b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6b64b...2ad216` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa775f6...1b22a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7a804...49dd67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8d7f7...30838b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8e5f1...3f931d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9049...9753d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xace501...259ff9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad85e2...9a20d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0901f...111f61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1afdd...f98a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2ac45...a9c8f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2b2a9...273bd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2bed8...0fd3d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3aa36...a3a4fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3b9c7...a1762f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb47b5c...c25328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5b4f8...2e3e7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5eb7b...cacc40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6156f...e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6eb56...59efe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6ecc0...983c16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6fbd6...d16023` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb78dcc...d3cdec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9c2b7...49aefa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9deae...b53e5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba2543...457cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba30d4...825f10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbae9df...bc1ba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc8ab3...6ceb21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc9430...ae12fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcf0ff...c2b488` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd0330...e5246a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdfd37...850fca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe11ed...18da72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf2e9e...5f2034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0adcd...632da8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc12987...73ebcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc15d9b...e25c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc194e1...21aa09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc216fc...7624b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2f3af...e37863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2fe7c...7673e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc56dba...e5fd17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6aa98...6b550e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8300c...8f6da5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc85d20...abe97a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc91336...1191ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc96ff2...eb338d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc97191...865b7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2c5d...beca9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc7ed0...81138b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf8d07...8e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd181e2...21f802` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd21b6b...864209` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3efa8...9ce974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd48e37...164de2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd62c64...b0213c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65be7...13da9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd749ad...972967` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd855d2...d3d801` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8d177...5f8f58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8f185...800ec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd95790...35c0d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9776e...e40b05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbcd00...416bad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcaa75...b240e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdce834...de59e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd5a3f...9eb04b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd7ed4...54e2f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde6229...238fb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf774a...ff75bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdffabe...a28604` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe05a86...e946f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe19e71...bc3d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2c32f...51c4f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2ea64...59cf90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3633d...fcf73f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4ed37...899f60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5f8d6...faa1e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6668b...94266d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6c0de...ac71e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9111a...afdd59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9b576...c10da6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9c604...071ae2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeab148...26c6f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec79db...d1e626` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed1673...4eee27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeea30e...bbbec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef9ebd...2ad083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0a853...f44a40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0ebd0...69c530` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1ca24...eb5f1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf22808...a7a21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf342ba...e751b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf37dd7...72d530` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3934c...dfd916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf41a4c...fb0422` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf61fc7...5fe9d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf62e22...fb497d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf73b63...df361f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7aa06...ed5776` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7e1ec...9c80d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc801e...3caf40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeecfd...680e33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeed2d...7f4035` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff6f86...639cd7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fringe Finance.pdf](https://github.com/HashEx/public_audits/blob/master/Fringe%20Finance/Fringe%20Finance.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeffdcb...230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfde4c9...699bb2`](./contracts/ethereum-1/0xfde4c96c8593536e31f229ea8f37b2ada2699bb2/) | AnchoredViewRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067a1e...d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fbf5c...5f853b`](./contracts/ethereum-1/0x7fbf5c9af42a6d146dcc18762f515692cd5f853b/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058315...4be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/) | AssetGiveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5167c6...70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/) | AssetSignedAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7804fb...29ffda`](./contracts/polygon-137/0x7804fb2af15bb1323795a888b09913cef629ffda/) | AuthValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x384eab...95a613`](./contracts/base-8453/0x384eab89048520e35309e48ea933d845c495a613/) | AutomationMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa4ead4...00fbb4`](./contracts/polygon-137/0xa4ead40707f1ae901c4bde6641b29fb91900fbb4/) | AvatarCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0c61e...3727dc`](./contracts/ethereum-1/0xd0c61e8f15d9def697e1100663ed7da74d3727dc/) | BancorFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfac7be...b31e04`](./contracts/ethereum-1/0xfac7bea255a6990f749363002136af6556b31e04/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | BaseWormholeGatewayUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03bcd6...6edfb6`](./contracts/polygon-137/0x03bcd63abaf8452e2675e5ddf5f62dc8036edfb6/) | Batch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72e4f9...4eeea9`](./contracts/ethereum-1/0x72e4f9f808c49a2a61de9c5896298920dc4eeea9/) | Bitcoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc1321...af34e5`](./contracts/arbitrum-42161/0xdc132116a76683f5355042e1b67819551aaf34e5/) | BondWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24fb3d...968529`](./contracts/base-8453/0x24fb3dfba019e73ed45c884a31b5a60608968529/) | Bracket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x532f27...b142e4`](./contracts/base-8453/0x532f27101965dd16442e59d40670faf5ebb142e4/) | BrettToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc66992...797957`](./contracts/ethereum-1/0xc669928185dbce49d2230cc9b0979be6dc797957/) | BTT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1be46c...268f25`](./contracts/arbitrum-42161/0x1be46c7a40906c19d91d07b3ae69ef5893268f25/) | CamelotExchangeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | CamelotFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55401a...fc21f4`](./contracts/arbitrum-42161/0x55401a4f396b3655f66bf6948a1a4dc61dfc21f4/) | CamelotMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4672f4...35d091`](./contracts/arbitrum-42161/0x4672f4327a099ae5e4bfc42cdf0c2a400535d091/) | CamelotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc873fe...b2448d`](./contracts/arbitrum-42161/0xc873fecbd354f5a56e00e710b90ef4201db2448d/) | CamelotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fa9d...eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/) | CampaignFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68c4a7...3b619b`](./contracts/arbitrum-42161/0x68c4a79bb793c354614a798b70aff3ae623b619b/) | CampaignFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cdb61...6ef826`](./contracts/ethereum-1/0x0cdb61ab468a2f89d1636c95b32d88c0ea6ef826/) | CappedBptToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09fd32...831c7a`](./contracts/ethereum-1/0x09fd32c702117bb1deaa2dd43e2bc8a63a831c7a/) | CappedERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054985...8f8a85`](./contracts/ethereum-1/0x05498574bd0fa99eecb01e1241661e7ee58f8a85/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cef7f...a07e0a`](./contracts/ethereum-1/0x0cef7fcc8d24782c21b08694526600e190a07e0a/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f23dc...2df4ff`](./contracts/ethereum-1/0x4f23dcc38438fb01960aff49daeeeef7242df4ff/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a6752...5baf1a`](./contracts/ethereum-1/0x5a6752f16b81a8dfed84c785b49693573e5baf1a/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f39ad...479165`](./contracts/ethereum-1/0x5f39ad3df3ed9cf383eeee45218c33da86479165/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64ea01...731f41`](./contracts/ethereum-1/0x64ea012919fd9e53bdccdc0fc89201f484731f41/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b68c5...6346ae`](./contracts/ethereum-1/0x6b68c5708daffd0393acc6a8cc92f8c2146346ae/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99bd1f...798fc3`](./contracts/ethereum-1/0x99bd1f28a5a7fecbe39a53463a916794be798fc3/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d878e...2822a8`](./contracts/ethereum-1/0x9d878ec06f628e883d2f9f1d793adbcfd52822a8/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9cb62...b351b8`](./contracts/ethereum-1/0xb9cb624d4b21e0239bb149b1b1f1992a0eb351b8/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdcf0b...1f0651`](./contracts/ethereum-1/0xbdcf0bb40eb8642f907133bdb5fcc681d81f0651/) | CappedGovToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c52ee...e8247e`](./contracts/ethereum-1/0x2c52ee10bd58efa20fc6ee418bf9085639e8247e/) | CappedMkrToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99904e...2e1b0f`](./contracts/ethereum-1/0x99904e5369c551e0a9824e9e95141c46ae2e1b0f/) | CappedMkrToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x670966...ff8aab`](./contracts/polygon-137/0x6709660a6237723f278188bcae9e21b21eff8aab/) | CareBears | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44e9e6...581cd6`](./contracts/polygon-137/0x44e9e688faa91f5ac6a8f9bb239eacc18f581cd6/) | Catalyst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d103f...672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/) | CatalystMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefa52f...6d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | CatalystRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00613c...3e9cec`](./contracts/ethereum-1/0x00613c3fa6fb4448a4746385c331c17ee23e9cec/) | Chain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3ef580...6bff4a`](./contracts/polygon-137/0x3ef580a4a6b862183558625126bcc186436bff4a/) | CollectionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b4c4...40643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/) | CommonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | CommunalFarm_SaddleD4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6b4831...04a774`](./contracts/polygon-137/0x6b4831e24f0cd73d4150ef4694aa87d6c104a774/) | ContributionRules | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ccd4...616117`](./contracts/ethereum-1/0x24ccd4d3ac8529ff08c58f74ff6755036e616117/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/) | CrossChainCanonicalFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x178412...770c2a`](./contracts/arbitrum-42161/0x178412e79c25968a32e89b11f63b33f733770c2a/) | CrossChainCanonicalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/) | CrossChainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a0fc2...7f3d03`](./contracts/arbitrum-42161/0x6a0fc220d129f4d21e40764ed0bea4ec777f3d03/) | CrossChainOracleSingleAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2b24...2c176c`](./contracts/ethereum-1/0x6d2b24947680fce35d5c9dd6a4e32649f12c176c/) | Curation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fe00a...ce1538`](./contracts/ethereum-1/0x8fe00a685bcb3b2cc296ff6ffeab10aca4ce1538/) | Curation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x224c3c...87903e`](./contracts/polygon-137/0x224c3c4d90477a80e82903f3e7a2d267b087903e/) | DanceFight | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38f6c7...eba391`](./contracts/polygon-137/0x38f6c7e09d2686d65b4b7dec1f22e183a1eba391/) | DanceFight | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc4eb9f...09c11f`](./contracts/arbitrum-42161/0xc4eb9fff53581130e65e3b60b31295c52509c11f/) | DefiEdgeProxyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ed4e8...efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | DegenToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x444c13...a5bfc2`](./contracts/ethereum-1/0x444c138bf2b151f28a713b0ee320240365a5bfc2/) | DisputeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c837a...56517f`](./contracts/ethereum-1/0x9c837ac7818d9d2653061579d479cf691056517f/) | DisputeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556f50...aa9e6d`](./contracts/ethereum-1/0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d/) | DummyERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc18360...7f9d72`](./contracts/ethereum-1/0xc18360217d8f7ab5e7c516566761ea12ce7f9d72/) | ENSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | EpochManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd19cc1...6761dc`](./contracts/polygon-137/0xd19cc137bb848d3a48ad8ad883886b67c26761dc/) | ERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9020...6eb88f`](./contracts/ethereum-1/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ERC1155Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/) | ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f32b1...194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ERC20BridgedPermit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fc246...0227f1`](./contracts/ethereum-1/0x2fc246149b4b8d7bcef6188a10af1791380227f1/) | ERC20GroupCatalyst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff261...851ba5`](./contracts/ethereum-1/0x8ff2611da386de427fc96a8073963619c5851ba5/) | ERC20GroupGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ec5b...5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ERC20Predicate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89a93f...ffd3ec`](./contracts/ethereum-1/0x89a93f94c0a3f388930c4a568430f5e8ffffd3ec/) | ERC20Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd3a9ca...3d8b8f`](./contracts/polygon-137/0xd3a9caa25393765c05ce9f332b5e33b5e33d8b8f/) | ERC20RewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b8af2...ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/) | ERC20SubToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54cd01...774a0c`](./contracts/ethereum-1/0x54cd017f0d7cdef1d0dc265926aa9b3ac7774a0c/) | ERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99cdd3...cc8eb1`](./contracts/ethereum-1/0x99cdd3dad1efcffa57a5e622939c9d5411cc8eb1/) | ERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6f453...80f7ad`](./contracts/ethereum-1/0xe6f45376f64e1f568bd1404c155e5ffd2f80f7ad/) | ERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe372ed...2e2903`](./contracts/ethereum-1/0xe372ed8d188517ef4d4bc464c0c068d2002e2903/) | EstateSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d879d...85199c`](./contracts/polygon-137/0x0d879dc15790a42ebe802d8a0c833ef23485199c/) | EstateSaleWithAuth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x089a55...648d9d`](./contracts/ethereum-1/0x089a55baf7052321cbce4bdbf3be568955648d9d/) | EstateSaleWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8484ef...922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | EtherPredicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2611f...9925b5`](./contracts/ethereum-1/0xa2611f4488c92e1a91eb4d2a8d30110eba9925b5/) | EtherPredicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0ad5c...700455`](./contracts/ethereum-1/0xf0ad5cad05e10572efceb849f6ff0c68f9700455/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32659...27231d`](./contracts/ethereum-1/0xc32659651d137a18b79925449722855aa327231d/) | EthRegistrarSubdomainRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4028a3...79c215`](./contracts/ethereum-1/0x4028a3c7ae9a0555293225135e54a6fa2879c215/) | EventsHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83bbc9...13c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | EXCLegacyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdbdd7b...2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | Execute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06b5c1...883362`](./contracts/arbitrum-42161/0x06b5c17857c32f96daa2f43aee465e962c883362/) | FairAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbb7c0...ed33bf`](./contracts/ethereum-1/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5521b0...784429`](./contracts/polygon-137/0x5521b00e7952948babc84f052b5d017792784429/) | FistOfTheNorthStar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88f280...8487b9`](./contracts/ethereum-1/0x88f2803a9e52ca7c26b2f52740facd50d38487b9/) | FlashLoanLever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x239732...43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | FPIControllerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0304a3...f0c00e`](./contracts/ethereum-1/0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e/) | frxETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dd1b4...b3b532`](./contracts/ethereum-1/0x2dd1b4d4548accea497050619965f91f78b3b532/) | frxETHMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x912ce5...9e6548`](./contracts/ethereum-1/0x912ce59144191c1204e64559fe8253a0e49e6548/) | FundRetriever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75cbcc...2d6f89`](./contracts/arbitrum-42161/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89/) | GainsNetworkNft1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd1f024...8e8a4e`](./contracts/arbitrum-42161/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e/) | GainsNetworkNft2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x983415...84b384`](./contracts/arbitrum-42161/0x9834159eaf9811cf4c568294d5c7c9158f84b384/) | GainsNetworkNft3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40f0ae...1a21a1`](./contracts/arbitrum-42161/0x40f0aeab6383be2f254ce40b79089070fa1a21a1/) | GainsNetworkNft4 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e3b54...ffc9be`](./contracts/arbitrum-42161/0x5e3b541ad6acc4381c110247946c863e05ffc9be/) | GainsNetworkNft5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | GainsNetworkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x851b3f...5a30f1`](./contracts/arbitrum-42161/0x851b3fb3c3178cd3fbaa0cdaae0175efa15a30f1/) | GammaUniProxyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48dee1...831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/) | GenesisBouncer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6810e7...386b96`](./contracts/ethereum-1/0x6810e776880c02933d47db1b9fc05908e5386b96/) | GnosisToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | GNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa03e32...393154`](./contracts/arbitrum-42161/0xa03e32a42c75fdddc9a39973ddd082f147393154/) | GNSBorrowingFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7ce604...b4135f`](./contracts/arbitrum-42161/0x7ce604449d00ef758a10a21c4eba3490e2b4135f/) | GNSNftRewardsV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x95120e...a266bb`](./contracts/arbitrum-42161/0x95120ef241dbda33d6c94bd0052d408446a266bb/) | GNSNftRewardsV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa65448...9afdb8`](./contracts/arbitrum-42161/0xa654486ac316ab5cf7662e6b8f770eccc39afdb8/) | GNSNftRewardsV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09a5a0...6840a9`](./contracts/arbitrum-42161/0x09a5a0e9cccac3db70e6954386ca0eeb7f6840a9/) | GNSNftRewardsV6_3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde5750...acfec3`](./contracts/arbitrum-42161/0xde5750071caca8db173fc6543d23d0bcacacfec3/) | GNSNftRewardsV6_4_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04a5e3...82d497`](./contracts/arbitrum-42161/0x04a5e3cf21b0080b72facdca634349a56982d497/) | GNSPairInfosV6_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21caf0...b57d86`](./contracts/arbitrum-42161/0x21caf065e86223473cdc29465e15805771b57d86/) | GNSPairInfosV6_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x522004...e50a38`](./contracts/arbitrum-42161/0x522004f927fc66021aacef56ce71d2506fe50a38/) | GNSPairInfosV6_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3157d6...4d65ad`](./contracts/arbitrum-42161/0x3157d67c044e1e7f066752ad026d7272234d65ad/) | GNSPairsStorageV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x619179...961893`](./contracts/arbitrum-42161/0x619179ccc0f43d460170ac2a482bac7bc1961893/) | GNSPairsStorageV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x779528...736d28`](./contracts/arbitrum-42161/0x779528e852fbda71942554510f17ad67b8736d28/) | GNSPairsStorageV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2df07d...0f7b51`](./contracts/arbitrum-42161/0x2df07ded0b6cec225f047e64527e43c4220f7b51/) | GNSReferralsV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4899e0...ce6092`](./contracts/arbitrum-42161/0x4899e09e9f8a4a52dc62dff90453ed34ffce6092/) | GNSReferralsV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c617f...2d124f`](./contracts/arbitrum-42161/0x8c617f3e9f1ef3c04d537da99d69ef15b42d124f/) | GNSReferralsV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b8d3c...d3f9d6`](./contracts/arbitrum-42161/0x6b8d3c08072a020ac065c467ce922e3a36d3f9d6/) | GNSStakingV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x749e8b...b289cc`](./contracts/arbitrum-42161/0x749e8bb58bdf842ac4ec3f45f93634c7acb289cc/) | GNSStakingV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa37547...c522e4`](./contracts/arbitrum-42161/0xa375476645d5d015796f07557084654fecc522e4/) | GNSStakingV6_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x292338...b01e8a`](./contracts/arbitrum-42161/0x29233896201c1fa8a475bad3ce71f98c75b01e8a/) | GNSTestNft1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26c1ec...ed8edf`](./contracts/arbitrum-42161/0x26c1ec6166ebb99b2ed94dc833d1d2696eed8edf/) | GNSTestNft2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x305267...5eda1a`](./contracts/arbitrum-42161/0x305267df8d93a0a92425ef487303a75f185eda1a/) | GNSTestNft3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x449b7c...5d02c9`](./contracts/arbitrum-42161/0x449b7cae22d1fe19c2d8dbad66440140655d02c9/) | GNSTestNft4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x065f97...6d0572`](./contracts/arbitrum-42161/0x065f97a37d298695e7d3488509937b21f66d0572/) | GNSTestNft5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1632c3...26f637`](./contracts/arbitrum-42161/0x1632c38cb208df8409753729dbfba5c58626f637/) | GNSTimelockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53c880...5afad1`](./contracts/arbitrum-42161/0x53c880583a1543bdbce3805267340794bc5afad1/) | GNSTimelockOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x298a69...0b7522`](./contracts/arbitrum-42161/0x298a695906e16aea0a184a2815a76ead1a0b7522/) | GNSTradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2769bb...725f89`](./contracts/arbitrum-42161/0x2769bb38c57fdd465b05cd3cd70cb8075b725f89/) | GNSTradingCallbacksV6_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66f0d3...b2b179`](./contracts/arbitrum-42161/0x66f0d317328e56c2696053e76c16b6fd8ab2b179/) | GNSTradingCallbacksV6_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c612c...b28f46`](./contracts/arbitrum-42161/0x6c612c804c84e3d20e3109c8efd06cd2d8b28f46/) | GNSTradingCallbacksV6_3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5eb6cd...db983a`](./contracts/arbitrum-42161/0x5eb6cdebc825a0717d8bb2d26af78702b7db983a/) | GNSTradingCallbacksV6_3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9197b7...db471a`](./contracts/arbitrum-42161/0x9197b730af08b9f8b5ab233560feb2ecd1db471a/) | GNSTradingInteractions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05e765...7cf117`](./contracts/arbitrum-42161/0x05e765253bec77ce27a6ec4819c2f32d6e7cf117/) | GNSTradingStorageV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x138ed8...60bdec`](./contracts/arbitrum-42161/0x138ed80642d9ba6f9a33736cb6abd61fa160bdec/) | GNSTradingStorageV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2bc36a...203ee7`](./contracts/arbitrum-42161/0x2bc36a4379b37c232025df81f478c45e2c203ee7/) | GNSTradingStorageV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e87d8...0114e9`](./contracts/ethereum-1/0x5e87d84828eddd249e7463e9fbd06a49920114e9/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | GrailTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | GraphToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/) | GraphTokenLockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/) | GraphTokenLockSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | GraphTokenLockWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7621c2...ec0093`](./contracts/arbitrum-42161/0x7621c29f55a05466435d6ce353fea29cefec0093/) | GToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa388d4...5444f2`](./contracts/arbitrum-42161/0xa388d4c2fdf6e9236a37a3bb6068a1e19f5444f2/) | GToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd85e03...b9b91b`](./contracts/arbitrum-42161/0xd85e038593d7a098614721eae955ec2022b9b91b/) | GToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c299d...dfaaad`](./contracts/arbitrum-42161/0x0c299d41b6ee07feb7adaf73e234e3cb29dfaaad/) | GTokenLockedDepositNft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x018d9a...f9f27e`](./contracts/arbitrum-42161/0x018d9a3f0d06ccb7c305b7c9219a4307e1f9f27e/) | GTokenOpenPnlFeed | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39a696...c8924f`](./contracts/polygon-137/0x39a6964c29fd8dac86b5c785c506648238c8924f/) | HellsKitchen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x371c7e...f52f07`](./contracts/arbitrum-42161/0x371c7ec6d8039ff7933a2aa28eb827ffe1f52f07/) | JoeTokenOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | Keep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | L1GNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | L1Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | L2ArbitrumToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | L2CustomGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x467194...c76c65`](./contracts/arbitrum-42161/0x467194771dae2967aef3ecbedd3bf9a310c76c65/) | L2DaiGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e0101...fb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | L2ERC20ExtendedTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | L2ERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | L2GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9bcef7...8eb81d`](./contracts/optimism-10/0x9bcef72be871e61ed4fbbc7630889bee758eb81d/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6c84a8...d0de40`](./contracts/optimism-10/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | L2WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1293a5...a15458`](./contracts/optimism-10/0x1293a54e160d1cd7075487898d65266081a15458/) | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50f547...fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/) | Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7695b9...ebfe70`](./contracts/polygon-137/0x7695b9ac52e49f1a8c4c554a072edb225eebfe70/) | LandContributionCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x471363...839859`](./contracts/ethereum-1/0x47136343c616c3d6713b3ad4a223deda42839859/) | LandSaleWithETHAndDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126a34...f4adaa`](./contracts/ethereum-1/0x126a3437f3b76155e5e574abdc048b54f2f4adaa/) | LandSaleWithReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae6fd...60b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | LandWeightedSANDRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x514910...f986ca`](./contracts/ethereum-1/0x514910771af9ca656af840dff83e8264ecf986ca/) | LinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x350a79...ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | LinkTokenOptimism | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc72e...f91c78`](./contracts/ethereum-1/0x1cc72efbdfb08803bdda911ad895a861e1f91c78/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x979bc6...be2520`](./contracts/arbitrum-42161/0x979bc658871368cef694490b24a79c41ddbe2520/) | LiquidityManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | LQTYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbbbca...7aeafd`](./contracts/ethereum-1/0xbbbbca6a901c926f240b89eacb641d8aec7aeafd/) | LRC_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8463b7...6722b4`](./contracts/polygon-137/0x8463b73ea174d04db5fff567c77be968666722b4/) | MadBalls | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d1afa...cfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | MaticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24fcfc...c93584`](./contracts/base-8453/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | MaviaOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6c2b6...7abd4d`](./contracts/ethereum-1/0xe6c2b672b3eb64a1f460adcd9676a3b6c67abd4d/) | MaviaOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24fcfc...c93584`](./contracts/ethereum-1/0x24fcfc492c1393274b6bcd568ac9e225bec93584/) | MaviaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x195fe6...5dfa0b`](./contracts/ethereum-1/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | Merkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6fa4f...d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | MerklePatriciaProof | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9277a4...352433`](./contracts/ethereum-1/0x9277a463a508f45115fdeaf22ffeda1b16352433/) | MintableERC20Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f5ab1...18da73`](./contracts/ethereum-1/0x8f5ab128fa9fb570b5df9c909f4d51dadb18da73/) | MintableERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x932532...15f2b7`](./contracts/ethereum-1/0x932532aa4c0174b8453839a6e44ee09cc615f2b7/) | MintableERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x491397...1f217f`](./contracts/ethereum-1/0x491397f7eb6f5d9b82b15cecabff835ba31f217f/) | MKRVotingVaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x214d52...dd4020`](./contracts/polygon-137/0x214d52880b1e4e17d020908cd8eaa988ffdd4020/) | MultiGiveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x198d14...3f850a`](./contracts/ethereum-1/0x198d14f2ad9ce69e76ea330b374de4957c3f850a/) | NFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6db1ef...1dbf6d`](./contracts/arbitrum-42161/0x6db1ef0df42e30acf139a70c1ed0b7e6c51dbf6d/) | NFTPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe0a6b3...c24569`](./contracts/arbitrum-42161/0xe0a6b372ac6af4b37c7f3a989fe5d5b194c24569/) | NitroPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c46f4...2ede4f`](./contracts/base-8453/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x132254...3d26f7`](./contracts/base-8453/0x132254097ee3ca0858365828e21dc419073d26f7/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3eb418...cd1bc1`](./contracts/base-8453/0x3eb418bdbe95b4b9cf465ecfbd8424685acd1bc1/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a4537...048285`](./contracts/base-8453/0x4a453700d157717fe02fb62e7700ed7845048285/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x964d45...2ec157`](./contracts/base-8453/0x964d45256c73df0239a26216cec155d7e12ec157/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfaba6f...269be3`](./contracts/ethereum-1/0xfaba6f8e4a5e8ab82f62fe7c39859fa577269be3/) | Ondo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x368181...86b8c6`](./contracts/base-8453/0x368181499736d0c0cc614dbb145e2ec1ac86b8c6/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | OVMFiatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | PairInfos | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1cc25b...9f2de0`](./contracts/polygon-137/0x1cc25b38d7eb7711e5acc2828d7577cb8a9f2de0/) | ParisHilton | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1cefeb...3dfad6`](./contracts/polygon-137/0x1cefebe5f947e421906b60b47ff35c99a23dfad6/) | PlayboyPartyPeople | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9d305a...dce63f`](./contracts/polygon-137/0x9d305a42a3975ee4c1c57555bed5919889dce63f/) | PolygonLand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ebcfb...6a03bd`](./contracts/polygon-137/0x4ebcfb9f8b4df38ce149c655541d591afb6a03bd/) | PolygonLandBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcd1c7c...b5f860`](./contracts/polygon-137/0xcd1c7c85113b16a5b9e09576112d162281b5f860/) | PolygonLandTunnel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x21b083...72eea8`](./contracts/polygon-137/0x21b083e128fa7bcc31214a0c000b56fd4372eea8/) | PolygonLandTunnelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16f78d...cbbfcf`](./contracts/polygon-137/0x16f78d75fabb869835236b5fb59c2b29f6cbbfcf/) | PolygonLandV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x95847a...b9a672`](./contracts/polygon-137/0x95847a1982db4622dc9014f6f0bec7cbc6b9a672/) | PolygonLandV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ab071...b20f30`](./contracts/polygon-137/0x4ab071c42c28c4858c4bac171f06b13586b20f30/) | PolygonLandWeightedSANDRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8917b0...db2f34`](./contracts/polygon-137/0x8917b0360a46bbd09cca71e3db78268437db2f34/) | PolygonSand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6cdcb1...fb971d`](./contracts/base-8453/0x6cdcb1c4a4d1c3c6d054b27ac5b77e89eafb971d/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x054985...8f8a85`](./contracts/base-8453/0x05498574bd0fa99eecb01e1241661e7ee58f8a85/) | Portico | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66ec1e...365d29`](./contracts/arbitrum-42161/0x66ec1ee6c3ad04d7629ce4a6d5d19ba99c365d29/) | Presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x64e262...3da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | PriceAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ProtocolEarnings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc011a7...af2a6f`](./contracts/ethereum-1/0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f/) | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226159...ed68b8`](./contracts/ethereum-1/0x226159d592e2b063810a10ebf6dcbada94ed68b8/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4976fb...baba41`](./contracts/ethereum-1/0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb5c064...94ee17`](./contracts/polygon-137/0xb5c064f955d8e7f38fe0460c556a72987494ee17/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x821ca4...068a35`](./contracts/polygon-137/0x821ca4cc7960597f597205d2cedcd26709068a35/) | Rabbids | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | RadiantOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa96f57...dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f31ce...0e36eb`](./contracts/arbitrum-42161/0x0f31ce35169e64e0783a625a594c1df75d0e36eb/) | Refund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x328328...6bdf51`](./contracts/ethereum-1/0x328328ba09293a4002b4b7615cba2c816d6bdf51/) | Registrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6109dd...75c662`](./contracts/ethereum-1/0x6109dd117aa5486605fc85e040ab00163a75c662/) | RegistrarMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c9984...c11da4`](./contracts/ethereum-1/0x4c99846fcafd7bede2827788f05796ed4bc11da4/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x842ddf...94940e`](./contracts/ethereum-1/0x842ddfe3f5cadfd45c45421329cddf0af994940e/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ac758...93ed66`](./contracts/ethereum-1/0x9ac758ab77733b4150a901ebd659cbf8cb93ed66/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefe61...b1bc47`](./contracts/ethereum-1/0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47/) | RLPReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98dfb3...000f02`](./contracts/ethereum-1/0x98dfb360cbc65045a8415fa2514f549cd3000f02/) | RootChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99a41e...028085`](./contracts/ethereum-1/0x99a41e568e3547881cdfec11b08c9d1c8b028085/) | RootChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74e4e5...5cb466`](./contracts/ethereum-1/0x74e4e5eb5aae2fbef42ec07298cab532425cb466/) | RootChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0c68c...c77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | RootChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae45c7...94d787`](./contracts/ethereum-1/0xae45c757acd5658e806c31785fd9ea988d94d787/) | RootChainProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x656760...adfb86`](./contracts/ethereum-1/0x65676055e58b02e61272cedec6e5c6d56badfb86/) | RootERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xabbc5f...2f4064`](./contracts/arbitrum-42161/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4063c6...848e2f`](./contracts/polygon-137/0x4063c6ccd3d9541e53a514e83fba3843a7848e2f/) | RoyaltyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafd5f5...21a87a`](./contracts/polygon-137/0xafd5f5c6e72f0f6441e4abf2ae8ff23dee21a87a/) | RoyaltySplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x279427...5356af`](./contracts/arbitrum-42161/0x279427df97b34da65d96e92efdd2b961085356af/) | RvlPNP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ebeac...a93aab`](./contracts/ethereum-1/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | SafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3845ba...03a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | Sand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6e383...669abd`](./contracts/polygon-137/0xa6e383bda26e4c52a3a3a3463552c42494669abd/) | SandRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad0c9d...ec26e6`](./contracts/ethereum-1/0xad0c9dacf1e515615b0581c8d7e295e296ec26e6/) | ServiceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac3e01...bbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | sfrxETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5df78e...3e5f76`](./contracts/polygon-137/0x5df78ee0568befc4b1e5e9f3ac4611235c3e5f76/) | SignedERC20Giveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c0521...2c8426`](./contracts/polygon-137/0x2c0521ea8b94bdfbc981621a7bfdc3314a2c8426/) | SignedMultiGiveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | Stake_FXS_WETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/) | StakedGlp | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb2871...d34a15`](./contracts/ethereum-1/0xdb28719f7f938507dbfe4f0eae55668903d34a15/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62119a...96f89a`](./contracts/ethereum-1/0x62119ab740214ffd6a236e16143470c8c796f89a/) | StakeManagerExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x296ebf...9e2a53`](./contracts/ethereum-1/0x296ebf81430ea5561143b4b15b17cc3c549e2a53/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3929ff...9d20c7`](./contracts/ethereum-1/0x3929ffab35937ab32f6ea0d9849174161d9d20c7/) | StakingInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f4fc6...e3de72`](./contracts/ethereum-1/0x1f4fc6388905815519e153c9b5a41a6ed5e3de72/) | StakingNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | StakingRewardsMultiGauge_StakeDAO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x157372...db1bbf`](./contracts/ethereum-1/0x157372f9d3c94609adfb967741a0afc0c1db1bbf/) | StarterPackV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd82843...54aede`](./contracts/base-8453/0xd8284305b520ff5486ab718dbdfe46f18454aede/) | StopLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9a4ee...63e3d2`](./contracts/ethereum-1/0xa9a4ee56d91985a886affce7eb407492d263e3d2/) | SubdomainMigrationRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6a36a...bfb505`](./contracts/ethereum-1/0xf6a36a5a942dec8bb60e5cbf005d70d89abfb505/) | SUN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf47b8b...b33535`](./contracts/optimism-10/0xf47b8b1daf12c3058b757a1446dadfa8e4b33535/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbb9ed...7e9a4e`](./contracts/ethereum-1/0xcbb9edf6775e39748ea6483a7fa6a385cd7e9a4e/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | TradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83084c...7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x944766...c9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50327c...f87ab5`](./contracts/ethereum-1/0x50327c6c5a14dcade707abad2e27eb517df87ab5/) | TRX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02daef...057966`](./contracts/ethereum-1/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03b54a...b3bccd`](./contracts/polygon-137/0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x385eea...fb54a7`](./contracts/polygon-137/0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9a7101...0e76a3`](./contracts/polygon-137/0x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd6df93...21c90b`](./contracts/polygon-137/0xd6df932a45c0f255f85145f286ea0b292b21c90b/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | UpgradeableOptimismMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d9aa3...6b5aba`](./contracts/ethereum-1/0x0d9aa3f32a538da6fbf3c3c9b8f8edf01e6b5aba/) | ValidatorShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58f930...65fe91`](./contracts/ethereum-1/0x58f93087c03a2049a1a19745311399d6dd65fe91/) | ValidatorShareFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bdb55...b38246`](./contracts/ethereum-1/0x9bdb5575e24eeb2dca7ba6ce367d609bdeb38246/) | VaultController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | veFPISYieldDistributorV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2647...e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x088cd8...0cd704`](./contracts/arbitrum-42161/0x088cd8f5ef3652623c22d48b1605dcfe860cd704/) | VelaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b4ee9...0cb155`](./contracts/arbitrum-42161/0x8b4ee9a030c50fd02c845a171064f8fca90cb155/) | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a5a7c...294da3`](./contracts/arbitrum-42161/0x5a5a7c0108cef44549b7782495b1df2ad5294da3/) | VestingWallet2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x691411...d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bf094...8efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3669c4...fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2f987...b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | XGrailToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | yDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | yDelegatedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd27c37...c0b1b1`](./contracts/arbitrum-42161/0xd27c373950e7466c53e5cd6ee3f70b240dc0b1b1/) | YieldBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | yTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | yUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/) | yUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/) | yVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 381 |
| upstream | 11 |
| standard_library | 38 |
| needs_review | 387 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13140] Fringe Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
