# Agentic Audit Brief: TAU Labs

⚠️ Lifecycle status: DECLINING - TVL dropped 65.3% over 90 days

## Project Overview

- Project: TAU Labs (`tau-labs`)
- Website: [https://www.628labs.xyz/](https://www.628labs.xyz/)
- Lifecycle: declining (Tier 0, 71.8% below peak)
- Generated: 2026-06-17T07:00:43.784Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, plasma
- Contract surface: 74 unique implementations (142 raw deployments)
- DeFi Llama TVL: $4,084,527.03
- On-chain TVL (included contracts): $1,733,310.89
- TVL by chain: Ethereum $1,644,707.49 | Plasma $88,603.39

## Project Description

TAU Labs is a risk curation protocol that deploys and manages PlasmaVaults—smart contract vaults that aggregate user deposits and allocate them across various DeFi strategies to optimize yield and manage risk.

### Architecture

All PlasmaVault instances share common implementation logic via PlasmaVaultBase, and the protocol relies on external infrastructure such as oracles, price feeds, and strategy contracts (e.g., Aave, Compound) to execute its yield strategies.

## Contract Surface Quality

- Indexed contracts: 569; live-surface contracts included: 142 (142 live, 0 unknown).
- Excluded by liveness: 331 inactive, 96 singleton, 0 uninitialized.
- Deployment units: 2/49 live.
- Detected codebases: none
- Unverified dependencies: 1/39.

## Audit Coverage Summary

- Verified implementations audited: 0/74 (0.0%)
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 74
- Raw deployments: 142
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,733,310.89
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,733,310.89 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PlasmaVault | core_logic | plasma | n/a | 10 deployments: ethereum `0x20e934...b9ac44`; ethereum `0x604117...d434c5`; ethereum `0x60e36a...5ae74c`; ethereum `0xad685f...725706`; ethereum `0xae4362...9a573c`; ethereum `0xc50b2d...65c64b`; ethereum `0xd36f53...9a1c1d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472`; plasma [`0x0a7162...28ed7a`](./contracts/plasma-9745/0x0a71624ab3e8101f78d95dfc81e0f1f31128ed7a/) | ⚠️ Unaudited |
| IporToken | token | ethereum | n/a | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | ⚠️ Unaudited |
| AccessManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | ethereum | n/a | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | ethereum | n/a | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | ethereum | n/a | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | ethereum | n/a | [`0x0ccccd...3ab361`](./contracts/ethereum-1/0x0ccccdc5b809c71ce5cd298907aad117513ab361/) | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | ethereum | n/a | [`0xce9680...7db70d`](./contracts/ethereum-1/0xce96800a16791d68ee96706915ead714d67db70d/) | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | ethereum | n/a | [`0xcd96ba...fbebbc`](./contracts/ethereum-1/0xcd96ba8995e6e0146df363b80e6f1f2b93fbebbc/) | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | ethereum | n/a | [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/) | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | ethereum | n/a | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | ⚠️ Unaudited |
| AsyncActionFuse | unknown | ethereum | n/a | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | n/a | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | n/a | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | ethereum | unit-27101 | [`0x0ed13e...8bb5a7`](./contracts/ethereum-1/0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7/) | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | ethereum | n/a | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ⚠️ Unaudited |
| ContextManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x0fe8d7...62a702`](./contracts/ethereum-1/0x0fe8d799dd76e11b27e769ad3d2916d63062a702/); ethereum `0x3782bc...3c9fd8`; ethereum `0x695d74...68de3a`; ethereum `0xba6839...270317` | ⚠️ Unaudited |
| ContextManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | ethereum | n/a | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | ethereum | n/a | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | ethereum | n/a | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | ethereum | n/a | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | ethereum | n/a | 2 deployments: ethereum [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/); ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | ethereum | n/a | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | ethereum | n/a | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | ethereum | n/a | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | ethereum | n/a | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | ethereum | n/a | [`0xae9a37...7baabd`](./contracts/ethereum-1/0xae9a37dd9229687662834e6696e396e7837baabd/) | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | ethereum | n/a | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | ethereum | n/a | [`0x6b339a...f7f2f6`](./contracts/ethereum-1/0x6b339a926328b9a5a5705fd051aa5028d9f7f2f6/) | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | ethereum | n/a | [`0x07d809...e36514`](./contracts/ethereum-1/0x07d80997d57ad9489a4c48f6134df91822e36514/) | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | ethereum | n/a | [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/) | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9425cc...57f217`](./contracts/ethereum-1/0x9425cc51e61f04942008b7caff129c2c6e57f217/); ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | ethereum | n/a | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | n/a | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | ⚠️ Unaudited |
| FeeManagerFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | unit-27138 | [`0xcd0590...d9b852`](./contracts/ethereum-1/0xcd05909c4a1f8e501e4ed554cef4ed5e48d9b852/) | ⚠️ Unaudited |
| IporFusionAccessManager | governance | ethereum | n/a | 12 deployments: ethereum [`0x3df9d7...9eabae`](./contracts/ethereum-1/0x3df9d7be4017e3d72ea39b96ed4c7070c19eabae/); ethereum `0x56e767...b4af56`; ethereum `0x6857b2...66e0c7`; ethereum `0x818912...7df7aa`; ethereum `0x85fd76...72325e`; ethereum `0x922350...eb1d42`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IpToken | token | ethereum | n/a | 2 deployments: ethereum [`0xac5b04...166125`](./contracts/ethereum-1/0xac5b04988bc71bee96f8d93040777db3ef166125/); ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | ethereum | n/a | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | ⚠️ Unaudited |
| IpTokenUsdt | token | ethereum | n/a | 2 deployments: ethereum [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/); ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | ethereum | n/a | [`0xf71339...9daa97`](./contracts/ethereum-1/0xf713395a26400c2ecd4af9faf0f6ad7c569daa97/) | ⚠️ Unaudited |
| MerklClaimFuse | unknown | ethereum | n/a | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/); ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/); ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/); ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | ethereum | n/a | [`0xc13f3f...1cb691`](./contracts/ethereum-1/0xc13f3fd20556a595990c35612e9e5c1c071cb691/) | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | ethereum | n/a | [`0x394356...49df44`](./contracts/ethereum-1/0x3943568797a280cbc51844c63bc2555c6e49df44/) | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/); ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/); ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x18fda4...187d5e`](./contracts/ethereum-1/0x18fda40bee2a2ec4fff630dedba78a2aa0187d5e/); ethereum `0x45d0e1...74c115`; ethereum `0x962131...90ee87`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | ethereum | n/a | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | ethereum | n/a | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | ⚠️ Unaudited |
| RewardsClaimManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x1f8397...02ded0`](./contracts/ethereum-1/0x1f8397de7c32cc7f042477326892953ca102ded0/); ethereum `0x2d1a21...af2792`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0xb20e1d...0cd802`; ethereum `0xd0e170...937901` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/); ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | ethereum | n/a | [`0x086aca...17998f`](./contracts/ethereum-1/0x086aca94aa413932c6ac5e09b863ac2cbe17998f/) | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | ethereum | n/a | [`0x1d24b8...13005b`](./contracts/ethereum-1/0x1d24b8d16d87a570e8539c2849a23bbc5f13005b/) | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | ethereum | n/a | [`0x897d96...defa56`](./contracts/ethereum-1/0x897d96a7c91e2f1b8213f240cad031f9acdefa56/) | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | ethereum | n/a | [`0x0c59d9...1c3816`](./contracts/ethereum-1/0x0c59d9cd3859673edc70b0bcf66e2715831c3816/) | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | ethereum | n/a | [`0x7ec22c...77defc`](./contracts/ethereum-1/0x7ec22c4defe53ec35f03f0b6468ec319c577defc/) | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | ethereum | n/a | [`0x5be6e7...ce3c1e`](./contracts/ethereum-1/0x5be6e757763a3b7106d211df5017823366ce3c1e/) | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | ethereum | n/a | 2 deployments: ethereum [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/); ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/); ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | ethereum | n/a | [`0x5b1a6b...41f537`](./contracts/ethereum-1/0x5b1a6b2e6af64e74275015a65687de0ca941f537/) | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/); ethereum `0xd932d4...f2dbf0` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | ethereum | n/a | 3 deployments: ethereum [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/); ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | ethereum | n/a | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | ethereum | n/a | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | ethereum | n/a | [`0xabd643...b4374d`](./contracts/ethereum-1/0xabd643daebbc7a98fc00afbe4e6204b23eb4374d/) | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x468de9...6d7b76`](./contracts/ethereum-1/0x468de989457f45c7bba362227274ae67e96d7b76/); ethereum `0x79f140...79bbdb`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xcb1cea...80b111` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | IporToken | token | $790,322.00 | Verified native implementation with $790,322.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/) | AccessManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | AmmCloseSwapLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | AmmCloseSwapServiceStEthBaseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | AmmGovernanceServiceBaseV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/) | AmmPoolsServiceWeEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | AsyncActionBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | AsyncActionFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | CallbackHandlerEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | CallbackHandlerReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ConfigureInstantWithdrawalFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fe8d7...62a702`](./contracts/ethereum-1/0x0fe8d799dd76e11b27e769ad3d2916d63062a702/) | ContextManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/) | ContextManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | EbisuAdjustInterestRateFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | EbisuAdjustTroveFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | EbisuWethEthAdapterAddressReader | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | EbisuZapperBalanceFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | EbisuZapperLeverModifyFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ERC4626PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ERC4626ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ERC4626ZapInWithNativeToken | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae9a37...7baabd`](./contracts/ethereum-1/0xae9a37dd9229687662834e6696e396e7837baabd/) | EulerV2BalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | EulerV2BatchFuse | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b339a...f7f2f6`](./contracts/ethereum-1/0x6b339a926328b9a5a5705fd051aa5028d9f7f2f6/) | EulerV2BorrowFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/) | EulerV2ControllerFuse | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ExchangeRateValidatorPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/) | FeeManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/) | FusionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df9d7...9eabae`](./contracts/ethereum-1/0x3df9d7be4017e3d72ea39b96ed4c7070c19eabae/) | IporFusionAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5b04...166125`](./contracts/ethereum-1/0xac5b04988bc71bee96f8d93040777db3ef166125/) | IpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | IpTokenDai | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/) | IpTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | MerklClaimFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x394356...49df44`](./contracts/ethereum-1/0x3943568797a280cbc51844c63bc2555c6e49df44/) | PlasmaVaultBase | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/) | PlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/) | PriceManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18fda4...187d5e`](./contracts/ethereum-1/0x18fda40bee2a2ec4fff630dedba78a2aa0187d5e/) | PriceOracleMiddlewareManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ReferralPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | RewardEulerTokenClaimFuse | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f8397...02ded0`](./contracts/ethereum-1/0x1f8397de7c32cc7f042477326892953ca102ded0/) | RewardsClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/) | RewardsManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | SiloV2SupplyBorrowableCollateralFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/) | StEthWrapperFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/) | SwapExecutorRestricted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/) | UniversalTokenSwapperEthFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/) | UniversalTokenSwapperFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | UniversalTokenSwapperWithVerificationFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabd643...b4374d`](./contracts/ethereum-1/0xabd643daebbc7a98fc00afbe4e6204b23eb4374d/) | WhitelistWrappedPlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x468de9...6d7b76`](./contracts/ethereum-1/0x468de989457f45c7bba362227274ae67e96d7b76/) | WithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/) | WithdrawManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/) | ZeroBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
