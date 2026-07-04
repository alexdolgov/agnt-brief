# Agentic Audit Brief: olympus-dao

## Project Overview

- Project: olympus-dao (`olympus-dao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.956Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, avalanche, berachain, ethereum, optimism
- Contract surface: 397 unique implementations (397 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 395 project-authored contract(s) across 5 chain(s); 44 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 34 common project-authored base contract(s) (module, kerneladapter, baseupgradeabilityproxy). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Stake DAO** (`stake-dao`) in the AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, CommunalFarm_SaddleD4, ConvexStakingWrapperFrax, … subsystem.
5 audits inherited from `stake-dao`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 397; live-surface contracts included: 397 (397 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/362 (6.4%)
- Deployed-live implementations: 397 of 397 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 24/397
- Verified + Unaudited implementations: 373
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 397
- Raw deployments: 397
- Audits discovered: 5 (0 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 24 | 6.0% | 2025-09 |
| Pashov Audit Group | Tier 2 | 24 | 6.0% | 2025-08 |
| Trust Security | Tier 2 | 24 | 6.0% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraLocker | unknown | ethereum | n/a | [`0x3fa73f...9bbcac`](./contracts/ethereum-1/0x3fa73f1e5d8a792c80f426fc8f84fbf7ce9bbcac/) | ✅ Audited |
| BokkyPooBahsDateTimeContract | unknown | ethereum | n/a | [`0x90503d...624736`](./contracts/ethereum-1/0x90503d86e120b3b309cebf00c2ca013ab3624736/) | ✅ Audited |
| BoosterOwner | unknown | ethereum | n/a | [`0x3ce640...80f1e6`](./contracts/ethereum-1/0x3ce6408f923326f81a7d7929952947748180f1e6/) | ✅ Audited |
| BoosterOwnerSecondary | unknown | ethereum | n/a | [`0x256e1b...98b86d`](./contracts/ethereum-1/0x256e1bba846611c37cf89844a02435e6c098b86d/) | ✅ Audited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x063907...4a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ✅ Audited |
| ConvexStakingWrapperFrax | unknown | ethereum | n/a | [`0x9dd9f3...231beb`](./contracts/ethereum-1/0x9dd9f3e3c25547c7fb6f6e3c99965677a7231beb/) | ✅ Audited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ✅ Audited |
| CvxLocker | unknown | ethereum | n/a | [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/) | ✅ Audited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ✅ Audited |
| FPIControllerPool | unknown | ethereum | n/a | [`0x0ae84c...469e37`](./contracts/ethereum-1/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | ✅ Audited |
| Pool_USDC | unknown | ethereum | n/a | [`0x1864ca...da1c0d`](./contracts/ethereum-1/0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d/) | ✅ Audited |
| Pool_USDT | unknown | ethereum | n/a | [`0x7d3fcd...d54968`](./contracts/ethereum-1/0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968/) | ✅ Audited |
| RariFuseLendingAMO | unknown | ethereum | n/a | [`0x843df6...ddb0a2`](./contracts/ethereum-1/0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2/) | ✅ Audited |
| Stake_FXS_WETH | unknown | ethereum | n/a | [`0xa29367...1892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/) | ✅ Audited |
| StakingProxyERC20Joint | unknown | ethereum | n/a | [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/) | ✅ Audited |
| StakingRewardsMultiGauge_StakeDAO | unknown | ethereum | n/a | [`0xeb81b8...a96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ✅ Audited |
| TokenTrackerAMO | unknown | ethereum | n/a | [`0x1e077b...11a612`](./contracts/ethereum-1/0x1e077b2a6a67f543629c8fccc97229452211a612/) | ✅ Audited |
| TokenTrackerV2 | unknown | ethereum | n/a | [`0x37336a...4d09ee`](./contracts/ethereum-1/0x37336ad1f3a145c710247e6a14c9acc7f34d09ee/) | ✅ Audited |
| TreasuryManager | unknown | ethereum | n/a | [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/) | ✅ Audited |
| TreasuryManagerFrax | unknown | ethereum | n/a | [`0x9d464b...055f80`](./contracts/ethereum-1/0x9d464b601f74c8d3d42379921106b907f1055f80/) | ✅ Audited |
| TreasurySwap | unknown | ethereum | n/a | [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/) | ✅ Audited |
| UniV2TWAMMFactory | unknown | ethereum | n/a | [`0x54f454...b34e79`](./contracts/ethereum-1/0x54f454d747e037da288db568d4121117eab34e79/) | ✅ Audited |
| UniV3LiquidityAMO | unknown | ethereum | n/a | [`0x381430...f8f4e6`](./contracts/ethereum-1/0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6/) | ✅ Audited |
| UniV3LiquidityAMO_V2 | unknown | ethereum | n/a | [`0x0e8943...847440`](./contracts/ethereum-1/0x0e894387c073c6f62c9bbded21e33d3062847440/) | ✅ Audited |

### ⚠️ Verified + Unaudited (373)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAllocator | unknown | ethereum | n/a | [`0x0e1177...5fd9d4`](./contracts/ethereum-1/0x0e1177e47151be72e5992e0975000e73ab5fd9d4/) | ⚠️ Unaudited |
| AaveAllocatorV2 | unknown | ethereum | n/a | [`0x0d33c8...5be66f`](./contracts/ethereum-1/0x0d33c811d0fcc711bcb388dfb3a152de445be66f/) | ⚠️ Unaudited |
| ActivePool | unknown | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1e5acc...bbf64d`](./contracts/ethereum-1/0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x2b4d25...da01b4`](./contracts/ethereum-1/0x2b4d259a8f6e765ad881c4c1d04045d629da01b4/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7e983e...de8769`](./contracts/ethereum-1/0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769/) | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| AlchemixAllocatorV2 | unknown | ethereum | n/a | [`0x51563d...39bf56`](./contracts/ethereum-1/0x51563d61f8a5869b24eddfb2705308bae539bf56/) | ⚠️ Unaudited |
| AlchemixToken | unknown | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlphaOHM | unknown | ethereum | n/a | [`0x24ecfd...b0792e`](./contracts/ethereum-1/0x24ecfd535675f36ba1ab9c5d39b50dc097b0792e/) | ⚠️ Unaudited |
| AltExercisepOLY | unknown | ethereum | n/a | [`0x053449...daa729`](./contracts/ethereum-1/0x053449023313a67b0ea179ae2c4acd65afdaa729/) | ⚠️ Unaudited |
| AlToken | unknown | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | avalanche | n/a | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | arbitrum | n/a | [`0x739ca6...8abc4b`](./contracts/arbitrum-42161/0x739ca6d71365a08f584c8fc4e1029045fa8abc4b/) | ⚠️ Unaudited |
| aOHMMigration | unknown | ethereum | n/a | [`0x906d7a...ad8fd2`](./contracts/ethereum-1/0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2/) | ⚠️ Unaudited |
| ArbitratorVault | unknown | ethereum | n/a | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ⚠️ Unaudited |
| ATokenInstance | unknown | ethereum | n/a | [`0x4579a2...386419`](./contracts/ethereum-1/0x4579a27af00a62c0eb156349f31b345c08386419/) | ⚠️ Unaudited |
| AuraAllocator | unknown | ethereum | n/a | [`0x872ebd...4bac7e`](./contracts/ethereum-1/0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e/) | ⚠️ Unaudited |
| AuraAllocatorV2 | unknown | ethereum | n/a | [`0x8caf91...d98fad`](./contracts/ethereum-1/0x8caf91a6bb38d55fb530dec0fab535fa78d98fad/) | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | ethereum | n/a | [`0xc47162...651c0c`](./contracts/ethereum-1/0xc47162863a12227e5c3b0860715f9cf721651c0c/) | ⚠️ Unaudited |
| AuraClaimZap | unknown | ethereum | n/a | [`0x623b83...917ab2`](./contracts/ethereum-1/0x623b83755a39b12161a63748f3f595a530917ab2/) | ⚠️ Unaudited |
| AuraMerkleDrop | unknown | ethereum | n/a | [`0x1a661c...80a8fb`](./contracts/ethereum-1/0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb/) | ⚠️ Unaudited |
| AuraMinter | unknown | ethereum | n/a | [`0x59a5cc...e13707`](./contracts/ethereum-1/0x59a5ccd34943cd0adcf5ce703ee9f06889e13707/) | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | ethereum | n/a | [`0x404356...c20d1e`](./contracts/ethereum-1/0x4043569200f7a7a1d989abbabc2de2bde1c20d1e/) | ⚠️ Unaudited |
| AuraStakingProxy | unknown | ethereum | n/a | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | ⚠️ Unaudited |
| AuraToken | unknown | ethereum | n/a | [`0x665d01...59cf15`](./contracts/ethereum-1/0x665d01dbd89a0d1b693bb806feea499b5359cf15/) | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | ethereum | n/a | [`0x243466...53fac6`](./contracts/ethereum-1/0x24346652e0e2ae0ce05c781501fdf4fe4553fac6/) | ⚠️ Unaudited |
| BackingRefill | unknown | ethereum | n/a | [`0xc448b2...a09d8c`](./contracts/ethereum-1/0xc448b27aea1a825354c3296fcb2af598aea09d8c/) | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| BalancerLiquidityMigrator | unknown | ethereum | n/a | [`0xa9b52a...6618a6`](./contracts/ethereum-1/0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6/) | ⚠️ Unaudited |
| BalancerStrategy | unknown | ethereum | n/a | [`0x48bdc4...013cdc`](./contracts/ethereum-1/0x48bdc486c9df31848c62fdc85c5c77d4be013cdc/) | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | ethereum | n/a | [`0xa7429a...70e32c`](./contracts/ethereum-1/0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c/) | ⚠️ Unaudited |
| BaseRewardPool | unknown | ethereum | n/a | [`0x27a8c5...383fe9`](./contracts/ethereum-1/0x27a8c58e3de84280826d615d80ddb33930383fe9/) | ⚠️ Unaudited |
| BlockMiner | unknown | ethereum | n/a | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | ⚠️ Unaudited |
| BLVaultLido | unknown | ethereum | n/a | [`0xafe729...7c4b23`](./contracts/ethereum-1/0xafe729d57d2cc58978c2e01b4ec39c47fb7c4b23/) | ⚠️ Unaudited |
| BLVaultLusd | unknown | ethereum | n/a | [`0x9bc4d4...9655db`](./contracts/ethereum-1/0x9bc4d4bd9a5dea5974c52ba2b8ca061eea9655db/) | ⚠️ Unaudited |
| BLVaultManagerLusd | unknown | ethereum | n/a | [`0x263828...207bc9`](./contracts/ethereum-1/0x263828a42b1692f1b8efaf5ec6750cb7bb207bc9/) | ⚠️ Unaudited |
| BondCallback | unknown | ethereum | n/a | [`0x473f86...96c19b`](./contracts/ethereum-1/0x473f86ebfa7ab57c4c82c3592d6147104996c19b/) | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | ethereum | n/a | [`0x007f77...a5fed6`](./contracts/ethereum-1/0x007f7735baf391e207e3aa380bb53c4bd9a5fed6/) | ⚠️ Unaudited |
| BondManager | unknown | ethereum | n/a | [`0xf577c7...d2b2a3`](./contracts/ethereum-1/0xf577c77ee3578c7f216327f41b5d7221ead2b2a3/) | ⚠️ Unaudited |
| Booster | unknown | ethereum | n/a | [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/) | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | ethereum | n/a | [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | ⚠️ Unaudited |
| BoosterRewardManager | unknown | ethereum | n/a | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| BtrflyAllocator | unknown | ethereum | n/a | [`0xc8431f...c54e2f`](./contracts/ethereum-1/0xc8431feb345b46c30a4576c1b5faf080fdc54e2f/) | ⚠️ Unaudited |
| BTRFLYV2 | unknown | ethereum | n/a | [`0xc55126...2de5da`](./contracts/ethereum-1/0xc55126051b22ebb829d00368f4b12bde432de5da/) | ⚠️ Unaudited |
| BundleUtils | unknown | ethereum | n/a | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | ⚠️ Unaudited |
| BunniHelper | unknown | ethereum | n/a | [`0xed2519...daa300`](./contracts/ethereum-1/0xed2519d8a47fa10c6ba062e7156cc391bcdaa300/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0x9f08c2...310558`](./contracts/ethereum-1/0x9f08c2603e919a46d6d98289c9ada5250b310558/) | ⚠️ Unaudited |
| CCIPCrossChainBridge | unknown | ethereum | n/a | [`0xfbf638...1d143d`](./contracts/ethereum-1/0xfbf6383dc3f6010d403ecdf12ddc1311701d143d/) | ⚠️ Unaudited |
| CDAuctioneerLimitOrders | unknown | ethereum | n/a | [`0x7d8f82...fafc2e`](./contracts/ethereum-1/0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e/) | ⚠️ Unaudited |
| ChangeRewardsFacet | unknown | ethereum | n/a | [`0x138f85...128f74`](./contracts/ethereum-1/0x138f85d004b6333365e9a8282972c74132128f74/) | ⚠️ Unaudited |
| ChefRewardHook | unknown | ethereum | n/a | [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ⚠️ Unaudited |
| ChefToken | unknown | ethereum | n/a | [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | ethereum | n/a | [`0x999dbc...d0f56e`](./contracts/ethereum-1/0x999dbce0a18f721f04e793f916c30e72a9d0f56e/) | ⚠️ Unaudited |
| ClaimTransfer | unknown | ethereum | n/a | [`0x477822...d4e203`](./contracts/ethereum-1/0x4778228ef5ef7c96e1106e38b1c0ce7252d4e203/) | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | ethereum | n/a | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ⚠️ Unaudited |
| ClaimZap | unknown | ethereum | n/a | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| Clearinghouse | unknown | ethereum | n/a | [`0x1e094f...606fe0`](./contracts/ethereum-1/0x1e094fe00e13fd06d64eea4fb3cd912893606fe0/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| ComboOracle | unknown | ethereum | n/a | [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/) | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | ethereum | n/a | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | ethereum | n/a | [`0x184fe0...ab315b`](./contracts/ethereum-1/0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b/) | ⚠️ Unaudited |
| ComitiumFacet | unknown | ethereum | n/a | [`0x36d9f7...f5711c`](./contracts/ethereum-1/0x36d9f7465822eec6ab8090de665738397ef5711c/) | ⚠️ Unaudited |
| CommunityIssuance | unknown | ethereum | n/a | [`0xd8c9d9...08d816`](./contracts/ethereum-1/0xd8c9d9071123a059c6e0a945cf0e0c82b508d816/) | ⚠️ Unaudited |
| CommunityVault | unknown | ethereum | n/a | [`0x34d53e...06b8cb`](./contracts/ethereum-1/0x34d53e1af009ffdd6878413cc8e83d5a6906b8cb/) | ⚠️ Unaudited |
| ContractRegistryAdmin | unknown | ethereum | n/a | [`0xba05d4...eabdc5`](./contracts/ethereum-1/0xba05d48fb94dc76820eb7ea1b360fd6dfdeabdc5/) | ⚠️ Unaudited |
| ConvertibleDepositActivator | unknown | ethereum | n/a | [`0x5261fb...de991f`](./contracts/ethereum-1/0x5261fba7b50aa22b19b9edf939b771d109de991f/) | ⚠️ Unaudited |
| ConvertibleDepositAuctioneer | unknown | ethereum | n/a | [`0xf35193...29e39a`](./contracts/ethereum-1/0xf35193da8c10e44af10853ba5a3a1a6f7529e39a/) | ⚠️ Unaudited |
| ConvertibleDepositFacility | unknown | ethereum | n/a | [`0xebde55...5f9678`](./contracts/ethereum-1/0xebde552d851dd6dfd3d360c596d3f4af6e5f9678/) | ⚠️ Unaudited |
| ConvexAllocator | unknown | ethereum | n/a | [`0x3df5a3...56df78`](./contracts/ethereum-1/0x3df5a355457db3a4b5c744b8623a7721bf56df78/) | ⚠️ Unaudited |
| ConvexRewarder | unknown | ethereum | n/a | [`0x9e01aa...77b362`](./contracts/ethereum-1/0x9e01aac4b3e8781a85b21d9d9f848e72af77b362/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | [`0xa0334c...924ef8`](./contracts/ethereum-1/0xa0334c20700207ba4999a5596969fa63ec924ef8/) | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | ethereum | n/a | [`0xa82beb...b786a4`](./contracts/ethereum-1/0xa82bebc607cd258c66a6d5006a19401eafb786a4/) | ⚠️ Unaudited |
| CoolerComposites | unknown | ethereum | n/a | [`0x659376...1c57fd`](./contracts/ethereum-1/0x6593768febf9c95ac857fb7ef244d5738d1c57fd/) | ⚠️ Unaudited |
| CoolerFactory | unknown | ethereum | n/a | [`0x30ce56...db4216`](./contracts/ethereum-1/0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216/) | ⚠️ Unaudited |
| CoolerLtvOracle | unknown | ethereum | n/a | [`0x9ee9f0...91e8dc`](./contracts/ethereum-1/0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc/) | ⚠️ Unaudited |
| CoolerMonitoring | unknown | ethereum | n/a | [`0xa00f4b...557367`](./contracts/ethereum-1/0xa00f4b7c57a4995796d6e2ae4a6d5dec8a557367/) | ⚠️ Unaudited |
| CoolerTreasuryBorrower | unknown | ethereum | n/a | [`0xd58d74...3779b0`](./contracts/ethereum-1/0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0/) | ⚠️ Unaudited |
| CoolerUtils | unknown | ethereum | n/a | [`0x3704da...df5264`](./contracts/ethereum-1/0x3704da6b3e73e1c9ad4e2dd0ac1aedcc62df5264/) | ⚠️ Unaudited |
| CoolerV2Migrator | unknown | ethereum | n/a | [`0xe045bd...e358d2`](./contracts/ethereum-1/0xe045bd0a0d85e980aa152064c06eae6b6ae358d2/) | ⚠️ Unaudited |
| CPITrackerOracle | unknown | ethereum | n/a | [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/) | ⚠️ Unaudited |
| CrossChainBridge | unknown | arbitrum | n/a | [`0x20b383...fb285c`](./contracts/arbitrum-42161/0x20b3834091f038ce04d8686fac99ca44a0fb285c/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | ethereum | n/a | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | ethereum | n/a | [`0xd99391...76afff`](./contracts/ethereum-1/0xd99391df68cdb38a89828a6d51f3976e3e76afff/) | ⚠️ Unaudited |
| CurveLendOperator | unknown | ethereum | n/a | [`0xb64e29...9cb8f5`](./contracts/ethereum-1/0xb64e295a69928d3404e576a8ff3c8766559cb8f5/) | ⚠️ Unaudited |
| CurveStrategy | unknown | ethereum | n/a | [`0x4b152c...d6c4b2`](./contracts/ethereum-1/0x4b152ccb613ee248df9bb98195bc505665d6c4b2/) | ⚠️ Unaudited |
| CustomBANKBond | unknown | ethereum | n/a | [`0xa9df6a...9e6771`](./contracts/ethereum-1/0xa9df6a7fa0109839f38879620457ba7cc39e6771/) | ⚠️ Unaudited |
| CVXAllocatorV2 | unknown | ethereum | n/a | [`0x2d643d...c71681`](./contracts/ethereum-1/0x2d643df5de4e9ba063760d475beaa62821c71681/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | n/a | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| CvxCrvStakingHelper | unknown | ethereum | n/a | [`0x315014...edcf52`](./contracts/ethereum-1/0x3150141daff8c34b674ea3f925e3cd7d6eedcf52/) | ⚠️ Unaudited |
| cvxCrvToken | unknown | ethereum | n/a | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | ethereum | n/a | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFpisToken | unknown | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| cvxFxsToken | unknown | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | n/a | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| cvxRewardPool | unknown | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| CvxStakingProxy | unknown | ethereum | n/a | [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | ethereum | n/a | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | ⚠️ Unaudited |
| DefaultPool | unknown | ethereum | n/a | [`0x896a3f...0d741c`](./contracts/ethereum-1/0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c/) | ⚠️ Unaudited |
| DelegateEscrowFactory | unknown | ethereum | n/a | [`0xc84157...127a59`](./contracts/ethereum-1/0xc84157c2306238c9330fea14774a82a53a127a59/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0xcb4e21...7fbbf2`](./contracts/ethereum-1/0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2/) | ⚠️ Unaudited |
| DepositRedemptionVault | unknown | ethereum | n/a | [`0x20a3d8...9029db`](./contracts/ethereum-1/0x20a3d8510f2e1176e8db4cea9883a8287a9029db/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x9d6662...c75eca`](./contracts/ethereum-1/0x9d666232eb3cb0b8eda590024ff46fbc94c75eca/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xbdb02f...16c1e1`](./contracts/ethereum-1/0xbdb02f99cf77fadda54f418663139b636a16c1e1/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | [`0x27e606...697866`](./contracts/ethereum-1/0x27e606fdb5c922f8213dc588a434bf7583697866/) | ⚠️ Unaudited |
| DSProxy | unknown | ethereum | n/a | [`0x5db076...a7d11e`](./contracts/ethereum-1/0x5db0761487e26b555f5bfd5e40f4cbc3e1a7d11e/) | ⚠️ Unaudited |
| DSRAllocator | unknown | ethereum | n/a | [`0x0ea263...46d063`](./contracts/ethereum-1/0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063/) | ⚠️ Unaudited |
| Emergency | unknown | ethereum | n/a | [`0x9229b0...714a75`](./contracts/ethereum-1/0x9229b0b6fa4a58d67eb465567daa2c6a34714a75/) | ⚠️ Unaudited |
| EmissionManager | unknown | ethereum | n/a | [`0x50f441...48c0a2`](./contracts/ethereum-1/0x50f441a3387625bda8b8081ce3fd6c04cc48c0a2/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | arbitrum | n/a | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | avalanche | n/a | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ⚠️ Unaudited |
| ERC4626Price | unknown | ethereum | n/a | [`0x5d23a8...6f3037`](./contracts/ethereum-1/0x5d23a83c9bec7ac6acea3760bc2eeca9186f3037/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | avalanche | n/a | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | avalanche | n/a | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ⚠️ Unaudited |
| ETHBondDeposits | unknown | ethereum | n/a | [`0x2b0fbb...f33639`](./contracts/ethereum-1/0x2b0fbb411d355979005ab4f003d99d4aadf33639/) | ⚠️ Unaudited |
| ExercisepOLY | unknown | ethereum | n/a | [`0x06843e...c50315`](./contracts/ethereum-1/0x06843e4b350a04f6722b792e2cd49f570dc50315/) | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | ethereum | n/a | [`0xa3739b...fbd308`](./contracts/ethereum-1/0xa3739b206097317c72ef416f0e75bb8f58fbd308/) | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | ethereum | n/a | [`0x9dc3de...cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | ethereum | n/a | [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ⚠️ Unaudited |
| FactoryPortal | unknown | avalanche | n/a | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | ⚠️ Unaudited |
| FDT | unknown | ethereum | n/a | [`0xed1480...1a3677`](./contracts/ethereum-1/0xed1480d12be41d92f36f5f7bdd88212e381a3677/) | ⚠️ Unaudited |
| FeeBridge | unknown | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | n/a | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | ethereum | n/a | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | ethereum | n/a | [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | ethereum | n/a | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | ethereum | n/a | [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | ethereum | n/a | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| FPI | unknown | ethereum | n/a | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | n/a | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | ⚠️ Unaudited |
| FpisDepositor | unknown | ethereum | n/a | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | ⚠️ Unaudited |
| FpisRewardHook | unknown | ethereum | n/a | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | ⚠️ Unaudited |
| FRAXShares | unknown | ethereum | n/a | [`0x3432b6...c964d0`](./contracts/ethereum-1/0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0/) | ⚠️ Unaudited |
| FraxSharesAllocator | unknown | ethereum | n/a | [`0x55eae7...c7123b`](./contracts/ethereum-1/0x55eae7195b14f38e46a686bba70b87f4c4c7123b/) | ⚠️ Unaudited |
| FraxSharesAllocatorVoting | unknown | ethereum | n/a | [`0xde7b85...309475`](./contracts/ethereum-1/0xde7b85f52577b113181921a7aa8fc0c22e309475/) | ⚠️ Unaudited |
| FraxswapPair | unknown | ethereum | n/a | [`0x38633e...74699f`](./contracts/ethereum-1/0x38633ed142bcc8128b45ab04a2e4a6e53774699f/) | ⚠️ Unaudited |
| FXS1559_AMO | unknown | ethereum | n/a | [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/) | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | ethereum | n/a | [`0x7301bb...cedae5`](./contracts/ethereum-1/0x7301bb959ee286d8abc46f341144afe443cedae5/) | ⚠️ Unaudited |
| FxsAllocatorV2 | unknown | ethereum | n/a | [`0x0f953d...a73493`](./contracts/ethereum-1/0x0f953d861347414698f34b75dbfd6e7df1a73493/) | ⚠️ Unaudited |
| FxsDepositor | unknown | ethereum | n/a | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | ⚠️ Unaudited |
| FXSOracleWrapper | unknown | ethereum | n/a | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | ⚠️ Unaudited |
| FXSRewardHook | unknown | ethereum | n/a | [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x9555b0...49a8d9`](./contracts/ethereum-1/0x9555b042f969e561855e5f28cb1230819149a8d9/) | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | ethereum | n/a | [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | ⚠️ Unaudited |
| GeneralizedTokemak | unknown | ethereum | n/a | [`0x0483de...bc92f5`](./contracts/ethereum-1/0x0483de8c11ee2f0538a29f0c294246677cbc92f5/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x0cf30d...336b2e`](./contracts/ethereum-1/0x0cf30dc0d48604a301df8010cdc028c055336b2e/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | arbitrum | n/a | [`0x012bbf...e2ad4c`](./contracts/arbitrum-42161/0x012bbf0481b97170577745d2167ee14f63e2ad4c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | berachain | n/a | [`0x91494d...d099b5`](./contracts/berachain-80094/0x91494d1bc2286343d51c55e46ae80c9356d099b5/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xa55e0d...eef45b`](./contracts/ethereum-1/0xa55e0d3d697c4692e9c37bc3a7062b1beceef45b/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x094123...ceffcd`](./contracts/ethereum-1/0x0941233c964e7d7efeb05d253176e5e634ceffcd/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| HintHelpers | unknown | ethereum | n/a | [`0xe84251...f997c0`](./contracts/ethereum-1/0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0/) | ⚠️ Unaudited |
| Incrementer | unknown | ethereum | n/a | [`0x3eddac...50015d`](./contracts/ethereum-1/0x3eddacf2c184a302ff17682a7e48a0e47550015d/) | ⚠️ Unaudited |
| IncurDebt | unknown | ethereum | n/a | [`0x544f54...a72eca`](./contracts/ethereum-1/0x544f54c5f38d6d6b96331f7e75cb202b5ea72eca/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x028171...5b68a3`](./contracts/ethereum-1/0x028171bca77440897b824ca71d1c56cac55b68a3/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| JointVaultManager | unknown | ethereum | n/a | [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | ⚠️ Unaudited |
| Kernel | unknown | optimism | n/a | [`0x18878d...d3159c`](./contracts/optimism-10/0x18878df23e2a36f81e820e4b47b4a40576d3159c/) | ⚠️ Unaudited |
| LegacyBurner | unknown | ethereum | n/a | [`0x367149...908d0b`](./contracts/ethereum-1/0x367149cf2d04d3114ffd1cc6b273222664908d0b/) | ⚠️ Unaudited |
| LiquidityMigrator | unknown | ethereum | n/a | [`0x13dfef...5153a3`](./contracts/ethereum-1/0x13dfeff85779118136bb9826dcad8f3bd25153a3/) | ⚠️ Unaudited |
| LoanConsolidator | unknown | ethereum | n/a | [`0x784ca0...e50dbc`](./contracts/ethereum-1/0x784ca0c006b8651bab183829a99fa46bece50dbc/) | ⚠️ Unaudited |
| LockerAdmin | unknown | ethereum | n/a | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0xa5588e...7de3ad`](./contracts/ethereum-1/0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad/) | ⚠️ Unaudited |
| LockupContractFactory | unknown | ethereum | n/a | [`0x2ebef2...edcd4b`](./contracts/ethereum-1/0x2ebef24da09489218ba2becb01867f6daaedcd4b/) | ⚠️ Unaudited |
| LPLeverageLaunch | unknown | ethereum | n/a | [`0x26063b...fbdbbd`](./contracts/ethereum-1/0x26063b1f8dd844c07039f3bd172493d9fcfbdbbd/) | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LQTYToken | unknown | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| LUSDAllocator | unknown | ethereum | n/a | [`0x67bae8...007180`](./contracts/ethereum-1/0x67bae867b62fed0d1ca5f5f059d9a170e7007180/) | ⚠️ Unaudited |
| LUSDAllocatorV2 | unknown | ethereum | n/a | [`0x2c1700...d2a578`](./contracts/ethereum-1/0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578/) | ⚠️ Unaudited |
| LUSDAllocatorV2R | unknown | ethereum | n/a | [`0x47d8d0...0e655c`](./contracts/ethereum-1/0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c/) | ⚠️ Unaudited |
| LUSDToken | unknown | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| LZBridgeActivator | unknown | ethereum | n/a | [`0x0f8cc5...ff4af7`](./contracts/ethereum-1/0x0f8cc53ac14dda2f9aebfccb6cc3a4426bff4af7/) | ⚠️ Unaudited |
| LZBridgeAndDelegateConfig | unknown | ethereum | n/a | [`0x946b73...bf2f12`](./contracts/ethereum-1/0x946b739a26a8e7f035b27b075eb0ce8a54bf2f12/) | ⚠️ Unaudited |
| LZBridgeGateway | unknown | ethereum | n/a | [`0x23ddfc...0c5f23`](./contracts/ethereum-1/0x23ddfccdd5c573b9fd7fc0fcd70b687a0d0c5f23/) | ⚠️ Unaudited |
| LZCrossChainBridge | unknown | ethereum | n/a | [`0x9ad85d...829330`](./contracts/ethereum-1/0x9ad85d2f5efc076bb321dca425e67cf2e6829330/) | ⚠️ Unaudited |
| LZEndpointDelegate | unknown | ethereum | n/a | [`0xb218eb...9efac0`](./contracts/ethereum-1/0xb218eb347218031b2b9d17a19b040bd3509efac0/) | ⚠️ Unaudited |
| ManualTokenTrackerAMO | unknown | ethereum | n/a | [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/) | ⚠️ Unaudited |
| Mariposa | unknown | ethereum | n/a | [`0xca0f30...e4518b`](./contracts/ethereum-1/0xca0f30b51963c4532d95016098d74f0df9e4518b/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | ethereum | n/a | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x0ec203...e53f0e`](./contracts/ethereum-1/0x0ec2031af041f77c1fb11f807dcc66c766e53f0e/) | ⚠️ Unaudited |
| MetaGovernanceAllocator | unknown | ethereum | n/a | [`0x41afc1...02d58c`](./contracts/ethereum-1/0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c/) | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | ethereum | n/a | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | ⚠️ Unaudited |
| MigrationHelper | unknown | ethereum | n/a | [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/) | ⚠️ Unaudited |
| MigrationProposalHelper | unknown | ethereum | n/a | [`0x62633b...44a5d4`](./contracts/ethereum-1/0x62633b567ed4fc4078db75a5cb4b896b3d44a5d4/) | ⚠️ Unaudited |
| MigrationRebalancer | unknown | ethereum | n/a | [`0x77b19a...2c404e`](./contracts/ethereum-1/0x77b19adf335143d954cd5f59a01879fa532c404e/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | ⚠️ Unaudited |
| MimirToken | unknown | ethereum | n/a | [`0x30879a...94a478`](./contracts/ethereum-1/0x30879a856a022a92d80a329d6ad4ce22c194a478/) | ⚠️ Unaudited |
| MockTreasury | unknown | ethereum | n/a | [`0xdb682f...c8ed20`](./contracts/ethereum-1/0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20/) | ⚠️ Unaudited |
| MonoCooler | unknown | ethereum | n/a | [`0xdb591e...68e7cc`](./contracts/ethereum-1/0xdb591ea2e5db886da872654d58f6cc584b68e7cc/) | ⚠️ Unaudited |
| MSIGHelper | unknown | ethereum | n/a | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | arbitrum | n/a | [`0x90d5f3...f5f095`](./contracts/arbitrum-42161/0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | avalanche | n/a | [`0xd1f617...8e4b32`](./contracts/avalanche-43114/0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xfc92d0...49922b`](./contracts/ethereum-1/0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b/) | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | ethereum | n/a | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | ⚠️ Unaudited |
| NullValueCalculator | unknown | ethereum | n/a | [`0x0d1c9b...26254f`](./contracts/ethereum-1/0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f/) | ⚠️ Unaudited |
| OhmBondManager | unknown | ethereum | n/a | [`0x73d7e4...493896`](./contracts/ethereum-1/0x73d7e4bddecad7379d679e60f22788e501493896/) | ⚠️ Unaudited |
| OHMCirculatingSupplyConrtact | unknown | ethereum | n/a | [`0x0efff9...295034`](./contracts/ethereum-1/0x0efff9199aa1ac3c3e34e957567c1be8bf295034/) | ⚠️ Unaudited |
| OHMPreSale | unknown | ethereum | n/a | [`0x0e7620...14d893`](./contracts/ethereum-1/0x0e762067f824e9db190ad3565e3bf8cde314d893/) | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | ethereum | n/a | [`0x0ee5c2...4815b9`](./contracts/ethereum-1/0x0ee5c2865d6dff605e527b13c336f0b8774815b9/) | ⚠️ Unaudited |
| OlympusAuthority | unknown | berachain | n/a | [`0x060cb0...fcdcc0`](./contracts/berachain-80094/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | ⚠️ Unaudited |
| OlympusBondDepository | unknown | ethereum | n/a | [`0x10c0f9...89d08d`](./contracts/ethereum-1/0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d/) | ⚠️ Unaudited |
| OlympusBondDepositoryV2 | unknown | ethereum | n/a | [`0x902504...9a1ef6`](./contracts/ethereum-1/0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6/) | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | ethereum | n/a | [`0x6a617f...68bedc`](./contracts/ethereum-1/0x6a617fe9163c1499b9d2773fb2d0105a2368bedc/) | ⚠️ Unaudited |
| OlympusBoostedLiquidityRegistry | unknown | ethereum | n/a | [`0x375e06...3e2275`](./contracts/ethereum-1/0x375e06c694b5e50af8be8fb03495a612ea3e2275/) | ⚠️ Unaudited |
| OlympusClearinghouseRegistry | unknown | ethereum | n/a | [`0x24b96f...b4cad5`](./contracts/ethereum-1/0x24b96f2150bf1ed10d3e8b28ed33e392fbb4cad5/) | ⚠️ Unaudited |
| OlympusContractRegistry | unknown | ethereum | n/a | [`0x896315...8dde48`](./contracts/ethereum-1/0x89631595649cc6deba249a8012a5b2d88c8dde48/) | ⚠️ Unaudited |
| OlympusCVXBondDepository | unknown | ethereum | n/a | [`0x6754c6...021920`](./contracts/ethereum-1/0x6754c69fe02178f54ada19ebf1c5569826021920/) | ⚠️ Unaudited |
| OlympusCvxHolder | unknown | ethereum | n/a | [`0xdfc95a...e7f728`](./contracts/ethereum-1/0xdfc95aaf0a107daae2b350458ded4b7906e7f728/) | ⚠️ Unaudited |
| OlympusDAIDepository | unknown | ethereum | n/a | [`0xa64ed1...7a2a3c`](./contracts/ethereum-1/0xa64ed1b66cb2838ef2a198d8345c0ce6967a2a3c/) | ⚠️ Unaudited |
| OlympusDepositPositionManager | unknown | ethereum | n/a | [`0x02331a...1a9f1c`](./contracts/ethereum-1/0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c/) | ⚠️ Unaudited |
| OlympusDistributorContract | unknown | ethereum | n/a | [`0xce6568...a3f4c4`](./contracts/ethereum-1/0xce6568338708400d03f430d29f2eb40a33a3f4c4/) | ⚠️ Unaudited |
| OlympusERC20Token | unknown | optimism | n/a | [`0x060cb0...fcdcc0`](./contracts/optimism-10/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | ⚠️ Unaudited |
| OlympusGovDelegation | unknown | ethereum | n/a | [`0xd3204a...daad74`](./contracts/ethereum-1/0xd3204ae00d6599ba6e182c6d640a79d76cdaad74/) | ⚠️ Unaudited |
| OlympusHeart | unknown | ethereum | n/a | [`0x1652b5...b11656`](./contracts/ethereum-1/0x1652b503e0f1cf38b6246ed3b91cb3786bb11656/) | ⚠️ Unaudited |
| OlympusLender | unknown | arbitrum | n/a | [`0x868c3a...b30f03`](./contracts/arbitrum-42161/0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03/) | ⚠️ Unaudited |
| OlympusLPRewardPool | unknown | ethereum | n/a | [`0x39baa5...d34867`](./contracts/ethereum-1/0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867/) | ⚠️ Unaudited |
| OlympusLPStaking | unknown | ethereum | n/a | [`0xf11f0f...722223`](./contracts/ethereum-1/0xf11f0f078bfaf05a28eac345bb84fcb2a3722223/) | ⚠️ Unaudited |
| OlympusMinter | unknown | optimism | n/a | [`0x623164...4e1a1c`](./contracts/optimism-10/0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c/) | ⚠️ Unaudited |
| OlympusPrice | unknown | ethereum | n/a | [`0x9ded6a...3a6880`](./contracts/ethereum-1/0x9ded6a8b099c57bbeb9f81b76400a5a9c63a6880/) | ⚠️ Unaudited |
| OlympusPriceConfig | unknown | ethereum | n/a | [`0x3019ff...f14ba5`](./contracts/ethereum-1/0x3019ff96bd8308d1b66846b795e0aeefbdf14ba5/) | ⚠️ Unaudited |
| OlympusPricev1_2 | unknown | ethereum | n/a | [`0x465ccc...37f8fe`](./contracts/ethereum-1/0x465ccc69d285415bce199f855d3a68ea3537f8fe/) | ⚠️ Unaudited |
| OlympusProInverseBondCreator | unknown | ethereum | n/a | [`0xba42be...32ea47`](./contracts/ethereum-1/0xba42be149e5260eba4b82418a6306f55d532ea47/) | ⚠️ Unaudited |
| OlympusProMarketCreator | unknown | ethereum | n/a | [`0xb1fa0a...437ad1`](./contracts/ethereum-1/0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1/) | ⚠️ Unaudited |
| OlympusProV2 | unknown | ethereum | n/a | [`0x22ae99...cdb4c0`](./contracts/ethereum-1/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | ⚠️ Unaudited |
| OlympusRange | unknown | ethereum | n/a | [`0x399cd3...f60fb5`](./contracts/ethereum-1/0x399cd3685912bb56aaed0949119db6ce5df60fb5/) | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | ethereum | n/a | [`0x2ce62b...4a6cd1`](./contracts/ethereum-1/0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1/) | ⚠️ Unaudited |
| OlympusRoles | unknown | berachain | n/a | [`0x22ae99...cdb4c0`](./contracts/berachain-80094/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | ⚠️ Unaudited |
| OlympusSalesLite | unknown | ethereum | n/a | [`0x274466...218116`](./contracts/ethereum-1/0x27446629dcf58834640b38464a50ecf742218116/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/) | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | ethereum | n/a | [`0xbe7315...93242f`](./contracts/ethereum-1/0xbe731507810c8747c3e01e62c676b1ca6f93242f/) | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OlympusTreasury | unknown | ethereum | n/a | [`0x31f8cc...c846e8`](./contracts/ethereum-1/0x31f8cc382c9898b273eff4e0b7626a6987c846e8/) | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | ethereum | n/a | [`0x99e9b0...aeaa53`](./contracts/ethereum-1/0x99e9b0a9dc965361c2cbc07525ea591761aeaa53/) | ⚠️ Unaudited |
| OnsenAllocator | unknown | ethereum | n/a | [`0x031650...682ffc`](./contracts/ethereum-1/0x0316508a1b5abf1cae42912dc2c8b9774b682ffc/) | ⚠️ Unaudited |
| Operator | unknown | ethereum | n/a | [`0x0374c0...219326`](./contracts/ethereum-1/0x0374c001204ef5e7e4f5362a5a2430cb6c219326/) | ⚠️ Unaudited |
| OTCEscrow | unknown | ethereum | n/a | [`0xe3312c...e965eb`](./contracts/ethereum-1/0xe3312c3f1ab30878d9686452f7205ebe11e965eb/) | ⚠️ Unaudited |
| OwnedERC20 | unknown | ethereum | n/a | [`0x6d94b3...ba5f15`](./contracts/ethereum-1/0x6d94b3745b0ecf908b3b467907b947b43fba5f15/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | ethereum | n/a | [`0xdbd604...983871`](./contracts/ethereum-1/0xdbd604f170980910283d46d7f30e2cc2f1983871/) | ⚠️ Unaudited |
| pOLY | unknown | ethereum | n/a | [`0xb37796...5da5a1`](./contracts/ethereum-1/0xb37796941ca55b7e4243841930c104ee325da5a1/) | ⚠️ Unaudited |
| PoolBridge | unknown | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolHarvestHook | unknown | ethereum | n/a | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | ⚠️ Unaudited |
| PoolManager | unknown | ethereum | n/a | [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | ⚠️ Unaudited |
| PoolManagerProxy | unknown | ethereum | n/a | [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/) | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | ethereum | n/a | [`0xd20904...91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | ethereum | n/a | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | ethereum | n/a | [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | ⚠️ Unaudited |
| PoolManagerV2 | unknown | ethereum | n/a | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | ⚠️ Unaudited |
| PoolManagerV3 | unknown | ethereum | n/a | [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | ⚠️ Unaudited |
| PoolManagerV4 | unknown | ethereum | n/a | [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | ⚠️ Unaudited |
| PoolRewardHook | unknown | ethereum | n/a | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | ⚠️ Unaudited |
| PoolToken | unknown | ethereum | n/a | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | ⚠️ Unaudited |
| PoolTypes | unknown | ethereum | n/a | [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | ⚠️ Unaudited |
| PoolUtilities | unknown | ethereum | n/a | [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | ⚠️ Unaudited |
| PositionTokenRenderer | unknown | ethereum | n/a | [`0x9c859d...daa134`](./contracts/ethereum-1/0x9c859dc91db65bd7375660341231227336daa134/) | ⚠️ Unaudited |
| PreOlympusSales | unknown | ethereum | n/a | [`0x8c6229...3715ba`](./contracts/ethereum-1/0x8c6229d5f39ae5c53db75806002f380db73715ba/) | ⚠️ Unaudited |
| PreOlympusToken | unknown | ethereum | n/a | [`0x369944...71c800`](./contracts/ethereum-1/0x36994486c6e97c170065899d8659a28d7371c800/) | ⚠️ Unaudited |
| PriceConfigv2 | unknown | ethereum | n/a | [`0x5c69f6...ef9cbd`](./contracts/ethereum-1/0x5c69f61d384e41b55699c3b10523ed81c5ef9cbd/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x4c517d...2201de`](./contracts/ethereum-1/0x4c517d4e2c851ca76d7ec94b805269df0f2201de/) | ⚠️ Unaudited |
| Prime | unknown | ethereum | n/a | [`0x43d4a3...3502ad`](./contracts/ethereum-1/0x43d4a3cd90ddd2f8f4f693170c9c8098163502ad/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x069c24...76f577`](./contracts/ethereum-1/0x069c24600c2a03147d4e1d9b04d193151676f577/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ⚠️ Unaudited |
| RaribleUserToken | unknown | ethereum | n/a | [`0x598b10...6cb6ab`](./contracts/ethereum-1/0x598b1007a5a9b83dc50e06c668a4eae0986cb6ab/) | ⚠️ Unaudited |
| RariFuseAllocator | unknown | ethereum | n/a | [`0x061c86...80d818`](./contracts/ethereum-1/0x061c8610a784b8a1599de5b1157631e35180d818/) | ⚠️ Unaudited |
| ReceiptTokenManager | unknown | ethereum | n/a | [`0xd98b5b...beddd1`](./contracts/ethereum-1/0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1/) | ⚠️ Unaudited |
| RedeemHelper | unknown | ethereum | n/a | [`0xe1e838...0b819e`](./contracts/ethereum-1/0xe1e83825613de12e8f0502da939523558f0b819e/) | ⚠️ Unaudited |
| Relocker | unknown | ethereum | n/a | [`0x17b5a7...df6e9e`](./contracts/ethereum-1/0x17b5a77d6e7cde0e8d1f59bd1edb26d9badf6e9e/) | ⚠️ Unaudited |
| RescueToken | unknown | ethereum | n/a | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | ⚠️ Unaudited |
| ReserveMigrator | unknown | ethereum | n/a | [`0x986b99...2419f5`](./contracts/ethereum-1/0x986b99579bec7b990331474b66ccdb94fa2419f5/) | ⚠️ Unaudited |
| ReserveWrapper | unknown | ethereum | n/a | [`0xca6cd4...a386f9`](./contracts/ethereum-1/0xca6cd4f0a0033f8c20cf68d6df277e7001a386f9/) | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | [`0xd7807e...22a76e`](./contracts/ethereum-1/0xd7807e5752b368a6a64b76828aaff0750522a76e/) | ⚠️ Unaudited |
| RewardFactory | unknown | ethereum | n/a | [`0x45aad1...74f356`](./contracts/ethereum-1/0x45aad11f2fa2c215bc9686eb6f06d46e0474f356/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | arbitrum | n/a | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | ⚠️ Unaudited |
| RewardPoolDepositWrapper | unknown | ethereum | n/a | [`0xb188b1...9fec59`](./contracts/ethereum-1/0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | [`0x2458fd...1e42a7`](./contracts/ethereum-1/0x2458fd408f5d2c61a4819e9d6db43a81011e42a7/) | ⚠️ Unaudited |
| RLBTRFLY | unknown | ethereum | n/a | [`0x742b70...bc6027`](./contracts/ethereum-1/0x742b70151cd3bc7ab598aaff1d54b90c3ebc6027/) | ⚠️ Unaudited |
| RolesAdmin | unknown | arbitrum | n/a | [`0x69168c...c93b70`](./contracts/arbitrum-42161/0x69168c08acf66f002fd02e1b169f38c022c93b70/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x2075e3...727dd1`](./contracts/ethereum-1/0x2075e3b46470cfce124daaf52b46dcf965727dd1/) | ⚠️ Unaudited |
| SiloAMO | unknown | arbitrum | n/a | [`0xa8578c...68b97c`](./contracts/arbitrum-42161/0xa8578c9a73c2b4f75968ec76d6689045ff68b97c/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimplePriceFeedStrategy | unknown | ethereum | n/a | [`0xc8b00c...cef95d`](./contracts/ethereum-1/0xc8b00cbc78fd9d43e5cddd86099b9394c4cef95d/) | ⚠️ Unaudited |
| Skimmer | unknown | arbitrum | n/a | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/) | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x049066...ccd460`](./contracts/ethereum-1/0x04906695d6d12cf5459975d7c3c03356e4ccd460/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | [`0x8fdd3f...a741a6`](./contracts/ethereum-1/0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xe98ae8...2fd486`](./contracts/ethereum-1/0xe98ae8cd25cdc06562c29231db339d17d02fd486/) | ⚠️ Unaudited |
| StakingHelper | unknown | ethereum | n/a | [`0xa55ce3...790915`](./contracts/ethereum-1/0xa55ce3e25bd4cb6c5375aa393335b708db790915/) | ⚠️ Unaudited |
| StakingNFT | unknown | ethereum | n/a | [`0xe9f993...1c85bc`](./contracts/ethereum-1/0xe9f9936a639809e766685a436511eac3fb1c85bc/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyConvex | unknown | ethereum | n/a | [`0x75e7f7...c9618f`](./contracts/ethereum-1/0x75e7f7d871f4b5db0fa9b0f01b7422352ec9618f/) | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | ethereum | n/a | [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | ⚠️ Unaudited |
| StakingWarmup | unknown | ethereum | n/a | [`0x2882a5...07c5f1`](./contracts/ethereum-1/0x2882a5cd82ac49e06620382660f5ed932607c5f1/) | ⚠️ Unaudited |
| StashFactory | unknown | ethereum | n/a | [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | ⚠️ Unaudited |
| StashFactoryV2 | unknown | ethereum | n/a | [`0x884da0...9c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | ⚠️ Unaudited |
| StashTokenWrapper | unknown | ethereum | n/a | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | ⚠️ Unaudited |
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ⚠️ Unaudited |
| SynapseERC20 | unknown | optimism | n/a | [`0x0b5740...868ffb`](./contracts/optimism-10/0x0b5740c6b4a97f90ef2f0220651cca420b868ffb/) | ⚠️ Unaudited |
| TellorCaller | unknown | ethereum | n/a | [`0xad4305...641112`](./contracts/ethereum-1/0xad430500ecda11e38c9bcb08a702274b94641112/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/) | ⚠️ Unaudited |
| TimeToken | unknown | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokemakAMO | unknown | ethereum | n/a | [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | ⚠️ Unaudited |
| TokenMigrator | unknown | ethereum | n/a | [`0xe8b3c2...c925e4`](./contracts/ethereum-1/0xe8b3c26aa82b21a10237f1d3eebee40b54c925e4/) | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x375278...efe465`](./contracts/ethereum-1/0x375278d3c65f29c1a90e8550888f1439cfefe465/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x49ee75...66bd71`](./contracts/ethereum-1/0x49ee75278820f409ecd67063d8d717b38d66bd71/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5699d2...c4db96`](./contracts/ethereum-1/0x5699d20732a2efa9a895ef04bb210aa751c4db96/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x72170c...105da2`](./contracts/ethereum-1/0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc80c48...717c24`](./contracts/ethereum-1/0xc80c48862e4254f37047235298edb6aa35717c24/) | ⚠️ Unaudited |
| TreasuryConfig | unknown | ethereum | n/a | [`0x09236b...cec2d2`](./contracts/ethereum-1/0x09236b98144602df2d0d675183595c6442cec2d2/) | ⚠️ Unaudited |
| TreasuryCustodian | unknown | berachain | n/a | [`0x0d33c8...5be66f`](./contracts/berachain-80094/0x0d33c811d0fcc711bcb388dfb3a152de445be66f/) | ⚠️ Unaudited |
| TreasuryExtender | unknown | ethereum | n/a | [`0xb32ad0...2d17af`](./contracts/ethereum-1/0xb32ad041f23eafd682f57fce31d3ea4fd92d17af/) | ⚠️ Unaudited |
| TreasuryFunds | unknown | ethereum | n/a | [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | ⚠️ Unaudited |
| TreasuryLend | unknown | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryRegistry | unknown | ethereum | n/a | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | ⚠️ Unaudited |
| Tribe | unknown | ethereum | n/a | [`0xc7283b...20212b`](./contracts/ethereum-1/0xc7283b66eb1eb5fb86327f08e1b5816b0720212b/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| TWAMM_AMO | unknown | ethereum | n/a | [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/) | ⚠️ Unaudited |
| Unipool | unknown | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniSwapStrategy | unknown | ethereum | n/a | [`0x0692bd...771324`](./contracts/ethereum-1/0x0692bdcaa767dc62c420b7893a1045e657771324/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x2dce0d...bf4877`](./contracts/ethereum-1/0x2dce0dda1c2f98e0f171de8333c3c6fe1bbf4877/) | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | ethereum | n/a | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | ethereum | n/a | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| V1Migrator | unknown | ethereum | n/a | [`0x513165...90b8b0`](./contracts/ethereum-1/0x5131654efcd63f7b797e00118792e0d0dd90b8b0/) | ⚠️ Unaudited |
| ValueRouter | unknown | arbitrum | n/a | [`0x7fc567...faf801`](./contracts/arbitrum-42161/0x7fc5670b2041d34414b0b2178fc660b1e1faf801/) | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | ethereum | n/a | [`0x6df1c1...2f45a8`](./contracts/ethereum-1/0x6df1c1e379bc5a00a7b4c6e67a203333772f45a8/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x886ce9...62399d`](./contracts/ethereum-1/0x886ce997aa9ee4f8c2282e182ab72a705762399d/) | ⚠️ Unaudited |
| VaultEarnedView | unknown | ethereum | n/a | [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | ethereum | n/a | [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | ethereum | n/a | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | ethereum | n/a | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | ethereum | n/a | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | ethereum | n/a | [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | unknown | ethereum | n/a | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VestedEscrow | unknown | ethereum | n/a | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0x006dfa...703a06`](./contracts/ethereum-1/0x006dfa6d6aa7ebd0c8c706bf433a80c70d703a06/) | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | ethereum | n/a | [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | ethereum | n/a | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | ⚠️ Unaudited |
| VoterProxy | unknown | ethereum | n/a | [`0x42b047...e053ee`](./contracts/ethereum-1/0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee/) | ⚠️ Unaudited |
| VoterProxyOwner | unknown | ethereum | n/a | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | ⚠️ Unaudited |
| VotingBalance | unknown | ethereum | n/a | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | ⚠️ Unaudited |
| VotingBalanceMax | unknown | ethereum | n/a | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | ethereum | n/a | [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | ⚠️ Unaudited |
| VotingEligibility | unknown | ethereum | n/a | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x1f1818...255015`](./contracts/ethereum-1/0x1f18188cf19cc28172e54dc6f580229b2e255015/) | ⚠️ Unaudited |
| wOHM | unknown | ethereum | n/a | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | ⚠️ Unaudited |
| wsOHM | unknown | ethereum | n/a | [`0x583043...d57d4f`](./contracts/ethereum-1/0x583043074788bec7c5b2bcb555bb926483d57d4f/) | ⚠️ Unaudited |
| wsOHMStakingHelper | unknown | ethereum | n/a | [`0x9e0333...f17939`](./contracts/ethereum-1/0x9e0333d812a26df611dbc28e4e18703513f17939/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |
| YieldDirector | unknown | ethereum | n/a | [`0x260417...358f18`](./contracts/ethereum-1/0x2604170762a1dd22bb4f96c963043cd4fc358f18/) | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | ethereum | n/a | [`0x00952a...e39a2a`](./contracts/ethereum-1/0x00952a036f2098c82c75eb9cfaee2c9849e39a2a/) | ⚠️ Unaudited |
| YieldFUBondingCalculator | unknown | ethereum | n/a | [`0xa38da9...2b3f95`](./contracts/ethereum-1/0xa38da9cc8797501d9235be00a9e9972bcf2b3f95/) | ⚠️ Unaudited |
| YieldRepurchaseFacility | unknown | ethereum | n/a | [`0x271e35...0b0692`](./contracts/ethereum-1/0x271e35a8555a62f6ba76508e85dfd76d580b0692/) | ⚠️ Unaudited |
| ZeroDistributor | unknown | ethereum | n/a | [`0x3ef13f...441695`](./contracts/ethereum-1/0x3ef13f5b6818f7746e0a1c70cc27fa2da0441695/) | ⚠️ Unaudited |

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
| [2025-09-03_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-09-03_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-09 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, +20 more | inherited | 24 | n/a |
| [2025-08-08_pashov_staking_v2_morpho_support.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-08-08_pashov_staking_v2_morpho_support.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, +20 more | inherited | 24 | n/a |
| [2025-05-01_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-05-01_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-05 | aging | Inherited from Stake DAO — forked code, scoped to AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, +20 more | inherited | 24 | n/a |
| [2025-04-01_trust_security_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-04-01_trust_security_staking_v2.pdf) | Trust Security | Audit | 2025-04 | aging | Inherited from Stake DAO — forked code, scoped to AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, +20 more | inherited | 24 | n/a |
| [2026_03_26_trust_security_vlsdt.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/vlsdt/2026_03_26_trust_security_vlsdt.pdf) | Trust Security | Audit | 2026-04 | fresh | Inherited from Stake DAO — forked code, scoped to AuraLocker, BokkyPooBahsDateTimeContract, BoosterOwner, BoosterOwnerSecondary, +20 more | inherited | 24 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | Alchemist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51563d...39bf56`](./contracts/ethereum-1/0x51563d61f8a5869b24eddfb2705308bae539bf56/) | AlchemixAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ecfd...b0792e`](./contracts/ethereum-1/0x24ecfd535675f36ba1ab9c5d39b50dc097b0792e/) | AlphaOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x053449...daa729`](./contracts/ethereum-1/0x053449023313a67b0ea179ae2c4acd65afdaa729/) | AltExercisepOLY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x906d7a...ad8fd2`](./contracts/ethereum-1/0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2/) | aOHMMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ArbitratorVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4579a2...386419`](./contracts/ethereum-1/0x4579a27af00a62c0eb156349f31b345c08386419/) | ATokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x872ebd...4bac7e`](./contracts/ethereum-1/0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e/) | AuraAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8caf91...d98fad`](./contracts/ethereum-1/0x8caf91a6bb38d55fb530dec0fab535fa78d98fad/) | AuraAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc47162...651c0c`](./contracts/ethereum-1/0xc47162863a12227e5c3b0860715f9cf721651c0c/) | AuraBalRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x623b83...917ab2`](./contracts/ethereum-1/0x623b83755a39b12161a63748f3f595a530917ab2/) | AuraClaimZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a661c...80a8fb`](./contracts/ethereum-1/0x1a661cf8d8cd69dd2a423f3626a461a24280a8fb/) | AuraMerkleDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a5cc...e13707`](./contracts/ethereum-1/0x59a5ccd34943cd0adcf5ce703ee9f06889e13707/) | AuraMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x404356...c20d1e`](./contracts/ethereum-1/0x4043569200f7a7a1d989abbabc2de2bde1c20d1e/) | AuraPenaltyForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e863...f89c6c`](./contracts/ethereum-1/0xd9e863b7317a66fe0a4d2834910f604fd6f89c6c/) | AuraStakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665d01...59cf15`](./contracts/ethereum-1/0x665d01dbd89a0d1b693bb806feea499b5359cf15/) | AuraToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243466...53fac6`](./contracts/ethereum-1/0x24346652e0e2ae0ce05c781501fdf4fe4553fac6/) | AuraVestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc448b2...a09d8c`](./contracts/ethereum-1/0xc448b27aea1a825354c3296fcb2af598aea09d8c/) | BackingRefill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9b52a...6618a6`](./contracts/ethereum-1/0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6/) | BalancerLiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7429a...70e32c`](./contracts/ethereum-1/0xa7429af4deb16827dad0e71d8aeea9c2bf70e32c/) | BalLiquidityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a8c5...383fe9`](./contracts/ethereum-1/0x27a8c58e3de84280826d615d80ddb33930383fe9/) | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0dc49...4fcaeb`](./contracts/ethereum-1/0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb/) | BlockMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafe729...7c4b23`](./contracts/ethereum-1/0xafe729d57d2cc58978c2e01b4ec39c47fb7c4b23/) | BLVaultLido | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bc4d4...9655db`](./contracts/ethereum-1/0x9bc4d4bd9a5dea5974c52ba2b8ca061eea9655db/) | BLVaultLusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x263828...207bc9`](./contracts/ethereum-1/0x263828a42b1692f1b8efaf5ec6750cb7bb207bc9/) | BLVaultManagerLusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x473f86...96c19b`](./contracts/ethereum-1/0x473f86ebfa7ab57c4c82c3592d6147104996c19b/) | BondCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007f77...a5fed6`](./contracts/ethereum-1/0x007f7735baf391e207e3aa380bb53c4bd9a5fed6/) | BondFixedTermTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf577c7...d2b2a3`](./contracts/ethereum-1/0xf577c77ee3578c7f216327f41b5d7221ead2b2a3/) | BondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/) | Booster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | BoosterPlaceholder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | BoosterRewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8431f...c54e2f`](./contracts/ethereum-1/0xc8431feb345b46c30a4576c1b5faf080fdc54e2f/) | BtrflyAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc55126...2de5da`](./contracts/ethereum-1/0xc55126051b22ebb829d00368f4b12bde432de5da/) | BTRFLYV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1a7b8...719f5d`](./contracts/ethereum-1/0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d/) | BundleUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2519...daa300`](./contracts/ethereum-1/0xed2519d8a47fa10c6ba062e7156cc391bcdaa300/) | BunniHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f08c2...310558`](./contracts/ethereum-1/0x9f08c2603e919a46d6d98289c9ada5250b310558/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbf638...1d143d`](./contracts/ethereum-1/0xfbf6383dc3f6010d403ecdf12ddc1311701d143d/) | CCIPCrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d8f82...fafc2e`](./contracts/ethereum-1/0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e/) | CDAuctioneerLimitOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138f85...128f74`](./contracts/ethereum-1/0x138f85d004b6333365e9a8282972c74132128f74/) | ChangeRewardsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ChefRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ChefToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x999dbc...d0f56e`](./contracts/ethereum-1/0x999dbce0a18f721f04e793f916c30e72a9d0f56e/) | ClaimFeesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x477822...d4e203`](./contracts/ethereum-1/0x4778228ef5ef7c96e1106e38b1c0ce7252d4e203/) | ClaimTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ClaimVecrvFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e094f...606fe0`](./contracts/ethereum-1/0x1e094fe00e13fd06d64eea4fb3cd912893606fe0/) | Clearinghouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4462df...34490c`](./contracts/ethereum-1/0x4462df433d01f32ac0c4adb0a76dcf255634490c/) | ComboOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x734fd1...ca4a73`](./contracts/ethereum-1/0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73/) | ComboOracle_KyberSwapElastic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184fe0...ab315b`](./contracts/ethereum-1/0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b/) | ComboOracle_UniV2_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36d9f7...f5711c`](./contracts/ethereum-1/0x36d9f7465822eec6ab8090de665738397ef5711c/) | ComitiumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8c9d9...08d816`](./contracts/ethereum-1/0xd8c9d9071123a059c6e0a945cf0e0c82b508d816/) | CommunityIssuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34d53e...06b8cb`](./contracts/ethereum-1/0x34d53e1af009ffdd6878413cc8e83d5a6906b8cb/) | CommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba05d4...eabdc5`](./contracts/ethereum-1/0xba05d48fb94dc76820eb7ea1b360fd6dfdeabdc5/) | ContractRegistryAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5261fb...de991f`](./contracts/ethereum-1/0x5261fba7b50aa22b19b9edf939b771d109de991f/) | ConvertibleDepositActivator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf35193...29e39a`](./contracts/ethereum-1/0xf35193da8c10e44af10853ba5a3a1a6f7529e39a/) | ConvertibleDepositAuctioneer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebde55...5f9678`](./contracts/ethereum-1/0xebde552d851dd6dfd3d360c596d3f4af6e5f9678/) | ConvertibleDepositFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x659376...1c57fd`](./contracts/ethereum-1/0x6593768febf9c95ac857fb7ef244d5738d1c57fd/) | CoolerComposites | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ce56...db4216`](./contracts/ethereum-1/0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216/) | CoolerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ee9f0...91e8dc`](./contracts/ethereum-1/0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc/) | CoolerLtvOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa00f4b...557367`](./contracts/ethereum-1/0xa00f4b7c57a4995796d6e2ae4a6d5dec8a557367/) | CoolerMonitoring | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58d74...3779b0`](./contracts/ethereum-1/0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0/) | CoolerTreasuryBorrower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3704da...df5264`](./contracts/ethereum-1/0x3704da6b3e73e1c9ad4e2dd0ac1aedcc62df5264/) | CoolerUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe045bd...e358d2`](./contracts/ethereum-1/0xe045bd0a0d85e980aa152064c06eae6b6ae358d2/) | CoolerV2Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04baf3...ad8808`](./contracts/ethereum-1/0x04baf30115d7bac714709910dd286718cfad8808/) | CPITrackerOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20b383...fb285c`](./contracts/arbitrum-42161/0x20b3834091f038ce04d8686fac99ca44a0fb285c/) | CrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68655a...5d4123`](./contracts/ethereum-1/0x68655ad9852a99c87c0934c7290bb62cfa5d4123/) | CrvDepositorWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9df6a...9e6771`](./contracts/ethereum-1/0xa9df6a7fa0109839f38879620457ba7cc39e6771/) | CustomBANKBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d643d...c71681`](./contracts/ethereum-1/0x2d643df5de4e9ba063760d475beaa62821c71681/) | CVXAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | CvxCrvRari | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x315014...edcf52`](./contracts/ethereum-1/0x3150141daff8c34b674ea3f925e3cd7d6eedcf52/) | CvxCrvStakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x616e8b...d4608d`](./contracts/ethereum-1/0x616e8bfa43f920657b3497dbf40d6b1a02d4608d/) | cvxCrvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | CvxCrvUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | CvxDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | cvxFpisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | cvxFxsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | CvxMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | cvxRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | CvxStakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | CvxStakingProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x896a3f...0d741c`](./contracts/ethereum-1/0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc84157...127a59`](./contracts/ethereum-1/0xc84157c2306238c9330fea14774a82a53a127a59/) | DelegateEscrowFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb4e21...7fbbf2`](./contracts/ethereum-1/0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2/) | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a3d8...9029db`](./contracts/ethereum-1/0x20a3d8510f2e1176e8db4cea9883a8287a9029db/) | DepositRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d6662...c75eca`](./contracts/ethereum-1/0x9d666232eb3cb0b8eda590024ff46fbc94c75eca/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdb02f...16c1e1`](./contracts/ethereum-1/0xbdb02f99cf77fadda54f418663139b636a16c1e1/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27e606...697866`](./contracts/ethereum-1/0x27e606fdb5c922f8213dc588a434bf7583697866/) | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5db076...a7d11e`](./contracts/ethereum-1/0x5db0761487e26b555f5bfd5e40f4cbc3e1a7d11e/) | DSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea263...46d063`](./contracts/ethereum-1/0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063/) | DSRAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9229b0...714a75`](./contracts/ethereum-1/0x9229b0b6fa4a58d67eb465567daa2c6a34714a75/) | Emergency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50f441...48c0a2`](./contracts/ethereum-1/0x50f441a3387625bda8b8081ce3fd6c04cc48c0a2/) | EmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d23a8...6f3037`](./contracts/ethereum-1/0x5d23a83c9bec7ac6acea3760bc2eeca9186f3037/) | ERC4626Price | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ERC721Gateway_MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b0fbb...f33639`](./contracts/ethereum-1/0x2b0fbb411d355979005ab4f003d99d4aadf33639/) | ETHBondDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06843e...c50315`](./contracts/ethereum-1/0x06843e4b350a04f6722b792e2cd49f570dc50315/) | ExercisepOLY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3739b...fbd308`](./contracts/ethereum-1/0xa3739b206097317c72ef416f0e75bb8f58fbd308/) | ExtraRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc3de...cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ExtraRewardStashTokenRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ExtraRewardStashV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | FantomAnimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed1480...1a3677`](./contracts/ethereum-1/0xed1480d12be41d92f36f5f7bdd88212e381a3677/) | FDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | FeeReceiverCvxFpis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | FeeReceiverCvxFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | FeeReceiverPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | FeeReceiverVeFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | FeeReceiverVlCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | FeeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | FpisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | FpisRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c6a04...1f51ee`](./contracts/ethereum-1/0x9c6a04871d11b33645ab592f68c41bb2b41f51ee/) | FXS1559_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7301bb...cedae5`](./contracts/ethereum-1/0x7301bb959ee286d8abc46f341144afe443cedae5/) | FXS1559_AMO_V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f953d...a73493`](./contracts/ethereum-1/0x0f953d861347414698f34b75dbfd6e7df1a73493/) | FxsAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | FxsDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee0f15...ab3480`](./contracts/ethereum-1/0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480/) | FXSOracleWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | FXSRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9555b0...49a8d9`](./contracts/ethereum-1/0x9555b042f969e561855e5f28cb1230819149a8d9/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | GaugeExtraRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0483de...bc92f5`](./contracts/ethereum-1/0x0483de8c11ee2f0538a29f0c294246677cbc92f5/) | GeneralizedTokemak | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | gOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa55e0d...eef45b`](./contracts/ethereum-1/0xa55e0d3d697c4692e9c37bc3a7062b1beceef45b/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x604cb5...aab46b`](./contracts/ethereum-1/0x604cb55e89568b68e125e1c0272a71ff1faab46b/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094123...ceffcd`](./contracts/ethereum-1/0x0941233c964e7d7efeb05d253176e5e634ceffcd/) | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe84251...f997c0`](./contracts/ethereum-1/0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0/) | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eddac...50015d`](./contracts/ethereum-1/0x3eddacf2c184a302ff17682a7e48a0e47550015d/) | Incrementer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x544f54...a72eca`](./contracts/ethereum-1/0x544f54c5f38d6d6b96331f7e75cb202b5ea72eca/) | IncurDebt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | JointVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x18878d...d3159c`](./contracts/optimism-10/0x18878df23e2a36f81e820e4b47b4a40576d3159c/) | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x367149...908d0b`](./contracts/ethereum-1/0x367149cf2d04d3114ffd1cc6b273222664908d0b/) | LegacyBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13dfef...5153a3`](./contracts/ethereum-1/0x13dfeff85779118136bb9826dcad8f3bd25153a3/) | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x784ca0...e50dbc`](./contracts/ethereum-1/0x784ca0c006b8651bab183829a99fa46bece50dbc/) | LoanConsolidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | LockerAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5588e...7de3ad`](./contracts/ethereum-1/0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ebef2...edcd4b`](./contracts/ethereum-1/0x2ebef24da09489218ba2becb01867f6daaedcd4b/) | LockupContractFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26063b...fbdbbd`](./contracts/ethereum-1/0x26063b1f8dd844c07039f3bd172493d9fcfbdbbd/) | LPLeverageLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | LQTYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | LQTYToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67bae8...007180`](./contracts/ethereum-1/0x67bae867b62fed0d1ca5f5f059d9a170e7007180/) | LUSDAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1700...d2a578`](./contracts/ethereum-1/0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578/) | LUSDAllocatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47d8d0...0e655c`](./contracts/ethereum-1/0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c/) | LUSDAllocatorV2R | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | LUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8cc5...ff4af7`](./contracts/ethereum-1/0x0f8cc53ac14dda2f9aebfccb6cc3a4426bff4af7/) | LZBridgeActivator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x946b73...bf2f12`](./contracts/ethereum-1/0x946b739a26a8e7f035b27b075eb0ce8a54bf2f12/) | LZBridgeAndDelegateConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23ddfc...0c5f23`](./contracts/ethereum-1/0x23ddfccdd5c573b9fd7fc0fcd70b687a0d0c5f23/) | LZBridgeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ad85d...829330`](./contracts/ethereum-1/0x9ad85d2f5efc076bb321dca425e67cf2e6829330/) | LZCrossChainBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb218eb...9efac0`](./contracts/ethereum-1/0xb218eb347218031b2b9d17a19b040bd3509efac0/) | LZEndpointDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1be588...683f5a`](./contracts/ethereum-1/0x1be588641fb28eb8c2a51f1129707fb1e2683f5a/) | ManualTokenTrackerAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca0f30...e4518b`](./contracts/ethereum-1/0xca0f30b51963c4532d95016098d74f0df9e4518b/) | Mariposa | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | MerkleAirdropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec203...e53f0e`](./contracts/ethereum-1/0x0ec2031af041f77c1fb11f807dcc66c766e53f0e/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41afc1...02d58c`](./contracts/ethereum-1/0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c/) | MetaGovernanceAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aac16...0a3ca2`](./contracts/ethereum-1/0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2/) | MicroVeFXSStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cce10...9083fc`](./contracts/ethereum-1/0x5cce1098be1734b8910e22e240aa0673ab9083fc/) | MigrationHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62633b...44a5d4`](./contracts/ethereum-1/0x62633b567ed4fc4078db75a5cb4b896b3d44a5d4/) | MigrationProposalHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77b19a...2c404e`](./contracts/ethereum-1/0x77b19adf335143d954cd5f59a01879fa532c404e/) | MigrationRebalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30879a...94a478`](./contracts/ethereum-1/0x30879a856a022a92d80a329d6ad4ce22c194a478/) | MimirToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb682f...c8ed20`](./contracts/ethereum-1/0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20/) | MockTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb591e...68e7cc`](./contracts/ethereum-1/0xdb591ea2e5db886da872654d58f6cc584b68e7cc/) | MonoCooler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x977ead...7a8cbb`](./contracts/ethereum-1/0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb/) | MSIGHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafd3d3...0a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd1f617...8e4b32`](./contracts/avalanche-43114/0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32/) | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc92d0...49922b`](./contracts/ethereum-1/0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d9a9...802e5f`](./contracts/ethereum-1/0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f/) | NoopRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1c9b...26254f`](./contracts/ethereum-1/0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f/) | NullValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73d7e4...493896`](./contracts/ethereum-1/0x73d7e4bddecad7379d679e60f22788e501493896/) | OhmBondManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0efff9...295034`](./contracts/ethereum-1/0x0efff9199aa1ac3c3e34e957567c1be8bf295034/) | OHMCirculatingSupplyConrtact | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e7620...14d893`](./contracts/ethereum-1/0x0e762067f824e9db190ad3565e3bf8cde314d893/) | OHMPreSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ee5c2...4815b9`](./contracts/ethereum-1/0x0ee5c2865d6dff605e527b13c336f0b8774815b9/) | OHMPrincipleDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x060cb0...fcdcc0`](./contracts/berachain-80094/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | OlympusAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10c0f9...89d08d`](./contracts/ethereum-1/0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d/) | OlympusBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x902504...9a1ef6`](./contracts/ethereum-1/0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6/) | OlympusBondDepositoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a617f...68bedc`](./contracts/ethereum-1/0x6a617fe9163c1499b9d2773fb2d0105a2368bedc/) | OlympusBondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x375e06...3e2275`](./contracts/ethereum-1/0x375e06c694b5e50af8be8fb03495a612ea3e2275/) | OlympusBoostedLiquidityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24b96f...b4cad5`](./contracts/ethereum-1/0x24b96f2150bf1ed10d3e8b28ed33e392fbb4cad5/) | OlympusClearinghouseRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x896315...8dde48`](./contracts/ethereum-1/0x89631595649cc6deba249a8012a5b2d88c8dde48/) | OlympusContractRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6754c6...021920`](./contracts/ethereum-1/0x6754c69fe02178f54ada19ebf1c5569826021920/) | OlympusCVXBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfc95a...e7f728`](./contracts/ethereum-1/0xdfc95aaf0a107daae2b350458ded4b7906e7f728/) | OlympusCvxHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa64ed1...7a2a3c`](./contracts/ethereum-1/0xa64ed1b66cb2838ef2a198d8345c0ce6967a2a3c/) | OlympusDAIDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02331a...1a9f1c`](./contracts/ethereum-1/0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c/) | OlympusDepositPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce6568...a3f4c4`](./contracts/ethereum-1/0xce6568338708400d03f430d29f2eb40a33a3f4c4/) | OlympusDistributorContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x060cb0...fcdcc0`](./contracts/optimism-10/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | OlympusERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3204a...daad74`](./contracts/ethereum-1/0xd3204ae00d6599ba6e182c6d640a79d76cdaad74/) | OlympusGovDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1652b5...b11656`](./contracts/ethereum-1/0x1652b503e0f1cf38b6246ed3b91cb3786bb11656/) | OlympusHeart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x868c3a...b30f03`](./contracts/arbitrum-42161/0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03/) | OlympusLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39baa5...d34867`](./contracts/ethereum-1/0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867/) | OlympusLPRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf11f0f...722223`](./contracts/ethereum-1/0xf11f0f078bfaf05a28eac345bb84fcb2a3722223/) | OlympusLPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x623164...4e1a1c`](./contracts/optimism-10/0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c/) | OlympusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ded6a...3a6880`](./contracts/ethereum-1/0x9ded6a8b099c57bbeb9f81b76400a5a9c63a6880/) | OlympusPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3019ff...f14ba5`](./contracts/ethereum-1/0x3019ff96bd8308d1b66846b795e0aeefbdf14ba5/) | OlympusPriceConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465ccc...37f8fe`](./contracts/ethereum-1/0x465ccc69d285415bce199f855d3a68ea3537f8fe/) | OlympusPricev1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba42be...32ea47`](./contracts/ethereum-1/0xba42be149e5260eba4b82418a6306f55d532ea47/) | OlympusProInverseBondCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1fa0a...437ad1`](./contracts/ethereum-1/0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1/) | OlympusProMarketCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22ae99...cdb4c0`](./contracts/ethereum-1/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | OlympusProV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399cd3...f60fb5`](./contracts/ethereum-1/0x399cd3685912bb56aaed0949119db6ce5df60fb5/) | OlympusRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ce62b...4a6cd1`](./contracts/ethereum-1/0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1/) | OlympusRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x22ae99...cdb4c0`](./contracts/berachain-80094/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | OlympusRoles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274466...218116`](./contracts/ethereum-1/0x27446629dcf58834640b38464a50ecf742218116/) | OlympusSalesLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/) | OlympusStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe7315...93242f`](./contracts/ethereum-1/0xbe731507810c8747c3e01e62c676b1ca6f93242f/) | OlympusStakingDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | OlympusTokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31f8cc...c846e8`](./contracts/ethereum-1/0x31f8cc382c9898b273eff4e0b7626a6987c846e8/) | OlympusTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99e9b0...aeaa53`](./contracts/ethereum-1/0x99e9b0a9dc965361c2cbc07525ea591761aeaa53/) | OlympusV1BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031650...682ffc`](./contracts/ethereum-1/0x0316508a1b5abf1cae42912dc2c8b9774b682ffc/) | OnsenAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0374c0...219326`](./contracts/ethereum-1/0x0374c001204ef5e7e4f5362a5a2430cb6c219326/) | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3312c...e965eb`](./contracts/ethereum-1/0xe3312c3f1ab30878d9686452f7205ebe11e965eb/) | OTCEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d94b3...ba5f15`](./contracts/ethereum-1/0x6d94b3745b0ecf908b3b467907b947b43fba5f15/) | OwnedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbd604...983871`](./contracts/ethereum-1/0xdbd604f170980910283d46d7f30e2cc2f1983871/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb37796...5da5a1`](./contracts/ethereum-1/0xb37796941ca55b7e4243841930c104ee325da5a1/) | pOLY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | PoolHarvestHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | PoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a04e...94947a`](./contracts/ethereum-1/0x16a04e58a77ab1ce561a37371dfb479a8594947a/) | PoolManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd20904...91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | PoolManagerSecondaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | PoolManagerShutdownProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | PoolManagerTertiaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | PoolManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | PoolManagerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | PoolManagerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | PoolRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | PoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | PoolTypes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | PoolUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c859d...daa134`](./contracts/ethereum-1/0x9c859dc91db65bd7375660341231227336daa134/) | PositionTokenRenderer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c6229...3715ba`](./contracts/ethereum-1/0x8c6229d5f39ae5c53db75806002f380db73715ba/) | PreOlympusSales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369944...71c800`](./contracts/ethereum-1/0x36994486c6e97c170065899d8659a28d7371c800/) | PreOlympusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c69f6...ef9cbd`](./contracts/ethereum-1/0x5c69f61d384e41b55699c3b10523ed81c5ef9cbd/) | PriceConfigv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c517d...2201de`](./contracts/ethereum-1/0x4c517d4e2c851ca76d7ec94b805269df0f2201de/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43d4a3...3502ad`](./contracts/ethereum-1/0x43d4a3cd90ddd2f8f4f693170c9c8098163502ad/) | Prime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x598b10...6cb6ab`](./contracts/ethereum-1/0x598b1007a5a9b83dc50e06c668a4eae0986cb6ab/) | RaribleUserToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061c86...80d818`](./contracts/ethereum-1/0x061c8610a784b8a1599de5b1157631e35180d818/) | RariFuseAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd98b5b...beddd1`](./contracts/ethereum-1/0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1/) | ReceiptTokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1e838...0b819e`](./contracts/ethereum-1/0xe1e83825613de12e8f0502da939523558f0b819e/) | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17b5a7...df6e9e`](./contracts/ethereum-1/0x17b5a77d6e7cde0e8d1f59bd1edb26d9badf6e9e/) | Relocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | RescueToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x986b99...2419f5`](./contracts/ethereum-1/0x986b99579bec7b990331474b66ccdb94fa2419f5/) | ReserveMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca6cd4...a386f9`](./contracts/ethereum-1/0xca6cd4f0a0033f8c20cf68d6df277e7001a386f9/) | ReserveWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7807e...22a76e`](./contracts/ethereum-1/0xd7807e5752b368a6a64b76828aaff0750522a76e/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45aad1...74f356`](./contracts/ethereum-1/0x45aad11f2fa2c215bc9686eb6f06d46e0474f356/) | RewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | RewardMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb188b1...9fec59`](./contracts/ethereum-1/0xb188b1cb84fb0ba13cb9ee1292769f903a9fec59/) | RewardPoolDepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2458fd...1e42a7`](./contracts/ethereum-1/0x2458fd408f5d2c61a4819e9d6db43a81011e42a7/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x742b70...bc6027`](./contracts/ethereum-1/0x742b70151cd3bc7ab598aaff1d54b90c3ebc6027/) | RLBTRFLY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x69168c...c93b70`](./contracts/arbitrum-42161/0x69168c08acf66f002fd02e1b169f38c022c93b70/) | RolesAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa8578c...68b97c`](./contracts/arbitrum-42161/0xa8578c9a73c2b4f75968ec76d6689045ff68b97c/) | SiloAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b00c...cef95d`](./contracts/ethereum-1/0xc8b00cbc78fd9d43e5cddd86099b9394c4cef95d/) | SimplePriceFeedStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | Skimmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c13b...0d9f9f`](./contracts/ethereum-1/0x53c13ba8834a1567474b19822aad85c6f90d9f9f/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049066...ccd460`](./contracts/ethereum-1/0x04906695d6d12cf5459975d7c3c03356e4ccd460/) | sOlympus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fdd3f...a741a6`](./contracts/ethereum-1/0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe98ae8...2fd486`](./contracts/ethereum-1/0xe98ae8cd25cdc06562c29231db339d17d02fd486/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa55ce3...790915`](./contracts/ethereum-1/0xa55ce3e25bd4cb6c5375aa393335b708db790915/) | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9f993...1c85bc`](./contracts/ethereum-1/0xe9f9936a639809e766685a436511eac3fb1c85bc/) | StakingNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75e7f7...c9618f`](./contracts/ethereum-1/0x75e7f7d871f4b5db0fa9b0f01b7422352ec9618f/) | StakingProxyConvex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | StakingProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2882a5...07c5f1`](./contracts/ethereum-1/0x2882a5cd82ac49e06620382660f5ed932607c5f1/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | StashFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x884da0...9c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | StashFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | StashTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b5740...868ffb`](./contracts/optimism-10/0x0b5740c6b4a97f90ef2f0220651cca420b868ffb/) | SynapseERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad4305...641112`](./contracts/ethereum-1/0xad430500ecda11e38c9bcb08a702274b94641112/) | TellorCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8412eb...4e39ca`](./contracts/ethereum-1/0x8412ebf45bac1b340bbe8f318b928c466c4e39ca/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e710b...64f733`](./contracts/ethereum-1/0x4e710b33c87cedf832cd82e11d743a011864f733/) | TokemakAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8b3c2...c925e4`](./contracts/ethereum-1/0xe8b3c26aa82b21a10237f1d3eebee40b54c925e4/) | TokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | Transmuter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09236b...cec2d2`](./contracts/ethereum-1/0x09236b98144602df2d0d675183595c6442cec2d2/) | TreasuryConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0d33c8...5be66f`](./contracts/berachain-80094/0x0d33c811d0fcc711bcb388dfb3a152de445be66f/) | TreasuryCustodian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb32ad0...2d17af`](./contracts/ethereum-1/0xb32ad041f23eafd682f57fce31d3ea4fd92d17af/) | TreasuryExtender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | TreasuryFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | TreasuryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7283b...20212b`](./contracts/ethereum-1/0xc7283b66eb1eb5fb86327f08e1b5816b0720212b/) | Tribe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11fc7d...fa425b`](./contracts/ethereum-1/0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b/) | TWAMM_AMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | Unipool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | UniV2TWAMMRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | UniV3TWAPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x513165...90b8b0`](./contracts/ethereum-1/0x5131654efcd63f7b797e00118792e0d0dd90b8b0/) | V1Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7fc567...faf801`](./contracts/arbitrum-42161/0x7fc5670b2041d34414b0b2178fc660b1e1faf801/) | ValueRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6df1c1...2f45a8`](./contracts/ethereum-1/0x6df1c1e379bc5a00a7b4c6e67a203333772f45a8/) | VariableDebtTokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886ce9...62399d`](./contracts/ethereum-1/0x886ce997aa9ee4f8c2282e182ab72a705762399d/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | VaultEarnedView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5814cb...79fec9`](./contracts/ethereum-1/0x5814cbfb4f67cb384de981849d773a9da179fec9/) | veFPISYieldDistributorV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d31c...b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | veFPISYieldDistributorV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a0a7...1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | veFXSYieldDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62c4cf...0ebd45`](./contracts/ethereum-1/0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45/) | veFXSYieldDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aaa9a...b1c296`](./contracts/ethereum-1/0x2aaa9ae7101e0a59c52916d8db9acda311b1c296/) | veFXSYieldDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e...1fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | VestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006dfa...703a06`](./contracts/ethereum-1/0x006dfa6d6aa7ebd0c8c706bf433a80c70d703a06/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | vlCvxExtraRewardDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | VoteDelegateExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b047...e053ee`](./contracts/ethereum-1/0x42b047d1c751a871e61ec77bfde5fbbf2ce053ee/) | VoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | VotingBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | VotingBalanceMax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | VotingBalanceV2Gauges | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | VotingEligibility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f1818...255015`](./contracts/ethereum-1/0x1f18188cf19cc28172e54dc6f580229b2e255015/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | wOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x583043...d57d4f`](./contracts/ethereum-1/0x583043074788bec7c5b2bcb555bb926483d57d4f/) | wsOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e0333...f17939`](./contracts/ethereum-1/0x9e0333d812a26df611dbc28e4e18703513f17939/) | wsOHMStakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | XrpSwapAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260417...358f18`](./contracts/ethereum-1/0x2604170762a1dd22bb4f96c963043cd4fc358f18/) | YieldDirector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00952a...e39a2a`](./contracts/ethereum-1/0x00952a036f2098c82c75eb9cfaee2c9849e39a2a/) | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa38da9...2b3f95`](./contracts/ethereum-1/0xa38da9cc8797501d9235be00a9e9972bcf2b3f95/) | YieldFUBondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x271e35...0b0692`](./contracts/ethereum-1/0x271e35a8555a62f6ba76508e85dfd76d580b0692/) | YieldRepurchaseFacility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ef13f...441695`](./contracts/ethereum-1/0x3ef13f5b6818f7746e0a1c70cc27fa2da0441695/) | ZeroDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 362 |
| upstream | 21 |
| standard_library | 14 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=240

Fork inheritance lineage and inherited audits are included when available.
