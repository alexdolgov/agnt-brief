# Agentic Audit Brief: Inverse Finance

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: active (Tier 0, 80.2% below peak)
- Generated: 2026-06-17T07:00:47.192Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 62 unique implementations (186 raw deployments)
- DeFi Llama TVL: $34,421,385.00
- On-chain TVL (included contracts): $286,865,212.84
- TVL by chain: Ethereum $286,865,212.84

## Project Description

Inverse Finance is a decentralized fixed-rate lending protocol centered on DOLA. Its FiRM markets enable fixed-rate DOLA borrowing against supported collateral using DBR, while sDOLA is the protocol's yield-bearing DOLA product. The protocol also includes governance and risk-management mechanisms for supported markets and parameters.

### Architecture

The Inverse Finance family provides the core lending infrastructure where Markets use Oracles and BorrowController to manage DOLA minting, while DolaBorrowingRights and Fed regulate debt and supply. The FiRM family's XINV token wraps INV from the Key Contract Addresses family, and governance contracts like GovernorMills and Timelock control parameters across both families.

## Contract Surface Quality

- Indexed contracts: 451; live-surface contracts included: 186 (162 live, 24 unknown).
- Excluded by liveness: 263 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: compound-v2
- Unverified dependencies: 11/207.

## Audit Coverage Summary

