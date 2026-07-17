# Agentic Audit Brief: fx Protocol

## Project Overview

- Project: fx Protocol (`fx-protocol`)
- Website: [https://fx.aladdin.club](https://fx.aladdin.club)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.260Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 66 unique implementations (102 raw deployments)
- DeFi Llama TVL: $198,959,837.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dual-Token Stablecoin. Structurally: 140 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens, 10 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 18 common project-authored base contract(s) (proxy, erc1967upgrade, poolconstant). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 102 (93 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/52 (7.7%)
- Deployed-live implementations: 57 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/57
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 66
- Raw deployments: 102
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
| unknown | Tier 2 | 5 | 8.8% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveFundingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6ecfa38fee8a5277b91efda204c235814f0122e8`](./contracts/ethereum-1/0x6ecfa38fee8a5277b91efda204c235814f0122e8/); ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ✅ Audited |
| FxUSDBasePool | core_logic | ethereum | n/a | [`0x3374b9466d571edd695cf5e198f7c89b33c0ce01`](./contracts/ethereum-1/0x3374b9466d571edd695cf5e198f7c89b33c0ce01/) | ✅ Audited |
| GaugeRewarder | operational_periphery | ethereum | n/a | [`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956`](./contracts/ethereum-1/0x5ac1a882e6cedc58511b7e42b02bab42e2c02956/) | ✅ Audited |
| PoolManager | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`](./contracts/ethereum-1/0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a/); ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9`; ethereum `0xda1d80bad62586a7c319fd2a41d98a930705fc9a` | ✅ Audited |
| ReservePool | core_logic | ethereum | n/a | [`0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed`](./contracts/ethereum-1/0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed/) | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Strategy | core_logic | ethereum | n/a | [`0xfd3a6540e21d0e285f88fbfd904883b23e08f5c8`](./contracts/ethereum-1/0xfd3a6540e21d0e285f88fbfd904883b23e08f5c8/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0xc035a7cf15375ce2706766804551791ad035e0c2`](./contracts/ethereum-1/0xc035a7cf15375ce2706766804551791ad035e0c2/) | ⚠️ Unaudited |
| CvxCompounder | adapter | ethereum | n/a | [`0xb0903ab70a7467ee5756074b31ac88aebb8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | ethereum | n/a | [`0x00bac667a4ccf9089ab1db978238c555c4349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | ⚠️ Unaudited |
| DebtReducer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/); ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | ethereum | n/a | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | ethereum | n/a | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | ⚠️ Unaudited |
| Fundraising Gauge Fx | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xf422446f7730e50b9cab4618343425d9927b35ed`](./contracts/ethereum-1/0xf422446f7730e50b9cab4618343425d9927b35ed/); ethereum `0xf594bdfafe4197144c6459fca611d7b868d36bea` | ⚠️ Unaudited |
| Furnace | unknown | ethereum | n/a | [`0xe64b336b5df8318fa485a1a96af5f8a553555285`](./contracts/ethereum-1/0xe64b336b5df8318fa485a1a96af5f8a553555285/) | ⚠️ Unaudited |
| FxEETHOracleV2 | operational_periphery | ethereum | n/a | [`0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | ⚠️ Unaudited |
| FxFrxETHOracleV2 | operational_periphery | ethereum | n/a | [`0xffe563c168c01e05da4f3d81938af158466ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | ⚠️ Unaudited |
| FxGateway | unknown | ethereum | n/a | [`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | ⚠️ Unaudited |
| FxInitialFund | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55`](./contracts/ethereum-1/0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55/); ethereum `0xfc3862c33b54e0bba61d966ff51973c20be4fc62` | ⚠️ Unaudited |
| FxUSD | unknown | ethereum | n/a | [`0x676c359c78f75581ab2da5c353d2577c41cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | ethereum | n/a | [`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | ethereum | n/a | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | ethereum | n/a | [`0xe60eb8098b34ed775ac44b1dde864e098c6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | ethereum | n/a | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | ethereum | n/a | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | ⚠️ Unaudited |
| LeveragedTokenV2 | token | ethereum | n/a | [`0xdfc3683a0179a02bfb5373243d105ff25e4f40c6`](./contracts/ethereum-1/0xdfc3683a0179a02bfb5373243d105ff25e4f40c6/) | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/); ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0xf74ca519fe35ec6a862a4debd8e317bed3c47c87`](./contracts/ethereum-1/0xf74ca519fe35ec6a862a4debd8e317bed3c47c87/) | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/); ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98`; ethereum `0xeecd843ed9f3d07757565e5cb91111718270a44f` | ⚠️ Unaudited |
| MultiPathConverter | unknown | ethereum | n/a | [`0xca1d3f8f770fd50b8cf76551ec54012c26036c2a`](./contracts/ethereum-1/0xca1d3f8f770fd50b8cf76551ec54012c26036c2a/) | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x6440e21a3634c319c69cef8d17601dbc4e97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | ⚠️ Unaudited |
| PoolConfiguration | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/); ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/); ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | ethereum | n/a | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/); ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b`](./contracts/ethereum-1/0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b/) | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/); ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b`; ethereum `0xca0563ab14a87ee64d6b097b0dfc46e9b56820ad` | ⚠️ Unaudited |
| RebalancePoolSplitter | operational_periphery | ethereum | n/a | [`0xce5a14c662f00c614aa467b82c654548540f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | ⚠️ Unaudited |
| RevenuePool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/); ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | ethereum | n/a | [`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | ethereum | n/a | [`0x3cfe091c9028154cc5cb721258e9360803b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | ⚠️ Unaudited |
| SdPendleCompounder | adapter | ethereum | n/a | [`0x606462126e4bd5c4d153fe09967e4c46c9c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | ⚠️ Unaudited |
| ShareableRebalancePool | core_logic | ethereum | n/a | [`0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d`](./contracts/ethereum-1/0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d/) | ⚠️ Unaudited |
| ShortPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/); ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/); ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/); ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/); ethereum `0xd71b8b76015f296e53d41e8288a8a13eaffff2ea` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x68863fb8855b04509a835082478d6e3d0be4e61a`](./contracts/ethereum-1/0x68863fb8855b04509a835082478d6e3d0be4e61a/) | ⚠️ Unaudited |
| Token Minter | operational_periphery | ethereum | n/a | [`0xc8b194925d55d5de9555ad1db74c149329f71def`](./contracts/ethereum-1/0xc8b194925d55d5de9555ad1db74c149329f71def/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0x2290eefea24a6e43b26c27187742bd1fedc10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/) | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | ethereum | n/a | [`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/); ethereum `0xf29b80b512f7055f164a33aa13105dfac3b01b6b` | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | ethereum | n/a | [`0xd766f2b87de4b08c2239580366e49710180aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | ⚠️ Unaudited |
| WrappedTokenTreasuryV2 | operational_periphery | ethereum | n/a | [`0xeded972215008a0d033d3d641511d40d382317e8`](./contracts/ethereum-1/0xeded972215008a0d033d3d641511d40d382317e8/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1fc1e9514f149ae9d69089c45934a78f9e57389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SECBIT_f(x)_V2_Report_v1.4_20250107.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_V2_Report_v1.4_20250107.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc035a7cf15375ce2706766804551791ad035e0c2`](./contracts/ethereum-1/0xc035a7cf15375ce2706766804551791ad035e0c2/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0903ab70a7467ee5756074b31ac88aebb8fb777`](./contracts/ethereum-1/0xb0903ab70a7467ee5756074b31ac88aebb8fb777/) | CvxCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00bac667a4ccf9089ab1db978238c555c4349545`](./contracts/ethereum-1/0x00bac667a4ccf9089ab1db978238c555c4349545/) | CvxFxnCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`](./contracts/ethereum-1/0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4/) | DebtReducer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd116513eea4efe3908212afbaefc76cb29245681`](./contracts/ethereum-1/0xd116513eea4efe3908212afbaefc76cb29245681/) | Fee Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6`](./contracts/ethereum-1/0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6/) | FeeDistributorAdmin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf422446f7730e50b9cab4618343425d9927b35ed`](./contracts/ethereum-1/0xf422446f7730e50b9cab4618343425d9927b35ed/) | Fundraising Gauge Fx | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe64b336b5df8318fa485a1a96af5f8a553555285`](./contracts/ethereum-1/0xe64b336b5df8318fa485a1a96af5f8a553555285/) | Furnace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b`](./contracts/ethereum-1/0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b/) | FxEETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffe563c168c01e05da4f3d81938af158466ad793`](./contracts/ethereum-1/0xffe563c168c01e05da4f3d81938af158466ad793/) | FxFrxETHOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b`](./contracts/ethereum-1/0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b/) | FxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55`](./contracts/ethereum-1/0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55/) | FxInitialFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x676c359c78f75581ab2da5c353d2577c41cecb43`](./contracts/ethereum-1/0x676c359c78f75581ab2da5c353d2577c41cecb43/) | FxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a`](./contracts/ethereum-1/0x07d1718ff05a8c53c8f05adaed57c0d672945f9a/) | FxUSDCompounder4626 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851`](./contracts/ethereum-1/0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851/) | FxUSDPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe60eb8098b34ed775ac44b1dde864e098c6d7f37`](./contracts/ethereum-1/0xe60eb8098b34ed775ac44b1dde864e098c6d7f37/) | Gauge Controller | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | GeneralTokenConverter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a`](./contracts/ethereum-1/0x5d2c6215555b36889ef235c6d5ccde22e9964e6a/) | InversePriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x222786833b5fd5ee21532d8b576391babefdaad1`](./contracts/ethereum-1/0x222786833b5fd5ee21532d8b576391babefdaad1/) | InverseWstETHPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfc3683a0179a02bfb5373243d105ff25e4f40c6`](./contracts/ethereum-1/0xdfc3683a0179a02bfb5373243d105ff25e4f40c6/) | LeveragedTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2319289e56830b50a282c25af4f0045c724b3f79`](./contracts/ethereum-1/0x2319289e56830b50a282c25af4f0045c724b3f79/) | LongPositionEmergencyCloseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf74ca519fe35ec6a862a4debd8e317bed3c47c87`](./contracts/ethereum-1/0xf74ca519fe35ec6a862a4debd8e317bed3c47c87/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`](./contracts/ethereum-1/0x36ecdec1b5e301321166cefd5856a44bfa13a1ae/) | MultiMerkleStash | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1d3f8f770fd50b8cf76551ec54012c26036c2a`](./contracts/ethereum-1/0xca1d3f8f770fd50b8cf76551ec54012c26036c2a/) | MultiPathConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6440e21a3634c319c69cef8d17601dbc4e97c3db`](./contracts/ethereum-1/0x6440e21a3634c319c69cef8d17601dbc4e97c3db/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0084c2e1b1823564e597ff4848a88d61ac63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be95a7c0ad24e2d2876793172d046db05d26f7f`](./contracts/ethereum-1/0x2be95a7c0ad24e2d2876793172d046db05d26f7f/) | PoolConfiguration | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`](./contracts/ethereum-1/0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799/) | PositionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff`](./contracts/ethereum-1/0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff/) | PositionOperateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f844447ecf5b1523bfbadad3d9dea975982ea93`](./contracts/ethereum-1/0x1f844447ecf5b1523bfbadad3d9dea975982ea93/) | PositionOperateFlashLoanFacetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`](./contracts/ethereum-1/0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653/) | RebalancePoolGaugeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce5a14c662f00c614aa467b82c654548540f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | RebalancePoolSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e67460226a71df07115c1f169418dd159e5521b`](./contracts/ethereum-1/0x0e67460226a71df07115c1f169418dd159e5521b/) | RevenuePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30`](./contracts/ethereum-1/0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30/) | RewardHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cfe091c9028154cc5cb721258e9360803b130f5`](./contracts/ethereum-1/0x3cfe091c9028154cc5cb721258e9360803b130f5/) | SavingFxUSDFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x606462126e4bd5c4d153fe09967e4c46c9c7fecf`](./contracts/ethereum-1/0x606462126e4bd5c4d153fe09967e4c46c9c7fecf/) | SdPendleCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d`](./contracts/ethereum-1/0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d/) | ShareableRebalancePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0055e248ee7feab91969b77ab32f184b72be82fa`](./contracts/ethereum-1/0x0055e248ee7feab91969b77ab32f184b72be82fa/) | ShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x218b689a4f4afba497123b4831f58d6379d99801`](./contracts/ethereum-1/0x218b689a4f4afba497123b4831f58d6379d99801/) | ShortPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d35dc5948c948f131ddd9e3a341b99e45174a74`](./contracts/ethereum-1/0x3d35dc5948c948f131ddd9e3a341b99e45174a74/) | ShortPositionOperateFlashLoanFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`](./contracts/ethereum-1/0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2290eefea24a6e43b26c27187742bd1fedc10bdb`](./contracts/ethereum-1/0x2290eefea24a6e43b26c27187742bd1fedc10bdb/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced`](./contracts/ethereum-1/0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced/) | VestingManagerProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`](./contracts/ethereum-1/0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd766f2b87de4b08c2239580366e49710180aba02`](./contracts/ethereum-1/0xd766f2b87de4b08c2239580366e49710180aba02/) | VotingEscrowHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeded972215008a0d033d3d641511d40d382317e8`](./contracts/ethereum-1/0xeded972215008a0d033d3d641511d40d382317e8/) | WrappedTokenTreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
