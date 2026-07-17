# Agentic Audit Brief: stabull-finance

## Project Overview

- Project: stabull-finance (`stabull-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.637Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum, polygon
- Contract surface: 81 unique implementations (81 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 77 project-authored contract(s) across 3 chain(s); 30 ERC20 tokens, 3 ERC721 NFTs, 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 26 common project-authored base contract(s) (storage, nodelegatecall, abstractfiattokenv1). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **DFX Finance** (`dfx-finance`) in the Curves, Orchestrator, Swaps, Zap subsystem.
1 audits inherited from `dfx-finance`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 81; live-surface contracts included: 81 (81 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/77 (3.9%)
- Deployed-live implementations: 81 of 81 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/81
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 81
- Raw deployments: 81
- Audits discovered: 1 (0 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 4.9% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curves | unknown | ethereum | n/a | [`0x0ec3d999351ff8856dc6b644cca315255a21005f`](./contracts/ethereum-1/0x0ec3d999351ff8856dc6b644cca315255a21005f/) | ✅ Audited |
| Orchestrator | unknown | polygon | n/a | [`0x33262e50c4aa0a0e39660bfd2dce3041241e943e`](./contracts/polygon-137/0x33262e50c4aa0a0e39660bfd2dce3041241e943e/) | ✅ Audited |
| Swaps | unknown | ethereum | n/a | [`0x265acce2886bc7980b5e95122079221234d0a8f0`](./contracts/ethereum-1/0x265acce2886bc7980b5e95122079221234d0a8f0/) | ✅ Audited |
| Zap | unknown | polygon | n/a | [`0x2624f2c6c63ffc97e2d845fe18f6dcac734411ad`](./contracts/polygon-137/0x2624f2c6c63ffc97e2d845fe18f6dcac734411ad/) | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssimilatorFactory | unknown | base | n/a | [`0x0d41b9befb679e4ea694fc1be598eb6e31b9c888`](./contracts/base-8453/0x0d41b9befb679e4ea694fc1be598eb6e31b9c888/) | ⚠️ Unaudited |
| AssimilatorV2 | unknown | base | n/a | [`0x1246b19c59fff6a92e875b57402743cf576c86bb`](./contracts/base-8453/0x1246b19c59fff6a92e875b57402743cf576c86bb/) | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | [`0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12`](./contracts/base-8453/0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12/) | ⚠️ Unaudited |
| BridgedFrankencoin | unknown | base | n/a | [`0xd4dd9e2f021bb459d5a5f6c24c12fe09c5d45553`](./contracts/base-8453/0xd4dd9e2f021bb459d5a5f6c24c12fe09c5d45553/) | ⚠️ Unaudited |
| BRZToken | unknown | polygon | n/a | [`0x0a20ae0f6662bc7cc835fa64855722d50329aa77`](./contracts/polygon-137/0x0a20ae0f6662bc7cc835fa64855722d50329aa77/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda6415502b0ddab9eda1d09f4f16286273fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d3143311b012ad268a74f2aa791713952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| Config | unknown | ethereum | n/a | [`0x2aa8284d6318d11c094bcb25c8c0f18c27a96097`](./contracts/ethereum-1/0x2aa8284d6318d11c094bcb25c8c0f18c27a96097/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| Curve | unknown | ethereum | n/a | [`0x01e4013c478d7f02112c3cf178f2771c842edbd0`](./contracts/ethereum-1/0x01e4013c478d7f02112c3cf178f2771c842edbd0/) | ⚠️ Unaudited |
| CurveFactoryV2 | unknown | ethereum | n/a | [`0x2e9e34b5af24b66f12721113c1c8ffcbb7bc8051`](./contracts/ethereum-1/0x2e9e34b5af24b66f12721113c1c8ffcbb7bc8051/) | ⚠️ Unaudited |
| DaoModule | unknown | ethereum | n/a | [`0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | n/a | [`0xbc619735fdf48bba5e2bb403e42a5d457db684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/) | ⚠️ Unaudited |
| DVFInterface3 | unknown | ethereum | n/a | [`0xa297ec52ac188f98a5b293bca3ff405643319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | ⚠️ Unaudited |
| DVFInterface4 | unknown | ethereum | n/a | [`0x7de1f04204ef29229d84e7c0c2d1216c28645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | ⚠️ Unaudited |
| EURSToken | unknown | ethereum | n/a | [`0xdb25f211ab05b1c97d595516f45794528a807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | polygon | n/a | [`0x15c08500f2a67769d2d6f1cf701de51810673cb8`](./contracts/polygon-137/0x15c08500f2a67769d2d6f1cf701de51810673cb8/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | polygon | n/a | [`0x06cac4695976113672282b77f596861b7a798724`](./contracts/polygon-137/0x06cac4695976113672282b77f596861b7a798724/) | ⚠️ Unaudited |
| FiatTokenV1_b | unknown | ethereum | n/a | [`0x18bd9850f05e8b1f0a9a63c2616e4a78e4feeccc`](./contracts/ethereum-1/0x18bd9850f05e8b1f0a9a63c2616e4a78e4feeccc/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0x2c537e5624e4af88a7ae4060c022609376c8d0eb`](./contracts/ethereum-1/0x2c537e5624e4af88a7ae4060c022609376c8d0eb/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | polygon | n/a | [`0x7e14ea29ea374d6f4ff669326c30d1fad9826026`](./contracts/polygon-137/0x7e14ea29ea374d6f4ff669326c30d1fad9826026/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | ethereum | n/a | [`0x1a9be8a692de04bcb7ce5cddd03afca97d732c62`](./contracts/ethereum-1/0x1a9be8a692de04bcb7ce5cddd03afca97d732c62/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GHIToken | unknown | ethereum | n/a | [`0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a`](./contracts/ethereum-1/0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| MasterMinter | unknown | polygon | n/a | [`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac`](./contracts/polygon-137/0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Migrations | unknown | polygon | n/a | [`0x017647430f125b79868e66453c8c3ad26fd35442`](./contracts/polygon-137/0x017647430f125b79868e66453c8c3ad26fd35442/) | ⚠️ Unaudited |
| MintingHub | unknown | polygon | n/a | [`0x178c2eb681943ee06d1735ee1f4898ae42e8a03c`](./contracts/polygon-137/0x178c2eb681943ee06d1735ee1f4898ae42e8a03c/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | polygon | n/a | [`0x0185f5df02f3dca301f08712841c0cbae23eca2a`](./contracts/polygon-137/0x0185f5df02f3dca301f08712841c0cbae23eca2a/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | ⚠️ Unaudited |
| OracleFreeDollar | unknown | base | n/a | [`0x7479791022eb1030bbc3b09f6575c5db4ddc0b90`](./contracts/base-8453/0x7479791022eb1030bbc3b09f6575c5db4ddc0b90/) | ⚠️ Unaudited |
| PBM | unknown | polygon | n/a | [`0x0cee82057d61e20a674eaabc5b7b856bee537e67`](./contracts/polygon-137/0x0cee82057d61e20a674eaabc5b7b856bee537e67/) | ⚠️ Unaudited |
| PBMAddressList | unknown | polygon | n/a | [`0x2cfba057a04829092d16d5d63c03e817e12b8b8c`](./contracts/polygon-137/0x2cfba057a04829092d16d5d63c03e817e12b8b8c/) | ⚠️ Unaudited |
| PGT | unknown | polygon | n/a | [`0xaacf6c655365229b96a81670b862546b75b40f35`](./contracts/polygon-137/0xaacf6c655365229b96a81670b862546b75b40f35/) | ⚠️ Unaudited |
| PHPCToken | unknown | polygon | n/a | [`0x87a25dc121db52369f4a9971f664ae5e372cf69a`](./contracts/polygon-137/0x87a25dc121db52369f4a9971f664ae5e372cf69a/) | ⚠️ Unaudited |
| PositionFactory | unknown | base | n/a | [`0x16b79d77ff872031cf9c4a77c7685ba89fae58fa`](./contracts/base-8453/0x16b79d77ff872031cf9c4a77c7685ba89fae58fa/) | ⚠️ Unaudited |
| PositionRoller | unknown | polygon | n/a | [`0x0465d5d4abe0383322a33147317a2c0ed2fce8d8`](./contracts/polygon-137/0x0465d5d4abe0383322a33147317a2c0ed2fce8d8/) | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | base | n/a | [`0x0924b1934d2a9711c314d4b1de3d90cd9561353c`](./contracts/base-8453/0x0924b1934d2a9711c314d4b1de3d90cd9561353c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x0e758eccd1d6c837bbca9e650430fb99e2e27efe`](./contracts/polygon-137/0x0e758eccd1d6c837bbca9e650430fb99e2e27efe/) | ⚠️ Unaudited |
| RevokableVester | unknown | ethereum | n/a | [`0x0b31b28103754a272d7905240301ec7b2a1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | ⚠️ Unaudited |
| Router | unknown | polygon | n/a | [`0x0c1f53e7b5a770f4c0d4bef139f752eeb08de88d`](./contracts/polygon-137/0x0c1f53e7b5a770f4c0d4bef139f752eeb08de88d/) | ⚠️ Unaudited |
| Savings | unknown | base | n/a | [`0x1ccadd1577cdbb95f3c404fd22ccc82f3ef1531c`](./contracts/base-8453/0x1ccadd1577cdbb95f3c404fd22ccc82f3ef1531c/) | ⚠️ Unaudited |
| SignatureChecker | unknown | ethereum | n/a | [`0x27280fb9ed8c9473e856f93198f08696b9299798`](./contracts/ethereum-1/0x27280fb9ed8c9473e856f93198f08696b9299798/) | ⚠️ Unaudited |
| Spot | unknown | polygon | n/a | [`0x564df66c90f73e695d32627fbbbc868e2244b82e`](./contracts/polygon-137/0x564df66c90f73e695d32627fbbbc868e2244b82e/) | ⚠️ Unaudited |
| StableCoin | unknown | base | n/a | [`0x449b3317a6d1efb1bc3ba0700c9eaa4ffff4ae65`](./contracts/base-8453/0x449b3317a6d1efb1bc3ba0700c9eaa4ffff4ae65/) | ⚠️ Unaudited |
| StablecoinBridge | unknown | base | n/a | [`0x62e9e41925e9e1973f219ae6784e7fdc6e54fe37`](./contracts/base-8453/0x62e9e41925e9e1973f219ae6784e7fdc6e54fe37/) | ⚠️ Unaudited |
| STABUL | unknown | base | n/a | [`0x6722f882cc3a1b1034893efa9764397c88897892`](./contracts/base-8453/0x6722f882cc3a1b1034893efa9764397c88897892/) | ⚠️ Unaudited |
| StakingFactory | unknown | polygon | n/a | [`0x028327979f64575318e2a1fb74209ecf17dd4c33`](./contracts/polygon-137/0x028327979f64575318e2a1fb74209ecf17dd4c33/) | ⚠️ Unaudited |
| StakingPool | unknown | ethereum | n/a | [`0x0061b7bac7716dcee0be71821ffde0a0ae62b3a8`](./contracts/ethereum-1/0x0061b7bac7716dcee0be71821ffde0a0ae62b3a8/) | ⚠️ Unaudited |
| STB | unknown | polygon | n/a | [`0xa1217f12015cb843f8cc6c1539eba867dc68ee53`](./contracts/polygon-137/0xa1217f12015cb843f8cc6c1539eba867dc68ee53/) | ⚠️ Unaudited |
| SupporterVester | unknown | ethereum | n/a | [`0x0302f75047aa0935052275e77d15c40bee7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x354f861227fc9b7abf55389e0038163047d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/) | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | ethereum | n/a | [`0xde706e90f07ffa15b1783379edab3c21fbbd5c7d`](./contracts/ethereum-1/0xde706e90f07ffa15b1783379edab3c21fbbd5c7d/) | ⚠️ Unaudited |
| Token | unknown | base | n/a | [`0x61bb12dd2b2b03cfcc0c76b02c2dc9b1e705bb21`](./contracts/base-8453/0x61bb12dd2b2b03cfcc0c76b02c2dc9b1e705bb21/) | ⚠️ Unaudited |
| Token_v1 | unknown | ethereum | n/a | [`0x37a41d9f7c94e5d13fba30c59f28cc0e803edce4`](./contracts/ethereum-1/0x37a41d9f7c94e5d13fba30c59f28cc0e803edce4/) | ⚠️ Unaudited |
| Token_v3 | unknown | ethereum | n/a | [`0xc08512927d12348f6620a698105e1baac6ecd911`](./contracts/ethereum-1/0xc08512927d12348f6620a698105e1baac6ecd911/) | ⚠️ Unaudited |
| TokenV1 | unknown | polygon | n/a | [`0x12050c705152931cfee3dd56c52fb09dea816c23`](./contracts/polygon-137/0x12050c705152931cfee3dd56c52fb09dea816c23/) | ⚠️ Unaudited |
| TokenV2_1 | unknown | polygon | n/a | [`0x35d1aa52a43f239dfad844e0947a4057188356d2`](./contracts/polygon-137/0x35d1aa52a43f239dfad844e0947a4057188356d2/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x05e36403584e1f3f004dc516b5375a1e884c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8632153b2d083a94590e577298c0ae50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de668684839f97d4845f32a43e913366ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| ViewLiquidity | unknown | polygon | n/a | [`0x2d3bc5c8a2d1a313c64807b7225aab29b9c3a25b`](./contracts/polygon-137/0x2d3bc5c8a2d1a313c64807b7225aab29b9c3a25b/) | ⚠️ Unaudited |
| Zarp | unknown | base | n/a | [`0xb755506531786c8ac63b756bab1ac387bacb0c04`](./contracts/base-8453/0xb755506531786c8ac63b756bab1ac387bacb0c04/) | ⚠️ Unaudited |

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
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Inherited from DFX Finance — forked code, scoped to Curves, Orchestrator, Swaps, Zap | inherited | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0d41b9befb679e4ea694fc1be598eb6e31b9c888`](./contracts/base-8453/0x0d41b9befb679e4ea694fc1be598eb6e31b9c888/) | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1246b19c59fff6a92e875b57402743cf576c86bb`](./contracts/base-8453/0x1246b19c59fff6a92e875b57402743cf576c86bb/) | AssimilatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12`](./contracts/base-8453/0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd4dd9e2f021bb459d5a5f6c24c12fe09c5d45553`](./contracts/base-8453/0xd4dd9e2f021bb459d5a5f6c24c12fe09c5d45553/) | BridgedFrankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a20ae0f6662bc7cc835fa64855722d50329aa77`](./contracts/polygon-137/0x0a20ae0f6662bc7cc835fa64855722d50329aa77/) | BRZToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda6415502b0ddab9eda1d09f4f16286273fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d3143311b012ad268a74f2aa791713952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aa8284d6318d11c094bcb25c8c0f18c27a96097`](./contracts/ethereum-1/0x2aa8284d6318d11c094bcb25c8c0f18c27a96097/) | Config | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | DaoModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc619735fdf48bba5e2bb403e42a5d457db684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/) | DVFInterface2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa297ec52ac188f98a5b293bca3ff405643319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | DVFInterface3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7de1f04204ef29229d84e7c0c2d1216c28645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | DVFInterface4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb25f211ab05b1c97d595516f45794528a807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x15c08500f2a67769d2d6f1cf701de51810673cb8`](./contracts/polygon-137/0x15c08500f2a67769d2d6f1cf701de51810673cb8/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06cac4695976113672282b77f596861b7a798724`](./contracts/polygon-137/0x06cac4695976113672282b77f596861b7a798724/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18bd9850f05e8b1f0a9a63c2616e4a78e4feeccc`](./contracts/ethereum-1/0x18bd9850f05e8b1f0a9a63c2616e4a78e4feeccc/) | FiatTokenV1_b | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c537e5624e4af88a7ae4060c022609376c8d0eb`](./contracts/ethereum-1/0x2c537e5624e4af88a7ae4060c022609376c8d0eb/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7e14ea29ea374d6f4ff669326c30d1fad9826026`](./contracts/polygon-137/0x7e14ea29ea374d6f4ff669326c30d1fad9826026/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9be8a692de04bcb7ce5cddd03afca97d732c62`](./contracts/ethereum-1/0x1a9be8a692de04bcb7ce5cddd03afca97d732c62/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a`](./contracts/ethereum-1/0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a/) | GHIToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac`](./contracts/polygon-137/0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x017647430f125b79868e66453c8c3ad26fd35442`](./contracts/polygon-137/0x017647430f125b79868e66453c8c3ad26fd35442/) | Migrations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x178c2eb681943ee06d1735ee1f4898ae42e8a03c`](./contracts/polygon-137/0x178c2eb681943ee06d1735ee1f4898ae42e8a03c/) | MintingHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0185f5df02f3dca301f08712841c0cbae23eca2a`](./contracts/polygon-137/0x0185f5df02f3dca301f08712841c0cbae23eca2a/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7479791022eb1030bbc3b09f6575c5db4ddc0b90`](./contracts/base-8453/0x7479791022eb1030bbc3b09f6575c5db4ddc0b90/) | OracleFreeDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0cee82057d61e20a674eaabc5b7b856bee537e67`](./contracts/polygon-137/0x0cee82057d61e20a674eaabc5b7b856bee537e67/) | PBM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2cfba057a04829092d16d5d63c03e817e12b8b8c`](./contracts/polygon-137/0x2cfba057a04829092d16d5d63c03e817e12b8b8c/) | PBMAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaacf6c655365229b96a81670b862546b75b40f35`](./contracts/polygon-137/0xaacf6c655365229b96a81670b862546b75b40f35/) | PGT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x87a25dc121db52369f4a9971f664ae5e372cf69a`](./contracts/polygon-137/0x87a25dc121db52369f4a9971f664ae5e372cf69a/) | PHPCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16b79d77ff872031cf9c4a77c7685ba89fae58fa`](./contracts/base-8453/0x16b79d77ff872031cf9c4a77c7685ba89fae58fa/) | PositionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0465d5d4abe0383322a33147317a2c0ed2fce8d8`](./contracts/polygon-137/0x0465d5d4abe0383322a33147317a2c0ed2fce8d8/) | PositionRoller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0924b1934d2a9711c314d4b1de3d90cd9561353c`](./contracts/base-8453/0x0924b1934d2a9711c314d4b1de3d90cd9561353c/) | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b31b28103754a272d7905240301ec7b2a1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | RevokableVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c1f53e7b5a770f4c0d4bef139f752eeb08de88d`](./contracts/polygon-137/0x0c1f53e7b5a770f4c0d4bef139f752eeb08de88d/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ccadd1577cdbb95f3c404fd22ccc82f3ef1531c`](./contracts/base-8453/0x1ccadd1577cdbb95f3c404fd22ccc82f3ef1531c/) | Savings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27280fb9ed8c9473e856f93198f08696b9299798`](./contracts/ethereum-1/0x27280fb9ed8c9473e856f93198f08696b9299798/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x564df66c90f73e695d32627fbbbc868e2244b82e`](./contracts/polygon-137/0x564df66c90f73e695d32627fbbbc868e2244b82e/) | Spot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x449b3317a6d1efb1bc3ba0700c9eaa4ffff4ae65`](./contracts/base-8453/0x449b3317a6d1efb1bc3ba0700c9eaa4ffff4ae65/) | StableCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62e9e41925e9e1973f219ae6784e7fdc6e54fe37`](./contracts/base-8453/0x62e9e41925e9e1973f219ae6784e7fdc6e54fe37/) | StablecoinBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6722f882cc3a1b1034893efa9764397c88897892`](./contracts/base-8453/0x6722f882cc3a1b1034893efa9764397c88897892/) | STABUL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x028327979f64575318e2a1fb74209ecf17dd4c33`](./contracts/polygon-137/0x028327979f64575318e2a1fb74209ecf17dd4c33/) | StakingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0061b7bac7716dcee0be71821ffde0a0ae62b3a8`](./contracts/ethereum-1/0x0061b7bac7716dcee0be71821ffde0a0ae62b3a8/) | StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa1217f12015cb843f8cc6c1539eba867dc68ee53`](./contracts/polygon-137/0xa1217f12015cb843f8cc6c1539eba867dc68ee53/) | STB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0302f75047aa0935052275e77d15c40bee7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | SupporterVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354f861227fc9b7abf55389e0038163047d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde706e90f07ffa15b1783379edab3c21fbbd5c7d`](./contracts/ethereum-1/0xde706e90f07ffa15b1783379edab3c21fbbd5c7d/) | TetherTokenEURTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x61bb12dd2b2b03cfcc0c76b02c2dc9b1e705bb21`](./contracts/base-8453/0x61bb12dd2b2b03cfcc0c76b02c2dc9b1e705bb21/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a41d9f7c94e5d13fba30c59f28cc0e803edce4`](./contracts/ethereum-1/0x37a41d9f7c94e5d13fba30c59f28cc0e803edce4/) | Token_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc08512927d12348f6620a698105e1baac6ecd911`](./contracts/ethereum-1/0xc08512927d12348f6620a698105e1baac6ecd911/) | Token_v3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12050c705152931cfee3dd56c52fb09dea816c23`](./contracts/polygon-137/0x12050c705152931cfee3dd56c52fb09dea816c23/) | TokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35d1aa52a43f239dfad844e0947a4057188356d2`](./contracts/polygon-137/0x35d1aa52a43f239dfad844e0947a4057188356d2/) | TokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05e36403584e1f3f004dc516b5375a1e884c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8632153b2d083a94590e577298c0ae50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de668684839f97d4845f32a43e913366ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d3bc5c8a2d1a313c64807b7225aab29b9c3a25b`](./contracts/polygon-137/0x2d3bc5c8a2d1a313c64807b7225aab29b9c3a25b/) | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb755506531786c8ac63b756bab1ac387bacb0c04`](./contracts/base-8453/0xb755506531786c8ac63b756bab1ac387bacb0c04/) | Zarp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=4

Fork inheritance lineage and inherited audits are included when available.