- Verified implementations audited: 8/62 (12.9%)
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 62
- Raw deployments: 186
- Audits discovered: 7
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $286,865,212.84
- Latest audit: 2025-11 (fresh)
- Staleness: 2 fresh, 0 aging, 4 stale, 1 unknown
- Tier 1 coverage: 8.1% (Code4rena, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 4 | 6.5% | 2025-11 |
| yAudit | Tier 2 | 3 | 4.8% | 2024-01 |
| Code4rena | Tier 1 | 1 | 1.6% | 2022-10 |
| Nomoi | Tier 2 | 1 | 1.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DolaSavings | unknown | ethereum | n/a | [`0xe5f247...d9b8b4`](./contracts/ethereum-1/0xe5f24791e273cb96a1f8e5b67bc2397f0ad9b8b4/) | ✅ Audited |
| FiRMSlashingModule | unknown | ethereum | n/a | 8 deployments: ethereum [`0x6d27dd...5a346c`](./contracts/ethereum-1/0x6d27dd57a7dbf5b27a3fcabd75c916ac765a346c/); ethereum `0x984001...658603`; ethereum `0x9c0e16...295423`; ethereum `0xa56ed0...efaa4e`; ethereum `0xc61059...16b8c1`; ethereum `0xc7aec4...b74fad`; ethereum `0xefb3c6...4a3914`; ethereum `0xefb4c3...037f31` | ✅ Audited |
| JDola | unknown | ethereum | n/a | 7 deployments: ethereum [`0x1ce3f5...90fbb8`](./contracts/ethereum-1/0x1ce3f5d0c5f84a203167261f11c2e12c3d90fbb8/); ethereum `0x5bacaf...224f54`; ethereum `0x5cebb0...fd91b8`; ethereum `0x633821...09a452`; ethereum `0x6607ef...ddb933`; ethereum `0xd178f7...c72f81`; ethereum `0xf4307a...d1ccfd` | ✅ Audited |
| LinearInterpolationDelayModel | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b1e44...2a4fbf`](./contracts/ethereum-1/0x3b1e443ab423c9a7b1b2ea7b3cb7c0be012a4fbf/); ethereum `0x6aa105...04ea5a`; ethereum `0xb1b62e...c67fca` | ✅ Audited |
| Market | unknown | ethereum | n/a | 30 deployments: ethereum [`0x0c0bb8...2bd168`](./contracts/ethereum-1/0x0c0bb843fabda441edefb93331cfff8ec92bd168/); ethereum `0x27b6c3...c3f9c4`; ethereum `0x286844...573537`; ethereum `0x2a2563...ac77ff`; ethereum `0x2fed50...eb2fc9`; ethereum `0x3474ad...b9397a`; ethereum `0x3ac5ce...3dfd5e`; ethereum `0x3fd3da...7550bc`; ethereum `0x48ba57...264e7c`; ethereum `0x4a33ba...57808b`; ethereum `0x4e2646...c2db1a`; ethereum `0x4f5ea7...43c08e`; ethereum `0x5bb8f6...541cf2`; ethereum `0x607370...71dcc5`; ethereum `0x63d27f...2737e8`; ethereum `0x63df5e...d37035`; ethereum `0x63fad9...aa1ee8`; ethereum `0x6a522f...6c631e`; ethereum `0x79ef6d...52aec4`; ethereum `0x7cd3ab...e66b37`; ethereum `0xb427fc...c14a99`; ethereum `0xb51624...22330b`; ethereum `0xb686f1...09c867`; ethereum `0xb8bc1e...4dd565`; ethereum `0xb907dc...2d8f9a`; ethereum `0xc0086f...0c8ccf`; ethereum `0xd68d3a...7c4b29`; ethereum `0xdc2265...7ddf6b`; ethereum `0xe4d47e...cb12e4`; ethereum `0xf85ed6...222db2` | ✅ Audited |
| sDola | unknown | ethereum | n/a | [`0xb45ad1...157305`](./contracts/ethereum-1/0xb45ad160634c528cc3d2926d9807104fa3157305/) | ✅ Audited |
| sDolaHelper | periphery | ethereum | n/a | [`0x3b3e45...5fca61`](./contracts/ethereum-1/0x3b3e4541975b9d754e27a8d68f259089d35fca61/) | ✅ Audited |
| WithdrawalEscrow | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1f3068...f25f2c`](./contracts/ethereum-1/0x1f3068a1ac79d2cba4b692c5191ba1dbe2f25f2c/); ethereum `0x391236...6ab5f0`; ethereum `0x3924a6...51e9b0` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | ethereum | n/a | 6 deployments: ethereum [`0x0bc08f...a0f60b`](./contracts/ethereum-1/0x0bc08f2433965ea88d977d7bfded0917f3a0f60b/); ethereum `0x17786f...14f28b`; ethereum `0x7e18ab...cb3eca`; ethereum `0xa978d8...617880`; ethereum `0xd60b06...288326`; ethereum `0xd79bcf...7c42f7` | ⚠️ Unaudited |
| ERC20 | token | ethereum | n/a | [`0x865377...dc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | n/a | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/); ethereum `0xc8f2e9...beac34` | ⚠️ Unaudited |
| ALEV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39d167...9f9058`](./contracts/ethereum-1/0x39d167fe676efc3be49be874a37349a5d89f9058/); ethereum `0x4df2ea...16e240`; ethereum `0x63c017...235a40` | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7cac7f...89d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/); ethereum `0x933cbe...a073e3` | ⚠️ Unaudited |
| AuraFarmer | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x02eaa6...cf3b03`](./contracts/arbitrum-42161/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/); arbitrum `0x1992af...1a7702`; arbitrum `0x245793...9cbf2f`; arbitrum `0x80819e...bf91f0`; arbitrum `0x8bbd03...ce2773`; arbitrum `0x9060a6...d344cb`; arbitrum `0xde1697...79daf0`; arbitrum `0xe96e99...89f5f3`; arbitrum `0xfd0bf4...397905` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | optimism | n/a | 4 deployments: optimism [`0x840402...84a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/); base `0xd84e1b...ca45ab`; arbitrum `0xbbc28d...78460e`; berachain `0x8bbd03...ce2773` | ⚠️ Unaudited |
| BurnTokenPoolFactory | registry | optimism | n/a | 3 deployments: optimism [`0x63fad9...aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/); base `0x912fa8...366f69`; arbitrum `0x912fa8...366f69` | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x697b4a...fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | ⚠️ Unaudited |
| ClampFeed | unknown | ethereum | n/a | 3 deployments: ethereum [`0x8cf870...6d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/); ethereum `0x91b79a...9971b8`; ethereum `0xbac0c2...5d11a1` | ⚠️ Unaudited |
| Controller | governance | ethereum | n/a | [`0xe34757...db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | ⚠️ Unaudited |
| ConvertibleFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/); ethereum `0x671f13...ab1424` | ⚠️ Unaudited |
| CYFI | unknown | ethereum | n/a | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | ⚠️ Unaudited |
| DbrHelper | periphery | ethereum | n/a | 3 deployments: ethereum [`0x3363ad...9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/); ethereum `0x5caede...06d717`; ethereum `0xec51e6...38364b` | ⚠️ Unaudited |
| DolaBorrowingRights | core_logic | ethereum | n/a | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | ⚠️ Unaudited |
| DolaPayroll | unknown | ethereum | n/a | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | ⚠️ Unaudited |
| ERC20Mintable | token | berachain | n/a | 9 deployments: optimism `0x912fa8...366f69`; optimism `0xfc63c9...0cbd4e`; base `0xca78ee...2bf005`; base `0xede7aa...e8dcdb`; arbitrum `0x4c7b26...2236cf`; arbitrum `0x788c3e...5f8c7a`; arbitrum `0x7a1e12...480898`; arbitrum `0xcbb162...d60b2e`; berachain [`0x02eaa6...cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ⚠️ Unaudited |
| ERC4626Feed | unknown | ethereum | n/a | 4 deployments: ethereum [`0x42bc55...27dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/); ethereum `0x522157...9f58af`; ethereum `0x94eba5...c8715f`; ethereum `0xd398e8...7048c4` | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | ethereum | n/a | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | arbitrum | n/a | 9 deployments: ethereum `0xd5a341...d57a61`; ethereum `0xd6376e...704089`; optimism `0xca78ee...2bf005`; optimism `0xede7aa...e8dcdb`; base `0x788c3e...5f8c7a`; base `0x7a1e12...480898`; arbitrum [`0x402f38...d4f8bb`](./contracts/arbitrum-42161/0x402f38457800c32c67c5983381a685a4a1d4f8bb/); arbitrum `0x936851...bfb31b`; berachain `0xde1697...79daf0` | ⚠️ Unaudited |
| Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x683280...1c39e2`](./contracts/ethereum-1/0x6832802996e177660ede6095f184ec34d91c39e2/); ethereum `0x9d556a...5419b1` | ⚠️ Unaudited |
| FeedSwitch | unknown | ethereum | n/a | [`0x3e20de...322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/) | ⚠️ Unaudited |
| FeedSwitchV2 | unknown | ethereum | n/a | [`0x3326a1...72624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | ⚠️ Unaudited |
| FixedPriceFeed | operational_periphery | ethereum | n/a | [`0x803a71...66e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | ⚠️ Unaudited |
| FixedRateIRM | unknown | ethereum | n/a | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | ⚠️ Unaudited |
| FoundationFunder | unknown | ethereum | n/a | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | ⚠️ Unaudited |
| GovernanceProxy | unknown | arbitrum | n/a | 8 deployments: optimism `0x43d394...ae1e86`; optimism `0xaf9568...ad5289`; base `0x1c0642...7f82d1`; base `0xc415ff...4ec27c`; arbitrum [`0x1230bd...ccd6b3`](./contracts/arbitrum-42161/0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3/); arbitrum `0x607bcd...a24d94`; arbitrum `0xc761eb...7f2a16`; berachain `0x1992af...1a7702` | ⚠️ Unaudited |
| GovernanceSender | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e521f...d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/); ethereum `0x8a0cec...00338d` | ⚠️ Unaudited |
| GovernorMills | governance | ethereum | n/a | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | ⚠️ Unaudited |
| Helper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x053963...a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/); ethereum `0x088d35...776536`; ethereum `0x23de4f...a588c5`; ethereum `0x658890...a1c266`; ethereum `0x922933...2e6bf6`; ethereum `0x93c061...f5459b`; ethereum `0xc7d5e6...232adb`; ethereum `0xd9ef7b...9fc677`; ethereum `0xe0db3f...e3d3cf` | ⚠️ Unaudited |
| INV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/); ethereum `0x8805c8...82a9cb` | ⚠️ Unaudited |
| JrDolaDOLAFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x315291...9779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/); ethereum `0x41939f...d6250b` | ⚠️ Unaudited |
| JrDolaUSDFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x531899...113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/); ethereum `0x9a4c95...b593aa` | ⚠️ Unaudited |
| Lens | periphery | ethereum | n/a | 3 deployments: ethereum [`0x533618...bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/); ethereum `0x9fb6d6...478238`; ethereum `0xedb597...d7f6c8` | ⚠️ Unaudited |
| LockedTokenPoolFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0xa251e6...481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/); ethereum `0xd9f926...7a3974`; arbitrum `0xede7aa...e8dcdb` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | [`0x05eee7...2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | ⚠️ Unaudited |
| MarketFactory | registry | ethereum | n/a | [`0x0c8fd2...bd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/) | ⚠️ Unaudited |
| Migration | operational_periphery | ethereum | n/a | [`0x043646...269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | ⚠️ Unaudited |
| NavBeforeMaturityFeed | unknown | ethereum | n/a | [`0x9ce70f...d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | ⚠️ Unaudited |
| NormalizedPriceFeed | operational_periphery | ethereum | n/a | [`0x4a618c...46e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | ⚠️ Unaudited |
| Payroll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/); ethereum `0xabfbf3...372f2f` | ⚠️ Unaudited |
| PriceFeedNoStale | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xe928f7...de2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/); ethereum `0xea1dc9...2cd61f` | ⚠️ Unaudited |
| ProgrammableDataTokenTransfers | token | arbitrum | n/a | 3 deployments: arbitrum [`0x017380...d10f7c`](./contracts/arbitrum-42161/0x0173804066f7403e0815680f3dda125a6cd10f7c/); arbitrum `0xaff87c...d80ce6`; arbitrum `0xc6279a...df2740` | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d02f2...f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/); ethereum `0x4dfd66...a19398` | ⚠️ Unaudited |
| PTUSDeFeedSwitchFactory | registry | ethereum | n/a | [`0xc1a266...ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | ⚠️ Unaudited |
| RepayRewardEscrow | operational_periphery | ethereum | n/a | [`0x21f904...ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | ⚠️ Unaudited |
| sINV | unknown | ethereum | n/a | [`0x08d234...e2e994`](./contracts/ethereum-1/0x08d23468a467d2bb86fae0e32f247a26c7e2e994/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/); ethereum `0x5c1245...11fe89`; ethereum `0xa88948...eed197` | ⚠️ Unaudited |
| SwitchFeed | unknown | ethereum | n/a | [`0xeca2f3...911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | ⚠️ Unaudited |
| VaultExchangeRateProvider | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0ce2b4...025831`](./contracts/ethereum-1/0x0ce2b4fda533e101d7bd84dcd6455ab129025831/); ethereum `0x906300...1c707f` | ⚠️ Unaudited |
| VaultFed | core_logic | ethereum | n/a | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | ⚠️ Unaudited |
| XINV | unknown | ethereum | n/a | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Junior Tranches contest, by Sherlock, Nov 14th, 2025](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 21 | high |
| [Junior Tranches audit, by Sherlock, Oct 16th, 2025](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 21 | high |
| [sDOLA, by yAudit, Jan 23th, 2024](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | 3 | high |
| [Firm, by Nomoi, May 11th, 2023](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | 30 | medium |
| [Firm, by Code4rena, December 20th, 2022](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | 30 | high |
| [By Sherlock, live since March 30th, 2026](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [An audit of the bad debt repayment products and a new INV oracle solution was performed by Peckshield in Q2 2022. Their report can be found [here]().](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | EthVault | core_logic | $6,550.23 | Verified native implementation with $6,550.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/) | Vault | core_logic | $5,033.99 | Verified native implementation with $5,033.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39d167...9f9058`](./contracts/ethereum-1/0x39d167fe676efc3be49be874a37349a5d89f9058/) | ALEV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cac7f...89d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02eaa6...cf3b03`](./contracts/arbitrum-42161/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | AuraFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x840402...84a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63fad9...aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/) | BurnTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf870...6d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/) | ClampFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe34757...db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ConvertibleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3363ad...9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/) | DbrHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | DolaPayroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02eaa6...cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bc55...27dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/) | ERC4626Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | EthRepayAllHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x402f38...d4f8bb`](./contracts/arbitrum-42161/0x402f38457800c32c67c5983381a685a4a1d4f8bb/) | ExchangeRateUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x683280...1c39e2`](./contracts/ethereum-1/0x6832802996e177660ede6095f184ec34d91c39e2/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e20de...322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/) | FeedSwitch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3326a1...72624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | FeedSwitchV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x803a71...66e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | FixedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | FixedRateIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | FoundationFunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1230bd...ccd6b3`](./contracts/arbitrum-42161/0x1230bd56bf23bf7adf95b9f861711301e3ccd6b3/) | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e521f...d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/) | GovernanceSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x053963...a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/) | Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x315291...9779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/) | JrDolaDOLAFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x531899...113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/) | JrDolaUSDFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533618...bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa251e6...481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/) | LockedTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05eee7...2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | LockReleaseTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8fd2...bd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x043646...269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce70f...d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | NavBeforeMaturityFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a618c...46e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | NormalizedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe928f7...de2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/) | PriceFeedNoStale | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d02f2...f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1a266...ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | PTUSDeFeedSwitchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f904...ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | RepayRewardEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca2f3...911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | SwitchFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ce2b4...025831`](./contracts/ethereum-1/0x0ce2b4fda533e101d7bd84dcd6455ab129025831/) | VaultExchangeRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | VaultFed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | XINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=188

Zero-match audit list:

- [1763] By Sherlock, live since March 30th, 2026
- [1765] An audit of the bad debt repayment products and a new INV oracle solution was performed by Peckshield in Q2 2022. Their report can be found [here]().

Fork inheritance lineage and inherited audits are included when available.
