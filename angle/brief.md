# Agentic Audit Brief: Angle

⚠️ Lifecycle status: DECLINING - TVL dropped 31.9% over 90 days

## Project Overview

- Project: Angle (`angle`)
- Website: [https://app.angle.money](https://app.angle.money)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T15:21:08.012Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ee40
- Chains: arbitrum, avalanche, base, celo, ethereum, gnosis, optimism, polygon
- Contract surface: 123 unique implementations (244 raw deployments)
- DeFi Llama TVL: $2,044,033.69
- On-chain TVL (included contracts): $1,213,478,028.94
- TVL by chain: Optimism $989,123,636.30 | Ethereum $223,951,746.86 | Celo $222,346.39 | Polygon $93,159.01 | Arbitrum $87,140.37

## Project Description

Angle is a decentralized euro stablecoin protocol centered on Angle Core/Borrowing, agEUR/EUR stablecoin infrastructure, savings products, governance, and bridge-related deployments. Its project-owned surface should be separated from third-party dependencies, integration targets, tokens, lending markets, Celo core contracts, Chainlink infrastructure, Safe infrastructure, and generic proxy or timelock contracts not verified as deployed or owned by Angle.

### Architecture

The Angle family is a monolithic CDP stablecoin system where core borrowing and treasury contracts interact with a wide array of yield strategies and cross-chain bridges. Governance multisigs (GnosisSafe) control upgrades and parameters, while proxy contracts (TransparentUpgradeableProxy, DiamondProxy) enable modularity and upgradability across all components.

## Contract Surface Quality

- Indexed contracts: 1267; live-surface contracts included: 244 (242 live, 2 unknown).
- Excluded by liveness: 765 inactive, 258 singleton, 0 uninitialized.
- Deployment units: 38/179 live.
- Detected codebases: compound-v2, uniswap-v3
- Unverified dependencies: 6/188.

## Audit Coverage Summary

- Verified implementations audited: 3/104 (2.9%)
- Verified + Unaudited implementations: 99
- Verified by bytecode match: 2
- Unverified implementations: 19
- Unique implementations: 123
- Raw deployments: 244
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $1,213,478,028.94
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,213,478,028.94 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 3 | 2.9% | 2021-09 |
| yAudit | Tier 2 | 2 | 1.9% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardsDistributor | operational_periphery | optimism | n/a | [`0x5d5bea...3f784f`](./contracts/optimism-10/0x5d5bea9f0fc13d967511668a60a3369fd53f784f/) | ✅ Audited |
| StableMasterFront | unknown | ethereum | unit-18630 | [`0x5addc8...086a87`](./contracts/ethereum-1/0x5addc89785d75c86ab939e9e15bfbbb7fc086a87/) | ✅ Audited |
| StakingRewards | unknown | polygon | n/a | [`0xcc0098...0f7616`](./contracts/polygon-137/0xcc00985055520c86d8b7764035002cef600f7616/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | optimism | n/a | 9 deployments: optimism [`0x1afd1f...b23ce0`](./contracts/optimism-10/0x1afd1ff9e441973b7d34c7b8abe91d94f1b23ce0/); optimism `0x26aab1...2171d5`; optimism `0x33865e...4d867d`; optimism `0x5569b8...8f6436`; optimism `0x5ff29e...f66a10`; optimism `0x8cd6b1...a8f571`; optimism `0xd7daab...0393cc`; optimism `0xec8fea...7b765f`; optimism `0xf7b596...317e8e` | ⚠️ Unaudited |
| StakedAaveV3 | token | ethereum | unit-18625 | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| BackedTokenImplementation | token | ethereum | unit-18600 (3 proxies) | 3 deployments: ethereum [`0x2f123c...9b45e7`](./contracts/ethereum-1/0x2f123cf3f37ce3328cc9b5b8415f9ec5109b45e7/); ethereum `0x3f95aa...9c52c9`; ethereum `0xca30c9...435fb5` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x24129b...975fed`](./contracts/ethereum-1/0x24129b935aff071c4f0554882c0d9573f4975fed/); ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/); ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xf3c2bd...56563f` | ⚠️ Unaudited |
| StableTokenV2 | token | celo | unit-18736 | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | ethereum | unit-18584 (6 proxies) | 6 deployments: ethereum [`0x1bece8...ad18b1`](./contracts/ethereum-1/0x1bece8193f8dc2b170135da9f1fa8b81c7ad18b1/); ethereum `0x241d75...623679`; ethereum `0x73aaf8...5f227b`; ethereum `0x8e2277...e6add0`; ethereum `0x96de5c...f8868a`; ethereum `0xe1c084...b9ee58` | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | unit-18705 | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-18719 | [`0xe4dddf...dc01cb`](./contracts/arbitrum-42161/0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb/) | ⚠️ Unaudited |
| AaveTokenV3 | token | ethereum | unit-18644 | [`0x7fc665...2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | optimism | unit-18687 (3 proxies) | 3 deployments: optimism [`0x16cd38...43d5aa`](./contracts/optimism-10/0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa/); optimism `0xaec831...f96c57`; optimism `0xcf5a29...f78bb6` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | ethereum | unit-18593 | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| Accounts | unknown | celo | n/a | 4 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603` | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | unit-18582 | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | optimism | unit-18685 (2 proxies) | 2 deployments: optimism [`0x000020...c63274`](./contracts/optimism-10/0x0000206329b97db379d5e1bf586bbdb969c63274/); optimism `0x9485ac...c8b1ed` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | gnosis | unit-18696 (2 proxies) | 2 deployments: gnosis [`0x000020...c63274`](./contracts/gnosis-100/0x0000206329b97db379d5e1bf586bbdb969c63274/); gnosis `0x4b1e2c...d35984` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | polygon | unit-18700 | [`0x000020...c63274`](./contracts/polygon-137/0x0000206329b97db379d5e1bf586bbdb969c63274/) | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | arbitrum | unit-18709 (2 proxies) | 2 deployments: arbitrum [`0x000020...c63274`](./contracts/arbitrum-42161/0x0000206329b97db379d5e1bf586bbdb969c63274/); arbitrum `0xfa5ed5...3528e7` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridgeNameable | operational_periphery | celo | unit-18721 (2 proxies) | 2 deployments: celo [`0x000020...c63274`](./contracts/celo-42220/0x0000206329b97db379d5e1bf586bbdb969c63274/); celo `0xc16b81...1e3049` | ⚠️ Unaudited |
| AngleNFT | token | polygon | n/a | [`0x588c06...ba226b`](./contracts/polygon-137/0x588c06d6b15cb6d6f3428fa589a8fff1b6ba226b/) | ⚠️ Unaudited |
| AngleRouterMainnet | adapter | ethereum | unit-18620 | [`0x457970...890930`](./contracts/ethereum-1/0x4579709627ca36bce92f51ac975746f431890930/) | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | n/a | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | ethereum | n/a | [`0x20d1b5...e642c3`](./contracts/ethereum-1/0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3/) | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | ethereum | unit-18563 | [`0x002535...4cefab`](./contracts/ethereum-1/0x00253582b2a3fe112feec532221d9708c64cefab/) | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | ethereum | unit-18590 | [`0x222222...4d0137`](./contracts/ethereum-1/0x222222fd79264bbe280b4986f6fefbc3524d0137/) | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | base | unit-18706 | [`0x222222...38fd4f`](./contracts/base-8453/0x222222880e079445df703c0604706e71a538fd4f/) | ⚠️ Unaudited |
| DummyDiamondImplementation | unknown | arbitrum | unit-18718 | [`0xd253b6...418053`](./contracts/arbitrum-42161/0xd253b62108d1831aed298fc2434a5a8e4e418053/) | ⚠️ Unaudited |
| Election | unknown | celo | n/a | 3 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x3db69c...9f6f28`; celo `0xbd7d39...31780e` | ⚠️ Unaudited |
| EpochManager | governance | celo | n/a | [`0x91e35c...dfc535`](./contracts/celo-42220/0x91e35ccea07a15af477e189c1e2bd12569dfc535/) | ⚠️ Unaudited |
| EpochRewards | unknown | celo | n/a | 3 deployments: celo [`0x33285c...63464b`](./contracts/celo-42220/0x33285cab4df24f37899dc14f324530661c63464b/); celo `0x4cadba...562aba`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| FalconXAAAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/); ethereum `0x8fed61...83667e`; ethereum `0xefffa4...2c8fa2` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-18583 | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | ethereum | n/a | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-18573 (3 proxies) | 3 deployments: ethereum [`0x0c2553...42d430`](./contracts/ethereum-1/0x0c2553e4b9dfa9f83b1a6d3eab96c4baab42d430/); ethereum `0x57eedc...aa89fc`; ethereum `0xdc4e6d...4eb1c8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | gnosis | unit-18698 (2 proxies) | 2 deployments: gnosis [`0x0f70ee...bafd69`](./contracts/gnosis-100/0x0f70eed1bb51d5edb1a2e46142638df959bafd69/); gnosis `0xf0a31f...3f11f0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-18715 (2 proxies) | 2 deployments: arbitrum [`0x55f01d...560a9c`](./contracts/arbitrum-42161/0x55f01ddae74b60e3c255bd2f619febdfce560a9c/); arbitrum `0xaa2dac...54df0b` | ⚠️ Unaudited |
| GoldToken | token | celo | n/a | 3 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0xb16516...b2c19d`; celo `0xfea1b3...c4f7b1` | ⚠️ Unaudited |
| Governance | unknown | celo | n/a | 3 deployments: celo [`0x40bca4...1824e6`](./contracts/celo-42220/0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6/); celo `0x40cac0...a6c57a`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | 2 deployments: celo [`0xb1b7b6...c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/); celo `0xed1073...6dbe14` | ⚠️ Unaudited |
| GovernanceTreasury | operational_periphery | arbitrum | n/a | [`0x1b94ca...c13360`](./contracts/arbitrum-42161/0x1b94ca0d99a7cd14e67c9d3618a9726094c13360/) | ⚠️ Unaudited |
| Idle | unknown | ethereum | n/a | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | [`0xdb1947...340d37`](./contracts/ethereum-1/0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37/) | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5ab109...eb780f`](./contracts/ethereum-1/0x5ab109d145d807a2e26d7d797db6f67ed9eb780f/); ethereum `0x6de6ea...a1a53f`; ethereum `0x9f3a30...8b62de`; ethereum `0xd85ad3...b6837d` | ⚠️ Unaudited |
| IdleCDOEthenaVariant | unknown | ethereum | unit-18587 | [`0x1eb1b4...25344c`](./contracts/ethereum-1/0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c/) | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | ethereum | unit-18682 | [`0xf87ec7...cba5b8`](./contracts/ethereum-1/0xf87ec7e1ee467d7d78862089b92dd40497cba5b8/) | ⚠️ Unaudited |
| IdleCreditVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x1ff9a2...6b927a`](./contracts/ethereum-1/0x1ff9a2c8d71318667eb218ad409054a6a36b927a/); ethereum `0x3daceb...888dba`; ethereum `0xc49992...b3855a` | ⚠️ Unaudited |
| IdleCreditVaultFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/); ethereum `0x59aabd...906626`; ethereum `0xb744aa...0b0706` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x55bdb8...ae383e`](./contracts/ethereum-1/0x55bdb81026f9a6e9308f7ee727a9124a92ae383e/); ethereum `0xb05cff...f4c477` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | operational_periphery | ethereum | n/a | [`0xe6584f...071507`](./contracts/ethereum-1/0xe6584f3484494d7014e420080f50b69e5e071507/) | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | ethereum | n/a | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | n/a | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/); ethereum `0x42e645...3d7cbd`; ethereum `0x637595...bf2688`; ethereum `0x6a6a91...0450e3`; ethereum `0xb84957...0d77a0`; ethereum `0xda7514...dbf80c` | ⚠️ Unaudited |
| LayerZeroBridge | operational_periphery | ethereum | unit-18626 (2 proxies) | 2 deployments: ethereum [`0x4fa745...cdf982`](./contracts/ethereum-1/0x4fa745fccc04555f2afa8874cd23961636cdf982/); ethereum `0xec0b13...002961` | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | ethereum | unit-18601 | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| Lizard | unknown | arbitrum | n/a | [`0x463913...8d3b0e`](./contracts/arbitrum-42161/0x463913d3a3d3d291667d53b8325c598eb88d3b0e/) | ⚠️ Unaudited |
| LizardETHStg | unknown | arbitrum | n/a | [`0x425c29...15ad17`](./contracts/arbitrum-42161/0x425c296bacf5db485a67252a0bacc3816115ad17/) | ⚠️ Unaudited |
| LizardRouter01 | adapter | arbitrum | n/a | [`0xf26515...94b3d0`](./contracts/arbitrum-42161/0xf26515d5482e2c2fd237149bf6a653da4794b3d0/) | ⚠️ Unaudited |
| LizardUsdcChronos | unknown | arbitrum | n/a | [`0x957bad...d47c16`](./contracts/arbitrum-42161/0x957bad196ba0e2bbcdc80572f7d4d43ad2d47c16/) | ⚠️ Unaudited |
| LizardUsdcStg | unknown | arbitrum | n/a | [`0x54355c...a65db5`](./contracts/arbitrum-42161/0x54355cc6913b26a15cca1f820cf17d362fa65db5/) | ⚠️ Unaudited |
| LizardUsdtStg | token | arbitrum | n/a | [`0x6f456a...303db9`](./contracts/arbitrum-42161/0x6f456ae422d171ceac7fdab4bc5febe322303db9/) | ⚠️ Unaudited |
| LizardVoter | unknown | arbitrum | n/a | [`0x98a1de...3f99cc`](./contracts/arbitrum-42161/0x98a1de08715800801e9764349f5a71cbe63f99cc/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xfea5e2...b61e1c`](./contracts/ethereum-1/0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | optimism | n/a | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | ethereum | n/a | [`0xf442e3...6f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | [`0xbeef01...2a64cb`](./contracts/ethereum-1/0xbeef01735c132ada46aa9aa4c54623caa92a64cb/) | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/) | ⚠️ Unaudited |
| OpynPerpVault | core_logic | ethereum | n/a | [`0x9b8f14...4fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | ⚠️ Unaudited |
| PairFactory | registry | optimism | n/a | [`0x25cbdd...b6b746`](./contracts/optimism-10/0x25cbddb98b35ab1ff77413456b31ec81a6b6b746/) | ⚠️ Unaudited |
| ProgrammableBorrower | core_logic | ethereum | n/a | [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: ethereum `0x071163...843f5b`; arbitrum [`0x0400b6...224ba2`](./contracts/arbitrum-42161/0x0400b6e4cbe9aa651f078df0a1ebe3054b224ba2/) | ⚠️ Unaudited |
| Router | adapter | optimism | n/a | [`0xa132da...23f9c9`](./contracts/optimism-10/0xa132dab612db5cb9fc9ac426a0cc215a3423f9c9/) | ⚠️ Unaudited |
| Sanctuary | unknown | ethereum | n/a | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | ⚠️ Unaudited |
| SavingsNameable | unknown | ethereum | unit-18562 (2 proxies) | 2 deployments: ethereum [`0x002222...ab5776`](./contracts/ethereum-1/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/); ethereum `0x004626...e59a23` | ⚠️ Unaudited |
| SavingsNameable | unknown | optimism | unit-18686 | [`0x002222...ab5776`](./contracts/optimism-10/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/) | ⚠️ Unaudited |
| SavingsNameable | unknown | arbitrum | unit-18710 (2 proxies) | 2 deployments: arbitrum [`0x002222...ab5776`](./contracts/arbitrum-42161/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/); arbitrum `0x004626...e59a23` | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | n/a | [`0xd1b565...f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| SDT | unknown | ethereum | n/a | [`0x73968b...6cdb2f`](./contracts/ethereum-1/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f/) | ⚠️ Unaudited |
| sdToken | token | ethereum | n/a | 2 deployments: ethereum [`0x402f87...68ac36`](./contracts/ethereum-1/0x402f878bdd1f5c66fdaf0fababcf74741b68ac36/); ethereum `0x752b4c...00f87c` | ⚠️ Unaudited |
| Sonne | unknown | optimism | n/a | [`0x1db246...2245f0`](./contracts/optimism-10/0x1db2466d9f5e10d7090e7152b68d62703a2245f0/) | ⚠️ Unaudited |
| StableTokenV3 | token | celo | unit-18734 | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | ⚠️ Unaudited |
| StakeDaoNFT | token | ethereum | n/a | [`0xdd4f84...e66bd5`](./contracts/ethereum-1/0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5/) | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | ethereum | n/a | [`0xc5f572...5bb6cd`](./contracts/ethereum-1/0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd/) | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | ethereum | n/a | [`0x6dd223...e38ea2`](./contracts/ethereum-1/0x6dd2236b1e089762cc264c85eebcff195ae38ea2/) | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | ethereum | n/a | [`0x221738...8c751f`](./contracts/ethereum-1/0x221738f73fa4bfca91918e77d112b87d918c751f/) | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x41279e...171166`](./contracts/optimism-10/0x41279e29586eb20f9a4f65e031af09fced171166/); optimism `0xdc05d8...f12618` | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0xda86e1...575a44`](./contracts/ethereum-1/0xda86e15d0cda3a05db930b248d7a2f775e575a44/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-18739 (2 proxies) | [`0xaec831...f96c57`](./contracts/avalanche-43114/0xaec8318a9a59baeb39861d10ff6c7f7bf1f96c57/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xa47961...c8dc95`](./contracts/celo-42220/0xa47961bf08da4267825866757f6e469a40c8dc95/) | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | ethereum | unit-18649 (2 proxies) | 2 deployments: ethereum [`0x913e8e...85094c`](./contracts/ethereum-1/0x913e8e1ed659c27613e937a6b6119b91d985094c/); ethereum `0x9ffc8a...26a001` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | polygon | unit-18701 (5 proxies) | 5 deployments: polygon [`0x0945de...3b87a0`](./contracts/polygon-137/0x0945de4f356de3569fe12850ab85a91f533b87a0/); polygon `0x3f125e...3707ab`; polygon `0x4b81f5...359aa3`; polygon `0xf18303...2c6a16`; polygon `0xfb16d8...7c990b` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | core_logic | arbitrum | unit-18711 (3 proxies) | 3 deployments: arbitrum [`0x04437e...5173b9`](./contracts/arbitrum-42161/0x04437e94af860afbb0429a7d36b9c00a5a5173b9/); arbitrum `0xe9f183...9ad8ed`; arbitrum `0xf66411...3839b9` | ⚠️ Unaudited |
| Ve | unknown | arbitrum | n/a | [`0x29d362...e293e4`](./contracts/arbitrum-42161/0x29d3622c78615a1e7459e4be434d816b7de293e4/) | ⚠️ Unaudited |
| VeDist | unknown | arbitrum | n/a | [`0xbfa51d...539b86`](./contracts/arbitrum-42161/0xbfa51d9635fa9be5117093efeff06d388d539b86/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x3c8b65...a11a05`](./contracts/optimism-10/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05/) | ⚠️ Unaudited |
| Voter | unknown | optimism | n/a | [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/) | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | ethereum | unit-18574 | [`0x0c3047...6c9e8a`](./contracts/ethereum-1/0x0c30476f66034e11782938df8e4384970b6c9e8a/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | optimism | n/a | [`0x9c7305...9a2e26`](./contracts/optimism-10/0x9c7305eb78a432ced5c4d14cac27e8ed569a2e26/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 26 deployments: ethereum [`0x051d7e...a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/); ethereum `0x08780f...aa95da`; ethereum `0x1005f7...13d546`; ethereum `0x2932a8...3423f5`; ethereum `0x29f3dd...3e5d92`; ethereum `0x3175df...3473cc`; ethereum `0x501611...d160aa`; ethereum `0x552dad...357851`; ethereum `0x63f222...428ce7`; ethereum `0x696b5d...72a53d`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d7871...6e5af3`; ethereum `0x742c3c...de9571`; ethereum `0x75f8f7...fce882`; ethereum `0x81c46f...cd3dd7`; ethereum `0x99a584...b5788f`; ethereum `0x9f330d...2109d8`; ethereum `0xa1f8a6...24e577`; ethereum `0xa2d40e...ba628e`; ethereum `0xba3436...d5cc73`; ethereum `0xc78fa2...8cf247`; ethereum `0xcfc251...a59503`; ethereum `0xd09216...9d3778`; ethereum `0xdcef96...4241a2`; ethereum `0xf253f8...55a07f`; ethereum `0xf43211...366c7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgTokenNameable | token | ethereum | unit-18561 | 2 deployments: ethereum [`0x000020...c63274`](./contracts/ethereum-1/0x0000206329b97db379d5e1bf586bbdb969c63274/); avalanche [`0x000020...c63274`](./contracts/avalanche-43114/0x0000206329b97db379d5e1bf586bbdb969c63274/) | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | celo | n/a | 9 deployments: celo [`0x066f67...bd25f2`](./contracts/celo-42220/0x066f672c03347a24ee3f52d1f184f04f7abd25f2/); celo `0x120c00...49e892`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3c2789...97bfd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd94736...613326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf55f33...3a61ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf2dab...efd6e7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chainsecurity Audit Report December 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Chainsecurity Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Chainsecurity%20Audit%20Report%20July%2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [Sigma Prime Audit Report July 21.pdf](https://github.com/AngleProtocol/angle-core/blob/main/audits/Sigma%20Prime%20Audit%20Report%20July%2021.pdf) | Sigma Prime | Audit | 2021-09 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | StakedAaveV3 | token | $181,413,467.90 | Verified native implementation with $181,413,467.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f123c...9b45e7`](./contracts/ethereum-1/0x2f123cf3f37ce3328cc9b5b8415f9ec5109b45e7/) | BackedTokenImplementation | token | $26,593,435.13 | Verified native implementation with $26,593,435.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000020...c63274`](./contracts/ethereum-1/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenNameable | token | $1,093,358.88 | Verified native implementation with $1,093,358.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5af15d...6e37b7`](./contracts/ethereum-1/0x5af15da84a4a6edf2d9fa6720de921e1026e37b7/) | Vault | core_logic | $330,837.16 | Verified native implementation with $330,837.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | TokenPolygonUpgradeableNameable | token | $93,159.01 | Verified native implementation with $93,159.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | AaveEcosystemReserveV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | AgEURNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x000020...c63274`](./contracts/optimism-10/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x000020...c63274`](./contracts/gnosis-100/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000020...c63274`](./contracts/polygon-137/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x000020...c63274`](./contracts/arbitrum-42161/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x000020...c63274`](./contracts/celo-42220/0x0000206329b97db379d5e1bf586bbdb969c63274/) | AgTokenSideChainMultiBridgeNameable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002535...4cefab`](./contracts/ethereum-1/0x00253582b2a3fe112feec532221d9708c64cefab/) | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222222...4d0137`](./contracts/ethereum-1/0x222222fd79264bbe280b4986f6fefbc3524d0137/) | DummyDiamondImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/) | FalconXAAAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c310f...4352d1`](./contracts/ethereum-1/0x3c310fc54c0534dc3c45312934508722284352d1/) | GaugeMultiRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | Idle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb1947...340d37`](./contracts/ethereum-1/0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37/) | IdleCDOEpochQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ab109...eb780f`](./contracts/ethereum-1/0x5ab109d145d807a2e26d7d797db6f67ed9eb780f/) | IdleCDOEpochVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ff9a2...6b927a`](./contracts/ethereum-1/0x1ff9a2c8d71318667eb218ad409054a6a36b927a/) | IdleCreditVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | IdleCreditVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55bdb8...ae383e`](./contracts/ethereum-1/0x55bdb81026f9a6e9308f7ee727a9124a92ae383e/) | IdleCreditVaultImpliedPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6584f...071507`](./contracts/ethereum-1/0xe6584f3484494d7014e420080f50b69e5e071507/) | IdleCreditVaultWriteOffEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/) | KeyringIdleWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | MerkleClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf442e3...6f847f`](./contracts/ethereum-1/0xf442e3a8041199747f94b01a64632134256f847f/) | MerkleDistributorSdt | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b8f14...4fde1a`](./contracts/ethereum-1/0x9b8f14554f40705de7908879e2228d2ac94fde1a/) | OpynPerpVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ProgrammableBorrower | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac1486...1247d3`](./contracts/ethereum-1/0xac14864ce5a98af3248ffbf549441b04421247d3/) | Sanctuary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002222...ab5776`](./contracts/ethereum-1/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x002222...ab5776`](./contracts/optimism-10/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002222...ab5776`](./contracts/arbitrum-42161/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda86e1...575a44`](./contracts/ethereum-1/0xda86e15d0cda3a05db930b248d7a2f775e575a44/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaec831...f96c57`](./contracts/avalanche-43114/0xaec8318a9a59baeb39861d10ff6c7f7bf1f96c57/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04437e...5173b9`](./contracts/arbitrum-42161/0x04437e94af860afbb0429a7d36b9c00a5a5173b9/) | VaultManagerLiquidationBoost | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051d7e...a74301`](./contracts/ethereum-1/0x051d7e5609917bd9b73f04bac0ded8dd46a74301/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 8 |
| standard_library | 7 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=31

Zero-match audit list:

- [14210] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
