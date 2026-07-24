# Agentic Audit Brief: fx Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: fx Protocol (`fx-protocol`)
- Website: [https://fx.aladdin.club](https://fx.aladdin.club)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, blast, bsc, ethereum, linea, polygon
- Contract surface: 381 unique implementations (417 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $198,959,837.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for fx Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, blast, bsc, ethereum, linea, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: abstract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x365accfca291e7d3914637abf1f7635db165bb09`, chain 1)
- UnnamedContract (`0x376669afa692a2c6961813c854c78542a3488f55`, chain 1)
- UnnamedContract (`0x53805a76e1f5ebbfe7115f16f9c87c2f7e633726`, chain 1)
- UnnamedContract (`0x56bc0ec4049f25e7dd455b64d1c6318c1d9ce789`, chain 1)
- UnnamedContract (`0xe063f04f280c60aeca68b38341c2eecbec703ae2`, chain 1)
- UnnamedContract (`0x62c6867e4f2e63302b15cbf9b8540214a13beeac`, chain 56)
- UnnamedContract (`0xa64f68c089b3e69d48f6047d3be513349e74b3de`, chain 56)
- UnnamedContract (`0xf9e10daa647e540bf3d1334377a88361ab980e94`, chain 56)
- UnnamedContract (`0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617`, chain 137)
- UnnamedContract (`0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`, chain 137)
- UnnamedContract (`0xc752c6daa143e1a0ba3e7df06f3117182432b991`, chain 137)
- UnnamedContract (`0x179f38f78346f5942e95c5c59cb1da7f55cf7cad`, chain 42161)
- UnnamedContract (`0x55380fe7a1910dff29a47b622057ab4139da42c5`, chain 42161)
- UnnamedContract (`0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`, chain 42161)
- UnnamedContract (`0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`, chain 59144)
- UnnamedContract (`0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763`, chain 81457)
- TransparentUpgradeableProxy (`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 364 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 17 of 381 unique; 364 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/57
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 324
- Unique implementations: 381
- Raw deployments: 417
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6ecfa38fee8a5277b91efda204c235814f0122e8`; ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ⚠️ Unaudited |
| AaveV3Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3a6540e21d0e285f88fbfd904883b23e08f5c8` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc035a7cf15375ce2706766804551791ad035e0c2` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903ab70a7467ee5756074b31ac88aebb8fb777` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac667a4ccf9089ab1db978238c555c4349545` | ⚠️ Unaudited |
| DebtReducer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`; ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116513eea4efe3908212afbaefc76cb29245681` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6` | ⚠️ Unaudited |
| Fundraising Gauge Fx | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf422446f7730e50b9cab4618343425d9927b35ed`; ethereum `0xf594bdfafe4197144c6459fca611d7b868d36bea` | ⚠️ Unaudited |
| Furnace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64b336b5df8318fa485a1a96af5f8a553555285` | ⚠️ Unaudited |
| FxEETHOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b` | ⚠️ Unaudited |
| FxFrxETHOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe563c168c01e05da4f3d81938af158466ad793` | ⚠️ Unaudited |
| FxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | ⚠️ Unaudited |
| FxInitialFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55`; ethereum `0xfc3862c33b54e0bba61d966ff51973c20be4fc62` | ⚠️ Unaudited |
| FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c359c78f75581ab2da5c353d2577c41cecb43` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | project_anchor | own_supporting | 1 | ethereum | unit-240578 | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8098b34ed775ac44b1dde864e098c6d7f37` | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786833b5fd5ee21532d8b576391babefdaad1` | ⚠️ Unaudited |
| LeveragedTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfc3683a0179a02bfb5373243d105ff25e4f40c6` | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2319289e56830b50a282c25af4f0045c724b3f79`; ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74ca519fe35ec6a862a4debd8e317bed3c47c87` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`; ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98`; ethereum `0xeecd843ed9f3d07757565e5cb91111718270a44f` | ⚠️ Unaudited |
| MultiPathConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d3f8f770fd50b8cf76551ec54012c26036c2a` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6440e21a3634c319c69cef8d17601dbc4e97c3db` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0084c2e1b1823564e597ff4848a88d61ac63d703` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2be95a7c0ad24e2d2876793172d046db05d26f7f`; ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`; ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9`; ethereum `0xda1d80bad62586a7c319fd2a41d98a930705fc9a` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`; ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f844447ecf5b1523bfbadad3d9dea975982ea93`; ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`; ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b`; ethereum `0xca0563ab14a87ee64d6b097b0dfc46e9b56820ad` | ⚠️ Unaudited |
| RebalancePoolSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5a14c662f00c614aa467b82c654548540f2fca` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e67460226a71df07115c1f169418dd159e5521b`; ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe091c9028154cc5cb721258e9360803b130f5` | ⚠️ Unaudited |
| SdPendleCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ⚠️ Unaudited |
| ShareableRebalancePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d` | ⚠️ Unaudited |
| ShortPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0055e248ee7feab91969b77ab32f184b72be82fa`; ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x218b689a4f4afba497123b4831f58d6379d99801`; ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d35dc5948c948f131ddd9e3a341b99e45174a74`; ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e`; ethereum `0xd71b8b76015f296e53d41e8288a8a13eaffff2ea` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863fb8855b04509a835082478d6e3d0be4e61a` | ⚠️ Unaudited |
| Token Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194925d55d5de9555ad1db74c149329f71def` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2290eefea24a6e43b26c27187742bd1fedc10bdb` | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469`; ethereum `0xf29b80b512f7055f164a33aa13105dfac3b01b6b` | ⚠️ Unaudited |
| VotingEscrowHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd766f2b87de4b08c2239580366e49710180aba02` | ⚠️ Unaudited |
| WrappedTokenTreasuryV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeded972215008a0d033d3d641511d40d382317e8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (324)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0417ce2934899d7130229cda39db456ff2332685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054fac7aa44f85a59fd41c33006336ec8b03e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085780639cc2cacd35e474e71f4d000e2405d8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a602616593b79591cfc88a130c8825a0fcbd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ce8f58e7340601bb9179000fb49c31843c5283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b700c60de435d522081cc5eb12b63875fe7e65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bbfd53ec934e5d4d3d55dd860642add395de979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112873b395b98287f3a4db266a58e2d01779ad96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1236193c71128f9e7b6bb56f506676add8589009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12af4529129303d7fbd2563e242c4a2890525912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f1cbae37f765614655967afc51b544b8143749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15100606433dc500451e8289984acfceead03149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184b6aed8d975385e0ad02e026d649208a3c58a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1925e197fffa52060f0d2515cd3781e26c63f08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a144095ad1cb488fe6378dbfc62368a7453d114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a17ccf198e03858227c27205f15a4b388235db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca7b82c4265835c7841cf29407217d820a7dadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d100dc012c54606f0046c9420f72b8c63803a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d20671a21112e85b03b00f94fd760de0bef37ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091353d10096349faa685c4dc3d383837f54533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2122a2bee97545595550b85379ac7676fd21a5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215d87bd3c7482e2348338815e059de07daf798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fb1221317ac539ee355fc113054e54b1cd0231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23831e29db590bbbacf267ee2cf377cd3e54a718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250893ca4ba5d05626c785e8da758026928fcd24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2755eebf220bfd31b83fd9244b6d061bca225311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ed637c5e3371c2678c2d346df04fb634ed832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c613d2c163247cd43fd05d6efc487c327d1b248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b895773b093055919e16d537e3a2295d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316f7c1c54f6f5455b9ae92218596bad431a4309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bfaf256875a93b5d02cdef80b17ef780663d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33636d49fbefbe798e15e7f356e8dbef543cc708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345a345dad48c3504113539ce83c0cb765627b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240562 | `0x365accfca291e7d3914637abf1f7635db165bb09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37303d55fd8570c070bedd9a0e64421f318bb01b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240563 | `0x376669afa692a2c6961813c854c78542a3488f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387568e1ea4ff4d003b8147739db69d87325e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38965311507d4e54973f81475a149c09376e241e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389b4a98e01290811687f4fff92281b1ef84c5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447d902da96a22727d0b53f215d0c387fe1ae114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4480debb165466a0dbb1196879c43c7f0cc297db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x456517ee29af17e59ea1c70852d3fb15804bd122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e51067e695bd79d6275ecab6e9e527a72abde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2ab45d27428901e826db4a52dae00594b68022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbd78629b2794d73a3def4c502c422de674831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eefea49e4d876599765d5375cf7314cd14c9d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8330946669d71014efdce30ef19a256643fba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e286478519924a400554bae7a3fa139f9b1576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240564 | `0x53805a76e1f5ebbfe7115f16f9c87c2f7e633726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716f858aeff9cb845d4c78c67a7599b0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a51450b1d025b4f6fa259b2008851553343cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564a464c9c357de593fa48efd784048a9e366523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56afb443de36340c32f1a461605171992480059d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240565 | `0x56bc0ec4049f25e7dd455b64d1c6318c1d9ce789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576b4779727f5998577bb4e25bf726abe742b9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5801bb8f568979c722176df36b1a74654a9c52b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58465fff9f31f0d46822d3a4cea0395f017e161a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a097b014c547718e79030a077a91ae37679eff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fec7879738cb209af6d9880e4566a24200accae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f32964c39cca4353144a6db2f8efdb3216b35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fe55b3fe3f74b42840788cfbe6229869590f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d72aa8da931f047169112fcf34f52dbaae7d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6793de5e5a329be514b51184db13639dc7ccf8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679de4a3836d916fc86c6d9944c98a694f68adb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a94c63689cda730e99491d29e56acd247e5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26dbc8fa2b463607ebb49a68a69c33476665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69518d1d70ad537c41401303bdf96032338e40de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af422087abf42819f764ff8de95269036b9a8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb03222179f83126735d7e9fde94571d716d399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714b853b3ba73e439c652cfe79660f329e6ebb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a6239f1651a4556f4c40fe97575885a195f535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9234a6e03c382a01bb942b1af05b639371309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7612bcabd3d66c71ff740472e063be6a74f126d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ef19714c8b3c71997970c156f59605a99c3ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c5f5b0753ace25ecdbda4c2bc86ab074b6c2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a505e920d5d7e4b402d9ee345fb7e8cdc265262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5350bac0eb97f86a366ee4f9619a560480f05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ced6167b5a08111dc8d0d2f9f7e482c4da62506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4674b837429c44914961cb9f21dd6defd0eee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d85a9ae9ea89069a71289c167cd3502a773e113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e94c07c6c3b2c931e9517529f56553770a7c0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb0ed173480299e1310d55e04ece401c2b06626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e9ed9b654460212f04c2bde0467cde4628782a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823baf74524b707d649a2a78e66df106f5a131ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834e87262a00b0ac38ed49cb1110838866be4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bdc459ac3887b2a61aa47dca3acac26a333d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84952a42984779e22d1e2b78c9b7541d1fb2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aaea3a2757d457e1ce88c3808c1690213e432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b84d588c7a67ebab2aa0352b8475dc9310b805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e987a89fd7345457d97b9e82906f346d61df39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d5e4caaf4358a4337c10859c7107c7aef4f8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b10fdf42f5ecada5210c14f5c209c1eb1266f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc02c0d9592976635e98e6446ef4976567e7a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9186fa822624bad50a5cb2545048cb26b4e65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3815ef103b8d8528778969cd53baa2e94be25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e58f45e69732f3c602075f010ab35902ce62771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910d63e04ca41b9e349c8caba12e7ecae5e11a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9216272158f563488ffc36afb877aca2f265c560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9317139acbdbd53686c4531216a95ccc8514cdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93670efe073e0d75be16445779a8399e6b418004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939c38921c961decb3cc16f601c32d07c41cd25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d2670b829ee371c6aaa78dcdd1bd6e967cefbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9516c367952430371a733e5ebb587e01ee082f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9579c311b54b4bb3460a5461cc6108ee162933c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96293b5424c707c53a51175489e9b24b6b8dce46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969fcabb703052155c4cc3b24458e77b2d56b29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9710ca7f3edd4893f399c89ea184d92cc7172e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ea26a76fd78a22691c9ff64f26893a13cd9b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a18c4ea2c4d1aeaff925cb74e41222a2aa14562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a68dea7dcddfc5c4c6b3cb8ab278bf2cd87d3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad382b028e03977d446635ba6b8492040f829b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf5ffabbf97de0a47843a7ba0a9ddb40f2e2ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7003bc16f2a1aa47451c858fee6480b755363e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfefd90d4c8428d4cbac9baaa6d52c6ba7897f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d093e5b929cceeae9497fc27c22481e0b8a53f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d11ab23d33ad026c466ce3c124928fdb69ba20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8945755ff12a989c4d5e78c9f6f3a4257db90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eafdd0d204061fb98cc305bdacf84fa243b0a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efd39499dd56106b106a2206e79fb6117baf2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0d5e33617a1db6f1cbd5580834422684f09269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f224aa807c6fc3086ed3c552ba54bd3a8aace33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f23562ec47249761222ef7ac02b327a8c45ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc95077c2271dabb19203e82d469ce2e96aaffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fcb2c47dab11e38fec4b8c886f63741bfed4c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04d761adad1029e4f2f60ac973a76c5307efcea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cc8162c523998856d59065faa254f87d20a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa295829c082c4d21fe37dbc8c96bfa0ef6dbaa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2faffe31153e5e60f2352e3ed28ff973309c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8e0b7aa53a9b9abd795ddb290e93feafe6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c0f7360b922136cc8b89063be1e8daf70427bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3f4fb87e19b60622bea119c4469c0df2c7c4739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5250c540914e012e22e623275e290c4dc993d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa553c27fff4d09c69e367c20eb95cc7fd0b0f3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70dddb8ddd06b1c26061d998e041748b18ecf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84360896ce9152d1780c546305bb54125f962d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87f04c9743fd1933f82bddec9692e9d97673769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9414ee8b2b2563e70174972faa2e8b5197feb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc8cbba768da396626fad97d0e61104ac1e7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb3604aadf26e6c0bb8c720420380629a328d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdc0ab51178d0ae8f70c1ead7d3cf5421fdd66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d0c8782f8c9076e8f081f7a5e1a4ac4499a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9a0e7c08bc9f747df97a3e7e7f620632cb6155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae34ee329ee91ddbfbe50443df9dedb076477f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb178197e88d58da21be22a408e850d1e6dc09a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1dd23468a69dfddb7211298e609c0db1522b2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2297b60e886a4b9a4d7b385a25c7982712e03ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a554033c59e33e48c5dc05a7192fb1bbddfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ca48fe4ee94a4fe8815f7e54e99124f997540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e43ececa7c110c74cf13ba35105b0633b74e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3886b8c94c8635b786b1ca88942337669bb1e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3c90e64eb6f456a5f5c17aa99b6aeca6f4a6390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fe4e73658b42619a4c739aac4e66ad87351b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5152d159fce50a7576eba7fab61c2b98f0ed692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb592e01dd77084b36430ffcb9c9d2f76fde32631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb753366082466c4b5984312f0c4bb97554be067e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb788998187a8536f38b69ae657323ac8b70551bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87a8332dfb1c76bb22477dcfeddeb69865ca9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90d347e10a085b591955cbd0603ac7866fcadc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb925f8caa6be0bfcd1a7383168d1c932d185a748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba947cba270d30967369bf1f73884be2533d7bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb549046497364a1e26f94f7e93685dc29fad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4114f182e0b33ffbeb538a680639516b647ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbfc4df7b7793fb7817533545101ab6071f1520a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc113e63c3e5bcc9b829053c31a6c3868d7cd674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf57a777c20f66f3e4a7435269da4e73073e001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd09e936de95a7d90b84e3c6ff7d2139511d5aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb4289491ebfe8452cfac8830a6285e42a4742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc054f64143cb04b765773d5b66992f611c497352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e93ac461c377f96486445cb16169fd09c9ccc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2312caf0de62ec9b4adc785c79851cb989c9abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bdbf323304eabd9260b42e4d0d429ca3481d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2def1e39ff35367f2f2a312a793477c576fd4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4160f6d4149e0921e9aced406acf5f3ad7f2882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50ea03795b1c6e618fbbc304b55e5f7c31d7adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dee5913e010895f3702bc43a40d661b13a40bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9c980322f460db51cc8e45539f677c73f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccb97f23666c75aee0aabddb180c2df68b03154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf904d377604bcccb328e51204ca30203f635259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeeff214b256063110d3236ea12db49d2df2359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11396267546b8ed258152f7e4f0cc1ca32abd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b8162e2fb9f3eff09bb8598ca0c8958e33a23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba9a415bae1983a945ba078150cae8b690c9229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb9a696419b54851307ffc62c8c4e50ddacfbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8f6860f5a3eecd8b7a902df75cb7548387c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7fbdbae50c7931a11765faed9fe1a002605b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfac83173a96b06c5d6176638124d028269cfcd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240566 | `0xe063f04f280c60aeca68b38341c2eecbec703ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc1e9514f149ae9d69089c45934a78f9e57389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4031e271809d20074e4bef1caeefec5f710e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe534e5e86382d64133ecd6b7f717c69bec8b40ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe650a519a88bc980750cea783e26d32fd35c3b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f847c62025ed672cfc57c244d16f76f8eac66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7874754362386ca438e70447a60a626bcaad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed113b925ac3f972161be012cdfee33470040e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed803540037b0ae069c93420f89cd653b6e3df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed92dde3214c24ae04f5f96927e3be8f8dbc3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9ed685f553b0827a58a918e64ec02e6fd55799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01ccea9704ca0aca3d2982dbb6b40bad7075c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3eced42dbd8353569639c0eaa833857aa0a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e141c804ba39b4a031fdf46e8c08dba7a0df60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf291ec9c2f87a41386fd94ec4bcdc3270ed04482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bd6d66bafea1e0500536d52236f64c3e8a2a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58c499417e36714e99803cb135f507a95ae7169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a3c54cfd96837c5efce8a4b260de7b117f2681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6198e5e9179afb6a75a5c4dc29e0235bc8af0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62f458d2f6dd2ad074e715655064d7632e136d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf729422d68c2cf00574fb5712972454cf402a9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1dc2b0775c5699e195bb5f64bafba3c36a9ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4761512aaf899b010438a10c60d01ebdc0efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa525154c6371e9d46570b44c7328e6cc3e7cc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfefafb9446d84a9e58a3a2f2dddd7219e8c94fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x535f7ca9637a5099db568b79a3624cfd6b5fc833` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240573 | `0x62c6867e4f2e63302b15cbf9b8540214a13beeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240574 | `0xa64f68c089b3e69d48f6047d3be513349e74b3de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240575 | `0xf9e10daa647e540bf3d1334377a88361ab980e94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240567 | `0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240568 | `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240569 | `0xc752c6daa143e1a0ba3e7df06f3117182432b991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16d88e5785612d864ff089761082ef8b1914c1a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240570 | `0x179f38f78346f5942e95c5c59cb1da7f55cf7cad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240571 | `0x55380fe7a1910dff29a47b622057ab4139da42c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240572 | `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc752c6daa143e1a0ba3e7df06f3117182432b991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240576 | `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240577 | `0xc608dfb90a430df79a8a1edbc8be7f1a0eb4e763` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 299
- Live contracts: 0
- Unknown liveness contracts: 299
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=299

Showing first 200 of 299 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16d88e5785612d864ff089761082ef8b1914c1a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7580d4adc6d302d2d4c7c3db93e9ae3f82c4617` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc752c6daa143e1a0ba3e7df06f3117182432b991` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x535f7ca9637a5099db568b79a3624cfd6b5fc833` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x808130d89fc067a7a8d9ddf4ca2abf6eb5ed3b32` | non_address_book | unknown | unknown | unverified | n/a | `0x9ebe424b7bf85ac8ba42b3f4c9c46df6809a322a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0417ce2934899d7130229cda39db456ff2332685` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x054fac7aa44f85a59fd41c33006336ec8b03e916` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x085780639cc2cacd35e474e71f4d000e2405d8f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08a602616593b79591cfc88a130c8825a0fcbd94` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09ce8f58e7340601bb9179000fb49c31843c5283` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b700c60de435d522081cc5eb12b63875fe7e65a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bbfd53ec934e5d4d3d55dd860642add395de979` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x112873b395b98287f3a4db266a58e2d01779ad96` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1236193c71128f9e7b6bb56f506676add8589009` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12af4529129303d7fbd2563e242c4a2890525912` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14f1cbae37f765614655967afc51b544b8143749` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15100606433dc500451e8289984acfceead03149` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x184b6aed8d975385e0ad02e026d649208a3c58a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1925e197fffa52060f0d2515cd3781e26c63f08c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a144095ad1cb488fe6378dbfc62368a7453d114` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a17ccf198e03858227c27205f15a4b388235db7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ca7b82c4265835c7841cf29407217d820a7dadb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d100dc012c54606f0046c9420f72b8c63803a00` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d20671a21112e85b03b00f94fd760de0bef37ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2091353d10096349faa685c4dc3d383837f54533` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2122a2bee97545595550b85379ac7676fd21a5b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x215d87bd3c7482e2348338815e059de07daf798a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21fb1221317ac539ee355fc113054e54b1cd0231` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23831e29db590bbbacf267ee2cf377cd3e54a718` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x250893ca4ba5d05626c785e8da758026928fcd24` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2755eebf220bfd31b83fd9244b6d061bca225311` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28ed637c5e3371c2678c2d346df04fb634ed832d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c613d2c163247cd43fd05d6efc487c327d1b248` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d8b895773b093055919e16d537e3a2295d5ef6c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x316f7c1c54f6f5455b9ae92218596bad431a4309` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31bfaf256875a93b5d02cdef80b17ef780663d81` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33636d49fbefbe798e15e7f356e8dbef543cc708` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x345a345dad48c3504113539ce83c0cb765627b54` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37303d55fd8570c070bedd9a0e64421f318bb01b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x387568e1ea4ff4d003b8147739db69d87325e206` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38965311507d4e54973f81475a149c09376e241e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x389b4a98e01290811687f4fff92281b1ef84c5a3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x447d902da96a22727d0b53f215d0c387fe1ae114` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4480debb165466a0dbb1196879c43c7f0cc297db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x456517ee29af17e59ea1c70852d3fb15804bd122` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49e51067e695bd79d6275ecab6e9e527a72abde4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a2ab45d27428901e826db4a52dae00594b68022` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bbd78629b2794d73a3def4c502c422de674831d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4eefea49e4d876599765d5375cf7314cd14c9d38` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8330946669d71014efdce30ef19a256643fba8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51e286478519924a400554bae7a3fa139f9b1576` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x549716f858aeff9cb845d4c78c67a7599b0df240` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55a51450b1d025b4f6fa259b2008851553343cde` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x564a464c9c357de593fa48efd784048a9e366523` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56afb443de36340c32f1a461605171992480059d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x576b4779727f5998577bb4e25bf726abe742b9f7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5801bb8f568979c722176df36b1a74654a9c52b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58465fff9f31f0d46822d3a4cea0395f017e161a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a097b014c547718e79030a077a91ae37679eff5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fec7879738cb209af6d9880e4566a24200accae` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61f32964c39cca4353144a6db2f8efdb3216b35b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63fe55b3fe3f74b42840788cfbe6229869590f83` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65d72aa8da931f047169112fcf34f52dbaae7d18` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6793de5e5a329be514b51184db13639dc7ccf8dd` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x679de4a3836d916fc86c6d9944c98a694f68adb4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67a94c63689cda730e99491d29e56acd247e5430` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x680f26dbc8fa2b463607ebb49a68a69c33476665` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69518d1d70ad537c41401303bdf96032338e40de` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6af422087abf42819f764ff8de95269036b9a8f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb03222179f83126735d7e9fde94571d716d399` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x714b853b3ba73e439c652cfe79660f329e6ebb42` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72a6239f1651a4556f4c40fe97575885a195f535` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74e9234a6e03c382a01bb942b1af05b639371309` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7612bcabd3d66c71ff740472e063be6a74f126d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78ef19714c8b3c71997970c156f59605a99c3ff3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79c5f5b0753ace25ecdbda4c2bc86ab074b6c2bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a505e920d5d7e4b402d9ee345fb7e8cdc265262` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c5350bac0eb97f86a366ee4f9619a560480f05a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ced6167b5a08111dc8d0d2f9f7e482c4da62506` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d4674b837429c44914961cb9f21dd6defd0eee0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d85a9ae9ea89069a71289c167cd3502a773e113` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e94c07c6c3b2c931e9517529f56553770a7c0d2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7eb0ed173480299e1310d55e04ece401c2b06626` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81e9ed9b654460212f04c2bde0467cde4628782a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x823baf74524b707d649a2a78e66df106f5a131ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x834e87262a00b0ac38ed49cb1110838866be4a20` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83bdc459ac3887b2a61aa47dca3acac26a333d20` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84952a42984779e22d1e2b78c9b7541d1fb2bd4e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x851aaea3a2757d457e1ce88c3808c1690213e432` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85b84d588c7a67ebab2aa0352b8475dc9310b805` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86e987a89fd7345457d97b9e82906f346d61df39` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87d5e4caaf4358a4337c10859c7107c7aef4f8ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b10fdf42f5ecada5210c14f5c209c1eb1266f11` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cc02c0d9592976635e98e6446ef4976567e7a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d9186fa822624bad50a5cb2545048cb26b4e65e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e3815ef103b8d8528778969cd53baa2e94be25e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e58f45e69732f3c602075f010ab35902ce62771` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x910d63e04ca41b9e349c8caba12e7ecae5e11a74` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9216272158f563488ffc36afb877aca2f265c560` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9317139acbdbd53686c4531216a95ccc8514cdcb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93670efe073e0d75be16445779a8399e6b418004` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x939c38921c961decb3cc16f601c32d07c41cd25c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94d2670b829ee371c6aaa78dcdd1bd6e967cefbb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9516c367952430371a733e5ebb587e01ee082f99` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9579c311b54b4bb3460a5461cc6108ee162933c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96293b5424c707c53a51175489e9b24b6b8dce46` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x969fcabb703052155c4cc3b24458e77b2d56b29a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9710ca7f3edd4893f399c89ea184d92cc7172e28` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98ea26a76fd78a22691c9ff64f26893a13cd9b28` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a18c4ea2c4d1aeaff925cb74e41222a2aa14562` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a68dea7dcddfc5c4c6b3cb8ab278bf2cd87d3d3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ad382b028e03977d446635ba6b8492040f829b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bf5ffabbf97de0a47843a7ba0a9ddb40f2e2ed5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SECBIT_f(x)_V2_Report_v1.4_20250107.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_f(x)_V2_Report_v1.4_20250107.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 26 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13165] SECBIT_f(x)_V2_Report_v1.4_20250107.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | AaveFundingPool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | BasePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoanFacetBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FlashLoans | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDBasePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDBasePoolFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | FxUSDRegeneracy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | GaugeRewarder | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | LSDPriceOracleBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | MigrateFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PegKeeper | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolConstant | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolErrors | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PoolStorage | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PositionLogic | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | PositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | ProtocolFees | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | ReservePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | RouterManagementFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | SpotPriceOracleBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | StETHPriceOracle | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickBitmap | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickLogic | unmatched — not counted | — | — | no |
| SECBIT_f(x)_V2_Report_v1.4_20250107.pdf | TickMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | FxUSDCompounder4626 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 324 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13165] SECBIT_f(x)_V2_Report_v1.4_20250107.pdf

Fork inheritance lineage and inherited audits are included when available.
