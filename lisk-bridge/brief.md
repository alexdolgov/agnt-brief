# Agentic Audit Brief: Lisk Bridge

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: active (Tier 0, 90.7% below peak)
- Generated: 2026-06-10T20:59:07.002Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 96 unique implementations (210 raw deployments)
- DeFi Llama TVL: $38,109,077.20
- On-chain TVL (included contracts): $50,938,346.36
- TVL by chain: Ethereum $50,938,346.36

## Project Description

Lisk Bridge is the canonical bridge / bridged-assets surface for Lisk Chain, focused on asset transfers between Ethereum and the Lisk EVM L2 using OP Stack bridge infrastructure. It should be treated separately from the broader Lisk platform, incubator/fund programs, governance, vesting, testing, third-party application contracts, and unrelated token deployments.

### Architecture

The L1 family provides the core OP Stack bridge infrastructure, which is extended by Lisk-specific contracts for custom token bridging and vesting. Lisk Mainnet contracts are standard token implementations that interact with the bridge adapters, while Predeploys and Testing contracts are auxiliary.

## Audit Coverage Summary

- Verified implementations audited: 0/87 (0.0%)
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 96
- Raw deployments: 210
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $50,938,346.36
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1LiskToken | token | ethereum | [`0x6033f7...90ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | ⚠️ Unaudited |
| SwarmMarketsToken | token | ethereum | 2 deployments: ethereum [`0xb17548...247173`](./contracts/ethereum-1/0xb17548c7b510427baac4e267bea62e800b247173/); ethereum `0xfc63b1...216b33` | ⚠️ Unaudited |
| UTUToken | token | ethereum | 2 deployments: ethereum [`0x804dd5...150993`](./contracts/ethereum-1/0x804dd5e6c45181b0b13ab58a3480956026150993/); ethereum `0xa58a4f...94189b` | ⚠️ Unaudited |
| XTokenWrapper | token | ethereum | [`0x2b9dc6...da0cce`](./contracts/ethereum-1/0x2b9dc65253c035eb21778cb3898eab5a0ada0cce/) | ⚠️ Unaudited |
| ActionManager | governance | ethereum | 3 deployments: ethereum [`0x7005e1...68c820`](./contracts/ethereum-1/0x7005e13e8118b72f0d77e3418cdf4b48e768c820/); ethereum `0x9835fa...56c477`; ethereum `0xbda574...dfe5f4` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | 10 deployments: ethereum [`0x03bbc1...9c1576`](./contracts/ethereum-1/0x03bbc1313d3db4b356fb307dbe86a001f29c1576/); ethereum `0x089df6...5c00ab`; ethereum `0x192066...c0b7bc`; ethereum `0x2df705...ea423f`; ethereum `0x90d1d2...88b3d7`; ethereum `0x91ccfc...9902c2`; ethereum `0x9eb974...35c49c`; ethereum `0xb49505...cde441`; ethereum `0xccb5dd...42c8db`; ethereum `0xe9a057...a0318a` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | [`0x7ad0d1...1d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | ⚠️ Unaudited |
| AssetHelper | periphery | ethereum | 3 deployments: ethereum [`0x0969c4...cdd2ee`](./contracts/ethereum-1/0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee/); ethereum `0x41b9ea...b682b2`; ethereum `0xad6e7a...1acddc` | ⚠️ Unaudited |
| AssetTokenData | token | ethereum | [`0x3a5d3f...c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | ⚠️ Unaudited |
| AssetTokenFactoryCCIPCompatible | registry | ethereum | [`0xef24a5...6c7bd5`](./contracts/ethereum-1/0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5/) | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | ethereum | [`0xf1a3de...cd99e1`](./contracts/ethereum-1/0xf1a3de660968b3a6493334413505220c1bcd99e1/) | ⚠️ Unaudited |
| Authorization | unknown | ethereum | 2 deployments: ethereum [`0x9c9aa8...ffbae1`](./contracts/ethereum-1/0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1/); ethereum `0xefbcbd...2aca82` | ⚠️ Unaudited |
| BFactory | registry | ethereum | [`0x918650...38c296`](./contracts/ethereum-1/0x9186503af1d7d3317b4c2c44a815be984838c296/) | ⚠️ Unaudited |
| BPool | core_logic | ethereum | [`0xf5fada...3a960a`](./contracts/ethereum-1/0xf5fada32917350b91fbd9bbde62e69bf483a960a/) | ⚠️ Unaudited |
| BPoolProxy | core_logic | ethereum | [`0x532164...402c56`](./contracts/ethereum-1/0x5321647f3c3769bc7bb9e10ab10d7f5c2e402c56/) | ⚠️ Unaudited |
| BRegistry | registry | ethereum | [`0x8133ee...263c04`](./contracts/ethereum-1/0x8133eeb249f0636bba0b8230ba1089a219263c04/) | ⚠️ Unaudited |
| BundleStorage | unknown | ethereum | 2 deployments: ethereum [`0x5d84b9...287ab7`](./contracts/ethereum-1/0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7/); ethereum `0x775373...91450d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | 13 deployments: ethereum [`0x0a3467...f700fa`](./contracts/ethereum-1/0x0a34677dafcd28916aac0b22123142efabf700fa/); ethereum `0x23afd2...32f7fe`; ethereum `0x281a83...6e0400`; ethereum `0x286213...25b27c`; ethereum `0x55585f...781c5d`; ethereum `0x5f5d43...ffe9cf`; ethereum `0x6eb579...e50fae`; ethereum `0x8192d6...990728`; ethereum `0xab235c...499f23`; ethereum `0xad0624...8fcc09`; ethereum `0xb05963...00fac9`; ethereum `0xb85e3e...e9c248`; ethereum `0xe199e1...629b59` | ⚠️ Unaudited |
| Caller | unknown | ethereum | [`0x53fbfe...e4e337`](./contracts/ethereum-1/0x53fbfe5b1dfea7923f4691f819ca6e278de4e337/) | ⚠️ Unaudited |
| ConfigurableOracleMockFactory | operational_periphery | ethereum | [`0xfa9f3c...3d478e`](./contracts/ethereum-1/0xfa9f3c42e063d78a46a4f1e5b6b4c365203d478e/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | [`0x31efc2...7c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | ⚠️ Unaudited |
| DepositSecurityModule | unknown | ethereum | [`0xdb1492...1790e7`](./contracts/ethereum-1/0xdb149235b6f40dc08810aa69869783be101790e7/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | [`0x0cf7d3...8c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x3c4b07...6232c7`](./contracts/ethereum-1/0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7/); ethereum `0xad89ee...fbb215`; ethereum `0xccdbeb...7ef7f6` | ⚠️ Unaudited |
| Dotc | unknown | ethereum | 3 deployments: ethereum [`0x19708f...a03acc`](./contracts/ethereum-1/0x19708f0e1b9f4645907b75386a9d5bb75ea03acc/); ethereum `0x632f2f...b1cf25`; ethereum `0x820758...bf35c5` | ⚠️ Unaudited |
| DotcEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0xb8adad...965f7d`](./contracts/ethereum-1/0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d/); ethereum `0xf9ff7c...288ba3` | ⚠️ Unaudited |
| DotcEscrowV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x2b418d...babbc6`](./contracts/ethereum-1/0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6/); ethereum `0x4877d1...15a53a` | ⚠️ Unaudited |
| DotcManager | governance | ethereum | [`0x429737...52b4c3`](./contracts/ethereum-1/0x429737c0ddf17779803aba8b5e6133012952b4c3/) | ⚠️ Unaudited |
| DotcManagerV2 | governance | ethereum | 2 deployments: ethereum [`0x0a4010...be2073`](./contracts/ethereum-1/0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073/); ethereum `0x1f58f1...8395ad` | ⚠️ Unaudited |
| DotcOfferHelper | periphery | ethereum | [`0x6b8808...d52a0d`](./contracts/ethereum-1/0x6b8808910c298239aabf6475e99ea468f1d52a0d/) | ⚠️ Unaudited |
| DotcV2 | unknown | ethereum | 5 deployments: ethereum [`0x0a103e...ed3dae`](./contracts/ethereum-1/0x0a103ee32f4209926d8ba7e528aff8a831ed3dae/); ethereum `0x1d0d05...287d4a`; ethereum `0x282950...110b89`; ethereum `0x9e9add...e668f4`; ethereum `0xca4b2d...4b5500` | ⚠️ Unaudited |
| DotcV2_1 | unknown | ethereum | [`0x423126...9ed3e5`](./contracts/ethereum-1/0x423126258e7684356c0b11bf23c7e73a1d9ed3e5/) | ⚠️ Unaudited |
| EthPriceFeed | operational_periphery | ethereum | [`0xf70cee...51fca5`](./contracts/ethereum-1/0xf70cee7c7e638f9364c4076a01226337ec51fca5/) | ⚠️ Unaudited |
| EurPriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0xc1b06d...638514`](./contracts/ethereum-1/0xc1b06da65074c9df0109d312eb3e59e04f638514/); ethereum `0xd0fbc3...b7c978` | ⚠️ Unaudited |
| Extension | adapter | ethereum | [`0xe6227e...6a9ed8`](./contracts/ethereum-1/0xe6227e07c0dd1604f3c820ad779792bbe56a9ed8/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | [`0x5e007b...5e4753`](./contracts/ethereum-1/0x5e007bc170861e27952ca4118d7af3e8aa5e4753/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | 3 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0x5e620d...e79ce2`; ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| GoldKiloPriceFeed | operational_periphery | ethereum | [`0xbe79f8...ecbde8`](./contracts/ethereum-1/0xbe79f828e0cd909dc54ad576e8778fedeaecbde8/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x31b72d...bb7edb`](./contracts/ethereum-1/0x31b72d76fb666844c41edf08df0254875dbb7edb/) | ⚠️ Unaudited |
| L1ERC20TokenBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x9348af...d69fcf`](./contracts/ethereum-1/0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf/); ethereum `0xc7315f...6327ac` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0x3a44a3...11a81f`](./contracts/ethereum-1/0x3a44a3b263fb631cdbf25f339e2d29497511a81f/) | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | ethereum | [`0xeb99c8...89f677`](./contracts/ethereum-1/0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677/) | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | ethereum | [`0xe36224...6995e6`](./contracts/ethereum-1/0xe3622468ea7dd804702b56ca2a4f88c0936995e6/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x265872...d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | ⚠️ Unaudited |
| L1VestingWallet | operational_periphery | ethereum | 4 deployments: ethereum [`0x18a0b8...71618e`](./contracts/ethereum-1/0x18a0b8c653c291d69f21a6ef9a1000335f71618e/); ethereum `0x2294a7...1bcead`; ethereum `0x58a61b...a48568`; ethereum `0xd590c2...cf5fb7` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0x113cb9...1aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | ⚠️ Unaudited |
| Main | unknown | ethereum | [`0x5405dd...59c194`](./contracts/ethereum-1/0x5405dd4306a4ec1e15c71275ba9a58425759c194/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | 2 deployments: ethereum [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/); ethereum `0x40ad51...2ecc64` | ⚠️ Unaudited |
| Merge | unknown | ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xdb46c2...546296`](./contracts/ethereum-1/0xdb46c277da1599390eab394327602889e9546296/) | ⚠️ Unaudited |
| NodeOperatorsRegistry | registry | ethereum | [`0xec3567...16c5fe`](./contracts/ethereum-1/0xec3567ae258639a0ff5a02f7eaf4e4ae4416c5fe/) | ⚠️ Unaudited |
| OfferHelper | periphery | ethereum | [`0xf61ed4...d40719`](./contracts/ethereum-1/0xf61ed41749cd82767057aa39edcee8d797d40719/) | ⚠️ Unaudited |
| OperationsRegistry | registry | ethereum | [`0xd641ae...2a49b9`](./contracts/ethereum-1/0xd641ae2ad8a0e72ad92ddeda7cef67ee3f2a49b9/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0xc1da06...39252d`](./contracts/ethereum-1/0xc1da06cc5dd5ce23baba924463de7f762039252d/); ethereum `0xd00e38...a5b3ad` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x26db93...53f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | ⚠️ Unaudited |
| PermissionItems | unknown | ethereum | 2 deployments: ethereum [`0xb44141...080daa`](./contracts/ethereum-1/0xb441417e6ff3acf60b9f0216d8c3179913080daa/); ethereum `0xf96e9a...43a0fe` | ⚠️ Unaudited |
| PermissionManager | governance | ethereum | [`0x991fd1...df6191`](./contracts/ethereum-1/0x991fd11876a438af7bcadc98f4b3cf201bdf6191/) | ⚠️ Unaudited |
| PermissionManagerV2 | governance | ethereum | [`0xe214d9...013d91`](./contracts/ethereum-1/0xe214d97ba7ff83144699737f73d271c006013d91/) | ⚠️ Unaudited |
| ProtocolFee | unknown | ethereum | 2 deployments: ethereum [`0x9516ca...4ba072`](./contracts/ethereum-1/0x9516cac65d54cc2fe4c070978223f930894ba072/); ethereum `0xabc210...aed6c1` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | 2 deployments: ethereum [`0xbaa108...cbf425`](./contracts/ethereum-1/0xbaa10876223b11baae86e1bbf52daef38ecbf425/); ethereum `0xdd9c27...6f1079` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 6 deployments: ethereum [`0x0479e6...2f38be`](./contracts/ethereum-1/0x0479e6757eb4743843b309dddf78e6ba242f38be/); ethereum `0x7df140...c7106f`; ethereum `0x83fc9d...d26fdb`; ethereum `0x86a6f5...8490b1`; ethereum `0x899de1...78d7b6`; ethereum `0xa4d9ef...7f6fcd` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 12 deployments: ethereum [`0x055860...593072`](./contracts/ethereum-1/0x055860f40533c4d9e7cd38105f4c0d1eb0593072/); ethereum `0x0a4477...37b61b`; ethereum `0x121b48...6533c6`; ethereum `0x35e59b...714244`; ethereum `0x3d24fa...4d03b7`; ethereum `0x7a3d18...dffad1`; ethereum `0x88f3cb...13dfd5`; ethereum `0x92d73c...0bdc0c`; ethereum `0xce36f0...dcb5fa`; ethereum `0xe44cb9...4ebd46`; ethereum `0xec432c...979b2d`; ethereum `0xf25146...ce354c` | ⚠️ Unaudited |
| Sale | unknown | ethereum | [`0x6dd25c...b0fdfd`](./contracts/ethereum-1/0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd/) | ⚠️ Unaudited |
| SmtPriceFeed | operational_periphery | ethereum | 5 deployments: ethereum [`0x0b2a66...e9674d`](./contracts/ethereum-1/0x0b2a66c5106bc4be40214b0699adf8d5d9e9674d/); ethereum `0x4afe7d...10a368`; ethereum `0x6da68d...713ff7`; ethereum `0x803492...eb497c`; ethereum `0x9221c6...82c298` | ⚠️ Unaudited |
| SmtVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x0c033b...a1cec9`](./contracts/ethereum-1/0x0c033bb39e67eb598d399c06a8a519498da1cec9/); ethereum `0x9a3017...eac56b` | ⚠️ Unaudited |
| StableSwapStateOracle | operational_periphery | ethereum | [`0x3a6bd1...41ffd6`](./contracts/ethereum-1/0x3a6bd15abf19581e411621d669b6a2bbe741ffd6/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | [`0xa30606...6e1778`](./contracts/ethereum-1/0xa306065a144a16dbc99f06e16737dd400e6e1778/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | 7 deployments: ethereum [`0x26c7bf...555de7`](./contracts/ethereum-1/0x26c7bfb430d68bf74d2d52497836d4336b555de7/); ethereum `0x6738c9...e34bf2`; ethereum `0x6e5ff0...187824`; ethereum `0x8f1131...d3a24c`; ethereum `0x98ce58...17b4e9`; ethereum `0x9e24f5...dcd0d0`; ethereum `0xf7a2e4...4e8675` | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | ethereum | 3 deployments: ethereum [`0x1a2356...00494e`](./contracts/ethereum-1/0x1a2356d54aeead105f203a5c51a6307ec100494e/); ethereum `0x1f8e90...48aeac`; ethereum `0x2fcab6...017888` | ⚠️ Unaudited |
| SX1155NFTFactory | registry | ethereum | [`0xab7aa6...bc8b14`](./contracts/ethereum-1/0xab7aa6495f8694656b59bc6309d3f6190dbc8b14/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x05f232...843750`](./contracts/ethereum-1/0x05f23282ffdca8286e4738c1af79079f3d843750/) | ⚠️ Unaudited |
| Tellor | unknown | ethereum | 2 deployments: ethereum [`0x04b512...506a95`](./contracts/ethereum-1/0x04b5129735b5d9b1b54109f2c4c06ea23b506a95/); ethereum `0x81beb4...b4c038` | ⚠️ Unaudited |
| Tellor360 | unknown | ethereum | [`0x88df59...3778a0`](./contracts/ethereum-1/0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0/) | ⚠️ Unaudited |
| TellorGetters | unknown | ethereum | [`0x73e34d...fbb038`](./contracts/ethereum-1/0x73e34dac4e76bda81724d333a02d850ca7fbb038/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenTransferor | token | ethereum | 2 deployments: ethereum [`0xa75d8a...cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/); ethereum `0xcd465d...b6ad12` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x964183...5bb7b0`](./contracts/ethereum-1/0x964183083e623d5a8acbd27eb31c3609e25bb7b0/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 30 deployments: ethereum [`0x0129c6...de930d`](./contracts/ethereum-1/0x0129c6f26ba8ab0f9575ffe2c0678253a5de930d/); ethereum `0x02454e...4c1c27`; ethereum `0x062705...ffd45a`; ethereum `0x07be9b...36a171`; ethereum `0x082a59...9fdf3c`; ethereum `0x19bc15...97892d`; ethereum `0x2618e9...2ed40c`; ethereum `0x2bdfd3...efe701`; ethereum `0x2c1b89...d027e3`; ethereum `0x2ca788...505cf4`; ethereum `0x310459...77332b`; ethereum `0x40c5fb...13869a`; ethereum `0x489f04...a74775`; ethereum `0x513251...1affad`; ethereum `0x6875ce...34914f`; ethereum `0x707f91...963fc8`; ethereum `0x76c6f1...97ba45`; ethereum `0x777cee...34051d`; ethereum `0x7859f9...f21ee4`; ethereum `0x7b64b0...3d6bdd`; ethereum `0x86bb5d...39c2ae`; ethereum `0xa2f987...b72bdf`; ethereum `0xa9b2f5...7fa70e`; ethereum `0xab55bf...692fe6`; ethereum `0xb2022e...feaa52`; ethereum `0xdb99fd...bfa321`; ethereum `0xe3c8a4...697fb7`; ethereum `0xf8b237...c1ffad`; ethereum `0xfb2731...0da180`; ethereum `0xfef762...33fe27` | ⚠️ Unaudited |
| WBTC | token | ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| XERC20 | token | ethereum | [`0x1217bf...b6e189`](./contracts/ethereum-1/0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189/) | ⚠️ Unaudited |
| xGold | unknown | ethereum | [`0x7f9438...4b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | ⚠️ Unaudited |
| xGoldBundle | unknown | ethereum | [`0x5e75a1...1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | ethereum | [`0x2b498b...344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | ⚠️ Unaudited |
| XTokenFactory | registry | ethereum | 3 deployments: ethereum [`0x20bf44...4e82a6`](./contracts/ethereum-1/0x20bf447fe55ac3718538e89c8c32396b174e82a6/); ethereum `0x247d08...b55c14`; ethereum `0xe1532d...8f33b5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1d96f2...861d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x328809...afdac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b0f85...8031ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70bd96...48cf5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f58fe...c98022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5e175...79f6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb45f10...5e0989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4fc47...8e7562` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6033f7...90ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | L1LiskToken | token | $47,510,644.56 | Verified native implementation with $47,510,644.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804dd5...150993`](./contracts/ethereum-1/0x804dd5e6c45181b0b13ab58a3480956026150993/) | UTUToken | token | $147,274.96 | Verified native implementation with $147,274.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b9dc6...da0cce`](./contracts/ethereum-1/0x2b9dc65253c035eb21778cb3898eab5a0ada0cce/) | XTokenWrapper | token | $26,559.00 | Verified native implementation with $26,559.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7005e1...68c820`](./contracts/ethereum-1/0x7005e13e8118b72f0d77e3418cdf4b48e768c820/) | ActionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bbc1...9c1576`](./contracts/ethereum-1/0x03bbc1313d3db4b356fb307dbe86a001f29c1576/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ad0d1...1d9c1e`](./contracts/ethereum-1/0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0969c4...cdd2ee`](./contracts/ethereum-1/0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee/) | AssetHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a5d3f...c2c159`](./contracts/ethereum-1/0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159/) | AssetTokenData | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef24a5...6c7bd5`](./contracts/ethereum-1/0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5/) | AssetTokenFactoryCCIPCompatible | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c9aa8...ffbae1`](./contracts/ethereum-1/0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1/) | Authorization | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x918650...38c296`](./contracts/ethereum-1/0x9186503af1d7d3317b4c2c44a815be984838c296/) | BFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5fada...3a960a`](./contracts/ethereum-1/0xf5fada32917350b91fbd9bbde62e69bf483a960a/) | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8133ee...263c04`](./contracts/ethereum-1/0x8133eeb249f0636bba0b8230ba1089a219263c04/) | BRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d84b9...287ab7`](./contracts/ethereum-1/0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7/) | BundleStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa9f3c...3d478e`](./contracts/ethereum-1/0xfa9f3c42e063d78a46a4f1e5b6b4c365203d478e/) | ConfigurableOracleMockFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31efc2...7c168e`](./contracts/ethereum-1/0x31efc2c8012c56e007e5bdb8e5b7955d197c168e/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf7d3...8c282c`](./contracts/ethereum-1/0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c4b07...6232c7`](./contracts/ethereum-1/0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19708f...a03acc`](./contracts/ethereum-1/0x19708f0e1b9f4645907b75386a9d5bb75ea03acc/) | Dotc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b418d...babbc6`](./contracts/ethereum-1/0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6/) | DotcEscrowV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x429737...52b4c3`](./contracts/ethereum-1/0x429737c0ddf17779803aba8b5e6133012952b4c3/) | DotcManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b8808...d52a0d`](./contracts/ethereum-1/0x6b8808910c298239aabf6475e99ea468f1d52a0d/) | DotcOfferHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x423126...9ed3e5`](./contracts/ethereum-1/0x423126258e7684356c0b11bf23c7e73a1d9ed3e5/) | DotcV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6227e...6a9ed8`](./contracts/ethereum-1/0xe6227e07c0dd1604f3c820ad779792bbe56a9ed8/) | Extension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e007b...5e4753`](./contracts/ethereum-1/0x5e007bc170861e27952ca4118d7af3e8aa5e4753/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31b72d...bb7edb`](./contracts/ethereum-1/0x31b72d76fb666844c41edf08df0254875dbb7edb/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9348af...d69fcf`](./contracts/ethereum-1/0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf/) | L1ERC20TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a44a3...11a81f`](./contracts/ethereum-1/0x3a44a3b263fb631cdbf25f339e2d29497511a81f/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265872...d25d08`](./contracts/ethereum-1/0x2658723bf70c7667de6b25f99fcce13a16d25d08/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x113cb9...1aa7d6`](./contracts/ethereum-1/0x113cb99283af242da0a0c54347667edf531aa7d6/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5405dd...59c194`](./contracts/ethereum-1/0x5405dd4306a4ec1e15c71275ba9a58425759c194/) | Main | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | Merge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb46c2...546296`](./contracts/ethereum-1/0xdb46c277da1599390eab394327602889e9546296/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec3567...16c5fe`](./contracts/ethereum-1/0xec3567ae258639a0ff5a02f7eaf4e4ae4416c5fe/) | NodeOperatorsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61ed4...d40719`](./contracts/ethereum-1/0xf61ed41749cd82767057aa39edcee8d797d40719/) | OfferHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd641ae...2a49b9`](./contracts/ethereum-1/0xd641ae2ad8a0e72ad92ddeda7cef67ee3f2a49b9/) | OperationsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1da06...39252d`](./contracts/ethereum-1/0xc1da06cc5dd5ce23baba924463de7f762039252d/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26db93...53f9a7`](./contracts/ethereum-1/0x26db93f8b8b4f7016240af62f7730979d353f9a7/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb44141...080daa`](./contracts/ethereum-1/0xb441417e6ff3acf60b9f0216d8c3179913080daa/) | PermissionItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991fd1...df6191`](./contracts/ethereum-1/0x991fd11876a438af7bcadc98f4b3cf201bdf6191/) | PermissionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9516ca...4ba072`](./contracts/ethereum-1/0x9516cac65d54cc2fe4c070978223f930894ba072/) | ProtocolFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaa108...cbf425`](./contracts/ethereum-1/0xbaa10876223b11baae86e1bbf52daef38ecbf425/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0479e6...2f38be`](./contracts/ethereum-1/0x0479e6757eb4743843b309dddf78e6ba242f38be/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd25c...b0fdfd`](./contracts/ethereum-1/0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd/) | Sale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b2a66...e9674d`](./contracts/ethereum-1/0x0b2a66c5106bc4be40214b0699adf8d5d9e9674d/) | SmtPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c033b...a1cec9`](./contracts/ethereum-1/0x0c033bb39e67eb598d399c06a8a519498da1cec9/) | SmtVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa30606...6e1778`](./contracts/ethereum-1/0xa306065a144a16dbc99f06e16737dd400e6e1778/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26c7bf...555de7`](./contracts/ethereum-1/0x26c7bfb430d68bf74d2d52497836d4336b555de7/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a2356...00494e`](./contracts/ethereum-1/0x1a2356d54aeead105f203a5c51a6307ec100494e/) | SwarmBuyerBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05f232...843750`](./contracts/ethereum-1/0x05f23282ffdca8286e4738c1af79079f3d843750/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b512...506a95`](./contracts/ethereum-1/0x04b5129735b5d9b1b54109f2c4c06ea23b506a95/) | Tellor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73e34d...fbb038`](./contracts/ethereum-1/0x73e34dac4e76bda81724d333a02d850ca7fbb038/) | TellorGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa75d8a...cee84c`](./contracts/ethereum-1/0xa75d8afd8d3a36dd3935078e4d05153946cee84c/) | TokenTransferor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0129c6...de930d`](./contracts/ethereum-1/0x0129c6f26ba8ab0f9575ffe2c0678253a5de930d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d793...7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9438...4b5244`](./contracts/ethereum-1/0x7f94388a552580712c4ec724f470c6e4a74b5244/) | xGold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e75a1...1bbdee`](./contracts/ethereum-1/0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee/) | xGoldBundle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b498b...344456`](./contracts/ethereum-1/0x2b498bae947c80e358f59a277adda90f76344456/) | xGoldBundleStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20bf44...4e82a6`](./contracts/ethereum-1/0x20bf447fe55ac3718538e89c8c32396b174e82a6/) | XTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 9 |
| standard_library | 13 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
