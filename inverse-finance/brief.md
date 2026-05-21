# Agentic Audit Brief: Inverse Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 46.3% over 90 days

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: unknown (Tier 0, 79.2% below peak)
- Generated: 2026-05-21T23:22:22.368Z
- Pipeline run: v2-pipeline-2026-05-21-79adca-3dff
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 125 unique implementations (377 raw deployments)
- DeFi Llama TVL: $44,526,567.00
- On-chain TVL (included contracts): $428,771,999.88
- TVL by chain: Ethereum $428,771,999.88

## Project Description

Inverse Finance is a decentralized lending protocol that enables users to borrow its native stablecoin, DOLA, against interest-bearing collateral. It also provides yield-bearing token wrappers and governance mechanisms to manage protocol parameters and risk.

### Architecture

The Inverse Finance family provides the core lending infrastructure where Markets use Oracles and BorrowController to manage DOLA minting, while DolaBorrowingRights and Fed regulate debt and supply. The FiRM family's XINV token wraps INV from the Key Contract Addresses family, and governance contracts like GovernorMills and Timelock control parameters across both families.

## Audit Coverage Summary

- Verified implementations audited: 16/117 (13.7%)
- Verified + Unaudited implementations: 101
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 125
- Raw deployments: 377
- Audits discovered: 8
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $428,771,999.88
- Latest audit: 2025-11 (fresh)
- Staleness: 2 fresh, 0 aging, 5 stale, 1 unknown
- Tier 1 coverage: 9.4% (Code4rena, Sherlock)
- Note: This protocol is classified as [unknown]. ASD of $428,771,999.88 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nomoi | Tier 2 | 8 | 6.8% | 2023-05 |
| Code4rena | Tier 1 | 7 | 6.0% | 2022-10 |
| Sherlock | Tier 1 | 4 | 3.4% | 2025-11 |
| yAudit | Tier 2 | 3 | 2.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BorrowController | core_logic | ethereum | 10 deployments: ethereum [`0x01eca3...ae4ce8`](./contracts/ethereum-1/0x01eca33e20a4c379bd8a5361f896a7dd2bae4ce8/); ethereum `0x0d9ce7...60a641`; ethereum `0x20c734...80bc0d`; ethereum `0x2dbad5...e9dd6f`; ethereum `0x44b789...84b0d6`; ethereum `0x7be976...e41a4e`; ethereum `0x81ff13...7b7862`; ethereum `0xac6b83...e0cf6c`; ethereum `0xeebea1...5a5245`; ethereum `0xfd50ec...01682a` | ✅ Audited |
| DbrDistributor | operational_periphery | ethereum | [`0xdcd2d9...184244`](./contracts/ethereum-1/0xdcd2d918511ba39f2872eb731bb88681ae184244/) | ✅ Audited |
| DolaSavings | unknown | ethereum | 2 deployments: ethereum [`0xc91b5f...7f2b20`](./contracts/ethereum-1/0xc91b5f3a2b6393130d5f3c20ce6d2c28f07f2b20/); ethereum `0xe5f247...d9b8b4` | ✅ Audited |
| Fed | unknown | ethereum | 3 deployments: ethereum [`0x2b3454...5b90fd`](./contracts/ethereum-1/0x2b34548b865ad66a2b046cb82e59ee43f75b90fd/); ethereum `0x5e075e...357ef7`; ethereum `0xe3277f...db0664` | ✅ Audited |
| FiRMSlashingModule | unknown | ethereum | 8 deployments: ethereum [`0x6d27dd...5a346c`](./contracts/ethereum-1/0x6d27dd57a7dbf5b27a3fcabd75c916ac765a346c/); ethereum `0x984001...658603`; ethereum `0x9c0e16...295423`; ethereum `0xa56ed0...efaa4e`; ethereum `0xc61059...16b8c1`; ethereum `0xc7aec4...b74fad`; ethereum `0xefb3c6...4a3914`; ethereum `0xefb4c3...037f31` | ✅ Audited |
| GOhmTokenEscrow | operational_periphery | ethereum | [`0xb4c4cd...bceb7a`](./contracts/ethereum-1/0xb4c4cd74e7b99ad2cf2f7b3a4f7091efb8bceb7a/) | ✅ Audited |
| GovTokenEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x36c239...233fcf`](./contracts/ethereum-1/0x36c2398bd782aa4ac0d6529fe5c83c96b2233fcf/); ethereum `0x882d00...fc94e0` | ✅ Audited |
| INVEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x502a77...eaac98`](./contracts/ethereum-1/0x502a7759809bd673cd39a0055beed44b40eaac98/); ethereum `0x57f2a3...9000cd` | ✅ Audited |
| JDola | unknown | ethereum | 7 deployments: ethereum [`0x1ce3f5...90fbb8`](./contracts/ethereum-1/0x1ce3f5d0c5f84a203167261f11c2e12c3d90fbb8/); ethereum `0x5bacaf...224f54`; ethereum `0x5cebb0...fd91b8`; ethereum `0x633821...09a452`; ethereum `0x6607ef...ddb933`; ethereum `0xd178f7...c72f81`; ethereum `0xf4307a...d1ccfd` | ✅ Audited |
| LinearInterpolationDelayModel | unknown | ethereum | 3 deployments: ethereum [`0x3b1e44...2a4fbf`](./contracts/ethereum-1/0x3b1e443ab423c9a7b1b2ea7b3cb7c0be012a4fbf/); ethereum `0x6aa105...04ea5a`; ethereum `0xb1b62e...c67fca` | ✅ Audited |
| Market | unknown | ethereum | 48 deployments: ethereum [`0x0971b1...c39b26`](./contracts/ethereum-1/0x0971b1690d101169bfca4715897ad3a9b3c39b26/); ethereum `0x0c0bb8...2bd168`; ethereum `0x0dfe3d...5f4112`; ethereum `0x1fd498...946916`; ethereum `0x27b6c3...c3f9c4`; ethereum `0x286844...573537`; ethereum `0x29fe42...8a93b8`; ethereum `0x2a2563...ac77ff`; ethereum `0x2d4788...28fbd9`; ethereum `0x2fed50...eb2fc9`; ethereum `0x3474ad...b9397a`; ethereum `0x3ac5ce...3dfd5e`; ethereum `0x3fd3da...7550bc`; ethereum `0x4797a6...d95b26`; ethereum `0x4839b7...9fb901`; ethereum `0x48ba57...264e7c`; ethereum `0x4a33ba...57808b`; ethereum `0x4e2646...c2db1a`; ethereum `0x4f5ea7...43c08e`; ethereum `0x5bb8f6...541cf2`; ethereum `0x607370...71dcc5`; ethereum `0x63d27f...2737e8`; ethereum `0x63df5e...d37035`; ethereum `0x63fad9...aa1ee8`; ethereum `0x6a522f...6c631e`; ethereum `0x743a50...951dcf`; ethereum `0x79779c...3e5e2d`; ethereum `0x79ef6d...52aec4`; ethereum `0x7cd3ab...e66b37`; ethereum `0x8205be...bec0e3`; ethereum `0x85fdd7...98dfc8`; ethereum `0x87df9a...ce72ea`; ethereum `0x936851...bfb31b`; ethereum `0xb427fc...c14a99`; ethereum `0xb51624...22330b`; ethereum `0xb686f1...09c867`; ethereum `0xb8bc1e...4dd565`; ethereum `0xb907dc...2d8f9a`; ethereum `0xc0086f...0c8ccf`; ethereum `0xd68d3a...7c4b29`; ethereum `0xdc2265...7ddf6b`; ethereum `0xdcf32b...c05934`; ethereum `0xe0edd9...095977`; ethereum `0xe4d47e...cb12e4`; ethereum `0xe85943...f4c99c`; ethereum `0xf013d9...43c4f5`; ethereum `0xf85ed6...222db2`; ethereum `0xfea3a8...6c54f1` | ✅ Audited |
| Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xabe146...10cce8`](./contracts/ethereum-1/0xabe146cf570fd27ddd985895ce9b138a7110cce8/); ethereum `0xe8929a...0c4cb4` | ✅ Audited |
| sDola | unknown | ethereum | 3 deployments: ethereum [`0x2142c7...de8f71`](./contracts/ethereum-1/0x2142c7c052e3b4a92e7d9f47410d6a7e6ede8f71/); ethereum `0xb45ad1...157305`; ethereum `0xbbbfc1...2b12a1` | ✅ Audited |
| sDolaHelper | periphery | ethereum | 4 deployments: ethereum [`0x2ef7b0...6b3336`](./contracts/ethereum-1/0x2ef7b083837db8fcd0fb05a427400151ad6b3336/); ethereum `0x3b3e45...5fca61`; ethereum `0x5c1f6a...bb3c97`; ethereum `0xc87f4e...d2d520` | ✅ Audited |
| SimpleERC20Escrow | operational_periphery | ethereum | [`0xc06053...0c010f`](./contracts/ethereum-1/0xc06053fcad0a0df7cc32289a135bbea9030c010f/) | ✅ Audited |
| WithdrawalEscrow | operational_periphery | ethereum | 3 deployments: ethereum [`0x1f3068...f25f2c`](./contracts/ethereum-1/0x1f3068a1ac79d2cba4b692c5191ba1dbe2f25f2c/); ethereum `0x391236...6ab5f0`; ethereum `0x3924a6...51e9b0` | ✅ Audited |

### ⚠️ Verified + Unaudited (101)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Immutable | token | ethereum | 9 deployments: ethereum [`0x0bc08f...a0f60b`](./contracts/ethereum-1/0x0bc08f2433965ea88d977d7bfded0917f3a0f60b/); ethereum `0x17786f...14f28b`; ethereum `0x4b228d...9a16bb`; ethereum `0x5ea580...9c2ea8`; ethereum `0x7d6bd2...5e9d2a`; ethereum `0x7fcb7d...a8a670`; ethereum `0xa978d8...617880`; ethereum `0xc528b0...dd7760`; ethereum `0xd60b06...288326` | ⚠️ Unaudited |
| ERC20 | token | ethereum | [`0x865377...dc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | 2 deployments: ethereum [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/); ethereum `0x89ec5d...047357` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/); ethereum `0xc8f2e9...beac34` | ⚠️ Unaudited |
| YTokenStrat | token | ethereum | 6 deployments: ethereum [`0x57faa0...b32052`](./contracts/ethereum-1/0x57faa0dec960ed774674a45d61ecfe738eb32052/); ethereum `0x698c1d...3910af`; ethereum `0x973f50...a34b29`; ethereum `0xb0b02c...24f40b`; ethereum `0xbe2165...ee901a`; ethereum `0xf8df8b...5b1c1f` | ⚠️ Unaudited |
| ALE | unknown | ethereum | 2 deployments: ethereum [`0x5233f4...06debc`](./contracts/ethereum-1/0x5233f4c2515ae21b540c438862abb5603506debc/); ethereum `0x958979...bbae3e` | ⚠️ Unaudited |
| ALEV2 | unknown | ethereum | 7 deployments: ethereum [`0x2fd08d...db6162`](./contracts/ethereum-1/0x2fd08d680ea96cf7cb77d1123e648568e7db6162/); ethereum `0x371277...12761d`; ethereum `0x39d167...9f9058`; ethereum `0x4df2ea...16e240`; ethereum `0x5beacf...ed3c6e`; ethereum `0x6218d3...3c3c53`; ethereum `0x63c017...235a40` | ⚠️ Unaudited |
| ArbiFed | unknown | ethereum | 6 deployments: ethereum [`0x0b5ec9...9843cb`](./contracts/ethereum-1/0x0b5ec95257afd9534c953428ac833d19579843cb/); ethereum `0x4e1637...271b9d`; ethereum `0x5e280f...45732d`; ethereum `0x7163d6...293a8b`; ethereum `0xac6bd9...08c6fa`; ethereum `0xd84e1b...ca45ab` | ⚠️ Unaudited |
| ArbiGovMessengerL1 | unknown | ethereum | 9 deployments: ethereum [`0x13e1a0...0eadeb`](./contracts/ethereum-1/0x13e1a06a59702ee788bde1fb60af495ff30eadeb/); ethereum `0x18fd72...07070a`; ethereum `0x26c2e4...683a64`; ethereum `0x512855...dd89ea`; ethereum `0x840402...84a018`; ethereum `0xaed75b...543056`; ethereum `0xb51c74...828cb8`; ethereum `0xcb908c...dc0aca`; ethereum `0xd7d1eb...b27595` | ⚠️ Unaudited |
| Auction | unknown | ethereum | 2 deployments: ethereum [`0x7cac7f...89d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/); ethereum `0x933cbe...a073e3` | ⚠️ Unaudited |
| BorrowControllerMigrationHelper | operational_periphery | ethereum | [`0x829a0a...64456d`](./contracts/ethereum-1/0x829a0afa7a977428bfcc50f4a4ae0b156e64456d/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | optimism | 4 deployments: optimism [`0x840402...84a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/); base `0xd84e1b...ca45ab`; arbitrum `0xbbc28d...78460e`; berachain `0x8bbd03...ce2773` | ⚠️ Unaudited |
| BurnTokenPoolFactory | registry | optimism | 3 deployments: optimism [`0x63fad9...aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/); base `0x912fa8...366f69`; arbitrum `0x912fa8...366f69` | ⚠️ Unaudited |
| CEther | unknown | ethereum | [`0x697b4a...fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | ⚠️ Unaudited |
| ClampFeed | unknown | ethereum | 3 deployments: ethereum [`0x8cf870...6d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/); ethereum `0x91b79a...9971b8`; ethereum `0xbac0c2...5d11a1` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 3 deployments: ethereum [`0x2c0edf...1d76a2`](./contracts/ethereum-1/0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2/); ethereum `0x4dcf74...667339`; ethereum `0x731b65...3cda4c` | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xe34757...db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | ⚠️ Unaudited |
| ConvertibleFactory | registry | ethereum | 2 deployments: ethereum [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/); ethereum `0x671f13...ab1424` | ⚠️ Unaudited |
| CTokenStrat | token | ethereum | 3 deployments: ethereum [`0x42b5d4...8bdbe5`](./contracts/ethereum-1/0x42b5d4a11c8fe76d114759f7f3d8e94ea28bdbe5/); ethereum `0x42be0f...de9d6c`; ethereum `0xdc91f1...2ca796` | ⚠️ Unaudited |
| CYFI | unknown | ethereum | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | ⚠️ Unaudited |
| DAIEscrow | operational_periphery | ethereum | [`0xccabad...e91ebb`](./contracts/ethereum-1/0xccabad4923c14e48c9c27e6c4556c1caf4e91ebb/) | ⚠️ Unaudited |
| DbrHelper | periphery | ethereum | 3 deployments: ethereum [`0x3363ad...9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/); ethereum `0x5caede...06d717`; ethereum `0xec51e6...38364b` | ⚠️ Unaudited |
| DolaBorrowingRights | core_logic | ethereum | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | ⚠️ Unaudited |
| DolaFeed | unknown | ethereum | [`0xf45c5e...055a18`](./contracts/ethereum-1/0xf45c5ef54e1401569325e047f2fea7190e055a18/) | ⚠️ Unaudited |
| DolaFixedPriceFeed | operational_periphery | ethereum | [`0x5cb542...71c75d`](./contracts/ethereum-1/0x5cb542eb054f81b8fa1760c077f44aa80271c75d/) | ⚠️ Unaudited |
| DolaPayroll | unknown | ethereum | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | ⚠️ Unaudited |
| DolaPriceFeed | operational_periphery | ethereum | [`0x957a6f...2e67bc`](./contracts/ethereum-1/0x957a6f1ca411d530f03dbfada93fcfa9ca2e67bc/) | ⚠️ Unaudited |
| ERC20Mintable | token | berachain | 15 deployments: optimism `0x1992af...1a7702`; optimism `0x4c7b26...2236cf`; optimism `0x5d5392...b3e364`; optimism `0x912fa8...366f69`; optimism `0xfc63c9...0cbd4e`; base `0x80819e...bf91f0`; base `0x8bbd03...ce2773`; base `0x9060a6...d344cb`; base `0xca78ee...2bf005`; base `0xede7aa...e8dcdb`; arbitrum `0x4c7b26...2236cf`; arbitrum `0x788c3e...5f8c7a`; arbitrum `0x7a1e12...480898`; arbitrum `0xcbb162...d60b2e`; berachain [`0x02eaa6...cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ⚠️ Unaudited |
| ERC4626Feed | unknown | ethereum | 5 deployments: ethereum [`0x42bc55...27dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/); ethereum `0x522157...9f58af`; ethereum `0x94eba5...c8715f`; ethereum `0xd398e8...7048c4`; ethereum `0xf0a2d1...62095e` | ⚠️ Unaudited |
| ERC4626Helper | periphery | ethereum | 3 deployments: ethereum [`0x99e386...406780`](./contracts/ethereum-1/0x99e38696ada09433afa79123595701a80a406780/); ethereum `0xf2f9b6...c73ab8`; ethereum `0xfbd906...494abd` | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | ethereum | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | arbitrum | 9 deployments: ethereum `0xd5a341...d57a61`; ethereum `0xd6376e...704089`; optimism `0xca78ee...2bf005`; optimism `0xede7aa...e8dcdb`; base `0x788c3e...5f8c7a`; base `0x7a1e12...480898`; arbitrum [`0x402f38...d4f8bb`](./contracts/arbitrum-42161/0x402f38457800c32c67c5983381a685a4a1d4f8bb/); arbitrum `0x936851...bfb31b`; berachain `0xde1697...79daf0` | ⚠️ Unaudited |
| Factory | registry | ethereum | 3 deployments: ethereum [`0x6262fa...2dd87e`](./contracts/ethereum-1/0x6262faa56151ff3412a211c6a777c7b8da2dd87e/); ethereum `0x683280...1c39e2`; ethereum `0x9d556a...5419b1` | ⚠️ Unaudited |
| FeedSwitch | unknown | ethereum | 7 deployments: ethereum [`0x3e20de...322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/); ethereum `0x6e9122...30e74f`; ethereum `0x8f5d8a...d4ca10`; ethereum `0xc950f9...c55408`; ethereum `0xdd6c51...98a760`; ethereum `0xddb565...4d7ee4`; ethereum `0xfb13a1...6d6435` | ⚠️ Unaudited |
| FeedSwitchV2 | unknown | ethereum | [`0x3326a1...72624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | ⚠️ Unaudited |
| FixedPriceFeed | operational_periphery | ethereum | [`0x803a71...66e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | ⚠️ Unaudited |
| FixedRateIRM | unknown | ethereum | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | ⚠️ Unaudited |
| FoundationFunder | unknown | ethereum | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | ⚠️ Unaudited |
| GovernanceProxy | unknown | arbitrum | 10 deployments: optimism `0x43d394...ae1e86`; optimism `0xaf9568...ad5289`; optimism `0xcbb162...d60b2e`; base `0x1c0642...7f82d1`; base `0x5d5392...b3e364`; base `0xc415ff...4ec27c`; arbitrum [`0x1230bd...ccd6b3`](./contracts/arbitrum-42161/0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3/); arbitrum `0x607bcd...a24d94`; arbitrum `0xc761eb...7f2a16`; berachain `0x1992af...1a7702` | ⚠️ Unaudited |
| GovernanceSender | unknown | ethereum | 3 deployments: ethereum [`0x4e521f...d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/); ethereum `0x8a0cec...00338d`; ethereum `0xaea8ae...b524fa` | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | 2 deployments: ethereum [`0x260ac7...4534b1`](./contracts/ethereum-1/0x260ac708a95b10715d8bcd2f335196fd354534b1/); ethereum `0x35d9f4...eedfff` | ⚠️ Unaudited |
| GovernorMills | governance | ethereum | 2 deployments: ethereum [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/); ethereum `0xef3bd8...52e2fd` | ⚠️ Unaudited |
| Guardian | governance | ethereum | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | ⚠️ Unaudited |
| Helper | periphery | ethereum | 9 deployments: ethereum [`0x053963...a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/); ethereum `0x088d35...776536`; ethereum `0x23de4f...a588c5`; ethereum `0x658890...a1c266`; ethereum `0x922933...2e6bf6`; ethereum `0x93c061...f5459b`; ethereum `0xc7d5e6...232adb`; ethereum `0xd9ef7b...9fc677`; ethereum `0xe0db3f...e3d3cf` | ⚠️ Unaudited |
| INV | unknown | ethereum | 2 deployments: ethereum [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/); ethereum `0x8805c8...82a9cb` | ⚠️ Unaudited |
| InvFeed | unknown | ethereum | 2 deployments: ethereum [`0x210ac5...90258f`](./contracts/ethereum-1/0x210ac53b27f16e20a9aa7d16260f84693390258f/); ethereum `0x7d6e99...6623ad` | ⚠️ Unaudited |
| InvPriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x7cd140...970589`](./contracts/ethereum-1/0x7cd14096cd6f81e31e945afb7de41a5d7d970589/); ethereum `0xc54ca0...53e78e` | ⚠️ Unaudited |
| JrDolaDOLAFeed | unknown | ethereum | 2 deployments: ethereum [`0x315291...9779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/); ethereum `0x41939f...d6250b` | ⚠️ Unaudited |
| JrDolaUSDFeed | unknown | ethereum | 2 deployments: ethereum [`0x531899...113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/); ethereum `0x9a4c95...b593aa` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x161fd1...43bb9a`](./contracts/ethereum-1/0x161fd17c7cb8f4b34c87799fba1f26ce4543bb9a/); ethereum `0x8f0439...02d93f` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | operational_periphery | ethereum | [`0xd14439...e4f809`](./contracts/ethereum-1/0xd14439b3a7245d8ea92e37b77347014ea7e4f809/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | 4 deployments: ethereum [`0x533618...bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/); ethereum `0x941a22...5e7fb7`; ethereum `0x9fb6d6...478238`; ethereum `0xedb597...d7f6c8` | ⚠️ Unaudited |
| LockedTokenPoolFactory | registry | ethereum | 3 deployments: ethereum [`0xa251e6...481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/); ethereum `0xd9f926...7a3974`; arbitrum `0xede7aa...e8dcdb` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | [`0x05eee7...2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | ⚠️ Unaudited |
| LpFeed | unknown | ethereum | 2 deployments: ethereum [`0x56775f...aa41ff`](./contracts/ethereum-1/0x56775f083ac3015b8c869d9e089da251dcaa41ff/); ethereum `0xbb6afa...a21cd3` | ⚠️ Unaudited |
| MainnetDolaFlashMinter | unknown | ethereum | [`0x6c5fdc...de8f1f`](./contracts/ethereum-1/0x6c5fdc0c53b122ae0f15a863c349f3a481de8f1f/) | ⚠️ Unaudited |
| MarketFactory | registry | ethereum | [`0x0c8fd2...bd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xe81028...bc6b00`](./contracts/ethereum-1/0xe810281d189f19572b5250556369c39f5ebc6b00/) | ⚠️ Unaudited |
| MerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x1992af...1a7702`](./contracts/ethereum-1/0x1992af61fbf8ee38741bcc57d636caa22a1a7702/); ethereum `0x4c7b26...2236cf` | ⚠️ Unaudited |
| Migration | operational_periphery | ethereum | [`0x043646...269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | ⚠️ Unaudited |
| MultiDelegator | unknown | ethereum | 2 deployments: ethereum [`0x1ba87b...207f76`](./contracts/ethereum-1/0x1ba87be4c20fa2d4cbd8e4ae9998649226207f76/); ethereum `0xdb09ca...a72e27` | ⚠️ Unaudited |
| NavBeforeMaturityFeed | unknown | ethereum | [`0x9ce70f...d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | ⚠️ Unaudited |
| NormalizedPriceFeed | operational_periphery | ethereum | [`0x4a618c...46e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | ⚠️ Unaudited |
| OptiFedCCTP | unknown | ethereum | [`0x52ffd3...4ea88f`](./contracts/ethereum-1/0x52ffd313cc11882b75879c41d837b20f974ea88f/) | ⚠️ Unaudited |
| OTC | unknown | ethereum | 3 deployments: ethereum [`0x35fdfa...334c0e`](./contracts/ethereum-1/0x35fdfab459043a335cbbdf8fa28b31a147334c0e/); ethereum `0x554473...2f0bbb`; ethereum `0x66048f...fba9ce` | ⚠️ Unaudited |
| Payroll | unknown | ethereum | 2 deployments: ethereum [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/); ethereum `0xabfbf3...372f2f` | ⚠️ Unaudited |
| PessimisticFeed | unknown | ethereum | 4 deployments: ethereum [`0x271f0c...5482c5`](./contracts/ethereum-1/0x271f0cfbe0527d863ab130fa801a1e16ad5482c5/); ethereum `0x4e7a94...6111e5`; ethereum `0x791480...2d8589`; ethereum `0xb437aa...c34a02` | ⚠️ Unaudited |
| PriceFeedNoStale | operational_periphery | ethereum | 2 deployments: ethereum [`0xe928f7...de2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/); ethereum `0xea1dc9...2cd61f` | ⚠️ Unaudited |
| ProgrammableDataTokenTransfers | token | base | 11 deployments: ethereum `0x70f379...07c066`; ethereum `0x7a43c1...6d29a2`; optimism `0x474e3e...10fa42`; optimism `0xb5a998...82dfdd`; optimism `0xc53ea7...f28387`; base [`0x017380...d10f7c`](./contracts/base-8453/0x0173804066f7403e0815680f3dda125a6cd10f7c/); base `0xaff87c...d80ce6`; base `0xc6279a...df2740`; arbitrum [`0x017380...d10f7c`](./contracts/arbitrum-42161/0x0173804066f7403e0815680f3dda125a6cd10f7c/); arbitrum `0xaff87c...d80ce6`; arbitrum `0xc6279a...df2740` | ⚠️ Unaudited |
| PSM | unknown | ethereum | 2 deployments: ethereum [`0x1d02f2...f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/); ethereum `0x4dfd66...a19398` | ⚠️ Unaudited |
| PTUSDeFeedSwitchFactory | registry | ethereum | [`0xc1a266...ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | ⚠️ Unaudited |
| Purchaser | unknown | ethereum | 3 deployments: ethereum [`0x58dcb4...af4647`](./contracts/ethereum-1/0x58dcb47956de1e99b1af0ceb643727ef66af4647/); ethereum `0x931636...d1fab8`; ethereum `0xf6c2b9...33be04` | ⚠️ Unaudited |
| ReceiptTokenHelper | token | ethereum | [`0x5554ea...c087b2`](./contracts/ethereum-1/0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2/) | ⚠️ Unaudited |
| RepayRewardEscrow | operational_periphery | ethereum | [`0x21f904...ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | ⚠️ Unaudited |
| SaleHandler | unknown | ethereum | 2 deployments: ethereum [`0x4f4a31...25932e`](./contracts/ethereum-1/0x4f4a31c1c11bdd438cf0c7668d6afa2b5825932e/); ethereum `0xb4497a...66b27f` | ⚠️ Unaudited |
| SDolaFeed | unknown | ethereum | 2 deployments: ethereum [`0x250717...665c76`](./contracts/ethereum-1/0x25071798fd920c17be3b4cb599bfc5613e665c76/); ethereum `0x8198a3...36cead` | ⚠️ Unaudited |
| sINV | unknown | ethereum | 2 deployments: ethereum [`0x08d234...e2e994`](./contracts/ethereum-1/0x08d23468a467d2bb86fae0e32f247a26c7e2e994/); ethereum `0x857b87...d1a625` | ⚠️ Unaudited |
| sInvHelper | periphery | ethereum | 2 deployments: ethereum [`0x43a766...cfa7bc`](./contracts/ethereum-1/0x43a766db039617fdfadddc1863cae2f690cfa7bc/); ethereum `0x7817e0...e7bd05` | ⚠️ Unaudited |
| Stabilizer | unknown | ethereum | [`0x7ec0d9...795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 3 deployments: ethereum [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/); ethereum `0x5c1245...11fe89`; ethereum `0xa88948...eed197` | ⚠️ Unaudited |
| StakingRewardsFactory | registry | ethereum | [`0x96ad30...a80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | ⚠️ Unaudited |
| StethFeed | unknown | ethereum | 3 deployments: ethereum [`0x1b0867...156deb`](./contracts/ethereum-1/0x1b086779e47509bdc9f49f1ed31eefb1ef156deb/); ethereum `0x591a75...976f5b`; ethereum `0xd21cba...65428c` | ⚠️ Unaudited |
| StyCRVPriceFeed | operational_periphery | ethereum | [`0xfc63c9...0cbd4e`](./contracts/ethereum-1/0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e/) | ⚠️ Unaudited |
| StYEthPriceFeed | operational_periphery | ethereum | [`0xbbe5fa...99e166`](./contracts/ethereum-1/0xbbe5fabbb55c2c79ae1efe6b5bd52048a199e166/) | ⚠️ Unaudited |
| SuperChainCCTPFed | unknown | ethereum | 4 deployments: ethereum [`0x2ee3b4...e9bbb4`](./contracts/ethereum-1/0x2ee3b4d646437c37b59db62c3f68a53518e9bbb4/); ethereum `0x4f3899...94504f`; ethereum `0x9d9eb5...650474`; ethereum `0xb0a334...df897d` | ⚠️ Unaudited |
| SwitchFeed | unknown | ethereum | [`0xeca2f3...911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x926df1...659d5b`](./contracts/ethereum-1/0x926df14a23be491164dcf93f4c468a50ef659d5b/) | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | [`0xbb6ef0...2e500f`](./contracts/ethereum-1/0xbb6ef0b93792e4e98c6e6062eb1a9638d82e500f/) | ⚠️ Unaudited |
| USDeBeforeMaturityFeed | unknown | ethereum | [`0x6277cb...167400`](./contracts/ethereum-1/0x6277cb27232f35c75d3d908b26f3670e7d167400/) | ⚠️ Unaudited |
| USDeNavBeforeMaturityFeed | unknown | ethereum | 4 deployments: ethereum [`0x1dca77...a20e44`](./contracts/ethereum-1/0x1dca77b3efd52f55e634f2e44dbe6a5351a20e44/); ethereum `0x295b84...4b127c`; ethereum `0x46a880...57f8d5`; ethereum `0xc08146...ad20f7` | ⚠️ Unaudited |
| VaultEscrow | operational_periphery | ethereum | 3 deployments: ethereum [`0x1dfe66...abd774`](./contracts/ethereum-1/0x1dfe66a6265d071e433675e97a53ed4932abd774/); ethereum `0x76c207...901a82`; ethereum `0x885db7...4d3e41` | ⚠️ Unaudited |
| VaultExchangeRateProvider | core_logic | ethereum | 7 deployments: ethereum [`0x06d42c...8964e9`](./contracts/ethereum-1/0x06d42c7755c02e94be35633f128ff510338964e9/); ethereum `0x0ce2b4...025831`; ethereum `0x0e0bee...7c71ce`; ethereum `0x87aab0...c479b0`; ethereum `0x906300...1c707f`; ethereum `0xd9f6a0...2d33dc`; ethereum `0xf840a1...fec1e7` | ⚠️ Unaudited |
| VaultFed | core_logic | ethereum | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | ⚠️ Unaudited |
| VaultHelper | core_logic | ethereum | [`0xe0bd59...6a0957`](./contracts/ethereum-1/0xe0bd59551661ff55fbb581fdf3abc8a5826a0957/) | ⚠️ Unaudited |
| WbtcPriceFeed | operational_periphery | ethereum | [`0x857e5a...ce10a0`](./contracts/ethereum-1/0x857e5abdecead6bcc1ac21e69b4e98ff42ce10a0/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x0f0c30...8d1fa9`](./contracts/ethereum-1/0x0f0c30f294dc0ca8c315683fc036179e1d8d1fa9/); ethereum `0x15d321...cf7638` | ⚠️ Unaudited |
| WstETHPriceFeed | operational_periphery | ethereum | [`0x894b89...aa7b61`](./contracts/ethereum-1/0x894b896cdc772656cbb1ee28e6bd4a704caa7b61/) | ⚠️ Unaudited |
| XINV | unknown | ethereum | 2 deployments: ethereum [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/); ethereum `0x65b35d...3476fe` | ⚠️ Unaudited |
| XinvManager | governance | ethereum | [`0x07eb8f...74909d`](./contracts/ethereum-1/0x07eb8fd853c847d6e25f29e566d605cff474909d/) | ⚠️ Unaudited |
| XinvVesterFactory | operational_periphery | ethereum | [`0xe1c670...053a19`](./contracts/ethereum-1/0xe1c67007d1074bcacc577dd946661f0cb9053a19/) | ⚠️ Unaudited |
| YVYCRVHelper | periphery | ethereum | 4 deployments: ethereum [`0xa93dac...003c4c`](./contracts/ethereum-1/0xa93dac9b38ab4a23f1fa934eabc7f9639a003c4c/); ethereum `0xb4f02c...54f8a8`; ethereum `0xe61d1c...68e401`; ethereum `0xfd639a...697ee0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x041c3a...89f38a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2bec2f...3efcfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b0906...0918f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x780568...48c9f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a01fe...0aabcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac37e6...4de5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6479a...e2a259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xded891...875875` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---:|---|
| [Junior Tranches contest, by Sherlock, Nov 14th, 2025](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 21 | high |
| [Junior Tranches audit, by Sherlock, Oct 16th, 2025](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 21 | high |
| [sDOLA, by yAudit, Jan 23th, 2024](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [Firm, by Nomoi, May 11th, 2023](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | 69 | medium |
| [Firm, by Code4rena, December 20th, 2022](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | 68 | high |
| [By Sherlock, live since March 30th, 2026](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [The RWG onboarded boutique auditing firm [DefiMoon](https://www.inverse.finance/blog/posts/en-US/new-security-layer-a-welcome-to-the-defi-moon-team) during Q3 and Q4 2022 as security partners, with the intent of having their team complement internal QA and testing and bolster our security infrastructure. After a period of research and introductions into several qualified auditing firms, DeFi Moon stood out as a talented and genuine team eager to take on the challenge. During this time they performed an informal audit of FiRM contracts prior to the Code4Rena bug bounty contest. Pre-launch audit can be found [here.]() DefiMoon also provided security consulting and auditing for the [Convex Fed](https://www.inverse.finance/governance/proposals/mills/66), [Aura Fed](https://www.inverse.finance/governance/proposals/mills/71), and [Velo Fed](https://www.inverse.finance/governance/proposals/mills/68) contracts. Their expertise helped us identify and address potential risks and improve the safety and security of these deployments. We’re grateful for their support.](https://github.com/Defimoonorg/Audit-Report/blob/main/InverseFinance.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [An audit of the bad debt repayment products and a new INV oracle solution was performed by Peckshield in Q2 2022. Their report can be found [here]().](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | EthVault | core_logic | $8,957.29 | Verified native implementation with $8,957.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/) | Vault | core_logic | $5,033.99 | Verified native implementation with $5,033.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57faa0...b32052`](./contracts/ethereum-1/0x57faa0dec960ed774674a45d61ecfe738eb32052/) | YTokenStrat | token | $4.49 | Verified native implementation with $4.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5233f4...06debc`](./contracts/ethereum-1/0x5233f4c2515ae21b540c438862abb5603506debc/) | ALE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fd08d...db6162`](./contracts/ethereum-1/0x2fd08d680ea96cf7cb77d1123e648568e7db6162/) | ALEV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5ec9...9843cb`](./contracts/ethereum-1/0x0b5ec95257afd9534c953428ac833d19579843cb/) | ArbiFed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e1a0...0eadeb`](./contracts/ethereum-1/0x13e1a06a59702ee788bde1fb60af495ff30eadeb/) | ArbiGovMessengerL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cac7f...89d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x829a0a...64456d`](./contracts/ethereum-1/0x829a0afa7a977428bfcc50f4a4ae0b156e64456d/) | BorrowControllerMigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x840402...84a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63fad9...aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/) | BurnTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x697b4a...fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf870...6d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/) | ClampFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0edf...1d76a2`](./contracts/ethereum-1/0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe34757...db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ConvertibleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b5d4...8bdbe5`](./contracts/ethereum-1/0x42b5d4a11c8fe76d114759f7f3d8e94ea28bdbe5/) | CTokenStrat | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | CYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccabad...e91ebb`](./contracts/ethereum-1/0xccabad4923c14e48c9c27e6c4556c1caf4e91ebb/) | DAIEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3363ad...9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/) | DbrHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf45c5e...055a18`](./contracts/ethereum-1/0xf45c5ef54e1401569325e047f2fea7190e055a18/) | DolaFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cb542...71c75d`](./contracts/ethereum-1/0x5cb542eb054f81b8fa1760c077f44aa80271c75d/) | DolaFixedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | DolaPayroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x957a6f...2e67bc`](./contracts/ethereum-1/0x957a6f1ca411d530f03dbfada93fcfa9ca2e67bc/) | DolaPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02eaa6...cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bc55...27dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/) | ERC4626Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99e386...406780`](./contracts/ethereum-1/0x99e38696ada09433afa79123595701a80a406780/) | ERC4626Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | EthRepayAllHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6262fa...2dd87e`](./contracts/ethereum-1/0x6262faa56151ff3412a211c6a777c7b8da2dd87e/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e20de...322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/) | FeedSwitch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3326a1...72624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | FeedSwitchV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x803a71...66e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | FixedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | FixedRateIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | FoundationFunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1230bd...ccd6b3`](./contracts/arbitrum-42161/0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3/) | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e521f...d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/) | GovernanceSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260ac7...4534b1`](./contracts/ethereum-1/0x260ac708a95b10715d8bcd2f335196fd354534b1/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x053963...a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/) | Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210ac5...90258f`](./contracts/ethereum-1/0x210ac53b27f16e20a9aa7d16260f84693390258f/) | InvFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cd140...970589`](./contracts/ethereum-1/0x7cd14096cd6f81e31e945afb7de41a5d7d970589/) | InvPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x315291...9779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/) | JrDolaDOLAFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x531899...113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/) | JrDolaUSDFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533618...bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa251e6...481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/) | LockedTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05eee7...2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | LockReleaseTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56775f...aa41ff`](./contracts/ethereum-1/0x56775f083ac3015b8c869d9e089da251dcaa41ff/) | LpFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5fdc...de8f1f`](./contracts/ethereum-1/0x6c5fdc0c53b122ae0f15a863c349f3a481de8f1f/) | MainnetDolaFlashMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8fd2...bd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe81028...bc6b00`](./contracts/ethereum-1/0xe810281d189f19572b5250556369c39f5ebc6b00/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1992af...1a7702`](./contracts/ethereum-1/0x1992af61fbf8ee38741bcc57d636caa22a1a7702/) | MerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x043646...269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba87b...207f76`](./contracts/ethereum-1/0x1ba87be4c20fa2d4cbd8e4ae9998649226207f76/) | MultiDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce70f...d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | NavBeforeMaturityFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a618c...46e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | NormalizedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52ffd3...4ea88f`](./contracts/ethereum-1/0x52ffd313cc11882b75879c41d837b20f974ea88f/) | OptiFedCCTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fdfa...334c0e`](./contracts/ethereum-1/0x35fdfab459043a335cbbdf8fa28b31a147334c0e/) | OTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x271f0c...5482c5`](./contracts/ethereum-1/0x271f0cfbe0527d863ab130fa801a1e16ad5482c5/) | PessimisticFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe928f7...de2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/) | PriceFeedNoStale | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d02f2...f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1a266...ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | PTUSDeFeedSwitchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58dcb4...af4647`](./contracts/ethereum-1/0x58dcb47956de1e99b1af0ceb643727ef66af4647/) | Purchaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5554ea...c087b2`](./contracts/ethereum-1/0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2/) | ReceiptTokenHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f904...ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | RepayRewardEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f4a31...25932e`](./contracts/ethereum-1/0x4f4a31c1c11bdd438cf0c7668d6afa2b5825932e/) | SaleHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x250717...665c76`](./contracts/ethereum-1/0x25071798fd920c17be3b4cb599bfc5613e665c76/) | SDolaFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43a766...cfa7bc`](./contracts/ethereum-1/0x43a766db039617fdfadddc1863cae2f690cfa7bc/) | sInvHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec0d9...795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | Stabilizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96ad30...a80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc63c9...0cbd4e`](./contracts/ethereum-1/0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e/) | StyCRVPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbe5fa...99e166`](./contracts/ethereum-1/0xbbe5fabbb55c2c79ae1efe6b5bd52048a199e166/) | StYEthPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ee3b4...e9bbb4`](./contracts/ethereum-1/0x2ee3b4d646437c37b59db62c3f68a53518e9bbb4/) | SuperChainCCTPFed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca2f3...911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | SwitchFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x926df1...659d5b`](./contracts/ethereum-1/0x926df14a23be491164dcf93f4c468a50ef659d5b/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb6ef0...2e500f`](./contracts/ethereum-1/0xbb6ef0b93792e4e98c6e6062eb1a9638d82e500f/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6277cb...167400`](./contracts/ethereum-1/0x6277cb27232f35c75d3d908b26f3670e7d167400/) | USDeBeforeMaturityFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dca77...a20e44`](./contracts/ethereum-1/0x1dca77b3efd52f55e634f2e44dbe6a5351a20e44/) | USDeNavBeforeMaturityFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dfe66...abd774`](./contracts/ethereum-1/0x1dfe66a6265d071e433675e97a53ed4932abd774/) | VaultEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d42c...8964e9`](./contracts/ethereum-1/0x06d42c7755c02e94be35633f128ff510338964e9/) | VaultExchangeRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | VaultFed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0bd59...6a0957`](./contracts/ethereum-1/0xe0bd59551661ff55fbb581fdf3abc8a5826a0957/) | VaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857e5a...ce10a0`](./contracts/ethereum-1/0x857e5abdecead6bcc1ac21e69b4e98ff42ce10a0/) | WbtcPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x894b89...aa7b61`](./contracts/ethereum-1/0x894b896cdc772656cbb1ee28e6bd4a704caa7b61/) | WstETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | XINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07eb8f...74909d`](./contracts/ethereum-1/0x07eb8fd853c847d6e25f29e566d605cff474909d/) | XinvManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1c670...053a19`](./contracts/ethereum-1/0xe1c67007d1074bcacc577dd946661f0cb9053a19/) | XinvVesterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa93dac...003c4c`](./contracts/ethereum-1/0xa93dac9b38ab4a23f1fa934eabc7f9639a003c4c/) | YVYCRVHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 112 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=188

Zero-match audit list:

- [1763] By Sherlock, live since March 30th, 2026
- [1764] The RWG onboarded boutique auditing firm [DefiMoon](https://www.inverse.finance/blog/posts/en-US/new-security-layer-a-welcome-to-the-defi-moon-team) during Q3 and Q4 2022 as security partners, with the intent of having their team complement internal QA and testing and bolster our security infrastructure. After a period of research and introductions into several qualified auditing firms, DeFi Moon stood out as a talented and genuine team eager to take on the challenge. During this time they performed an informal audit of FiRM contracts prior to the Code4Rena bug bounty contest. Pre-launch audit can be found [here.]() DefiMoon also provided security consulting and auditing for the [Convex Fed](https://www.inverse.finance/governance/proposals/mills/66), [Aura Fed](https://www.inverse.finance/governance/proposals/mills/71), and [Velo Fed](https://www.inverse.finance/governance/proposals/mills/68) contracts. Their expertise helped us identify and address potential risks and improve the safety and security of these deployments. We’re grateful for their support.
- [1765] An audit of the bad debt repayment products and a new INV oracle solution was performed by Peckshield in Q2 2022. Their report can be found [here]().

Fork inheritance lineage and inherited audits are included when available.
