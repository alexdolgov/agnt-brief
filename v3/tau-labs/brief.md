# Agentic Audit Brief: TAU Labs

## Project Overview

- Project: TAU Labs (`tau-labs`)
- Website: [https://www.628labs.xyz/](https://www.628labs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.645Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum, plasma
- Contract surface: 129 unique implementations (382 raw deployments)
- DeFi Llama TVL: $6,531,012.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 195 project-authored contract(s) across 2 chain(s); 5 ERC4626 vaults, 15 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 31 common project-authored base contract(s) (ammopenswapservicebasev1, accessmanagedupgradeable, universalreader). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Harvest Finance** (`harvest-finance`) in the LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, MiltonUsdt, PlasmaVaultBase, … subsystem.
8 audits inherited from `harvest-finance`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 555; live-surface contracts included: 342 (342 live, 0 unknown).
- Excluded by liveness: 213 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/129 (8.5%)
- Deployed-live implementations: 129 of 129 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/129
- Verified + Unaudited implementations: 118
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 129
- Raw deployments: 382
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/harvest/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 8.5% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 11 | 8.5% | 2020-11 |
| Haechi | Tier 2 | 11 | 8.5% | 2020-09 |
| Halborn | Tier 2 | 11 | 8.5% | 2025-01 |
| Immunefi | Tier 1 | 11 | 8.5% | n/a |
| Least Authority | Tier 2 | 11 | 8.5% | 2021-02 |
| LeastAuthority | Tier 2 | 11 | 8.5% | 2021-02 |
| PeckShield | Tier 2 | 11 | 8.5% | 2020-10 |
| unknown | Tier 2 | 11 | 8.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidityMining | unknown | ethereum | n/a | 6 deployments: ethereum [`0x22363b...b9466d`](./contracts/ethereum-1/0x22363bb570ed9eb039b2f153a1f0e50aceb9466d/); ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ✅ Audited |
| MiltonDai | unknown | ethereum | n/a | 10 deployments: ethereum [`0x16d236...4dd42e`](./contracts/ethereum-1/0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e/); ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ✅ Audited |
| MiltonSpreadModelDai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9cf78e...68c5d9`](./contracts/ethereum-1/0x9cf78e518507b8922634a3ac02e8d8136768c5d9/); ethereum `0xfb2ee9...e95318` | ✅ Audited |
| MiltonSpreadModelUsdt | unknown | ethereum | n/a | 3 deployments: ethereum [`0x49f282...a3a8b0`](./contracts/ethereum-1/0x49f2825fbcd6cb2b0d13ebdf44457e15b0a3a8b0/); ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ✅ Audited |
| MiltonUsdt | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0d5522...dc59b2`](./contracts/ethereum-1/0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2/); ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ✅ Audited |
| PlasmaVaultBase | unknown | ethereum | n/a | 11 deployments: ethereum [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/); ethereum `0x29d322...8fafbb`; ethereum `0x3151ce...809d90`; ethereum `0x43a32d...4a1e68`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed` | ✅ Audited |
| PlasmaVaultBase | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2de732...0171ab`](./contracts/ethereum-1/0x2de7320004f837925ba31326ff66210be90171ab/); ethereum `0x394356...49df44` | ✅ Audited |
| PlasmaVaultBase | unknown | ethereum | n/a | 3 deployments: ethereum [`0x43ee02...9c7ca2`](./contracts/ethereum-1/0x43ee0243ea8cf02f7087d8b16c8d2007cc9c7ca2/); ethereum `0x7ef926...6964d2`; ethereum `0xabab98...c18e3e` | ✅ Audited |
| PlasmaVaultBase | unknown | ethereum | n/a | 2 deployments: ethereum [`0x842494...7d5062`](./contracts/ethereum-1/0x84249464ca6f1591b4be126a2b531517fd7d5062/); ethereum `0xe9385e...b4fb5f` | ✅ Audited |
| PriceManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/); ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ✅ Audited |
| PriceOracleMiddlewareManager | unknown | ethereum | n/a | 15 deployments: ethereum [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/); ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362` | ✅ Audited |

### ⚠️ Verified + Unaudited (118)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/); ethereum `0x8d99d6...132aa0` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | ethereum | n/a | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | ethereum | n/a | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | ethereum | n/a | [`0x0ccccd...3ab361`](./contracts/ethereum-1/0x0ccccdc5b809c71ce5cd298907aad117513ab361/) | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | ethereum | n/a | [`0xce9680...7db70d`](./contracts/ethereum-1/0xce96800a16791d68ee96706915ead714d67db70d/) | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | ethereum | n/a | [`0xcd96ba...fbebbc`](./contracts/ethereum-1/0xcd96ba8995e6e0146df363b80e6f1f2b93fbebbc/) | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | ethereum | n/a | [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/) | ⚠️ Unaudited |
| AmmStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x364f11...f5b1ce`](./contracts/ethereum-1/0x364f116352eb95033d73822ba81257b8c1f5b1ce/); ethereum `0x622827...593f2e` | ⚠️ Unaudited |
| AmmStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4508ce...e8c0f0`](./contracts/ethereum-1/0x4508ce1ab61fccac39ba28ff0e7acd5823e8c0f0/); ethereum `0xb99f2a...c56e61` | ⚠️ Unaudited |
| AmmStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x91c35e...8f6ab1`](./contracts/ethereum-1/0x91c35e8edc103468692d2394b48b0b3d228f6ab1/); ethereum `0xb3d1c1...924ba5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x08a8ec...0197c6`](./contracts/ethereum-1/0x08a8ec037df2e54194b397cd7c761631440197c6/); ethereum `0x95257e...94a281` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b0277...f114d0`](./contracts/ethereum-1/0x2b027700173745e6239c928009c5161472f114d0/); ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f4f16...84ef8c`](./contracts/ethereum-1/0x4f4f1613e9bb13e874d1d066dfeb2aacfe84ef8c/); ethereum `0x77fe3a...41e3b5` | ⚠️ Unaudited |
| AmmTreasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0x137000...2e7dc9`](./contracts/ethereum-1/0x137000352b4ed784e8fa8815d225c713ab2e7dc9/); ethereum `0x866d6c...a0eb49` | ⚠️ Unaudited |
| AmmTreasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28bc58...96b687`](./contracts/ethereum-1/0x28bc58e600ef718b9e97d294098abecb8c96b687/); ethereum `0xabcb3a...49a82b` | ⚠️ Unaudited |
| AmmTreasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe9facd...b74dc1`](./contracts/ethereum-1/0xe9facd55280b1df7bf6a1a9ea8a7c2b040b74dc1/); ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x390e7e...68aabd`](./contracts/ethereum-1/0x390e7ed143bf42ba327dae48a44a48d84168aabd/); ethereum `0x9a449e...37123b` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30ae18...05153c`](./contracts/ethereum-1/0x30ae182cc30d312dd4f2824c635b8dc5f805153c/); ethereum `0x63395e...8dee4e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb1c0cc...44f0c0`](./contracts/ethereum-1/0xb1c0ccb170f0af6ec8ad6a8622d0136fb744f0c0/); ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AssetManagementDai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x160dae...cdace3`](./contracts/ethereum-1/0x160daea1e07e50c184e6d6778e943212dfcdace3/); ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7aa7b0...9bf260`](./contracts/ethereum-1/0x7aa7b0b738c2570c2f9f892cb7ca5bb89b9bf260/); ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6416e3...7f7ddd`](./contracts/ethereum-1/0x6416e385f08421f524e2c7335444e56e897f7ddd/); ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | ethereum | n/a | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | ⚠️ Unaudited |
| AsyncActionFuse | unknown | ethereum | n/a | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | n/a | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | n/a | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | ⚠️ Unaudited |
| CockpitDataProvider | unknown | ethereum | n/a | 3 deployments: ethereum [`0x124bc6...0e97dc`](./contracts/ethereum-1/0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc/); ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | ethereum | n/a | [`0x0ed13e...8bb5a7`](./contracts/ethereum-1/0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7/) | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | ethereum | n/a | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ⚠️ Unaudited |
| ContextManager | unknown | ethereum | n/a | 23 deployments: ethereum [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/); ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78f46f...5a4357`](./contracts/ethereum-1/0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357/); ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | ethereum | n/a | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | ethereum | n/a | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | ethereum | n/a | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | ethereum | n/a | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | ethereum | n/a | 2 deployments: ethereum [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/); ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | ethereum | n/a | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/); ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe08aff...d1aa61`](./contracts/ethereum-1/0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61/); ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | ethereum | n/a | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | ethereum | n/a | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | ethereum | n/a | [`0xae9a37...7baabd`](./contracts/ethereum-1/0xae9a37dd9229687662834e6696e396e7837baabd/) | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | ethereum | n/a | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | ethereum | n/a | [`0x6b339a...f7f2f6`](./contracts/ethereum-1/0x6b339a926328b9a5a5705fd051aa5028d9f7f2f6/) | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | ethereum | n/a | [`0x07d809...e36514`](./contracts/ethereum-1/0x07d80997d57ad9489a4c48f6134df91822e36514/) | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | ethereum | n/a | [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/) | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9425cc...57f217`](./contracts/ethereum-1/0x9425cc51e61f04942008b7caff129c2c6e57f217/); ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | ethereum | n/a | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/); ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | n/a | [`0xcd0590...d9b852`](./contracts/ethereum-1/0xcd05909c4a1f8e501e4ed554cef4ed5e48d9b852/) | ⚠️ Unaudited |
| IporFusionAccessManager | unknown | ethereum | n/a | 30 deployments: ethereum [`0x1dc356...79ae8a`](./contracts/ethereum-1/0x1dc356117aa5dcf8ce836aee851dafd04479ae8a/); ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IporOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x421c69...8a6876`](./contracts/ethereum-1/0x421c69eaa54646294db30026aee80d01988a6876/); ethereum `0xcf7124...d71221` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x161c5f...c11df0`](./contracts/ethereum-1/0x161c5f5cc8f1e06aa6c65b9b3473cfb4fec11df0/); ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16d104...3c26fd`](./contracts/ethereum-1/0x16d104009964e694761c0bf09d7be49b7e3c26fd/); ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa5f814...736af7`](./contracts/ethereum-1/0xa5f814872cc000b0b71d1fca822cf07acb736af7/); ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporToken | token | ethereum | n/a | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | ⚠️ Unaudited |
| IporWeighted | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8712a2...5669bb`](./contracts/ethereum-1/0x8712a255e120221d68d8086aca753086955669bb/); ethereum `0x9d4bd8...e85140` | ⚠️ Unaudited |
| IpToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9ac509...fda4cb`](./contracts/ethereum-1/0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb/); ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | ethereum | n/a | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | ⚠️ Unaudited |
| IpTokenUsdt | token | ethereum | n/a | 2 deployments: ethereum [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/); ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| JosephDai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x086d4d...b65045`](./contracts/ethereum-1/0x086d4daab14741b195dee65aff050ba184b65045/); ethereum `0x7cd10f...be5d04` | ⚠️ Unaudited |
| JosephUsdt | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33c5a4...4324ac`](./contracts/ethereum-1/0x33c5a44fd6e76fc2b50a9187cfeac336a74324ac/); ethereum `0x8ae47c...1c319b` | ⚠️ Unaudited |
| JosephUsdt | unknown | ethereum | n/a | 2 deployments: ethereum [`0x470c3a...baa37f`](./contracts/ethereum-1/0x470c3a35daf7e64748f8f2187937f69105baa37f/); ethereum `0xc52569...133277` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a06ec...c45edc`](./contracts/ethereum-1/0x0a06ec4004c02fd514ee02c455d20062f7c45edc/); ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | ethereum | n/a | [`0xf71339...9daa97`](./contracts/ethereum-1/0xf713395a26400c2ecd4af9faf0f6ad7c569daa97/) | ⚠️ Unaudited |
| MerklClaimFuse | unknown | ethereum | n/a | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/); ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/); ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/); ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7520c9...25015b`](./contracts/ethereum-1/0x7520c967cad6d872c8b0fa1444ed3ed26025015b/); ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | ethereum | n/a | [`0xc13f3f...1cb691`](./contracts/ethereum-1/0xc13f3fd20556a595990c35612e9e5c1c071cb691/) | ⚠️ Unaudited |
| OraclePublisher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x254a66...b505ff`](./contracts/ethereum-1/0x254a663790cdaff53204c7072cf0c75231b505ff/); ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| PlasmaVault | unknown | ethereum | n/a | 19 deployments: ethereum [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/); ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x604117...d434c5`; ethereum `0x60e36a...5ae74c`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xad685f...725706`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xc50b2d...65c64b`; ethereum `0xd36f53...9a1c1d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; plasma `0x0a7162...28ed7a` | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/); ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | unknown | ethereum | n/a | [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/) | ⚠️ Unaudited |
| PowerToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78dbf1...84a0f7`](./contracts/ethereum-1/0x78dbf1ea2042fbef4af542aaaa81adb26884a0f7/); ethereum `0xd72915...95409f` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09321c...024da2`](./contracts/ethereum-1/0x09321c70b4e51f3f21bdad79c61d11fba1024da2/); ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc9f32d...d664c6`](./contracts/ethereum-1/0xc9f32d65a278b012371858fd3cde315b12d664c6/); ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PtPriceFeedFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1cb493...26007c`](./contracts/ethereum-1/0x1cb493392367a0283090bf965503a9588d26007c/); ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | ethereum | n/a | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | ethereum | n/a | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | ⚠️ Unaudited |
| RewardsClaimManager | unknown | ethereum | n/a | 25 deployments: ethereum [`0x11cbc3...10367f`](./contracts/ethereum-1/0x11cbc30008dde93db992ac0190848852d310367f/); ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/); ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | ethereum | n/a | [`0x086aca...17998f`](./contracts/ethereum-1/0x086aca94aa413932c6ac5e09b863ac2cbe17998f/) | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | ethereum | n/a | [`0x1d24b8...13005b`](./contracts/ethereum-1/0x1d24b8d16d87a570e8539c2849a23bbc5f13005b/) | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0x897d96...defa56`](./contracts/ethereum-1/0x897d96a7c91e2f1b8213f240cad031f9acdefa56/) | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | ethereum | n/a | [`0x768762...a358fb`](./contracts/ethereum-1/0x768762712eca97bc9ec930320d3ee0bd91a358fb/) | ⚠️ Unaudited |
| SpreadRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11cc7a...81ede2`](./contracts/ethereum-1/0x11cc7a3b0519ad10542907d985e6b0780281ede2/); ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | ethereum | n/a | [`0x0c59d9...1c3816`](./contracts/ethereum-1/0x0c59d9cd3859673edc70b0bcf66e2715831c3816/) | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | ethereum | n/a | [`0x7ec22c...77defc`](./contracts/ethereum-1/0x7ec22c4defe53ec35f03f0b6468ec319c577defc/) | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | ethereum | n/a | [`0x5be6e7...ce3c1e`](./contracts/ethereum-1/0x5be6e757763a3b7106d211df5017823366ce3c1e/) | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/); ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| StrategyAave | unknown | ethereum | n/a | 2 deployments: ethereum [`0x526d00...f1f62f`](./contracts/ethereum-1/0x526d0047725d48bbc6e24c7b82a3e47c1af1f62f/); ethereum `0xfa0186...999f8c` | ⚠️ Unaudited |
| StrategyAave | unknown | ethereum | n/a | [`0x58703d...c5127d`](./contracts/ethereum-1/0x58703da5295794ed4e82323fcce7371272c5127d/) | ⚠️ Unaudited |
| StrategyAave | unknown | ethereum | n/a | [`0x77fcae...ba028f`](./contracts/ethereum-1/0x77fcae921e3df22810c5a1ac1d33f2586bba028f/) | ⚠️ Unaudited |
| StrategyCompound | unknown | ethereum | n/a | 2 deployments: ethereum [`0x87cef1...9fc774`](./contracts/ethereum-1/0x87cef19aca214d12082e201e6130432df39fc774/); ethereum `0xcf7be4...bc7de0` | ⚠️ Unaudited |
| StrategyCompound | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbb8383...a2a5da`](./contracts/ethereum-1/0xbb838373c5168184abf60c2547cec94411a2a5da/); ethereum `0xe4cd9a...9ab5b1` | ⚠️ Unaudited |
| StrategyCompound | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc301ec...83d7df`](./contracts/ethereum-1/0xc301ecc4dbc68e6d4591df3928d1a71e7883d7df/); ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc26be5...97239c`](./contracts/ethereum-1/0xc26be51e50a358ec6d366147d78ab94e9597239c/); ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | ethereum | n/a | [`0x5e3654...1bd1c4`](./contracts/ethereum-1/0x5e3654082406519e35a5426bb54f29d2651bd1c4/) | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/); ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | ethereum | n/a | [`0x5b1a6b...41f537`](./contracts/ethereum-1/0x5b1a6b2e6af64e74275015a65687de0ca941f537/) | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | ethereum | n/a | 3 deployments: ethereum [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/); ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | ethereum | n/a | 3 deployments: ethereum [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/); ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | ethereum | n/a | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | ethereum | n/a | [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/) | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | ethereum | n/a | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30378c...125151`](./contracts/ethereum-1/0x30378c767a5f2c444287bcbdbdb29a73af125151/); ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | ethereum | n/a | [`0xabd643...b4374d`](./contracts/ethereum-1/0xabd643daebbc7a98fc00afbe4e6204b23eb4374d/) | ⚠️ Unaudited |
| WithdrawManager | unknown | ethereum | n/a | 26 deployments: ethereum [`0x0a78c1...336d2d`](./contracts/ethereum-1/0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d/); ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f68a6...3311f5`](./contracts/ethereum-1/0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5/); ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/); ethereum `0xb5c14b...0be9c9` | ⚠️ Unaudited |

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
| [Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) | Least Authority | Audit | 2021-02 | stale | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) | LeastAuthority | Audit | 2021-02 | stale | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [CertiK-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) | CertiK | Audit | 2020-11 | stale | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) | PeckShield | Audit | 2020-10 | stale | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [Haechi-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) | Haechi | Audit | 2020-09 | stale | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [www.harvest.finance/security](https://www.harvest.finance/security) | unknown | Audit | n/a | unknown | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | inherited | 68 | n/a |
| [immunefi.com/bug-bounty/harvest/information](https://immunefi.com/bug-bounty/harvest/information) | Immunefi | Bug Bounty | Ongoing | n/a | Inherited from Harvest Finance — forked code, scoped to LiquidityMining, MiltonDai, MiltonSpreadModelDai, MiltonSpreadModelUsdt, +4 more | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 129 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=544

Fork inheritance lineage and inherited audits are included when available.
