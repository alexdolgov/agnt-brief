# Agentic Audit Brief: fx Protocol

## Project Overview

- Project: fx Protocol (`fx-protocol`)
- Website: [https://fx.aladdin.club](https://fx.aladdin.club)
- Lifecycle: active (Tier 0, 66.8% below peak)
- Generated: 2026-06-21T19:01:19.317Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 66 unique implementations (102 raw deployments)
- DeFi Llama TVL: $227,340,756.50
- On-chain TVL (included contracts): $111,849,631.90
- TVL by chain: Ethereum $111,849,631.90

## Project Description

fx Protocol is a dual-token stablecoin system that issues fiat-pegged stablecoins (like FxUSD) backed by a diversified basket of yield-bearing assets. It uses a multi-pool architecture with rebalancing pools, leverage tokens, and gauge-based liquidity incentives to maintain stability and generate yield.

### Architecture

All contracts belong to a single product family, sharing infrastructure like gauge controllers, treasury wrappers, and proxy patterns. Core pools and strategies interact with supporting treasuries and gauges to manage liquidity and distribute incentives.

## Contract Surface Quality

- Indexed contracts: 380; live-surface contracts included: 102 (67 live, 35 unknown).
- Excluded by liveness: 134 inactive, 144 singleton, 0 uninitialized.
- Deployment units: 9/57 live.
- Detected codebases: curve-stableswap, uniswap-v3
- Unverified dependencies: 45/78.

## Audit Coverage Summary

- Verified implementations audited: 5/57 (8.8%)
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 66
- Raw deployments: 102
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $111,784,822.53
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 8.8% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5d...ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |
| AaveFundingPool | core_logic | ethereum | unit-43730 (2 proxies) | 2 deployments: ethereum [`0x6ecfa3...0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e...952473` | ✅ Audited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9...c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ✅ Audited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a8...c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ✅ Audited |
| PoolManager | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x0d73d3...7d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9`; ethereum `0xda1d80...05fc9a` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | unit-43749 | [`0xc035a7...35e0c2`](./contracts/ethereum-1/0xc035a7cf15375ce2706766804551791ad035e0c2/) | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| AaveV3Strategy | core_logic | ethereum | n/a | [`0xfd3a65...08f5c8`](./contracts/ethereum-1/0xfd3a6540e21d0e285f88fbfd904883b23e08f5c8/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-43737 | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| CvxCompounder | adapter | ethereum | unit-43745 | [`0xb0903a...8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | ethereum | unit-43699 | [`0x00bac6...349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| Fundraising Gauge Fx | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xf42244...7b35ed`](./contracts/ethereum-1/0xf422446f7730e50b9cab4618343425d9927b35ed/); ethereum `0xf594bd...d36bea` | ⚠️ Unaudited |
| Furnace | unknown | ethereum | n/a | [`0xe64b33...555285`](./contracts/ethereum-1/0xe64b336b5df8318fa485a1a96af5f8a553555285/) | ⚠️ Unaudited |
| FxEETHOracleV2 | operational_periphery | ethereum | n/a | [`0xe1b11b...71693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | ⚠️ Unaudited |
| FxFrxETHOracleV2 | operational_periphery | ethereum | n/a | [`0xffe563...6ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | ⚠️ Unaudited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ⚠️ Unaudited |
| FxInitialFund | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe6b953...461d55`](./contracts/ethereum-1/0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55/); ethereum `0xfc3862...e4fc62` | ⚠️ Unaudited |
| FxUSD | unknown | ethereum | n/a | [`0x676c35...cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | ethereum | unit-43701 | [`0x07d171...945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8...6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LeveragedTokenV2 | token | ethereum | n/a | [`0xdfc368...4f40c6`](./contracts/ethereum-1/0xdfc3683a0179a02bfb5373243d105ff25e4f40c6/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0xf74ca5...c47c87`](./contracts/ethereum-1/0xf74ca519fe35ec6a862a4debd8e317bed3c47c87/) | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98`; ethereum `0xeecd84...70a44f` | ⚠️ Unaudited |
| MultiPathConverter | unknown | ethereum | n/a | [`0xca1d3f...036c2a`](./contracts/ethereum-1/0xca1d3f8f770fd50b8cf76551ec54012c26036c2a/) | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xd41d29...3a324b`](./contracts/ethereum-1/0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b/) | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b`; ethereum `0xca0563...6820ad` | ⚠️ Unaudited |
| RebalancePoolSplitter | operational_periphery | ethereum | n/a | [`0xce5a14...0f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ⚠️ Unaudited |
| SdPendleCompounder | adapter | ethereum | unit-43725 | [`0x606462...c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ⚠️ Unaudited |
| ShareableRebalancePool | core_logic | ethereum | n/a | [`0xd5e047...c4fa0d`](./contracts/ethereum-1/0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/); ethereum `0xd71b8b...fff2ea` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863f...e4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | unit-43698 | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/) | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | ethereum | unit-43706 | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xec6b8a...f1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/); ethereum `0xf29b80...b01b6b` | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | ethereum | n/a | [`0xd766f2...0aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | ⚠️ Unaudited |
| WrappedTokenTreasuryV2 | operational_periphery | ethereum | n/a | [`0xeded97...2317e8`](./contracts/ethereum-1/0xeded972215008a0d033d3d641511d40d382317e8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
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
| [SECBIT_f(x)_V2_Report_v1.4_20250107.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_V2_Report_v1.4_20250107.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0e6746...e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | $472.28 | Verified native implementation with $472.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | GeneralTokenConverter | token | $0.03 | Verified native implementation with $0.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3...8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd11651...245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae02...fa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42244...7b35ed`](./contracts/ethereum-1/0xf422446f7730e50b9cab4618343425d9927b35ed/) | Fundraising Gauge Fx | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe64b33...555285`](./contracts/ethereum-1/0xe64b336b5df8318fa485a1a96af5f8a553555285/) | Furnace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1b11b...71693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | FxEETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffe563...6ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | FxFrxETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c28b9...f06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | FxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6b953...461d55`](./contracts/ethereum-1/0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55/) | FxInitialFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x676c35...cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | FxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51...a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c62...964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786...fdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfc368...4f40c6`](./contracts/ethereum-1/0xdfc3683a0179a02bfb5373243d105ff25e4f40c6/) | LeveragedTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x231928...4b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf74ca5...c47c87`](./contracts/ethereum-1/0xf74ca519fe35ec6a862a4debd8e317bed3c47c87/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecde...13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1d3f...036c2a`](./contracts/ethereum-1/0xca1d3f8f770fd50b8cf76551ec54012c26036c2a/) | MultiPathConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6440e2...97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a...d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73...870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c...8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8444...82ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c630...da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/) | RebalancePoolGaugeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce5a14...0f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | RebalancePoolSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0559a1...7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | RewardHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cfe09...b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | SavingFxUSDFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5e047...c4fa0d`](./contracts/ethereum-1/0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d/) | ShareableRebalancePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e2...be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b68...d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc...174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8...72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b194...f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | Token Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2290ee...c10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4f31...c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | VestingManagerProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec6b8a...f1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd766f2...0aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | VotingEscrowHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeded97...2317e8`](./contracts/ethereum-1/0xeded972215008a0d033d3d641511d40d382317e8/) | WrappedTokenTreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 2 |
| standard_library | 9 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=39

Fork inheritance lineage and inherited audits are included when available.
