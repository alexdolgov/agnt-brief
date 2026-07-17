# Agentic Audit Brief: Concentrator

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 34 (0 matched; 34 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 231 unique implementations (349 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $56,501,343.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Concentrator. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: unclassified (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Vyper_contract (`0x3f0e7916681452d23cd36b1281457da721f2e5df`, chain 1)
- Vyper_contract (`0x5bc3dd6e6b4e5dd811d558843da6a1bfbb9c9dca`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 229 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 2 of 231 unique; 229 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 101
- Unique implementations: 231
- Raw deployments: 349
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 32 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6ecfa38fee8a5277b91efda204c235814f0122e8`; ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ⚠️ Unaudited |
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x615959a1d3e2740054d7130028613ecfa988056f`; ethereum `0x65682cb35c8dea1d3027cd37f37a245356bc4526`; ethereum `0xb1d7787b8db300b2d664da3897116a0135e588a6`; ethereum `0xba445cbd4b94d98e0ac530caff3623dca54776c8`; ethereum `0xc74c0e02cbca62045c3a0375d31daa40e49ee75b`; ethereum `0xe75da6ef028b49140953e84ad097d4deedd88423` | ⚠️ Unaudited |
| AdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1662a5c9ce635f2322a9aadeaa060654aaadccf4` | ⚠️ Unaudited |
| AdapterRegistry | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd89f9fbff81c3754fd8998f40b63fa9d8d4ea7b` | ⚠️ Unaudited |
| AladdinConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9c980322f460db51cc8e45539f677c73f86` | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ee46755ae81ce917392ed1fb21f74a8104515b` | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1649ff31c30f9fc7ecae5c76ad00ae3aecf18ece`; ethereum `0x1e6f87a9ddf744af31157d8daa1e3025648d042d`; ethereum `0x4a277e11f55be48b27c453188a74f115a327bb2e`; ethereum `0xa0022debeb2275cf05b9c659493f89efe3ab89a6` | ⚠️ Unaudited |
| AutoCompoundingConvexFraxStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9cfd6205914ab1e209ffe70326d8dd15fc58187` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01363db6e185433ae63de4c745ca0aef49a569d8`; ethereum `0x1b3a4e4d44e53f4a90ef26e980a3d45f4662d2f1` | ⚠️ Unaudited |
| BoostMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa52f3dd9c456f77d766075a727c7c045fcc407f0`; ethereum `0xbc38d256e559fed3fa95a6cdc633c667283fb6b8` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097d23d07f1061cb4ace410a3ddc634820bb79c6` | ⚠️ Unaudited |
| CLeverToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c20ac688410be8f391be1fb00afc5c212972f86`; ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ⚠️ Unaudited |
| CompounderGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883fd355debf417f82aa9a3e2936971487f7df1f` | ⚠️ Unaudited |
| ControllerModule | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb3f46356ca516664c305dad356ddee5491017945`; ethereum `0xe56ce16f36f9a92281d6296ef9ca14c271bde0b4` | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789e729713ddc80cf2db4e59ca064d3770f1a034` | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c88aa6a9cedc2aff9b4ca6820292f39cc64026` | ⚠️ Unaudited |
| CRVPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9718e7704f10db1afaad737f8a04bcd14c20aa` | ⚠️ Unaudited |
| CRVStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94155052e2be3c9ad6d57f1b13f914626946d8f7` | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x69d61428d089c2f35bf6a472f540d0f82d1ea2cd` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903ab70a7467ee5756074b31ac88aebb8fb777` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac667a4ccf9089ab1db978238c555c4349545` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d1b558ef44a6e23d9bf4bf8db1653626e642c3` | ⚠️ Unaudited |
| DebtReducer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`; ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5c485d24fb1832a14f122c8722ef15c158acb5` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116513eea4efe3908212afbaefc76cb29245681` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x51df7675b8f7b970ded3596c00624a30ec9cfd2b`; ethereum `0x6d57d34259f6dc31c9a241c199822861940d38f9`; ethereum `0xca94395469a88e9cac0d5e5e308910e298270d30` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6` | ⚠️ Unaudited |
| FxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | ⚠️ Unaudited |
| FXNAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87978ac2fdd851c99dcd9d2da6b3b262205bfb13` | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1938b685f72f34de7f4cc0a9e2bbefdb667ede` | ⚠️ Unaudited |
| FXNDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7995192be61ea0b28ce14183dda51edf78f1c7ab` | ⚠️ Unaudited |
| FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c359c78f75581ab2da5c353d2577c41cecb43` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8098b34ed775ac44b1dde864e098c6d7f37` | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c310fc54c0534dc3c45312934508722284352d1` | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xa0fb1b11cca5871fb0225b64308e249b97804e99`; ethereum `0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f` | ⚠️ Unaudited |
| InflationReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f78ddf344e20b92b03c13d82d1316fc0a66820e`; ethereum `0xc9104ee11269731e1f81b4055b6293d71a4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786833b5fd5ee21532d8b576391babefdaad1` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x28604ff7b4aeae28d4d9e54d14038c910844343a`; ethereum `0xf54bceed6396e4698cd688eab5b58b86cca0f68d` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4887aea49758b413e9bab127ffa4e59104bd0cd8`; ethereum `0xc1e4775b3a589784aacd15265ac39d3b3c13ca3c` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5ccb2e511fcdeaa16737810787a47507cf0922` | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2319289e56830b50a282c25af4f0045c724b3f79`; ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea5e213bbd81a8a94d0e1edb09dbd7ceab61e1c` | ⚠️ Unaudited |
| MAVDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac34fe88e434812ddc4a29caa8234328983a13c` | ⚠️ Unaudited |
| Merkle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414cbb5c7cf637b7030965b5ee84504c64c10c29` | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf442e3a8041199747f94b01a64632134256f847f` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2989df9c8c9897f07d464366607dcbfaebf7448c`; ethereum `0x9e0ee6aebeb7a5655b227f7893f5cf34b338b9fa` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`; ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ⚠️ Unaudited |
| OnlyBoostAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3680cce0d97bbbfa47765d7429ff207d03a7364f`; ethereum `0xa1b3d61156d45f3fd293040604dfcb1b0776350a`; ethereum `0xa1ffb26d128d9cd5a09e6206f518c92aa1dfdaa9`; ethereum `0xbcb9cc044c28300374b5b7dd45dbd1990b4fae9c`; ethereum `0xc0238579e281dae9403b7a3c1d22a14d61d7de69`; ethereum `0xf59f24907d03c9288d884dc2100b739e49e3f507` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x48af330a99a4cee2f367a4ab447ba816d091bce7`; ethereum `0x63adcf5630702205ba985f30e96cd58459866a71`; ethereum `0x6d2cd2436ab494cf74a725c9258e7fe4b2f9a599`; ethereum `0xf82473028ff1f063d57179fd4efe04172ed7d578` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8f14554f40705de7908879e2228d2ac94fde1a` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6440e21a3634c319c69cef8d17601dbc4e97c3db`; ethereum `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0084c2e1b1823564e597ff4848a88d61ac63d703`; ethereum `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2be95a7c0ad24e2d2876793172d046db05d26f7f`; ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`; ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`; ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f844447ecf5b1523bfbadad3d9dea975982ea93`; ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b162de7fbd942f142aa21865f685f71a687a3bb`; ethereum `0x8d41424694e9b4c41f6a39c0a20369a71e0a6280` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`; ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8a9c30e4e25033498347c1a054717bd0c4d356` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3a4d06532d9d1c631f99ec50dd72da43a5c6de` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e67460226a71df07115c1f169418dd159e5521b`; ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d144357dcc8a852ad601f27bf6310b657a7f` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x524fce03270c60279d604ea3b374194e96c3a3b3`; ethereum `0xc47bdefd00fc5ac204fedc1e204e06ce8ba7e336` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | ⚠️ Unaudited |
| RewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f1bba3868b67f4994b3e7f7ec9b0485dc85ad7` | ⚠️ Unaudited |
| RewardReceiverMigrationModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c043dd5adee81c93a5b5c2ccda00de9c4cbfd46` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a207a85e372fcdac3014f945a65868f2a05ba12` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a6cfc4c8112fbfd77f0d095a0ee2f2f4505eef` | ⚠️ Unaudited |
| RouterModuleClaim | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd98cecb88fc61101d4bebf1b6f9e65572222ff5` | ⚠️ Unaudited |
| RouterModuleDeposit | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf0a5d6a1f9a4098c69ce660f8b115dc8509b7c9` | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b84b9334132843fc256830fb941d535853c120` | ⚠️ Unaudited |
| RouterModuleVLSDT | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8155b8858af2b12baf8a79e22021b14f91557707` | ⚠️ Unaudited |
| RouterModuleWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88772dfb857317476b77f1a25b888b9424cf63c` | ⚠️ Unaudited |
| Sanctuary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac14864ce5a98af3248ffbf549441b04421247d3` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe091c9028154cc5cb721258e9360803b130f5` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b5651e55d4ceed36251c61c50c889b36f6abb5` | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26dbc8fa2b463607ebb49a68a69c33476665` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43e54c2e7b3e294de3a155785f52ab49d87b9922` | ⚠️ Unaudited |
| sdMAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50687515e93c43964733282f9db8683f80bb02f9` | ⚠️ Unaudited |
| SdPendleBribeBurner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bde1d771423b8d2fe0b046b934fb9a7f956ade2` | ⚠️ Unaudited |
| SdPendleCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ⚠️ Unaudited |
| SdPendleGaugeStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94992da38be9adadd359c2959588fddfa2dfe5cd` | ⚠️ Unaudited |
| SDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f` | ⚠️ Unaudited |
| sdToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0c057598dce1891688829581f890dd2a3685a43f`; ethereum `0x402f878bdd1f5c66fdaf0fababcf74741b68ac36`; ethereum `0x4df454443d6e9a888e9b1571b2375e8ab4118d9d`; ethereum `0x58aad88516bd26439e68bfb1dead78538ab59ffd`; ethereum `0x5ea630e00d6ee438d3dea1556a110359acdc10a9`; ethereum `0x752b4c6e92d96467fe9b9a2522ef07228e00f87c`; ethereum `0xe19d1c837b8a1c83a56cd9165b2c0256d39653ad` | ⚠️ Unaudited |
| ShortPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0055e248ee7feab91969b77ab32f184b72be82fa`; ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x218b689a4f4afba497123b4831f58d6379d99801`; ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d35dc5948c948f131ddd9e3a341b99e45174a74`; ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e` | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf954200fd969443b8f853b4083b71cd073c05d5b` | ⚠️ Unaudited |
| StakeDaoNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4f84e4f3cd31d6c91d80122b5a26cb4ae66bd5` | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f572b705cae1893cdceb5161ce40e2fc5bb6cd` | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd2236b1e089762cc264c85eebcff195ae38ea2` | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221738f73fa4bfca91918e77d112b87d918c751f` | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07fa4cca2a020fa9477ef7db5848bd976b64eebc`; ethereum `0x6382d84095cf9acc5b3690dbefcb0567971cdea3`; ethereum `0x94405b3ddfb47d42104c38547b3d31108ada2580`; ethereum `0xdda6ad61f347b7b821e69ee7c93f55f633e50240` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863fb8855b04509a835082478d6e3d0be4e61a` | ⚠️ Unaudited |
| Token Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194925d55d5de9555ad1db74c149329f71def` | ⚠️ Unaudited |
| UniformBoostProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3867e04d5a69b750332300643b36135313c5b7` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5af15da84a4a6edf2d9fa6720de921e1026e37b7`; ethereum `0xa2761b0539374eb7af2155f76eb09864af075250`; ethereum `0xbc10c4f7b9fe0b305e8639b04c536633a3db7065`; ethereum `0xf3c2bdfccb75cafda3d69d807c336bede956563f` | ⚠️ Unaudited |
| VeBoostDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xce00ad8df94d8c365dc415b84963aa37a06be923`; ethereum `0xfda13d04e56ffcc7d2aa4ee93fb59b49afeb1688` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xda9846665bdb44b0d0caffd0d1d4a539932bebdf`; ethereum `0xe1f9c8ebbc80a013caf0940fdd1a8554d763b9cf` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc7906fc6047679dad53c0c3b40e135486421e9` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2290eefea24a6e43b26c27187742bd1fedc10bdb`; ethereum `0x592e353c5b97356e99eaf6a72b971ba1c9695593`; ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | ⚠️ Unaudited |
| vlBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xab05ca46d1c78cabb051effe35099714cad2adda`; ethereum `0xba1b4362b2ded59b3ae5ee893ee3463ba382f570` | ⚠️ Unaudited |
| vlSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x75d96b89e10a4a9a8341a1a180b19c9bf9e88ef1`; ethereum `0x94818a7baa7e9f5dc62ce4da1b52ef9a760b80b8` | ⚠️ Unaudited |
| VoteBountyManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x75289388d50364c3013583d97bd70ced0e183e32`; ethereum `0xa20b142c2d52193e9de618dc694eba673410693f` | ⚠️ Unaudited |
| VoteWeightRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619edef2d18ec9758e96d8ff2c7dcbfb58dd5a5c` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09943c4f27f2ada5bb58b845d27405a4b3a894a8` | ⚠️ Unaudited |
| vsdCRVOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b8d4d4db1555ba4e928ccdea02b52126921e95` | ⚠️ Unaudited |
| vsdToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7346aa8959fb138787bf9a579b4d86098a3834fc`; ethereum `0xe079ac07463ff375ce48e8a9d76211c10696f3b8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 36 deployments: ethereum `0x051d7e5609917bd9b73f04bac0ded8dd46a74301`; ethereum `0x08780fb7e580e492c1935bee4fa5920b94aa95da`; ethereum `0x1005f7406f32a61bd760cfa14accd2737913d546`; ethereum `0x2932a86df44fe8d2a706d8e9c5d51c24883423f5`; ethereum `0x29f3dd38db24d3935cf1bf841e6b2b461a3e5d92`; ethereum `0x3175df0976dfa876431c2e9ee6bc45b65d3473cc`; ethereum `0x33e411ebe366d72d058f3ef22f1d0cf8077fdab0`; ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x50161102a240b1456d770dbb55c76d8dc2d160aa`; ethereum `0x552dad974da30d67f25be444991e22cbae357851`; ethereum `0x696b5d296a8aef7482b726fcf0616e32fe72a53d`; ethereum `0x6d787113f23bed1d5e1530402b3f364d0a6e5af3`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x742c3cf9af45f91b109a81efeaf11535ecde9571`; ethereum `0x75f8f7fa4b6da6de9f4fe972c811b778cefce882`; ethereum `0x81c46feca27b31f3adc2b91ee4be9717d1cd3dd7`; ethereum `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x99a58482bd75cbab83b27ec03ca68ff489b5788f`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0x9f330db38caaae5b61b410e2f0aad63fff2109d8`; ethereum `0xa1f8a6807c402e4a15ef4eba36528a3fed24e577`; ethereum `0xa2d40edbf76c6c0701ba8899e2d059798eba628e`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xc78fa2af0ca7990bb5ff32c9a728125be58cf247`; ethereum `0xcfc25170633581bf896cb6cdee170e3e3aa59503`; ethereum `0xd0921691c7debc698e6e372c6f74dc01fc9d3778`; ethereum `0xdcef968d416a41cdac0ed8702fac8128a64241a2`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xf253f83aca21aabd2a20553ae0bf7f65c755a07f`; ethereum `0xf2f12b364f614925ab8e2c8bfc606edb9282ba09`; ethereum `0xf3a43307dcafa93275993862aae628fcb50dc768`; ethereum `0xf43211935c781d5ca1a41d2041f397b8a7366c7a`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232180 | `0x3f0e7916681452d23cd36b1281457da721f2e5df` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232181 | `0x5bc3dd6e6b4e5dd811d558843da6a1bfbb9c9dca` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7793bc89724925615d7e4080bd6b893d50d5fde` | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf908c0281f4bafbca67e490edae816b8472608c8` | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9aa699f1badb31a7c4b40f7fa1f49469595785` | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325229508513d484a90f3618e6aca8a9fb808ea9` | ⚠️ Unaudited |
| YieldnestDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0e636a19c1677fdf37da0e3af602f96da3352e` | ⚠️ Unaudited |
| yVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x24129b935aff071c4f0554882c0d9573f4975fed`; ethereum `0xb17640796e4c27a39af51887aff3f8dc0daf9567`; ethereum `0xcd6997334867728ba14d7922f72c893fcee70e84` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ef23094b40bca5655bbc8442886e1c45222619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d36c723b8213122f678025c2d9eb1ec7ab8f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f27b9d5f2bc742bf547968d2f07decbcf1a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b1326459d72f2ab081116bf27ca46cd97762a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1725738f3295d3f8eb68da864a2ade9c39194c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177eaa1a7c26da6dc84c0cc3f9ae6fd0a470e7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0d72a330f2768daf718def8a19bab019eead09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce37bee8f2db0c9c4960c4b7af3f7c75d1c8560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f49037fa2979753545b51b7f58e20874a9f1d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe537bd59a221854a53a5b7a81585b572787fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210dfec4fc0c3b88e7984a86dc315f43aa07a68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2131197fc08623c971916e076af4ea3c0f42e209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ab5100acaff53d00ad92bb8df75a72e7a3bc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2903dbec58d193c34708de22f89fd7a42b6d0eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e56d5e68b4819fc4a997b91fc9f4f8818ef1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3e72f568f96d7209e20c8b8f4f2a363ee1e3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b895773b093055919e16d537e3a2295d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5e8c0a3bab996c570e4fc5f9bd2f19eb39136b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3557bd058d674dd0981a3ff10515432159f63318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d10708ce535361f178f55e68df7e85acc66270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cf54f3a1969be9916dad548f3c084331c4450b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deb1b1648edcd35088da8f4a428f7c900297886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7b4de8a29c90e0052c27bad365bbfe2aaa7ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e88f78d4e961366117ebc015e1ee8944efbc574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4153f858bbbc3b7763b91295feb3c7d3663f97d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad5a81234533e2881022f8fb29aa07a6ed908e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c2f999e7378beabf1c6f1e63409c6eabe1bef8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3736eafb179f80e2442507f59a6c7725dd996b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b47c4a642231dbe0b411a0b2fbc1ebd129346d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc9ae51f78c593d4138263da7088a973b8184e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51452b51fbb8e8b200d369a55366ec7a1564fde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5181291355abe5f3f1812a0aa888a73b9a16c91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539e65190a371ce73244a98dec42ba635cca512c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716f858aeff9cb845d4c78c67a7599b0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576d7ad8eae92d9a972104aac56c15255ddbe080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588adda67b728c6ddc5b77a72920a012a718370d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5892dff85a2ae0cee9a0efa4c95e5e977122d1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5940611b5d6f16ea670f032f13e8a09567a8dff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59866ec5650e9ba00c51f6d681762b48b0ada3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0944335fd62e4ca92396fd1d4e807de5007dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b75c60d45bfb053f91b5a9eae22519dfaa37bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfdf492e52112d670be9df5bdc6b500e35479ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60136fefe23d269af41ab72de483d186dc4318d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6037bb1bba598bf88d816cad90a28cc00fe3ff64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x644a15e85aa4a56afe1461e7ff4f75d733b26322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6543b0f69c87bca8edb2ab75023c2bfbb4a2a2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ef1297e25c933d44d364df49852f8f59e53a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76023039b5255977ea51da6786370c5b167339e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d5980fda6b2869e5f21bde8eb6bd89cb7af98b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a8ea2f9ebfc2db9a093bd46e01471267914e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88cae351ccd28cbf3e9d91c27a6f8a64602b66be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89645148cb8d7530f4ddb51ea72e2d05ba38abc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8996cb5f5abc5e8dd6425baa7d32179e38ccc265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917d8bbca8d7a9e7ba46edbc67725acb036f18cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cff1bc1af2a3cb03d969f3b4a1f63d782e3356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cc627db80253056b2130aac39abb252a75f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963bacb5b0df6950814c572e3f9ea005458f6563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6dc3dbc7cc5e1d7241601473fd63d2bd1573f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d967cf3043287ebae052a0a7cb6330f496f4510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebbb3d59d53d6ad3fa5464f36c2e84abb7cf5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa054b857b7a06e04fe9768a86a24fe76ba70e7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29646350f098c9830f88b530ea9f19021a1339d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ecf0cc8e88136134203aaafb21f7bd2da6359a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8a21516465d9fc57c621f57ecab838c1910bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae762a0bae17b2edeb76e6cd95822d0af2e7e7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae76916ee6ccf50e06489509af6a17afd296c918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae9ad1b6f40e4ae7f74ce8eaafd570522bfda964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc6aea868062e50a082400aea92f7260b4f7814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ad6113264094fd9bf2238729410a07ebe5aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb539433ff0c477b350e50df5f36d049d28035a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f9633ff35a24fc0b08b9cba771a09789cf99bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f79090190c297f59a2b7d51d3aef7aad0e9af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcfe5c47129253c6b8a9a00565b3358b488d42e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf1f31c6d7b5fbd5df2ea9767f08999d670c44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3040becb009efdb65f4b1b844f4438b5da058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24d1fa18605006d222fbfe8476858b2dfc9a04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2791781c367b2f512396105c8ab26479876e973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69f52a4390eff6d4dd70c1d5b52055cedd25ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b81067896c918d4d21fb814b08e0be3821e089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f15a541152984e39a5795ca8f8cf487f397bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf03d70fe637b91ba6e521a32e1fb39256d3ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde65a189ebf9b698a935e13cd58c3e7ceabe9375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec800c2b17c9673570fdf54450dc1bd79c8e359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42a462dbf54f281f95776e663d8c942dcf94f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c978731617096d04ea271a2499cf48b99cdc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56d9776fbb287a2f8ba3f11375f51a24d7e25db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56c26431132ee09fa989cefc197bd49780c2166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa86aa141e45da5183b42792d99dede3d26ec515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffec6cff6780c9f9f3c324e976751ffcfc8810fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_AladdinDAO_aFXS_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SECBIT_Concentrator_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_Concentrator_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Generic_CLever_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_TokenSale_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [TrailofBits_fx_oracle_202406.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [TrailofBits_fx_protocol_202403.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [AladdinDao_V3_Report_Secbit.pdf](https://aladdin.club/audits/AladdinDao_V3_Report_Secbit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf — no match: All contracts listed in section 2.2 Contract List are in scope. Audit date from title page.
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf — no match: No reason recorded
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf — no match: Only one contract name explicitly mentioned as a target in findings. No scope table or file listing provided.
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf — no match: Scope table lists 4 contracts: AladdinCVX.sol, AMOMath.sol, CLeverAMOBase.sol, RewardClaimable.sol. Audit date is December 9, 2022 from the report header.
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf — no match: Contracts listed in section 2.2 Contract List. Audit date from cover page: February 3, 2023.
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf — no match: No reason recorded
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf — no match: No reason recorded
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf — no match: No reason recorded
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf — no match: No reason recorded
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf — no match: Scope table explicitly lists MetaFurnace.sol and Furnace.sol. Audit date from report header: Nov 11, 2022.
- [5569] SECBIT_CLever_Report_v1.1.pdf — no match: No reason recorded
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf — no match: Extracted 5 contracts from scope table and 11 additional reviewed contracts. Audit date from title: March 8, 2023.
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf — no match: No reason recorded
- [5573] SECBIT_Concentrator_Report.pdf — no match: No reason recorded
- [5574] SECBIT_Concentrator_Report_v1.1.pdf — no match: No reason recorded
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf — no match: Scope table lists three contracts: AladdinCRVV2.sol, ConcentratorStrategyBase.sol, cvxCRVStakingWrapperStrategy.sol. Audit date from title.
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf — no match: No reason recorded
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf — no match: No reason recorded
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf — no match: No reason recorded
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf — no match: No reason recorded
- [5585] SECBIT_Generic_CLever_Report.pdf — no match: Contracts listed in 'Contract List' section of the audit report.
- [5586] SECBIT_TokenSale_Report_v1.1.pdf — no match: Only one contract, TokenSale, is in scope. The report mentions 'Concentrator contract' but it is not listed in scope; it appears to be a different contract. The audit date is from the report header.
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf — no match: No reason recorded
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf — no match: All five contracts from the scope table are extracted. The audit date is July 25, 2023, as stated in the title and introduction.
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf — no match: All contracts listed in section 2.2 Contract List are in scope.
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf — no match: No reason recorded
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf — no match: No reason recorded
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf — no match: No reason recorded
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf — no match: Extracted 6 contracts from the scope section (2.2 Contract List). Audit date from the report header.
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf — no match: Extracted 7 contracts from scope table and update note. Audit date from cover page and update note.
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf — no match: No reason recorded
- [5605] TrailofBits_fx_oracle_202406.pdf — no match: Extracted contract names from the 'Project Targets' section and detailed findings. The audit report date is July 10, 2024, as stated on the cover page and in the project timeline.
- [5606] TrailofBits_fx_protocol_202403.pdf — no match: No reason recorded
- [15350] AladdinDao_V3_Report_Secbit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AladdinETH_Report_v1.0_2022_12_22.pdf | FeeCustomization | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinETH | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorAladdinETHVault | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexFraxStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingCurveGaugeStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounder | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorGeneralVault | unmatched — not counted | — | listed in contract list | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AddLiquidityHelper | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | GaugeRewardDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | PlatformFeeDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf | AladdinCRV | unmatched — not counted | — | Target in finding PVE-001 and mentioned in code listings | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AladdinCVX | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AMOMath | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | CLeverAMOBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AladdinCVX | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | CLeverAMOBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | RewardClaimable | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinCompounder | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXS | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXSConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | ConcentratorConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | AladdinFXSV2 | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | BurnerBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterRegistry | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConvexFraxCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | CvxFxsStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeSpliter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | StakeDAOCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | AllInOneGateWay | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveBasePoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveMetaPoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | MetaFurnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | Furnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | StakeDaoHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | LibConcentratorHarvester | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounder | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorGeneralVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOBase | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCVX | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVV2 | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinFXS | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinSdCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | ConcentratorIFOVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | AladdinCRVV2 | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | cvxCRVStakingWrapperStrategy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder4626.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDStandardizedYieldBase.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorSdCrvGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | LegacyCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVBribeBurnerV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCrvCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | StakeDAOGaugeWrapperStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleBribeBurner | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleGaugeStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleHelper | unmatched — not counted | — | — | no |
| SECBIT_Generic_CLever_Report.pdf | MataCLever | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | MetaFurnace | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | AladdinCRVStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorBatchStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | YieldStrategyBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_TokenSale_Report_v1.1.pdf | TokenSale | unmatched — not counted | — | listed in scope section and contract list | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManagerImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | CvxFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ExponentialMovingAverage | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LidoConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearMultipleRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearReward | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBaseImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ManageableVesting | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | MultipleRewardAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | PlainVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolRegistry | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolSplitter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalanceWithBonusToken | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SdFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SharedLiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | StETHAndxETHWrapper | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VestingManagerProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowBoost | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | WordCodec | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalanceWithBonusToken | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHGateway | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHTreasury | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | wstETHWrapper | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalancePool | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | ETHGateway | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | FractionalToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | LeveragedToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Market | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | StableCoinMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Treasury | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ChainlinkWstETHRateProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxETHTwapOracle | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | HarvestableTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | MultiPathConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ReservePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | StableCoinMath | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | WrappedTokenTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | wBETHProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | MultipleRewardCompoundingAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | RebalancePoolGaugeClaimer | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AssetManagement | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | ConcentratorBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | FxUSDBasePoolV2Facet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | RewardHarvester | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSD | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSDFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | StrategyBase | unmatched — not counted | — | — | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | ConcentratorVaultForAsdCRV | unmatched — not counted | — | mentioned in scope update | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| TrailofBits_fx_oracle_202406.pdf | FxBTCDerivativeOracleBase | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxSpotOracleBase | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxLSDOracleV2Base | unmatched — not counted | — | referenced in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | LeveragedTokenV2 | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | SpotPriceOracle | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_protocol_202403.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ChainlinkTwapOracleV3 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ERC4626RateProvider | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FractionalTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxFrxETHTwapOracle | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxInitialFund | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxMarketV1Facet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxStableMath | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxTokenBalancerV2Wrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSD | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDRebalancer | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | GaugeControllerOwner | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenWrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LibGatewayRouter | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | MarketV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ReservePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TokenConvertManagementFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WrappedTokenTreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRVZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVaultZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinZap | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3f0e7916681452d23cd36b1281457da721f2e5df` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5bc3dd6e6b4e5dd811d558843da6a1bfbb9c9dca` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 34
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 241 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf
- [5569] SECBIT_CLever_Report_v1.1.pdf
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf
- [5573] SECBIT_Concentrator_Report.pdf
- [5574] SECBIT_Concentrator_Report_v1.1.pdf
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf
- [5585] SECBIT_Generic_CLever_Report.pdf
- [5586] SECBIT_TokenSale_Report_v1.1.pdf
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf
- [5605] TrailofBits_fx_oracle_202406.pdf
- [5606] TrailofBits_fx_protocol_202403.pdf
- [15350] AladdinDao_V3_Report_Secbit.pdf

Fork inheritance lineage and inherited audits are included when available.
