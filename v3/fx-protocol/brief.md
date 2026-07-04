# Agentic Audit Brief: fx Protocol

## Project Overview

- Project: fx Protocol (`fx-protocol`)
- Website: [https://fx.aladdin.club](https://fx.aladdin.club)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:41.898Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 90 unique implementations (142 raw deployments)
- DeFi Llama TVL: $198,959,837.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dual-Token Stablecoin. Structurally: 140 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens, 10 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 18 common project-authored base contract(s) (proxy, erc1967upgrade, poolconstant). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 198; live-surface contracts included: 129 (118 live, 11 unknown).
- Excluded by liveness: 69 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/79 (6.3%)
- Deployed-live implementations: 79 of 90 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/79
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 90
- Raw deployments: 142
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 6.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ✅ Audited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ✅ Audited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ✅ Audited |
| PoolManager | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9`; ethereum `0xda1d80...05fc9a` | ✅ Audited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Strategy | core_logic | ethereum | n/a | [`0xfd3a65...08f5c8`](./contracts/ethereum-1/0xfd3a6540e21d0e285f88fbfd904883b23e08f5c8/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0xc035a7...35e0c2`](./contracts/ethereum-1/0xc035a7cf15375ce2706766804551791ad035e0c2/) | ⚠️ Unaudited |
| brBTC | unknown | ethereum | n/a | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| brVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/); ethereum `0xc7d81a...8334c7` | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | n/a | [`0x55a67c...b60edc`](./contracts/ethereum-1/0x55a67cf07b8a9a09fb6d565279287cfe4ab60edc/) | ⚠️ Unaudited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/); ethereum `0xa70099...c0b090` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x91fd8c...d64500`](./contracts/ethereum-1/0x91fd8c7a5fda7d52ab41bbe423eedd3a65d64500/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0xe8239b...5c4572`](./contracts/ethereum-1/0xe8239b17034c372cdf8a5f8d3ccb7cf1795c4572/) | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| Fundraising Gauge Fx | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xf42244...7b35ed`](./contracts/ethereum-1/0xf422446f7730e50b9cab4618343425d9927b35ed/); ethereum `0xf594bd...d36bea` | ⚠️ Unaudited |
| Furnace | unknown | ethereum | n/a | [`0xe64b33...555285`](./contracts/ethereum-1/0xe64b336b5df8318fa485a1a96af5f8a553555285/) | ⚠️ Unaudited |
| FxEETHOracleV2 | operational_periphery | ethereum | n/a | [`0xe1b11b...71693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | ⚠️ Unaudited |
| FxFrxETHOracleV2 | operational_periphery | ethereum | n/a | [`0xffe563...6ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | ⚠️ Unaudited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ⚠️ Unaudited |
| FxInitialFund | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe6b953...461d55`](./contracts/ethereum-1/0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55/); ethereum `0xfc3862...e4fc62` | ⚠️ Unaudited |
| FxUSD | unknown | ethereum | n/a | [`0x676c35...cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8...6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LeveragedTokenV2 | token | ethereum | n/a | [`0xdfc368...4f40c6`](./contracts/ethereum-1/0xdfc3683a0179a02bfb5373243d105ff25e4f40c6/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0xf74ca5...c47c87`](./contracts/ethereum-1/0xf74ca519fe35ec6a862a4debd8e317bed3c47c87/) | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98`; ethereum `0xeecd84...70a44f` | ⚠️ Unaudited |
| MultiPathConverter | unknown | ethereum | n/a | [`0xca1d3f...036c2a`](./contracts/ethereum-1/0xca1d3f8f770fd50b8cf76551ec54012c26036c2a/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | n/a | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9f6326...e7f002`](./contracts/ethereum-1/0x9f63269196a8828f05f2e49d1078ea7c44e7f002/); ethereum `0xd41d29...3a324b` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b`; ethereum `0xca0563...6820ad` | ⚠️ Unaudited |
| RebalancePoolSplitter | operational_periphery | ethereum | n/a | [`0xce5a14...0f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x981692...1d3b8d`](./contracts/ethereum-1/0x98169228cb99ed26c1043ed8ca53a5cb371d3b8d/); ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e4d0a...c4e518`](./contracts/ethereum-1/0x1e4d0a963953e7c08fc7602b01e683547fc4e518/); ethereum `0x3f4eac...6e9850` | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0xb7019c...732064`](./contracts/ethereum-1/0xb7019c9184580b2e1f66fcdc3eb6c62621732064/) | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d` | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79f2c3...449597`](./contracts/ethereum-1/0x79f2c32204e997d4d49de3d45a6130d627449597/); ethereum `0xd48d3e...905e11` | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a9486...98e590`](./contracts/ethereum-1/0x8a94866df557bb7fce88eff9917237286098e590/); ethereum `0xf1376b...df51f4` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89b2c7...740aeb`](./contracts/ethereum-1/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x11b380...66be7b` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ⚠️ Unaudited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ⚠️ Unaudited |
| ShareableRebalancePool | core_logic | ethereum | n/a | [`0xd5e047...c4fa0d`](./contracts/ethereum-1/0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/); ethereum `0xd71b8b...fff2ea` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/); ethereum `0xf4954a...755024` | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x51a7f8...db6c5e`](./contracts/ethereum-1/0x51a7f889480c57cbeea81614f7d0be2b70db6c5e/) | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/); ethereum `0xf50dba...bcdae9` | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/); ethereum `0x317b8e...876ef6` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | ethereum | n/a | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/) | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xec6b8a...f1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/); ethereum `0xf29b80...b01b6b` | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | ethereum | n/a | [`0xd766f2...0aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | ⚠️ Unaudited |
| WrappedTokenTreasuryV2 | operational_periphery | ethereum | n/a | [`0xeded97...2317e8`](./contracts/ethereum-1/0xeded972215008a0d033d3d641511d40d382317e8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69fd3e...21bbdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1fc1e...e57389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SECBIT_f(x)_V2_Report_v1.4_20250107.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_V2_Report_v1.4_20250107.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
