# Agentic Audit Brief: swapbased

## Project Overview

- Project: swapbased (`swapbased`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.170Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, blast
- Contract surface: 99 unique implementations (99 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 91 project-authored contract(s) across 2 chain(s); 22 ERC20 tokens, 4 ERC721 NFTs, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 18 common project-authored base contract(s) (governable, uniswapv2erc20, peripheryimmutablestate). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Quickswap** (`quickswap`) in the AlgebraPoolDeployer subsystem.
1 audits inherited from `quickswap`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 99; live-surface contracts included: 99 (99 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/92 (1.1%)
- Deployed-live implementations: 99 of 99 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/99
- Verified + Unaudited implementations: 98
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 99
- Raw deployments: 99
- Audits discovered: 1 (0 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 1.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPoolDeployer | unknown | base | n/a | [`0x373ef4...2b136c`](./contracts/base-8453/0x373ef48bea740396f6e37c8838afd7245c2b136c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (98)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aETH | unknown | blast | n/a | [`0x6a4698...e2a50a`](./contracts/blast-81457/0x6a4698baa14d072a1a1d235c6990033230e2a50a/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | base | n/a | [`0x288c0e...20f9fb`](./contracts/base-8453/0x288c0ea15b95d37891b2ffcde1d6ebc32620f9fb/) | ⚠️ Unaudited |
| AlgebraFactory | unknown | base | n/a | [`0xa37359...c97ee3`](./contracts/base-8453/0xa37359e63d1aa44c0acb2a4605d3b45785c97ee3/) | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | base | n/a | [`0x51cc8c...fd7fe5`](./contracts/base-8453/0x51cc8c43009c66d1c8a9032031fcd3f83afd7fe5/) | ⚠️ Unaudited |
| AlgebraPool | unknown | base | n/a | [`0x3ce99e...eae8c9`](./contracts/base-8453/0x3ce99e3b6e4207dfbaccfe42132e763834eae8c9/) | ⚠️ Unaudited |
| BaseToken | unknown | base | n/a | [`0xd07379...0f615a`](./contracts/base-8453/0xd07379a755a8f11b57610154861d694b2a0f615a/) | ⚠️ Unaudited |
| BaseTokenLocker | unknown | base | n/a | [`0xb24686...4637d0`](./contracts/base-8453/0xb24686bebc6a051ff0f67e972a3713ccf64637d0/) | ⚠️ Unaudited |
| BaseVester | unknown | base | n/a | [`0x7e9fb8...95d29d`](./contracts/base-8453/0x7e9fb800edee21561ccdc03051225c077095d29d/) | ⚠️ Unaudited |
| BatchSender | unknown | base | n/a | [`0x00a3e9...612a2e`](./contracts/base-8453/0x00a3e96d2b77e3717b0f8749ca243d6b8b612a2e/) | ⚠️ Unaudited |
| BLP | unknown | base | n/a | [`0x6ecca8...96d837`](./contracts/base-8453/0x6ecca85569f1101bb54fcd71d81984084096d837/) | ⚠️ Unaudited |
| BlpBalance | unknown | base | n/a | [`0x095540...7f14d8`](./contracts/base-8453/0x095540e694568bf7b99c0388364811fd907f14d8/) | ⚠️ Unaudited |
| BlpManager | unknown | base | n/a | [`0x1142c2...0a34da`](./contracts/base-8453/0x1142c2db68e9e87b7358e129a40771dbca0a34da/) | ⚠️ Unaudited |
| BlpToken | unknown | base | n/a | [`0x2168eb...177dfe`](./contracts/base-8453/0x2168eb98c6d416afb85e7beef5abdc4fb4177dfe/) | ⚠️ Unaudited |
| BlpVester | unknown | base | n/a | [`0x152893...493f08`](./contracts/base-8453/0x1528935dc59d3b58644e8ffb1ae0d0068d493f08/) | ⚠️ Unaudited |
| BnBASE | unknown | base | n/a | [`0x1081df...f041c1`](./contracts/base-8453/0x1081df8cd3560894191ef26e0ac078d8d2f041c1/) | ⚠️ Unaudited |
| BonusBaseDistributor | unknown | base | n/a | [`0xde7c38...ef6fe7`](./contracts/base-8453/0xde7c381f9eaccd29f317849d297d5db575ef6fe7/) | ⚠️ Unaudited |
| BonusBaseTracker | unknown | base | n/a | [`0x1ef74f...ae6949`](./contracts/base-8453/0x1ef74f173948a0c000caa4bce876a52fdfae6949/) | ⚠️ Unaudited |
| CoinToken | unknown | base | n/a | [`0x215600...759232`](./contracts/base-8453/0x2156006a207a793b4069a2b72be58dc2bd759232/) | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | blast | n/a | [`0x460253...5c5cdf`](./contracts/blast-81457/0x460253c6135bdc227ce62700e4dd5aa12a5c5cdf/) | ⚠️ Unaudited |
| DackieV3Factory | unknown | blast | n/a | [`0x3e1402...2a348a`](./contracts/blast-81457/0x3e1402b653f219d0840a44cbf7fd8f193c2a348a/) | ⚠️ Unaudited |
| DackieV3PoolDeployer | unknown | blast | n/a | [`0x2aaa56...9ded6f`](./contracts/blast-81457/0x2aaa5661912056945df9bd91aa2aadf7669ded6f/) | ⚠️ Unaudited |
| EsBASE | unknown | base | n/a | [`0xde30ef...a5f2a7`](./contracts/base-8453/0xde30ef700a3b9ce0c2b1150d6462613533a5f2a7/) | ⚠️ Unaudited |
| FarmingCenter | unknown | base | n/a | [`0x0ca32f...3d2119`](./contracts/base-8453/0x0ca32f1d67d9e805d752aa6250b9e37ac43d2119/) | ⚠️ Unaudited |
| FarmingCenterVault | unknown | base | n/a | [`0x054276...237433`](./contracts/base-8453/0x05427631902c45e34d16f8d03accf6caa1237433/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | base | n/a | [`0x349bed...5cb6b7`](./contracts/base-8453/0x349bedc6c779efd4021db98d19ac3b5a725cb6b7/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | base | n/a | [`0xa8bfe8...911463`](./contracts/base-8453/0xa8bfe8ad36f64ab4f037bbdb5e78507640911463/) | ⚠️ Unaudited |
| FeeBaseDistributor | unknown | base | n/a | [`0x6a0eb6...d8ce78`](./contracts/base-8453/0x6a0eb6f2cc7b8c6c9ba445b50e90c9f94cd8ce78/) | ⚠️ Unaudited |
| FeeBaseTracker | unknown | base | n/a | [`0xae7093...e29b88`](./contracts/base-8453/0xae7093ddc18c1a8ab56cad2c9d94eec2dce29b88/) | ⚠️ Unaudited |
| FeeBlpDistributor | unknown | base | n/a | [`0x0da182...1b23a4`](./contracts/base-8453/0x0da182b4ca0738eedba89f925218b345441b23a4/) | ⚠️ Unaudited |
| FeeBlpTracker | unknown | base | n/a | [`0x772def...6bc383`](./contracts/base-8453/0x772defa308f27ccf8fdbeda4860fe617846bc383/) | ⚠️ Unaudited |
| LaunchpadPresaleHH | unknown | base | n/a | [`0x682761...a4d9c8`](./contracts/base-8453/0x682761bc9924d7e8097e3d9e51f05c0963a4d9c8/) | ⚠️ Unaudited |
| LaunchpadPresaleWag | unknown | base | n/a | [`0x7350ad...22c72e`](./contracts/base-8453/0x7350add9b8014ceceaec87f59e50be9e5222c72e/) | ⚠️ Unaudited |
| LockSBF | unknown | blast | n/a | [`0x2b6260...77eb29`](./contracts/blast-81457/0x2b6260507de2723bd6a04d8199fe73ed4377eb29/) | ⚠️ Unaudited |
| Lottery | unknown | base | n/a | [`0x06f3f1...c48d38`](./contracts/base-8453/0x06f3f14545389cedfc6294ae8d05bed473c48d38/) | ⚠️ Unaudited |
| MasterChefCoin | unknown | base | n/a | [`0x1b732f...3c2b39`](./contracts/base-8453/0x1b732f612cd5f7d4b4bb514065170b84ea3c2b39/) | ⚠️ Unaudited |
| MasterChefCoinMinter | unknown | base | n/a | [`0x2bb324...1a2d88`](./contracts/base-8453/0x2bb324ab59c52a7714f164ed6b13a6ff4a1a2d88/) | ⚠️ Unaudited |
| MasterchefV2 | unknown | base | n/a | [`0x0a7c4c...e848dd`](./contracts/base-8453/0x0a7c4c8c1c39909bff94e4c63281bf12d4e848dd/) | ⚠️ Unaudited |
| MasterChefV3 | unknown | base | n/a | [`0x2182fc...2bb9c9`](./contracts/base-8453/0x2182fc226f6cef64237d6fac0ecd89cf482bb9c9/) | ⚠️ Unaudited |
| Multicall2 | unknown | blast | n/a | [`0x49a6ad...c7caa1`](./contracts/blast-81457/0x49a6ada975791f189c5613a36450766b6fc7caa1/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | base | n/a | [`0x01e16b...651ddd`](./contracts/base-8453/0x01e16b8b4567f3f26af9a46b8c603cdcd4651ddd/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | blast | n/a | [`0x097697...513503`](./contracts/blast-81457/0x097697e4c12cd1fb8a3824bf50927771ca513503/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | base | n/a | [`0x091f8b...933669`](./contracts/base-8453/0x091f8ba9889e592805917313740833dcc9933669/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | blast | n/a | [`0x00a799...4b7d50`](./contracts/blast-81457/0x00a7996dd03d509cb4a95ff6dca307c8a24b7d50/) | ⚠️ Unaudited |
| oCOIN | unknown | base | n/a | [`0x5b8f63...97ef03`](./contracts/base-8453/0x5b8f638330d7d6bd9d43811fe702f6894e97ef03/) | ⚠️ Unaudited |
| OrderBook | unknown | base | n/a | [`0x1821e3...78d352`](./contracts/base-8453/0x1821e34c08888309546d156c378ceb848278d352/) | ⚠️ Unaudited |
| OrderBookReader | unknown | base | n/a | [`0xdfe54b...0ecd88`](./contracts/base-8453/0xdfe54b029c787f6418f9088590e81981dc0ecd88/) | ⚠️ Unaudited |
| OtcSwap | unknown | base | n/a | [`0x58d1aa...b70597`](./contracts/base-8453/0x58d1aa8596783114ee18d4d5cb232d6914b70597/) | ⚠️ Unaudited |
| PancakeV3LmPoolDeployer | unknown | base | n/a | [`0x04cedb...1bf1f0`](./contracts/base-8453/0x04cedb48a22ecb8d81bdf5b19b1fd7c93f1bf1f0/) | ⚠️ Unaudited |
| PancakeV3Pool | unknown | base | n/a | [`0x31afd6...5dd6be`](./contracts/base-8453/0x31afd670cf750f33b5145612130198594e5dd6be/) | ⚠️ Unaudited |
| PositionManager | unknown | base | n/a | [`0xa3d25d...19c1f0`](./contracts/base-8453/0xa3d25d0037e50b6526678da38c7211fcc519c1f0/) | ⚠️ Unaudited |
| PositionRouter | unknown | base | n/a | [`0x11b09d...acb79e`](./contracts/base-8453/0x11b09dbb0b743e0963c80ee43746e85804acb79e/) | ⚠️ Unaudited |
| PriceFeed | unknown | base | n/a | [`0x9f810e...42b50b`](./contracts/base-8453/0x9f810e3e91192d19a4ea631fbb5b6cafb042b50b/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | base | n/a | [`0x5bc0de...51186a`](./contracts/base-8453/0x5bc0de97342ff90e2b6845a9002d8f09ac51186a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x21f450...2a6743`](./contracts/base-8453/0x21f450ecce030ac65761b7504d1d48338d2a6743/) | ⚠️ Unaudited |
| Quoter | unknown | base | n/a | [`0x64f477...43136c`](./contracts/base-8453/0x64f477c68049b554113bab6526038bcf5643136c/) | ⚠️ Unaudited |
| QuoterV2 | unknown | blast | n/a | [`0x2af5ec...f0cdc7`](./contracts/blast-81457/0x2af5ec4211b32bfeb42c57f34356e99f92f0cdc7/) | ⚠️ Unaudited |
| Reader | unknown | base | n/a | [`0xc7adbc...9c497e`](./contracts/base-8453/0xc7adbcf46da2f2b9fd575adaaeab39a5669c497e/) | ⚠️ Unaudited |
| ReferralReader | unknown | base | n/a | [`0xd365c7...6174ca`](./contracts/base-8453/0xd365c702d5082f10065cba324c2d0b10796174ca/) | ⚠️ Unaudited |
| ReferralStorage | unknown | base | n/a | [`0x43b434...5448c5`](./contracts/base-8453/0x43b4345a0a5d64142220aa44d22d3043cb5448c5/) | ⚠️ Unaudited |
| RewardReader | unknown | base | n/a | [`0xe05986...3076eb`](./contracts/base-8453/0xe05986f84b4d74dd13f2743ea751c7e1e83076eb/) | ⚠️ Unaudited |
| RewardRouter | unknown | base | n/a | [`0x265a30...8d0c60`](./contracts/base-8453/0x265a30f14e34248567b5b0a83978c38df38d0c60/) | ⚠️ Unaudited |
| Router | unknown | base | n/a | [`0xd72d5a...72ed74`](./contracts/base-8453/0xd72d5ad987bd875fd43efee6258129064972ed74/) | ⚠️ Unaudited |
| ShortsTracker | unknown | base | n/a | [`0x9eaa8a...be754a`](./contracts/base-8453/0x9eaa8a7546cef01c47e35b8684a9fa9d8bbe754a/) | ⚠️ Unaudited |
| SingleStakingRewardsBase | unknown | base | n/a | [`0x083db0...c75674`](./contracts/base-8453/0x083db0b4a4d963f5b61cfa8ac02fe60136c75674/) | ⚠️ Unaudited |
| SingleStakingRewardsFactoryXBase | unknown | base | n/a | [`0x1cfa1f...def1a4`](./contracts/base-8453/0x1cfa1ffa92a6854e716a71acad9a915fbcdef1a4/) | ⚠️ Unaudited |
| SingleStakingRewardsOtherTokens | unknown | base | n/a | [`0x1106b3...08d60a`](./contracts/base-8453/0x1106b361371f5e7048c1b58b3b8729305d08d60a/) | ⚠️ Unaudited |
| SingleStakingRewardsSBF | unknown | blast | n/a | [`0x068f02...ae1198`](./contracts/blast-81457/0x068f02f8573eefbede351ce90c588e88dbae1198/) | ⚠️ Unaudited |
| SingleStakingRewardsXBase | unknown | base | n/a | [`0x2af5ec...f0cdc7`](./contracts/base-8453/0x2af5ec4211b32bfeb42c57f34356e99f92f0cdc7/) | ⚠️ Unaudited |
| SmartRouter | unknown | blast | n/a | [`0x0c19e5...9ba38c`](./contracts/blast-81457/0x0c19e5ae2e3ab474302e8d85e17353e1a79ba38c/) | ⚠️ Unaudited |
| SmartRouterHelper | unknown | base | n/a | [`0x53166a...8c4f3a`](./contracts/base-8453/0x53166a392a27122059e67bbd6002d52fae8c4f3a/) | ⚠️ Unaudited |
| StakedBaseDistributor | unknown | base | n/a | [`0x1376d6...ec90b6`](./contracts/base-8453/0x1376d6ba696f2c201cf5b44ee2b7751e55ec90b6/) | ⚠️ Unaudited |
| StakedBaseTracker | unknown | base | n/a | [`0x3bb51e...69d5ad`](./contracts/base-8453/0x3bb51e85130c03455b408e77b0aff1fdc669d5ad/) | ⚠️ Unaudited |
| StakedBlp | unknown | base | n/a | [`0x2874fd...7d205e`](./contracts/base-8453/0x2874fdef8a20087d04d84f31792d6d0b5a7d205e/) | ⚠️ Unaudited |
| StakedBlpDistributor | unknown | base | n/a | [`0x16cedc...4bc4c4`](./contracts/base-8453/0x16cedc246f2dd4b01e28babd3d0e9fc4724bc4c4/) | ⚠️ Unaudited |
| StakedBlpTracker | unknown | base | n/a | [`0x73c7ce...fe7708`](./contracts/base-8453/0x73c7ce996503109a111cb71afd00889390fe7708/) | ⚠️ Unaudited |
| StakingRewards | unknown | base | n/a | [`0x1b0d1c...846a62`](./contracts/base-8453/0x1b0d1c09fd360ade0caf4bffe2933e2cc8846a62/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | base | n/a | [`0x69db24...228d6c`](./contracts/base-8453/0x69db2459883a335ead2fc2ba98e839cf0c228d6c/) | ⚠️ Unaudited |
| SwapBlastToken | unknown | blast | n/a | [`0xd07379...0f615a`](./contracts/blast-81457/0xd07379a755a8f11b57610154861d694b2a0f615a/) | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | [`0x08da11...771f8c`](./contracts/base-8453/0x08da1101626536d0d27ac68bbfcaf880ab771f8c/) | ⚠️ Unaudited |
| TickLens | unknown | base | n/a | [`0x3ab346...bd4d8e`](./contracts/base-8453/0x3ab346298bb59f3759ee9cf51703959978bd4d8e/) | ⚠️ Unaudited |
| Timelock | unknown | base | n/a | [`0x4e35e4...f5632d`](./contracts/base-8453/0x4e35e400e0851412e015502be60de981d5f5632d/) | ⚠️ Unaudited |
| TimelockHandler | unknown | base | n/a | [`0xf27f4e...7d908e`](./contracts/base-8453/0xf27f4e81ddcb8a073a67f514638ea220a87d908e/) | ⚠️ Unaudited |
| TokenManager | unknown | base | n/a | [`0xabf992...166049`](./contracts/base-8453/0xabf992e5b5455f6fa0e4474710be6daa27166049/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x0a0f93...6937b0`](./contracts/base-8453/0x0a0f9353ebb330688428335f88071adf476937b0/) | ⚠️ Unaudited |
| TreasuryVester | unknown | base | n/a | [`0x32dd44...7d1903`](./contracts/base-8453/0x32dd44e5f04d1e8d7d2782cce26f90fb417d1903/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | base | n/a | [`0xce512f...e9ad76`](./contracts/base-8453/0xce512f490bf09c4544a12a7264750b28fbe9ad76/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | base | n/a | [`0x04c9f1...367300`](./contracts/base-8453/0x04c9f118d21e8b767d2e50c946f0cc9f6c367300/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0x164bc4...656eed`](./contracts/base-8453/0x164bc404c64fa426882d98dbce9b10d5df656eed/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | base | n/a | [`0xaaa3b1...31f066`](./contracts/base-8453/0xaaa3b1f1bd7bcc97fd1917c18ade665c5d31f066/) | ⚠️ Unaudited |
| USDB | unknown | base | n/a | [`0x025aac...938e9a`](./contracts/base-8453/0x025aacb4a93626b49c1b43c0afa4bd9e81938e9a/) | ⚠️ Unaudited |
| V3Migrator | unknown | base | n/a | [`0x3e2eae...c84912`](./contracts/base-8453/0x3e2eaeb03f38bde59900dcb60d5bf0d45bc84912/) | ⚠️ Unaudited |
| Vault | unknown | base | n/a | [`0x210b49...54d064`](./contracts/base-8453/0x210b49f74040a385840a3276e81ba9010954d064/) | ⚠️ Unaudited |
| VaultErrorController | unknown | base | n/a | [`0xbbaf43...b14c85`](./contracts/base-8453/0xbbaf4304d871bdd1e2876a69aec27ac82fb14c85/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | base | n/a | [`0xdc4821...059bfb`](./contracts/base-8453/0xdc4821b932c4ca62dc0dc7aed10077245e059bfb/) | ⚠️ Unaudited |
| VaultReader | unknown | base | n/a | [`0x02a73d...7bbcb8`](./contracts/base-8453/0x02a73d670f98b6a7d48f32577f3b9a2d2a7bbcb8/) | ⚠️ Unaudited |
| VaultUtils | unknown | base | n/a | [`0x2b6260...77eb29`](./contracts/base-8453/0x2b6260507de2723bd6a04d8199fe73ed4377eb29/) | ⚠️ Unaudited |
| xBASE | unknown | base | n/a | [`0xda8db1...29365c`](./contracts/base-8453/0xda8db1c30e5710fe1a5a0264cbde5b713829365c/) | ⚠️ Unaudited |
| xSBF | unknown | blast | n/a | [`0xfee958...3d6c91`](./contracts/blast-81457/0xfee958fa595b4478cea7560c91400a98b83d6c91/) | ⚠️ Unaudited |

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
| [Audit-Report-PeckShield.pdf](https://github.com/orbs-network/twap/blob/master/Audit-Report-PeckShield.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Quickswap — forked code, scoped to AlgebraPoolDeployer | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x6a4698...e2a50a`](./contracts/blast-81457/0x6a4698baa14d072a1a1d235c6990033230e2a50a/) | aETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x288c0e...20f9fb`](./contracts/base-8453/0x288c0ea15b95d37891b2ffcde1d6ebc32620f9fb/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa37359...c97ee3`](./contracts/base-8453/0xa37359e63d1aa44c0acb2a4605d3b45785c97ee3/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x51cc8c...fd7fe5`](./contracts/base-8453/0x51cc8c43009c66d1c8a9032031fcd3f83afd7fe5/) | AlgebraLimitFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ce99e...eae8c9`](./contracts/base-8453/0x3ce99e3b6e4207dfbaccfe42132e763834eae8c9/) | AlgebraPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd07379...0f615a`](./contracts/base-8453/0xd07379a755a8f11b57610154861d694b2a0f615a/) | BaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb24686...4637d0`](./contracts/base-8453/0xb24686bebc6a051ff0f67e972a3713ccf64637d0/) | BaseTokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7e9fb8...95d29d`](./contracts/base-8453/0x7e9fb800edee21561ccdc03051225c077095d29d/) | BaseVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00a3e9...612a2e`](./contracts/base-8453/0x00a3e96d2b77e3717b0f8749ca243d6b8b612a2e/) | BatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ecca8...96d837`](./contracts/base-8453/0x6ecca85569f1101bb54fcd71d81984084096d837/) | BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x095540...7f14d8`](./contracts/base-8453/0x095540e694568bf7b99c0388364811fd907f14d8/) | BlpBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1142c2...0a34da`](./contracts/base-8453/0x1142c2db68e9e87b7358e129a40771dbca0a34da/) | BlpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2168eb...177dfe`](./contracts/base-8453/0x2168eb98c6d416afb85e7beef5abdc4fb4177dfe/) | BlpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x152893...493f08`](./contracts/base-8453/0x1528935dc59d3b58644e8ffb1ae0d0068d493f08/) | BlpVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1081df...f041c1`](./contracts/base-8453/0x1081df8cd3560894191ef26e0ac078d8d2f041c1/) | BnBASE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xde7c38...ef6fe7`](./contracts/base-8453/0xde7c381f9eaccd29f317849d297d5db575ef6fe7/) | BonusBaseDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ef74f...ae6949`](./contracts/base-8453/0x1ef74f173948a0c000caa4bce876a52fdfae6949/) | BonusBaseTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x215600...759232`](./contracts/base-8453/0x2156006a207a793b4069a2b72be58dc2bd759232/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x460253...5c5cdf`](./contracts/blast-81457/0x460253c6135bdc227ce62700e4dd5aa12a5c5cdf/) | DackieInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3e1402...2a348a`](./contracts/blast-81457/0x3e1402b653f219d0840a44cbf7fd8f193c2a348a/) | DackieV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2aaa56...9ded6f`](./contracts/blast-81457/0x2aaa5661912056945df9bd91aa2aadf7669ded6f/) | DackieV3PoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xde30ef...a5f2a7`](./contracts/base-8453/0xde30ef700a3b9ce0c2b1150d6462613533a5f2a7/) | EsBASE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca32f...3d2119`](./contracts/base-8453/0x0ca32f1d67d9e805d752aa6250b9e37ac43d2119/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x054276...237433`](./contracts/base-8453/0x05427631902c45e34d16f8d03accf6caa1237433/) | FarmingCenterVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x349bed...5cb6b7`](./contracts/base-8453/0x349bedc6c779efd4021db98d19ac3b5a725cb6b7/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa8bfe8...911463`](./contracts/base-8453/0xa8bfe8ad36f64ab4f037bbdb5e78507640911463/) | FastPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a0eb6...d8ce78`](./contracts/base-8453/0x6a0eb6f2cc7b8c6c9ba445b50e90c9f94cd8ce78/) | FeeBaseDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xae7093...e29b88`](./contracts/base-8453/0xae7093ddc18c1a8ab56cad2c9d94eec2dce29b88/) | FeeBaseTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0da182...1b23a4`](./contracts/base-8453/0x0da182b4ca0738eedba89f925218b345441b23a4/) | FeeBlpDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x772def...6bc383`](./contracts/base-8453/0x772defa308f27ccf8fdbeda4860fe617846bc383/) | FeeBlpTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x682761...a4d9c8`](./contracts/base-8453/0x682761bc9924d7e8097e3d9e51f05c0963a4d9c8/) | LaunchpadPresaleHH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7350ad...22c72e`](./contracts/base-8453/0x7350add9b8014ceceaec87f59e50be9e5222c72e/) | LaunchpadPresaleWag | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2b6260...77eb29`](./contracts/blast-81457/0x2b6260507de2723bd6a04d8199fe73ed4377eb29/) | LockSBF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06f3f1...c48d38`](./contracts/base-8453/0x06f3f14545389cedfc6294ae8d05bed473c48d38/) | Lottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b732f...3c2b39`](./contracts/base-8453/0x1b732f612cd5f7d4b4bb514065170b84ea3c2b39/) | MasterChefCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bb324...1a2d88`](./contracts/base-8453/0x2bb324ab59c52a7714f164ed6b13a6ff4a1a2d88/) | MasterChefCoinMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a7c4c...e848dd`](./contracts/base-8453/0x0a7c4c8c1c39909bff94e4c63281bf12d4e848dd/) | MasterchefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2182fc...2bb9c9`](./contracts/base-8453/0x2182fc226f6cef64237d6fac0ecd89cf482bb9c9/) | MasterChefV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01e16b...651ddd`](./contracts/base-8453/0x01e16b8b4567f3f26af9a46b8c603cdcd4651ddd/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x097697...513503`](./contracts/blast-81457/0x097697e4c12cd1fb8a3824bf50927771ca513503/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x091f8b...933669`](./contracts/base-8453/0x091f8ba9889e592805917313740833dcc9933669/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x00a799...4b7d50`](./contracts/blast-81457/0x00a7996dd03d509cb4a95ff6dca307c8a24b7d50/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b8f63...97ef03`](./contracts/base-8453/0x5b8f638330d7d6bd9d43811fe702f6894e97ef03/) | oCOIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1821e3...78d352`](./contracts/base-8453/0x1821e34c08888309546d156c378ceb848278d352/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdfe54b...0ecd88`](./contracts/base-8453/0xdfe54b029c787f6418f9088590e81981dc0ecd88/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x58d1aa...b70597`](./contracts/base-8453/0x58d1aa8596783114ee18d4d5cb232d6914b70597/) | OtcSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04cedb...1bf1f0`](./contracts/base-8453/0x04cedb48a22ecb8d81bdf5b19b1fd7c93f1bf1f0/) | PancakeV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31afd6...5dd6be`](./contracts/base-8453/0x31afd670cf750f33b5145612130198594e5dd6be/) | PancakeV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa3d25d...19c1f0`](./contracts/base-8453/0xa3d25d0037e50b6526678da38c7211fcc519c1f0/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b09d...acb79e`](./contracts/base-8453/0x11b09dbb0b743e0963c80ee43746e85804acb79e/) | PositionRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f810e...42b50b`](./contracts/base-8453/0x9f810e3e91192d19a4ea631fbb5b6cafb042b50b/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5bc0de...51186a`](./contracts/base-8453/0x5bc0de97342ff90e2b6845a9002d8f09ac51186a/) | PriceFeedTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x64f477...43136c`](./contracts/base-8453/0x64f477c68049b554113bab6526038bcf5643136c/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2af5ec...f0cdc7`](./contracts/blast-81457/0x2af5ec4211b32bfeb42c57f34356e99f92f0cdc7/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc7adbc...9c497e`](./contracts/base-8453/0xc7adbcf46da2f2b9fd575adaaeab39a5669c497e/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd365c7...6174ca`](./contracts/base-8453/0xd365c702d5082f10065cba324c2d0b10796174ca/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x43b434...5448c5`](./contracts/base-8453/0x43b4345a0a5d64142220aa44d22d3043cb5448c5/) | ReferralStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe05986...3076eb`](./contracts/base-8453/0xe05986f84b4d74dd13f2743ea751c7e1e83076eb/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x265a30...8d0c60`](./contracts/base-8453/0x265a30f14e34248567b5b0a83978c38df38d0c60/) | RewardRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd72d5a...72ed74`](./contracts/base-8453/0xd72d5ad987bd875fd43efee6258129064972ed74/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9eaa8a...be754a`](./contracts/base-8453/0x9eaa8a7546cef01c47e35b8684a9fa9d8bbe754a/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x083db0...c75674`](./contracts/base-8453/0x083db0b4a4d963f5b61cfa8ac02fe60136c75674/) | SingleStakingRewardsBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cfa1f...def1a4`](./contracts/base-8453/0x1cfa1ffa92a6854e716a71acad9a915fbcdef1a4/) | SingleStakingRewardsFactoryXBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1106b3...08d60a`](./contracts/base-8453/0x1106b361371f5e7048c1b58b3b8729305d08d60a/) | SingleStakingRewardsOtherTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x068f02...ae1198`](./contracts/blast-81457/0x068f02f8573eefbede351ce90c588e88dbae1198/) | SingleStakingRewardsSBF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2af5ec...f0cdc7`](./contracts/base-8453/0x2af5ec4211b32bfeb42c57f34356e99f92f0cdc7/) | SingleStakingRewardsXBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0c19e5...9ba38c`](./contracts/blast-81457/0x0c19e5ae2e3ab474302e8d85e17353e1a79ba38c/) | SmartRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x53166a...8c4f3a`](./contracts/base-8453/0x53166a392a27122059e67bbd6002d52fae8c4f3a/) | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1376d6...ec90b6`](./contracts/base-8453/0x1376d6ba696f2c201cf5b44ee2b7751e55ec90b6/) | StakedBaseDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bb51e...69d5ad`](./contracts/base-8453/0x3bb51e85130c03455b408e77b0aff1fdc669d5ad/) | StakedBaseTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2874fd...7d205e`](./contracts/base-8453/0x2874fdef8a20087d04d84f31792d6d0b5a7d205e/) | StakedBlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16cedc...4bc4c4`](./contracts/base-8453/0x16cedc246f2dd4b01e28babd3d0e9fc4724bc4c4/) | StakedBlpDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73c7ce...fe7708`](./contracts/base-8453/0x73c7ce996503109a111cb71afd00889390fe7708/) | StakedBlpTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b0d1c...846a62`](./contracts/base-8453/0x1b0d1c09fd360ade0caf4bffe2933e2cc8846a62/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x69db24...228d6c`](./contracts/base-8453/0x69db2459883a335ead2fc2ba98e839cf0c228d6c/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd07379...0f615a`](./contracts/blast-81457/0xd07379a755a8f11b57610154861d694b2a0f615a/) | SwapBlastToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08da11...771f8c`](./contracts/base-8453/0x08da1101626536d0d27ac68bbfcaf880ab771f8c/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ab346...bd4d8e`](./contracts/base-8453/0x3ab346298bb59f3759ee9cf51703959978bd4d8e/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e35e4...f5632d`](./contracts/base-8453/0x4e35e400e0851412e015502be60de981d5f5632d/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf27f4e...7d908e`](./contracts/base-8453/0xf27f4e81ddcb8a073a67f514638ea220a87d908e/) | TimelockHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xabf992...166049`](./contracts/base-8453/0xabf992e5b5455f6fa0e4474710be6daa27166049/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32dd44...7d1903`](./contracts/base-8453/0x32dd44e5f04d1e8d7d2782cce26f90fb417d1903/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x025aac...938e9a`](./contracts/base-8453/0x025aacb4a93626b49c1b43c0afa4bd9e81938e9a/) | USDB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e2eae...c84912`](./contracts/base-8453/0x3e2eaeb03f38bde59900dcb60d5bf0d45bc84912/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x210b49...54d064`](./contracts/base-8453/0x210b49f74040a385840a3276e81ba9010954d064/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbbaf43...b14c85`](./contracts/base-8453/0xbbaf4304d871bdd1e2876a69aec27ac82fb14c85/) | VaultErrorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc4821...059bfb`](./contracts/base-8453/0xdc4821b932c4ca62dc0dc7aed10077245e059bfb/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02a73d...7bbcb8`](./contracts/base-8453/0x02a73d670f98b6a7d48f32577f3b9a2d2a7bbcb8/) | VaultReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b6260...77eb29`](./contracts/base-8453/0x2b6260507de2723bd6a04d8199fe73ed4377eb29/) | VaultUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda8db1...29365c`](./contracts/base-8453/0xda8db1c30e5710fe1a5a0264cbde5b713829365c/) | xBASE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xfee958...3d6c91`](./contracts/blast-81457/0xfee958fa595b4478cea7560c91400a98b83d6c91/) | xSBF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 92 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=1

Fork inheritance lineage and inherited audits are included when available.
