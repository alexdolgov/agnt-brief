# Agentic Audit Brief: TermMax

## Project Overview

- Project: TermMax (`termmax`)
- Website: [https://ts.finance/termmax/](https://ts.finance/termmax/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.884Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, berachain, bsc, ethereum
- Contract surface: 429 unique implementations (429 raw deployments)
- DeFi Llama TVL: $65,659,105.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 309 project-authored contract(s) across 5 chain(s); 15 ERC4626 vaults, 52 ERC20 tokens, 7 ERC721 NFTs, 2 ERC1155 multi-tokens, 34 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 97 common project-authored base contract(s) (erc20upgradeable, contextupgradeable, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 429; live-surface contracts included: 429 (428 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 47/310 (15.2%)
- Deployed-live implementations: 428 of 429 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 47/429
- Verified + Unaudited implementations: 382
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 429
- Raw deployments: 429
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 6 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 47 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 6.1% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 29 | 6.8% | 2025-12 |
| Spearbit | Tier 1 | 19 | 4.4% | 2025-03 |
| HashCloak | Tier 2 | 2 | 0.5% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | arbitrum | n/a | [`0x22013dbd826e6e4d76499ab9f2a501853c477cf3`](./contracts/arbitrum-42161/0x22013dbd826e6e4d76499ab9f2a501853c477cf3/) | ✅ Audited |
| AccessManagerV2 | unknown | arbitrum | n/a | [`0x0005d1efb4ded0cad6a9bc97a32c5a7d97a181e3`](./contracts/arbitrum-42161/0x0005d1efb4ded0cad6a9bc97a32c5a7d97a181e3/) | ✅ Audited |
| AccountFacet | unknown | ethereum | n/a | [`0x8d0fc76595e42f38c771ecee627da5654ca2e75a`](./contracts/ethereum-1/0x8d0fc76595e42f38c771ecee627da5654ca2e75a/) | ✅ Audited |
| ERC4626VaultAdapter | unknown | bsc | n/a | [`0x2c5d576681d625ea9b6e9ee5d6a9159147328292`](./contracts/bsc-56/0x2c5d576681d625ea9b6e9ee5d6a9159147328292/) | ✅ Audited |
| ERC4626VaultAdapterV2 | unknown | arbitrum | n/a | [`0x133bf41c23edfb2f0ef586b5b01063a17470e294`](./contracts/arbitrum-42161/0x133bf41c23edfb2f0ef586b5b01063a17470e294/) | ✅ Audited |
| EvacuationFacet | unknown | ethereum | n/a | [`0x882abfb2f6a67d36350499991638044e8bd83a72`](./contracts/ethereum-1/0x882abfb2f6a67d36350499991638044e8bd83a72/) | ✅ Audited |
| EvacuVerifier | unknown | ethereum | n/a | [`0x9c7df3981a89ed04588907843fe2a6c1bccc4467`](./contracts/ethereum-1/0x9c7df3981a89ed04588907843fe2a6c1bccc4467/) | ✅ Audited |
| FlashLoanFacet | unknown | ethereum | n/a | [`0xbb629c830a4d153cde43cb127b5aff60d1185b8c`](./contracts/ethereum-1/0xbb629c830a4d153cde43cb127b5aff60d1185b8c/) | ✅ Audited |
| GearingTokenWithERC20 | unknown | ethereum | n/a | [`0x022e7d8585f9214bbe29077501ce938e552f8d5e`](./contracts/ethereum-1/0x022e7d8585f9214bbe29077501ce938e552f8d5e/) | ✅ Audited |
| LifiSwapAdapter | unknown | ethereum | n/a | [`0x4eba5ebc7e96922229ffa5cc8d959357497666d2`](./contracts/ethereum-1/0x4eba5ebc7e96922229ffa5cc8d959357497666d2/) | ✅ Audited |
| LoanFacet | unknown | ethereum | n/a | [`0xf1e357a2645dad05fbfbc34ddf6c2d24b9f332b9`](./contracts/ethereum-1/0xf1e357a2645dad05fbfbc34ddf6c2d24b9f332b9/) | ✅ Audited |
| MintableERC20 | unknown | ethereum | n/a | [`0x00996971efec45402b0f135468c3dee00bdaf44f`](./contracts/ethereum-1/0x00996971efec45402b0f135468c3dee00bdaf44f/) | ✅ Audited |
| MintableERC20V2 | unknown | berachain | n/a | [`0x199aea024372521ca01fda03aec0a8e3505ea53a`](./contracts/berachain-80094/0x199aea024372521ca01fda03aec0a8e3505ea53a/) | ✅ Audited |
| OdosV2Adapter | unknown | bsc | n/a | [`0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496`](./contracts/bsc-56/0x0d64b9fef3e1f599b88d29edb54d2f9152cbe496/) | ✅ Audited |
| OdosV2AdapterV2 | unknown | bsc | n/a | [`0x131f637c73ee2fcbe4423f6232ac5c1a07eecc86`](./contracts/bsc-56/0x131f637c73ee2fcbe4423f6232ac5c1a07eecc86/) | ✅ Audited |
| OkxSwapAdapter | unknown | arbitrum | n/a | [`0x0b22d6d5a160756ff46b872c83d30910d6e18e0e`](./contracts/arbitrum-42161/0x0b22d6d5a160756ff46b872c83d30910d6e18e0e/) | ✅ Audited |
| OndoSwapAdapter | unknown | ethereum | n/a | [`0x16f6da2f62667b5d20baa12fbc80430d5850eff4`](./contracts/ethereum-1/0x16f6da2f62667b5d20baa12fbc80430d5850eff4/) | ✅ Audited |
| OneInchSwapAdapter | unknown | ethereum | n/a | [`0x06035214e843c0f115ee02a74a38b95bf978a3b8`](./contracts/ethereum-1/0x06035214e843c0f115ee02a74a38b95bf978a3b8/) | ✅ Audited |
| OnlyDeliveryGearingToken | unknown | bsc | n/a | [`0xb0b11e344f302dd6d9f0573de24c34fbbadf404d`](./contracts/bsc-56/0xb0b11e344f302dd6d9f0573de24c34fbbadf404d/) | ✅ Audited |
| OracleAggregatorV2 | unknown | ethereum | n/a | [`0x16110f65047a46d39ffeb3dadd61ed33ec9fabc2`](./contracts/ethereum-1/0x16110f65047a46d39ffeb3dadd61ed33ec9fabc2/) | ✅ Audited |
| OracleAggregatorWithSequencerV2 | unknown | base | n/a | [`0xc1114e635661d13137e642828f1da71948b2caad`](./contracts/base-8453/0xc1114e635661d13137e642828f1da71948b2caad/) | ✅ Audited |
| OrderManager | unknown | arbitrum | n/a | [`0x03c4fcf963e5fbc0dc5851d2340624e70492acb9`](./contracts/arbitrum-42161/0x03c4fcf963e5fbc0dc5851d2340624e70492acb9/) | ✅ Audited |
| OrderManagerV2 | unknown | berachain | n/a | [`0x103402aab421c668175946774020cf249df4f66c`](./contracts/berachain-80094/0x103402aab421c668175946774020cf249df4f66c/) | ✅ Audited |
| PancakeSmartAdapter | unknown | ethereum | n/a | [`0x043516d022bf814ccfaf6e9eb2eac6e97341d14b`](./contracts/ethereum-1/0x043516d022bf814ccfaf6e9eb2eac6e97341d14b/) | ✅ Audited |
| PendleSwapV3Adapter | unknown | ethereum | n/a | [`0x0b30251fa697a39fd41813b267b50f03414e82da`](./contracts/ethereum-1/0x0b30251fa697a39fd41813b267b50f03414e82da/) | ✅ Audited |
| PreTMX | unknown | ethereum | n/a | [`0x667519b99adbcfeb2e5dccbe3656de76d2fcada5`](./contracts/ethereum-1/0x667519b99adbcfeb2e5dccbe3656de76d2fcada5/) | ✅ Audited |
| RollupFacet | unknown | ethereum | n/a | [`0x09e01425780094a9754b2bd8a3298f73ce837cf9`](./contracts/ethereum-1/0x09e01425780094a9754b2bd8a3298f73ce837cf9/) | ✅ Audited |
| SwapAdapter | unknown | bsc | n/a | [`0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf`](./contracts/bsc-56/0xda4aaf85bb924b53dcc2dffa9e1a9c2ef97acfdf/) | ✅ Audited |
| TerminalVaultAdapter | unknown | ethereum | n/a | [`0x2ae453c888f8b26cdb2672d5cdbfa1aaa9a49c7f`](./contracts/ethereum-1/0x2ae453c888f8b26cdb2672d5cdbfa1aaa9a49c7f/) | ✅ Audited |
| TermMaxFactory | unknown | arbitrum | n/a | [`0x14920eb11b71873d01c93b589b40585dacfca096`](./contracts/arbitrum-42161/0x14920eb11b71873d01c93b589b40585dacfca096/) | ✅ Audited |
| TermMaxFactoryV2 | unknown | base | n/a | [`0x08c50bd46992d35694208ec3cf1f1edce38f5fd1`](./contracts/base-8453/0x08c50bd46992d35694208ec3cf1f1edce38f5fd1/) | ✅ Audited |
| TermMaxMarket | unknown | ethereum | n/a | [`0x03f2af12ae4eb5533c3f7773be826e8da56f6e1a`](./contracts/ethereum-1/0x03f2af12ae4eb5533c3f7773be826e8da56f6e1a/) | ✅ Audited |
| TermMaxMarketV2 | unknown | ethereum | n/a | [`0x0a63f881db0c009272b980fab80eaf666b6486bc`](./contracts/ethereum-1/0x0a63f881db0c009272b980fab80eaf666b6486bc/) | ✅ Audited |
| TermMaxOrder | unknown | bsc | n/a | [`0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6`](./contracts/bsc-56/0x1649e4e5e5c8b9714f847d1ac14d20c74ea36fd6/) | ✅ Audited |
| TermMaxOrderV2 | unknown | base | n/a | [`0x22013dbd826e6e4d76499ab9f2a501853c477cf3`](./contracts/base-8453/0x22013dbd826e6e4d76499ab9f2a501853c477cf3/) | ✅ Audited |
| TermMaxPriceFeedFactoryV2 | unknown | bsc | n/a | [`0x353e129d2a949173e06eb0ee64557dc37b3f68fd`](./contracts/bsc-56/0x353e129d2a949173e06eb0ee64557dc37b3f68fd/) | ✅ Audited |
| TermMaxRouter | unknown | berachain | n/a | [`0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779`](./contracts/berachain-80094/0x2afef28a8ab57d2f5a5663ef69351e9d3abf1779/) | ✅ Audited |
| TermMaxSwapAdapter | unknown | bsc | n/a | [`0x09bb81894b3b34ccb8035bd19c6a9d82ae5073dc`](./contracts/bsc-56/0x09bb81894b3b34ccb8035bd19c6a9d82ae5073dc/) | ✅ Audited |
| TermMaxVault | unknown | bsc | n/a | [`0x14920eb11b71873d01c93b589b40585dacfca096`](./contracts/bsc-56/0x14920eb11b71873d01c93b589b40585dacfca096/) | ✅ Audited |
| TermMaxVaultFactoryV2 | unknown | berachain | n/a | [`0x03c4fcf963e5fbc0dc5851d2340624e70492acb9`](./contracts/berachain-80094/0x03c4fcf963e5fbc0dc5851d2340624e70492acb9/) | ✅ Audited |
| TermMaxVaultV2 | unknown | base | n/a | [`0x03c4fcf963e5fbc0dc5851d2340624e70492acb9`](./contracts/base-8453/0x03c4fcf963e5fbc0dc5851d2340624e70492acb9/) | ✅ Audited |
| TsbFacet | unknown | ethereum | n/a | [`0x10a73b16f6cd03931484b4ae69fedc55e868d295`](./contracts/ethereum-1/0x10a73b16f6cd03931484b4ae69fedc55e868d295/) | ✅ Audited |
| UniswapV3Adapter | unknown | ethereum | n/a | [`0x34f7b52b0d33959c8351ef95f3523c89b6123c0b`](./contracts/ethereum-1/0x34f7b52b0d33959c8351ef95f3523c89b6123c0b/) | ✅ Audited |
| VaultFactory | unknown | ethereum | n/a | [`0x01d8c1e0584751085a876892151bf8490e862e3e`](./contracts/ethereum-1/0x01d8c1e0584751085a876892151bf8490e862e3e/) | ✅ Audited |
| Verifier | unknown | ethereum | n/a | [`0x23369a60e5a8f422e38d799ed55e7ad8ed4a86ce`](./contracts/ethereum-1/0x23369a60e5a8f422e38d799ed55e7ad8ed4a86ce/) | ✅ Audited |
| WstETHPriceFeed | unknown | ethereum | n/a | [`0xdce39334a524b406b6ea8421546066e319328219`](./contracts/ethereum-1/0xdce39334a524b406b6ea8421546066e319328219/) | ✅ Audited |
| ZkTrueUpInit | unknown | ethereum | n/a | [`0x7b8b7896458b31688545d3f5e01f346bef07b738`](./contracts/ethereum-1/0x7b8b7896458b31688545d3f5e01f346bef07b738/) | ✅ Audited |

### ⚠️ Verified + Unaudited (382)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreAdapter | unknown | ethereum | n/a | [`0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391a651c080e99b38c179575342512769d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e`](./contracts/ethereum-1/0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e/) | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | ethereum | n/a | [`0x4c727b81eb776e2614c72430e306cefd614bb837`](./contracts/ethereum-1/0x4c727b81eb776e2614c72430e306cefd614bb837/) | ⚠️ Unaudited |
| AddressFacet | unknown | ethereum | n/a | [`0x5d8a9dda649524d1ce31c204551a93560617d1d3`](./contracts/ethereum-1/0x5d8a9dda649524d1ce31c204551a93560617d1d3/) | ⚠️ Unaudited |
| AddressProvider | unknown | ethereum | n/a | [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | ⚠️ Unaudited |
| AmazingLiquidator | unknown | ethereum | n/a | [`0x1f6568767d287b37bfe7529c863e3a9e88130362`](./contracts/ethereum-1/0x1f6568767d287b37bfe7529c863e3a9e88130362/) | ⚠️ Unaudited |
| AmazingLiquidatorPt | unknown | ethereum | n/a | [`0x35c14695bbd07dd19a950ec15acc2455ea28443f`](./contracts/ethereum-1/0x35c14695bbd07dd19a950ec15acc2455ea28443f/) | ⚠️ Unaudited |
| AuctionManager | unknown | ethereum | n/a | [`0x68fe80c6e97e0c8613e2fed344358c6635ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | n/a | [`0x8969d7c2e3e5b056d5d4984031788eca923960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | ⚠️ Unaudited |
| BNFT | unknown | ethereum | n/a | [`0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | ethereum | n/a | [`0x130e22952dd3de2c80ebdfc2b256e344ff3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | ⚠️ Unaudited |
| BullionEnumerableNFT | unknown | ethereum | n/a | [`0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | ⚠️ Unaudited |
| BullionMinter | unknown | ethereum | n/a | [`0x29646a077f9fbc3db930efe35d4e15b06e2776b4`](./contracts/ethereum-1/0x29646a077f9fbc3db930efe35d4e15b06e2776b4/) | ⚠️ Unaudited |
| BullionNFT | unknown | ethereum | n/a | [`0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc`](./contracts/ethereum-1/0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| Create2Factory | unknown | ethereum | n/a | [`0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x26542fbe5f320f25747e80831acdd1f27cdd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | ⚠️ Unaudited |
| cUSDO | unknown | ethereum | n/a | [`0x7a3e55e2c23ab6adc12accf1075b91c174ee0102`](./contracts/ethereum-1/0x7a3e55e2c23ab6adc12accf1075b91c174ee0102/) | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| CustomerManager | unknown | ethereum | n/a | [`0x0978aa6ed342ff8327e97415653f5af790e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DataFeed | unknown | ethereum | n/a | [`0x01b16ea685735acabe519d682a08acade018f003`](./contracts/ethereum-1/0x01b16ea685735acabe519d682a08acade018f003/) | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | n/a | [`0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | ⚠️ Unaudited |
| DepositVault | unknown | ethereum | n/a | [`0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847`](./contracts/ethereum-1/0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083069ed92da4c5291dba52d8912abfcc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| eBtcRateProvider | unknown | ethereum | n/a | [`0x81be3526a71d9013a1a5bd38758e0f248231b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | ⚠️ Unaudited |
| EETH | unknown | ethereum | n/a | [`0x1b47a665364bc15c28b05f449b53354d0ceff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1c6c0bc8a85c93e33a1c261ffdbc2fed43a5018c`](./contracts/ethereum-1/0x1c6c0bc8a85c93e33a1c261ffdbc2fed43a5018c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe`](./contracts/ethereum-1/0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xd9a442856c234a39a81a089c06451ebaa4306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x0b30251fa697a39fd41813b267b50f03414e82da`](./contracts/berachain-80094/0x0b30251fa697a39fd41813b267b50f03414e82da/) | ⚠️ Unaudited |
| EtherealPreDepositVault | unknown | ethereum | n/a | [`0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | ⚠️ Unaudited |
| eUSD | unknown | ethereum | n/a | [`0x4089dc8b6637218f13465d28950a82a7e90cbe27`](./contracts/ethereum-1/0x4089dc8b6637218f13465d28950a82a7e90cbe27/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | ethereum | n/a | [`0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | ⚠️ Unaudited |
| Faucet | unknown | bsc | n/a | [`0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec`](./contracts/bsc-56/0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | n/a | [`0x325ea059f11d6860e50a803ae52d49ef35c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| hypeBTC | unknown | ethereum | n/a | [`0x48599ab08115cdf5731a7d8e5da1ac71d3c83459`](./contracts/ethereum-1/0x48599ab08115cdf5731a7d8e5da1ac71d3c83459/) | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x910cde06dfdcb06540744683812b8e2eb04a6f4c`](./contracts/ethereum-1/0x910cde06dfdcb06540744683812b8e2eb04a6f4c/) | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | ethereum | n/a | [`0x389035180efd4ee704f6e1b6a11e8889a1bbcac4`](./contracts/ethereum-1/0x389035180efd4ee704f6e1b6a11e8889a1bbcac4/) | ⚠️ Unaudited |
| hypeETH | unknown | ethereum | n/a | [`0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab`](./contracts/ethereum-1/0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab/) | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | ethereum | n/a | [`0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463`](./contracts/ethereum-1/0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463/) | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | ethereum | n/a | [`0x109e2a83502edf977fb035929a51414e93f6867c`](./contracts/ethereum-1/0x109e2a83502edf977fb035929a51414e93f6867c/) | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | ethereum | n/a | [`0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e`](./contracts/ethereum-1/0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e/) | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x33ed485dcf400e9354173aebf6de37d8c03c6fa9`](./contracts/ethereum-1/0x33ed485dcf400e9354173aebf6de37d8c03c6fa9/) | ⚠️ Unaudited |
| InankrETHRateProvider | unknown | ethereum | n/a | [`0x8bc73134a736437da780570308d3b37b67174ddb`](./contracts/ethereum-1/0x8bc73134a736437da780570308d3b37b67174ddb/) | ⚠️ Unaudited |
| IncbETHRateProvider | unknown | ethereum | n/a | [`0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45`](./contracts/ethereum-1/0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45/) | ⚠️ Unaudited |
| InceptionBridge | unknown | ethereum | n/a | [`0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf`](./contracts/ethereum-1/0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf/) | ⚠️ Unaudited |
| InceptionLibrary | unknown | ethereum | n/a | [`0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66`](./contracts/ethereum-1/0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66/) | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | ethereum | n/a | [`0x2356d46d89e056f222185ef101165e88073941bd`](./contracts/ethereum-1/0x2356d46d89e056f222185ef101165e88073941bd/) | ⚠️ Unaudited |
| InceptionRestaker | unknown | ethereum | n/a | [`0x02e2fce3efe6619ad882b159e7d897a9c03a33f0`](./contracts/ethereum-1/0x02e2fce3efe6619ad882b159e7d897a9c03a33f0/) | ⚠️ Unaudited |
| InceptionTimeLock | unknown | ethereum | n/a | [`0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e`](./contracts/ethereum-1/0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e/) | ⚠️ Unaudited |
| InceptionToken | unknown | ethereum | n/a | [`0x1aee5ec60fc79b669f11fe368fde789e267649e2`](./contracts/ethereum-1/0x1aee5ec60fc79b669f11fe368fde789e267649e2/) | ⚠️ Unaudited |
| InETHxRateProvider | unknown | ethereum | n/a | [`0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc`](./contracts/ethereum-1/0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc/) | ⚠️ Unaudited |
| InlsETHRateProvider | unknown | ethereum | n/a | [`0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36`](./contracts/ethereum-1/0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36/) | ⚠️ Unaudited |
| InmETHRateProvider | unknown | ethereum | n/a | [`0xa22a7a8c550760574fd7b722c9f7100902d57707`](./contracts/ethereum-1/0xa22a7a8c550760574fd7b722c9f7100902d57707/) | ⚠️ Unaudited |
| InoETHRateProvider | unknown | ethereum | n/a | [`0xbd600020f943f7c61a8123fe2720a05434a3b38b`](./contracts/ethereum-1/0xbd600020f943f7c61a8123fe2720a05434a3b38b/) | ⚠️ Unaudited |
| InosETHRateProvider | unknown | ethereum | n/a | [`0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c`](./contracts/ethereum-1/0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c/) | ⚠️ Unaudited |
| InrETHRateProvider | unknown | ethereum | n/a | [`0xd6d553327b16dd6076d69c2daec91a50dd1e9f66`](./contracts/ethereum-1/0xd6d553327b16dd6076d69c2daec91a50dd1e9f66/) | ⚠️ Unaudited |
| InrEthVault | unknown | ethereum | n/a | [`0x63590b09bccc56667934f5e4793a1941bce69aba`](./contracts/ethereum-1/0x63590b09bccc56667934f5e4793a1941bce69aba/) | ⚠️ Unaudited |
| InsfrxETHRateProvider | unknown | ethereum | n/a | [`0x07f86901057f392fd3a508b8abcbaafb08c13b1e`](./contracts/ethereum-1/0x07f86901057f392fd3a508b8abcbaafb08c13b1e/) | ⚠️ Unaudited |
| InslisBNBRateProvider | unknown | ethereum | n/a | [`0xc88b97cee6db90c1186497619eb43cc8160e391c`](./contracts/ethereum-1/0xc88b97cee6db90c1186497619eb43cc8160e391c/) | ⚠️ Unaudited |
| InstETHRateProvider | unknown | ethereum | n/a | [`0x343281bb5029c4b698fe736d800115ac64d5de39`](./contracts/ethereum-1/0x343281bb5029c4b698fe736d800115ac64d5de39/) | ⚠️ Unaudited |
| InstEthVault | unknown | ethereum | n/a | [`0x64a6c90871b774c1678ddbc48d99040b03a9b84d`](./contracts/ethereum-1/0x64a6c90871b774c1678ddbc48d99040b03a9b84d/) | ⚠️ Unaudited |
| InswETHRateProvider | unknown | ethereum | n/a | [`0xebfa0353dff1801f5c8ea07448771d6fadd1e721`](./contracts/ethereum-1/0xebfa0353dff1801f5c8ea07448771d6fadd1e721/) | ⚠️ Unaudited |
| IntBTCBNBRateProvider | unknown | ethereum | n/a | [`0x12181a5454542610f524e53650038889edc6a07f`](./contracts/ethereum-1/0x12181a5454542610f524e53650038889edc6a07f/) | ⚠️ Unaudited |
| InVault_E1 | unknown | ethereum | n/a | [`0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12`](./contracts/ethereum-1/0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12/) | ⚠️ Unaudited |
| InVault_E2 | unknown | ethereum | n/a | [`0x4fbf33a215861e2bfe01c90760ad5c58921def36`](./contracts/ethereum-1/0x4fbf33a215861e2bfe01c90760ad5c58921def36/) | ⚠️ Unaudited |
| InVault_S_E2 | unknown | ethereum | n/a | [`0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53`](./contracts/ethereum-1/0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53/) | ⚠️ Unaudited |
| InwbETHRateProvider | unknown | ethereum | n/a | [`0x69c59c3dd7566eb12792203f8f832ca81a050eb1`](./contracts/ethereum-1/0x69c59c3dd7566eb12792203f8f832ca81a050eb1/) | ⚠️ Unaudited |
| JIV | unknown | ethereum | n/a | [`0x334b32f6298167d9efdc0f7affe447dba53e3d42`](./contracts/ethereum-1/0x334b32f6298167d9efdc0f7affe447dba53e3d42/) | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | ethereum | n/a | [`0x540f331ebc800b68d4972a01d57b2e1fe45d57ff`](./contracts/ethereum-1/0x540f331ebc800b68d4972a01d57b2e1fe45d57ff/) | ⚠️ Unaudited |
| KarakReserveManager | unknown | ethereum | n/a | [`0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151`](./contracts/ethereum-1/0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151/) | ⚠️ Unaudited |
| KodiakSwapAdapter | unknown | berachain | n/a | [`0x5036017067a141726aee407dbd07949bc8bebd2b`](./contracts/berachain-80094/0x5036017067a141726aee407dbd07949bc8bebd2b/) | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | n/a | [`0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | ⚠️ Unaudited |
| LevelMinting | unknown | ethereum | n/a | [`0x84c0359f6636302efd1332a2f8792c42f205a44f`](./contracts/ethereum-1/0x84c0359f6636302efd1332a2f8792c42f205a44f/) | ⚠️ Unaudited |
| LevelReserveLens | unknown | ethereum | n/a | [`0x29759944834e08ace755dcea71491413f7e2cbad`](./contracts/ethereum-1/0x29759944834e08ace755dcea71491413f7e2cbad/) | ⚠️ Unaudited |
| LevelReserveManager | unknown | ethereum | n/a | [`0x70d544f75c2228d68ee04bc63e6e4bae8f31fcef`](./contracts/ethereum-1/0x70d544f75c2228d68ee04bc63e6e4bae8f31fcef/) | ⚠️ Unaudited |
| LeveragedQQQon | unknown | ethereum | n/a | [`0x985de60bd3abeb7bb70b154de5669e20432f25f7`](./contracts/ethereum-1/0x985de60bd3abeb7bb70b154de5669e20432f25f7/) | ⚠️ Unaudited |
| LeveragedQQQonCustomAggregatorFeed | unknown | ethereum | n/a | [`0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36`](./contracts/ethereum-1/0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36/) | ⚠️ Unaudited |
| LeveragedQQQonDataFeed | unknown | ethereum | n/a | [`0x29de44b2ac307416c3c7a6e3204034e257c05c20`](./contracts/ethereum-1/0x29de44b2ac307416c3c7a6e3204034e257c05c20/) | ⚠️ Unaudited |
| LeveragedQQQonDepositVault | unknown | ethereum | n/a | [`0x15e6fb060af7e12d6634685abfaf3b71300c29e4`](./contracts/ethereum-1/0x15e6fb060af7e12d6634685abfaf3b71300c29e4/) | ⚠️ Unaudited |
| LeveragedQQQonRedemptionVault | unknown | ethereum | n/a | [`0x7aad8e031877551a1a8955af456612f07b67e191`](./contracts/ethereum-1/0x7aad8e031877551a1a8955af456612f07b67e191/) | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | [`0x02656fe285fac5d5c756c2f03c17277df9bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | n/a | [`0x2225c97928934625e8382e6636d30f94c46b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | ethereum | n/a | [`0x1d716d4ec89060411b978e00691fac9795f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | ⚠️ Unaudited |
| LRTSquare | unknown | ethereum | n/a | [`0x3d987e04fc47ac625f720f169c658307fd9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/) | ⚠️ Unaudited |
| LRTSquared | unknown | ethereum | n/a | [`0x138f08a1798b7cf15adbf051bc2f11bca0ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | ethereum | n/a | [`0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | ⚠️ Unaudited |
| LRTSquaredCore | unknown | ethereum | n/a | [`0x1cb489ef513e1cc35c4657c91853a2e6ff1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | ⚠️ Unaudited |
| lvlUSD | unknown | ethereum | n/a | [`0x7c1156e515aa1a2e851674120074968c905aaf37`](./contracts/ethereum-1/0x7c1156e515aa1a2e851674120074968c905aaf37/) | ⚠️ Unaudited |
| MakerHelper | unknown | bsc | n/a | [`0x066b5861d15261009a3bb48305770600e49745ab`](./contracts/bsc-56/0x066b5861d15261009a3bb48305770600e49745ab/) | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | ethereum | n/a | [`0x562bb5014793e8d2df2b493a947fbd522d420c55`](./contracts/ethereum-1/0x562bb5014793e8d2df2b493a947fbd522d420c55/) | ⚠️ Unaudited |
| MApolloDepositVault | unknown | ethereum | n/a | [`0x4d371cc63fb8efd48aff59c5a0c064863ae4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MarketViewer | unknown | base | n/a | [`0x103402aab421c668175946774020cf249df4f66c`](./contracts/base-8453/0x103402aab421c668175946774020cf249df4f66c/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | ethereum | n/a | [`0x54d4783f47889c73861152f027a1aedf75d439d0`](./contracts/ethereum-1/0x54d4783f47889c73861152f027a1aedf75d439d0/) | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7`](./contracts/ethereum-1/0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7/) | ⚠️ Unaudited |
| MBtcDataFeed | unknown | ethereum | n/a | [`0x5f5b02328db057c84217003ad3519c541fe887c9`](./contracts/ethereum-1/0x5f5b02328db057c84217003ad3519c541fe887c9/) | ⚠️ Unaudited |
| mEDGE | unknown | ethereum | n/a | [`0x39c1891875afa8faae0ea8d9d3e769c46174fb87`](./contracts/ethereum-1/0x39c1891875afa8faae0ea8d9d3e769c46174fb87/) | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | ethereum | n/a | [`0x0391508a7cf5cf30c233d08849813c2959c0ea2f`](./contracts/ethereum-1/0x0391508a7cf5cf30c233d08849813c2959c0ea2f/) | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | ethereum | n/a | [`0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1`](./contracts/ethereum-1/0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1/) | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | ethereum | n/a | [`0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6`](./contracts/ethereum-1/0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6/) | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x6142ad2733c45d42ef3c625d4e33689406cc3ad5`](./contracts/ethereum-1/0x6142ad2733c45d42ef3c625d4e33689406cc3ad5/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640574aa764763291ed733672d3a105107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MembershipManager | unknown | ethereum | n/a | [`0x047a7749ad683c2fd8a27c7904ca8dd128f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | ⚠️ Unaudited |
| MembershipNFT | unknown | ethereum | n/a | [`0x290d981b41b713437265cd7846806d7500307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | [`0x2371e134e3455e0593363cbf89d3b6cf53740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | [`0x701907283a57ff77e255c3f1aad790466b8ce4ef`](./contracts/ethereum-1/0x701907283a57ff77e255c3f1aad790466b8ce4ef/) | ⚠️ Unaudited |
| mevBTC | unknown | ethereum | n/a | [`0x7813671f9c083b63fcbecbc182e9a0fc7de629a4`](./contracts/ethereum-1/0x7813671f9c083b63fcbecbc182e9a0fc7de629a4/) | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x931403532a4a30fee41bfe79f5b2159dcd0a5b43`](./contracts/ethereum-1/0x931403532a4a30fee41bfe79f5b2159dcd0a5b43/) | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | ethereum | n/a | [`0x3549f6936dafb87f456dca3a061bc9225ff44b3c`](./contracts/ethereum-1/0x3549f6936dafb87f456dca3a061bc9225ff44b3c/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c`](./contracts/ethereum-1/0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c/) | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | ethereum | n/a | [`0x06e7279e596af4804a0fcc78ece24059da75cf26`](./contracts/ethereum-1/0x06e7279e596af4804a0fcc78ece24059da75cf26/) | ⚠️ Unaudited |
| MFarmDepositVault | unknown | ethereum | n/a | [`0x313c76ecd990b728681f29464978d5637cb78164`](./contracts/ethereum-1/0x313c76ecd990b728681f29464978d5637cb78164/) | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xb73d1e0aedcd5bbeca0119e88288204101411e89`](./contracts/ethereum-1/0xb73d1e0aedcd5bbeca0119e88288204101411e89/) | ⚠️ Unaudited |
| MFOneDataFeed | unknown | ethereum | n/a | [`0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd`](./contracts/ethereum-1/0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd/) | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x0d98b671af8c51f6ffa94248b90df1b11dff6c47`](./contracts/ethereum-1/0x0d98b671af8c51f6ffa94248b90df1b11dff6c47/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | [`0x10e2352da4790e547095f06fa3ef3093881080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de`](./contracts/ethereum-1/0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de/) | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | ethereum | n/a | [`0x4f6e5852f89c5a94119b039b355ad7043e959393`](./contracts/ethereum-1/0x4f6e5852f89c5a94119b039b355ad7043e959393/) | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | ethereum | n/a | [`0xbccac5cbf0691da65e48810d316a1e5b9f895a52`](./contracts/ethereum-1/0xbccac5cbf0691da65e48810d316a1e5b9f895a52/) | ⚠️ Unaudited |
| MHyperDepositVault | unknown | ethereum | n/a | [`0xa62249abe86e75717ef9705f2fdb19b39c130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | ethereum | n/a | [`0x2c68087e994d24d454ba6c96f7a3152f6a2e9850`](./contracts/ethereum-1/0x2c68087e994d24d454ba6c96f7a3152f6a2e9850/) | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | ethereum | n/a | [`0x2f4e7d11e54f34f5d02dade106a690efdbc74834`](./contracts/ethereum-1/0x2f4e7d11e54f34f5d02dade106a690efdbc74834/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x570c15bc5faf98531a8b351d69e22e41e3505e47`](./contracts/ethereum-1/0x570c15bc5faf98531a8b351d69e22e41e3505e47/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | ethereum | n/a | [`0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | ⚠️ Unaudited |
| MidasTimelockController | unknown | ethereum | n/a | [`0xe3eee3e0d2398799c884a47fc40c029c8e241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x344363f85a25837b154dd1c03117fef0341a0e2f`](./contracts/ethereum-1/0x344363f85a25837b154dd1c03117fef0341a0e2f/) | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | ethereum | n/a | [`0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522`](./contracts/ethereum-1/0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522/) | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | ethereum | n/a | [`0x67e14dd4f41955a1b10d4482345a1a4b06aaefac`](./contracts/ethereum-1/0x67e14dd4f41955a1b10d4482345a1a4b06aaefac/) | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | ethereum | n/a | [`0x5e5aab1aad75853ab8114264c3bf3427b0634c9e`](./contracts/ethereum-1/0x5e5aab1aad75853ab8114264c3bf3427b0634c9e/) | ⚠️ Unaudited |
| MMevDataFeed | unknown | ethereum | n/a | [`0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81`](./contracts/ethereum-1/0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81/) | ⚠️ Unaudited |
| MMevDepositVault | unknown | ethereum | n/a | [`0xac5c4dcd870c835f8943e62ab33cdadba850e5e5`](./contracts/ethereum-1/0xac5c4dcd870c835f8943e62ab33cdadba850e5e5/) | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x482d1e94a26bbaef59fc5d038c41b679120d00cb`](./contracts/ethereum-1/0x482d1e94a26bbaef59fc5d038c41b679120d00cb/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf65a5bb03c25c63ceb20e971f101ed060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31`](./contracts/ethereum-1/0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31/) | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x091f974e277a19485b9a713ac768850bc5af383b`](./contracts/ethereum-1/0x091f974e277a19485b9a713ac768850bc5af383b/) | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1d9953c4e85e6d249520e8ff2b134e5ded875615`](./contracts/ethereum-1/0x1d9953c4e85e6d249520e8ff2b134e5ded875615/) | ⚠️ Unaudited |
| MRe7DepositVault | unknown | ethereum | n/a | [`0x53c764c938385bc439dc1596413e1557deed62d8`](./contracts/ethereum-1/0x53c764c938385bc439dc1596413e1557deed62d8/) | ⚠️ Unaudited |
| MSlDepositVault | unknown | ethereum | n/a | [`0x521f6153b7c5080f550517d9b76d9c08766ccb2f`](./contracts/ethereum-1/0x521f6153b7c5080f550517d9b76d9c08766ccb2f/) | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x0d1c52c7cd203e4f84d084a33a062c61d51762fc`](./contracts/ethereum-1/0x0d1c52c7cd203e4f84d084a33a062c61d51762fc/) | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | ethereum | n/a | [`0x307be9748111571739b92a5dda10191f29057a8b`](./contracts/ethereum-1/0x307be9748111571739b92a5dda10191f29057a8b/) | ⚠️ Unaudited |
| msyrupUSDp | unknown | ethereum | n/a | [`0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5`](./contracts/ethereum-1/0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5/) | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | ethereum | n/a | [`0x1e2165801d84865587252155fb4580381f7a3fc4`](./contracts/ethereum-1/0x1e2165801d84865587252155fb4580381f7a3fc4/) | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x5113bf83400d184cde30af154117e29351e1cc91`](./contracts/ethereum-1/0x5113bf83400d184cde30af154117e29351e1cc91/) | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | ethereum | n/a | [`0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c`](./contracts/ethereum-1/0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c/) | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | ethereum | n/a | [`0x5ca035326aa66b5db40fb6d3693772f073cd94bc`](./contracts/ethereum-1/0x5ca035326aa66b5db40fb6d3693772f073cd94bc/) | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1314fb72f67681e7617e59bcf92002a9311d2084`](./contracts/ethereum-1/0x1314fb72f67681e7617e59bcf92002a9311d2084/) | ⚠️ Unaudited |
| mTBILL | unknown | ethereum | n/a | [`0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c`](./contracts/ethereum-1/0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c/) | ⚠️ Unaudited |
| MTBillDataFeed | unknown | ethereum | n/a | [`0x2e0357e38fc7fae9c29050aef3744d4055490ada`](./contracts/ethereum-1/0x2e0357e38fc7fae9c29050aef3744d4055490ada/) | ⚠️ Unaudited |
| MTokenMain | unknown | ethereum | n/a | [`0x123ffe0a3c62878dcbee2742227dc8990058d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | ⚠️ Unaudited |
| MTokenMessager | unknown | ethereum | n/a | [`0x24ce2a00eb05b33b206b4057598f97ddc3028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | ethereum | n/a | [`0x102874ca109a5a7e94a0385f1380cebc905fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | ⚠️ Unaudited |
| MTokenMessenger | unknown | ethereum | n/a | [`0x0be91692750982b4ba92dabc3985c548098f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | ethereum | n/a | [`0xb350d8decc3adf68c3856d46ab42976ca7a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | ⚠️ Unaudited |
| MTokenMinter | unknown | ethereum | n/a | [`0x5fd20e49239aaedb8490c07a622c129a39296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0x7165c2257ab6b6285389d8459938786c0ccd83d7`](./contracts/ethereum-1/0x7165c2257ab6b6285389d8459938786c0ccd83d7/) | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | ethereum | n/a | [`0x19623f6af10bcd83b01c787e16219a738877851e`](./contracts/ethereum-1/0x19623f6af10bcd83b01c787e16219a738877851e/) | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | ethereum | n/a | [`0x8d8f821e72382e433f1bcf079c0365f976b2ccd0`](./contracts/ethereum-1/0x8d8f821e72382e433f1bcf079c0365f976b2ccd0/) | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | ethereum | n/a | [`0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41`](./contracts/ethereum-1/0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41/) | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | ethereum | n/a | [`0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | ethereum | n/a | [`0x07cf28d71a38c12e258922d9857ac415ae1ff579`](./contracts/ethereum-1/0x07cf28d71a38c12e258922d9857ac415ae1ff579/) | ⚠️ Unaudited |
| OracleAggregator | unknown | arbitrum | n/a | [`0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa`](./contracts/arbitrum-42161/0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa/) | ⚠️ Unaudited |
| OrderManagerV1Plus | unknown | bsc | n/a | [`0x014544d99d1eccea9979da7db6a5468cf2c84c73`](./contracts/bsc-56/0x014544d99d1eccea9979da7db6a5468cf2c84c73/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x1132065009850c72e27b7950c0f9285d1d103589`](./contracts/ethereum-1/0x1132065009850c72e27b7950c0f9285d1d103589/) | ⚠️ Unaudited |
| PreOrder | unknown | ethereum | n/a | [`0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | ⚠️ Unaudited |
| PriceFeedFactory | unknown | ethereum | n/a | [`0x057b80bf364012326a8c06cdec4325b3d8266733`](./contracts/ethereum-1/0x057b80bf364012326a8c06cdec4325b3d8266733/) | ⚠️ Unaudited |
| PriceProvider | unknown | ethereum | n/a | [`0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | ⚠️ Unaudited |
| ProtocolParamsFacet | unknown | ethereum | n/a | [`0x84283289d7e57a2f5b80dda065ac99450eb44cb6`](./contracts/ethereum-1/0x84283289d7e57a2f5b80dda065ac99450eb44cb6/) | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | ethereum | n/a | [`0xaf8749c3dc1fc0592f21c2593204c45d3be0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x10d9a419478fee5aa35c9f3b36b37025e9ff8110`](./contracts/ethereum-1/0x10d9a419478fee5aa35c9f3b36b37025e9ff8110/) | ⚠️ Unaudited |
| RedemptionVault | unknown | ethereum | n/a | [`0x2f1372244cedcaf8ee1759d2f02435628f14975f`](./contracts/ethereum-1/0x2f1372244cedcaf8ee1759d2f02435628f14975f/) | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | ethereum | n/a | [`0xe123ebc5697151890dddf05943de393ceaccc7e9`](./contracts/ethereum-1/0xe123ebc5697151890dddf05943de393ceaccc7e9/) | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x283cbedecb447dbe114b4268f79ba8b046e32f39`](./contracts/ethereum-1/0x283cbedecb447dbe114b4268f79ba8b046e32f39/) | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | ethereum | n/a | [`0x489a797714708cf088d158714a376d8ff740d701`](./contracts/ethereum-1/0x489a797714708cf088d158714a376d8ff740d701/) | ⚠️ Unaudited |
| RegulationsManager | unknown | ethereum | n/a | [`0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | [`0xf2ed5f1a9843917329c538a13d51c3c3d7249a1a`](./contracts/ethereum-1/0xf2ed5f1a9843917329c538a13d51c3c3d7249a1a/) | ⚠️ Unaudited |
| RsEthAdapter | unknown | ethereum | n/a | [`0xd52ba087e30928886baba15b1584d4ac9abaab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0x719e77027952929ed3060dbffc5d43ec50c1cf79`](./contracts/ethereum-1/0x719e77027952929ed3060dbffc5d43ec50c1cf79/) | ⚠️ Unaudited |
| SEthFiStrategy | unknown | ethereum | n/a | [`0x76c57e359c0eda0aac54d97832fb1b4451805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | ⚠️ Unaudited |
| SimpleAggregator | unknown | bsc | n/a | [`0x69340dc8d644829d49bdf2595b058d85b4fe1dff`](./contracts/bsc-56/0x69340dc8d644829d49bdf2595b058d85b4fe1dff/) | ⚠️ Unaudited |
| StableERC4626For4626 | unknown | base | n/a | [`0x609f20ee24e10010a62970e1dab7e2b84ed74cab`](./contracts/base-8453/0x609f20ee24e10010a62970e1dab7e2b84ed74cab/) | ⚠️ Unaudited |
| StableERC4626ForCustomize | unknown | ethereum | n/a | [`0x0b38383cdd15fe924933b0a0f8fcd1befa56d14a`](./contracts/ethereum-1/0x0b38383cdd15fe924933b0a0f8fcd1befa56d14a/) | ⚠️ Unaudited |
| StableERC4626ForVenus | unknown | bsc | n/a | [`0x437e7b75c0a8733562219e25c55b0e2c01a1dacd`](./contracts/bsc-56/0x437e7b75c0a8733562219e25c55b0e2c01a1dacd/) | ⚠️ Unaudited |
| StakedlvlUSD | unknown | ethereum | n/a | [`0x4737d9b4592b40d51e110b94c9c043c6654067ae`](./contracts/ethereum-1/0x4737d9b4592b40d51e110b94c9c043c6654067ae/) | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | ethereum | n/a | [`0xce2326260c168525a3e905391e8bfee00ebd0cea`](./contracts/ethereum-1/0xce2326260c168525a3e905391e8bfee00ebd0cea/) | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | ethereum | n/a | [`0x9d39a5de30e57443bff2a8307a4256c8797a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | [`0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | ⚠️ Unaudited |
| STBT | unknown | ethereum | n/a | [`0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948`](./contracts/ethereum-1/0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948/) | ⚠️ Unaudited |
| StbtTimelockController | unknown | ethereum | n/a | [`0x0eb8f11ec17c160b0d51586b0e420faff07b6f47`](./contracts/ethereum-1/0x0eb8f11ec17c160b0d51586b0e420faff07b6f47/) | ⚠️ Unaudited |
| STBTv2 | unknown | ethereum | n/a | [`0x3f0868fd7b0844e374277ebc9a3e4979465a37aa`](./contracts/ethereum-1/0x3f0868fd7b0844e374277ebc9a3e4979465a37aa/) | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | ethereum | n/a | [`0x747cac75776b3a0bba3de3e61ec12a6a7f52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ⚠️ Unaudited |
| SyrupAdapter | unknown | ethereum | n/a | [`0xad298d3ec4af69af52701a539d3bd14873ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/) | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | ethereum | n/a | [`0xa869cbc273daae91d6109ee5bb958ac6b7198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | ethereum | n/a | [`0x570f37365fffff0a3884892b7363c0a8615bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | ethereum | n/a | [`0x6808e4d8add893d0227690f435e1ff734d9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TACmEDGE | unknown | ethereum | n/a | [`0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c`](./contracts/ethereum-1/0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c/) | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | ethereum | n/a | [`0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8`](./contracts/ethereum-1/0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8/) | ⚠️ Unaudited |
| TACmMEV | unknown | ethereum | n/a | [`0x1d3147d11c88f5008db19cb5dd945ae682910202`](./contracts/ethereum-1/0x1d3147d11c88f5008db19cb5dd945ae682910202/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| tBTC | unknown | ethereum | n/a | [`0x4eed111a10c25a739b0d72bd2383f958b9fde211`](./contracts/ethereum-1/0x4eed111a10c25a739b0d72bd2383f958b9fde211/) | ⚠️ Unaudited |
| TermMax4626Factory | unknown | ethereum | n/a | [`0x05e7774d0788671c0065415ec2efddda5847eba1`](./contracts/ethereum-1/0x05e7774d0788671c0065415ec2efddda5847eba1/) | ⚠️ Unaudited |
| TermMaxBeefySharePriceFeedAdapter | unknown | berachain | n/a | [`0x349e28fb4c0c3577151dfb874eefa66e8ae885b7`](./contracts/berachain-80094/0x349e28fb4c0c3577151dfb874eefa66e8ae885b7/) | ⚠️ Unaudited |
| TermMaxOndoPriceFeedAdapterFactory | unknown | ethereum | n/a | [`0x03301cfce4a91533103c7dfb1fe323f4437a031c`](./contracts/ethereum-1/0x03301cfce4a91533103c7dfb1fe323f4437a031c/) | ⚠️ Unaudited |
| TermMaxRewardContract | unknown | arbitrum | n/a | [`0xb2c53eff70ebe5ef1940b1e942ccce2a5613e394`](./contracts/arbitrum-42161/0xb2c53eff70ebe5ef1940b1e942ccce2a5613e394/) | ⚠️ Unaudited |
| TermMaxRouter_Repay_Gt | unknown | arbitrum | n/a | [`0x04b945a67b799e87034b5f6ad4dedb57d08ef588`](./contracts/arbitrum-42161/0x04b945a67b799e87034b5f6ad4dedb57d08ef588/) | ⚠️ Unaudited |
| TermMaxRouter_V1_1_1 | unknown | ethereum | n/a | [`0x1159bfc5fd9ffcbf7bd00db6fd067f809069eb8f`](./contracts/ethereum-1/0x1159bfc5fd9ffcbf7bd00db6fd067f809069eb8f/) | ⚠️ Unaudited |
| TermMaxRouter_V1_1_2 | unknown | bsc | n/a | [`0x38832fdaf37a4cfb54d5fc46b9058f6a33e7f8f5`](./contracts/bsc-56/0x38832fdaf37a4cfb54d5fc46b9058f6a33e7f8f5/) | ⚠️ Unaudited |
| TermMaxUSPCPriceFeedAdapter | unknown | ethereum | n/a | [`0xf7112702927a99a43f1287916746b222a1f66dd8`](./contracts/ethereum-1/0xf7112702927a99a43f1287916746b222a1f66dd8/) | ⚠️ Unaudited |
| TermMaxVaultFactoryV1Plus | unknown | ethereum | n/a | [`0x3a9ecffdbdc595907f65640f810d3ddddde2fa61`](./contracts/ethereum-1/0x3a9ecffdbdc595907f65640f810d3ddddde2fa61/) | ⚠️ Unaudited |
| TermMaxVaultV1Plus | unknown | ethereum | n/a | [`0x1d9d0956621bf85d1d4cafc92d76a0448a5e6b9b`](./contracts/ethereum-1/0x1d9d0956621bf85d1d4cafc92d76a0448a5e6b9b/) | ⚠️ Unaudited |
| TermMaxViewer | unknown | arbitrum | n/a | [`0x012bfcbac9edea04dff07cc61269e321f4595dff`](./contracts/arbitrum-42161/0x012bfcbac9edea04dff07cc61269e321f4595dff/) | ⚠️ Unaudited |
| TermMaxWeETHPriceCapAdapter | unknown | ethereum | n/a | [`0x9bba8a86f2f9d237bfe5df074478f19110adc6a0`](./contracts/ethereum-1/0x9bba8a86f2f9d237bfe5df074478f19110adc6a0/) | ⚠️ Unaudited |
| TermMaxXauePricefeedAdapter | unknown | ethereum | n/a | [`0x71fcb23b5b68410637436347ca4fc97b7bd66bca`](./contracts/ethereum-1/0x71fcb23b5b68410637436347ca4fc97b7bd66bca/) | ⚠️ Unaudited |
| TERPOC | unknown | ethereum | n/a | [`0x2022be364c2c0b46bb693d154bfb8eb5476a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | ⚠️ Unaudited |
| tETH | unknown | ethereum | n/a | [`0x72cca9794018c10ce47af3fc8d47e167d0761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/) | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | ethereum | n/a | [`0x42e82b2ee52cdc922cfed82bfcef90ada31215b5`](./contracts/ethereum-1/0x42e82b2ee52cdc922cfed82bfcef90ada31215b5/) | ⚠️ Unaudited |
| TEthDepositVault | unknown | ethereum | n/a | [`0x46eab5259e1a2f18cbbfeeaa093130a456d09e78`](./contracts/ethereum-1/0x46eab5259e1a2f18cbbfeeaa093130a456d09e78/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xc32652ab236f32482f5018b027c8b54c13750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TNFT | unknown | ethereum | n/a | [`0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | ⚠️ Unaudited |
| TokenFacet | unknown | ethereum | n/a | [`0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc`](./contracts/ethereum-1/0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x007115416ab6c266329a03b09a8aa39ac2ef7d9d`](./contracts/ethereum-1/0x007115416ab6c266329a03b09a8aa39ac2ef7d9d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f`](./contracts/ethereum-1/0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0295e0ce709723fb25a28b8f67c54a488ba5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x030b69280892c888670edcdcd8b69fd8026a0bf3`](./contracts/ethereum-1/0x030b69280892c888670edcdcd8b69fd8026a0bf3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b`](./contracts/ethereum-1/0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x03fda274c303b128eba9e00bf555a3f4f4f26ec3`](./contracts/ethereum-1/0x03fda274c303b128eba9e00bf555a3f4f4f26ec3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x056339c044055819e8db84e71f5f2e1f536b2e5b`](./contracts/ethereum-1/0x056339c044055819e8db84e71f5f2e1f536b2e5b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x09740e3b2ccf6e82f4fb3a57519c8b65da728378`](./contracts/ethereum-1/0x09740e3b2ccf6e82f4fb3a57519c8b65da728378/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0a2a51f2f206447de3e3a80fcf92240244722395`](./contracts/ethereum-1/0x0a2a51f2f206447de3e3a80fcf92240244722395/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0aecdf39d9d02833a055bf1eca518a83f66f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123`](./contracts/ethereum-1/0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0f50b401509798f1919a4e8d38192f78734e49c0`](./contracts/ethereum-1/0x0f50b401509798f1919a4e8d38192f78734e49c0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x10cc8dbca90db7606013d8cd2e77eb024df693bd`](./contracts/ethereum-1/0x10cc8dbca90db7606013d8cd2e77eb024df693bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x12570b84b633629b1db532fd3420f34a30acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x141f0e9ed8ba2295254c9df9476cce7bc29172b1`](./contracts/ethereum-1/0x141f0e9ed8ba2295254c9df9476cce7bc29172b1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x15a4c3e5a3e955a81a570e617d83680f57ee3862`](./contracts/ethereum-1/0x15a4c3e5a3e955a81a570e617d83680f57ee3862/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x15f724b35a75f0c28f352b952ea9d1b24e348c57`](./contracts/ethereum-1/0x15f724b35a75f0c28f352b952ea9d1b24e348c57/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4`](./contracts/ethereum-1/0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd`](./contracts/ethereum-1/0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67`](./contracts/ethereum-1/0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648`](./contracts/ethereum-1/0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b`](./contracts/ethereum-1/0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1a57aba59d50b192f8440e205e3b8b885be128cc`](./contracts/ethereum-1/0x1a57aba59d50b192f8440e205e3b8b885be128cc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd`](./contracts/ethereum-1/0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1fe17936c1cdc73c857263997716e3a60b9291c7`](./contracts/ethereum-1/0x1fe17936c1cdc73c857263997716e3a60b9291c7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x20226607b4fa64228abf3072ce561d6257683464`](./contracts/ethereum-1/0x20226607b4fa64228abf3072ce561d6257683464/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x20c5486ddc82272856730cc6ae2c9485ee1c5bee`](./contracts/ethereum-1/0x20c5486ddc82272856730cc6ae2c9485ee1c5bee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749`](./contracts/ethereum-1/0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x238a700ed6165261cf8b2e544ba797bc11e466ba`](./contracts/ethereum-1/0x238a700ed6165261cf8b2e544ba797bc11e466ba/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27c0d44b02e1b732f37ba31c466a35053a7780b8`](./contracts/ethereum-1/0x27c0d44b02e1b732f37ba31c466a35053a7780b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27e120c518a339c3d8b665e56c4503df785985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7`](./contracts/ethereum-1/0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2a8c22e3b10036f3aef5875d04f8441d4188b656`](./contracts/ethereum-1/0x2a8c22e3b10036f3aef5875d04f8441d4188b656/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ce15146958bf305dadebbbf31f2d5a4f2574b43`](./contracts/ethereum-1/0x2ce15146958bf305dadebbbf31f2d5a4f2574b43/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085`](./contracts/ethereum-1/0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ddc913e4c7674a7e42c55db48a92c47158e91c6`](./contracts/ethereum-1/0x2ddc913e4c7674a7e42c55db48a92c47158e91c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2f98a13635f6cec0cc45bc1e43969c71d68091d6`](./contracts/ethereum-1/0x2f98a13635f6cec0cc45bc1e43969c71d68091d6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x307267989a7bec3a57fd7fd96017c49803589fd0`](./contracts/ethereum-1/0x307267989a7bec3a57fd7fd96017c49803589fd0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x30acceedff97a3fe11ab52ee7425af4589338c06`](./contracts/ethereum-1/0x30acceedff97a3fe11ab52ee7425af4589338c06/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x30d9d1e76869516aea980390494aaed45c3efc1a`](./contracts/ethereum-1/0x30d9d1e76869516aea980390494aaed45c3efc1a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x319a05e260acc2490768a726ccfd341d4b3d5106`](./contracts/ethereum-1/0x319a05e260acc2490768a726ccfd341d4b3d5106/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x33757a5e3afb438733679275c03ee2db43f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x34031e751da2ab19009d8f7eb268face2bdfd0dd`](./contracts/ethereum-1/0x34031e751da2ab19009d8f7eb268face2bdfd0dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x37769af173ea65dfc2880179940d5566817af6ae`](./contracts/ethereum-1/0x37769af173ea65dfc2880179940d5566817af6ae/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x39592bdbf6f3b96dd4547063945ab9ece769ae4d`](./contracts/ethereum-1/0x39592bdbf6f3b96dd4547063945ab9ece769ae4d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x39f0507060c12bb88cb68a496544011d2f341455`](./contracts/ethereum-1/0x39f0507060c12bb88cb68a496544011d2f341455/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3b099bc0e9854799688b0542222c938e0a6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3de2e700d220928ff5180691004824d8ad42f5d4`](./contracts/ethereum-1/0x3de2e700d220928ff5180691004824d8ad42f5d4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x41438435c20b1c2f1fca702d387889f346a0c3de`](./contracts/ethereum-1/0x41438435c20b1c2f1fca702d387889f346a0c3de/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x41c60765fa36109b19b21719f4593f19ddefa663`](./contracts/ethereum-1/0x41c60765fa36109b19b21719f4593f19ddefa663/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x43881b05c3be68b2d33eb70addf9f666c5005f68`](./contracts/ethereum-1/0x43881b05c3be68b2d33eb70addf9f666c5005f68/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x48e284d0729eb1925066307072758d95dbbb49c4`](./contracts/ethereum-1/0x48e284d0729eb1925066307072758d95dbbb49c4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4bcfda0a844b49da8bb19562ee52cc385395001a`](./contracts/ethereum-1/0x4bcfda0a844b49da8bb19562ee52cc385395001a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a`](./contracts/ethereum-1/0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5356b8e06589de894d86b24f4079c629e8565234`](./contracts/ethereum-1/0x5356b8e06589de894d86b24f4079c629e8565234/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5455222ccdd32f85c1998f57dc6cf613b4498c2a`](./contracts/ethereum-1/0x5455222ccdd32f85c1998f57dc6cf613b4498c2a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x548857309befb6fb6f20a9c5a56c9023d892785b`](./contracts/ethereum-1/0x548857309befb6fb6f20a9c5a56c9023d892785b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5572eb7f4fb679ff6a99203f12b0484dc1062d78`](./contracts/ethereum-1/0x5572eb7f4fb679ff6a99203f12b0484dc1062d78/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x56814399caaedcee4f58d2e55da058a81dde744f`](./contracts/ethereum-1/0x56814399caaedcee4f58d2e55da058a81dde744f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5696b69be96e936e8e489070eb3d4f0e1fe966af`](./contracts/ethereum-1/0x5696b69be96e936e8e489070eb3d4f0e1fe966af/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x57b3be350c777892611cedc93bcf8c099a9ecdab`](./contracts/ethereum-1/0x57b3be350c777892611cedc93bcf8c099a9ecdab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5a096ac89eaef68930352a15da49e4eb8590bf1d`](./contracts/ethereum-1/0x5a096ac89eaef68930352a15da49e4eb8590bf1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1`](./contracts/ethereum-1/0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa`](./contracts/ethereum-1/0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0`](./contracts/ethereum-1/0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5e154946561aea4e750aac6dead23d37e00e47f6`](./contracts/ethereum-1/0x5e154946561aea4e750aac6dead23d37e00e47f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61`](./contracts/ethereum-1/0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x605a84861ee603e385b01b9048bea6a86118db0a`](./contracts/ethereum-1/0x605a84861ee603e385b01b9048bea6a86118db0a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x649f8698068ad143a7e18ba9cb0be112d5986aeb`](./contracts/ethereum-1/0x649f8698068ad143a7e18ba9cb0be112d5986aeb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca`](./contracts/ethereum-1/0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x65df7299a9010e399a38d6b7159d25239cdf039b`](./contracts/ethereum-1/0x65df7299a9010e399a38d6b7159d25239cdf039b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x66c559fc4fa46a47262efd39db8222275249566c`](./contracts/ethereum-1/0x66c559fc4fa46a47262efd39db8222275249566c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6d62d3c3c8f9912890788b50299bf4d2c64823b6`](./contracts/ethereum-1/0x6d62d3c3c8f9912890788b50299bf4d2c64823b6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322`](./contracts/ethereum-1/0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6f149f8bf1cb0245e70171c9972059c22294aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6f51d8af5be2cf3517b8d6cd07361be382e83be6`](./contracts/ethereum-1/0x6f51d8af5be2cf3517b8d6cd07361be382e83be6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75`](./contracts/ethereum-1/0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x76cc16608aa7cd32631bb151801bb095313f7bbd`](./contracts/ethereum-1/0x76cc16608aa7cd32631bb151801bb095313f7bbd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7833397da276d6b588e76466c14c82b2d733cfb6`](./contracts/ethereum-1/0x7833397da276d6b588e76466c14c82b2d733cfb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7a4c56b1baaad0ff5d248892e137d415da41b3b8`](./contracts/ethereum-1/0x7a4c56b1baaad0ff5d248892e137d415da41b3b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05`](./contracts/ethereum-1/0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb`](./contracts/ethereum-1/0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7e8c632ab231479886af1bc02b9d646e4634da93`](./contracts/ethereum-1/0x7e8c632ab231479886af1bc02b9d646e4634da93/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x81c097e86842051b1ed4299a9e4d213cb07f6f42`](./contracts/ethereum-1/0x81c097e86842051b1ed4299a9e4d213cb07f6f42/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a`](./contracts/ethereum-1/0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8493f1f2b834c2837c87075b0edac17f5273789a`](./contracts/ethereum-1/0x8493f1f2b834c2837c87075b0edac17f5273789a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x87c9053c819bb28e0d73d33059e1b3da80afb0cf`](./contracts/ethereum-1/0x87c9053c819bb28e0d73d33059e1b3da80afb0cf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x88956c00a5fa046c823eaed747f21a95d2264403`](./contracts/ethereum-1/0x88956c00a5fa046c823eaed747f21a95d2264403/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8d51dbc85ceef637c97d02bdaabb5e274850e68c`](./contracts/ethereum-1/0x8d51dbc85ceef637c97d02bdaabb5e274850e68c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8f382ae7bbdbecda835d26ce3ba64010eaee1386`](./contracts/ethereum-1/0x8f382ae7bbdbecda835d26ce3ba64010eaee1386/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x92004dcc5359ed67f287f32d12715a37916decde`](./contracts/ethereum-1/0x92004dcc5359ed67f287f32d12715a37916decde/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387`](./contracts/ethereum-1/0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358`](./contracts/ethereum-1/0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f`](./contracts/ethereum-1/0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9f49b0980b141b539e2a94ec0864faf699ff9524`](./contracts/ethereum-1/0x9f49b0980b141b539e2a94ec0864faf699ff9524/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9f7dd5462c183b6577858e16a13a4d864ce2f972`](./contracts/ethereum-1/0x9f7dd5462c183b6577858e16a13a4d864ce2f972/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a`](./contracts/ethereum-1/0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa01227a26a7710bc75071286539e47adb6dea417`](./contracts/ethereum-1/0xa01227a26a7710bc75071286539e47adb6dea417/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6`](./contracts/ethereum-1/0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f`](./contracts/ethereum-1/0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xafcc1c556ee0436c10a3054b3d615abb93a352b5`](./contracts/ethereum-1/0xafcc1c556ee0436c10a3054b3d615abb93a352b5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb5d6483c556bc6810b55b983315016fcb374186d`](./contracts/ethereum-1/0xb5d6483c556bc6810b55b983315016fcb374186d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbdc0304210972be75fd2247838bff2b64474f15c`](./contracts/ethereum-1/0xbdc0304210972be75fd2247838bff2b64474f15c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbf2a93b420225558a76fc9888c687c14977e6e7c`](./contracts/ethereum-1/0xbf2a93b420225558a76fc9888c687c14977e6e7c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc344db27feba7f0a881a50f0f702a525a44f2368`](./contracts/ethereum-1/0xc344db27feba7f0a881a50f0f702a525a44f2368/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc8495eaff71d3a563b906295fcf2f685b1783085`](./contracts/ethereum-1/0xc8495eaff71d3a563b906295fcf2f685b1783085/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xd789870bea40d056a4d26055d0befcc8755da146`](./contracts/ethereum-1/0xd789870bea40d056a4d26055d0befcc8755da146/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | ethereum | n/a | [`0x6f0c371f808996187729ed1bee13ace2e901d526`](./contracts/ethereum-1/0x6f0c371f808996187729ed1bee13ace2e901d526/) | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | ethereum | n/a | [`0x507f409ba7e5ef489d5c0e3c4568b24985a029d0`](./contracts/ethereum-1/0x507f409ba7e5ef489d5c0e3c4568b24985a029d0/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603`](./contracts/ethereum-1/0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603/) | ⚠️ Unaudited |
| UpgradeableSTBT | unknown | ethereum | n/a | [`0x32a67bf4815b4f28e879fd09671ef74ebd60528f`](./contracts/ethereum-1/0x32a67bf4815b4f28e879fd09671ef74ebd60528f/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x1b7a4c3797236a1c37f8741c0be35c2c72736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x200057a0a4a97149b0924c5dbba868f283d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x2ecd155405ca52a5ca0e552981ff44a8252fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x46c4ab30743759ec142f7495b7e935e213cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x57aaf0004c716388b21795431cd7d5f9d3bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0x857b4faa11b143f69f091d1c4ded5480a8d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd0ff8996db4bdb46870b7e833b7532f484fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | ⚠️ Unaudited |
| UUPSProxy | unknown | ethereum | n/a | [`0xd5edf7730abad812247f6f54d7bd31a52554e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WhitelistManager | unknown | berachain | n/a | [`0x2c5d576681d625ea9b6e9ee5d6a9159147328292`](./contracts/berachain-80094/0x2c5d576681d625ea9b6e9ee5d6a9159147328292/) | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | ethereum | n/a | [`0x3ed97c79ded8894036da095b2e2f79f8080a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | ethereum | n/a | [`0x0c3f5fafb87318c0deaebff096aba019501fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | ⚠️ Unaudited |
| WrappedRebasingERC20 | unknown | ethereum | n/a | [`0x78c6b27be6db520d332b1b44323f94bc831f5e33`](./contracts/ethereum-1/0x78c6b27be6db520d332b1b44323f94bc831f5e33/) | ⚠️ Unaudited |
| WSTBT | unknown | ethereum | n/a | [`0x288a8005c53632d920045b7c7c2e54a3f1bc4c83`](./contracts/ethereum-1/0x288a8005c53632d920045b7c7c2e54a3f1bc4c83/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| wstETH_Burner | unknown | ethereum | n/a | [`0xa7581ebe7870a220360d216c3404ff7cb79b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | ⚠️ Unaudited |
| WstEthAdapter | unknown | ethereum | n/a | [`0xa74f994672f232a30067da820f0e54881edbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| wUSDO | unknown | ethereum | n/a | [`0x82b09f8b6096039aa0d62a5cee8dff7f95791c04`](./contracts/ethereum-1/0x82b09f8b6096039aa0d62a5cee8dff7f95791c04/) | ⚠️ Unaudited |
| XERC20 | unknown | ethereum | n/a | [`0x425bbf58df398d13677aa56fcd5daca02b2f2180`](./contracts/ethereum-1/0x425bbf58df398d13677aa56fcd5daca02b2f2180/) | ⚠️ Unaudited |
| XERC20Lockbox | unknown | ethereum | n/a | [`0x4c858892decbf31460603f4bfc4620c328047f37`](./contracts/ethereum-1/0x4c858892decbf31460603f4bfc4620c328047f37/) | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | ethereum | n/a | [`0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a`](./contracts/ethereum-1/0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a/) | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | ethereum | n/a | [`0xac79fed395c2238c4fa13084ee440e19e4deb0fe`](./contracts/ethereum-1/0xac79fed395c2238c4fa13084ee440e19e4deb0fe/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | ethereum | n/a | [`0x01feb0bba21552385de157174f32d97bc0e6afcc`](./contracts/ethereum-1/0x01feb0bba21552385de157174f32d97bc0e6afcc/) | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x364fb05060e7562b0c6379b5bd3371c412e049aa`](./contracts/ethereum-1/0x364fb05060e7562b0c6379b5bd3371c412e049aa/) | ⚠️ Unaudited |
| zeroGUSDV | unknown | ethereum | n/a | [`0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347`](./contracts/ethereum-1/0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347/) | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | ethereum | n/a | [`0x8cf94465f8db8a273673dfe950bd1c9e34442aab`](./contracts/ethereum-1/0x8cf94465f8db8a273673dfe950bd1c9e34442aab/) | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | ethereum | n/a | [`0x091074f37e8c72ddb8720afae77c44a855080e8a`](./contracts/ethereum-1/0x091074f37e8c72ddb8720afae77c44a855080e8a/) | ⚠️ Unaudited |

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
| [ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf) | ABDK | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf) | ABDK | Audit | 2023-09 | stale | Direct | contract_name | 5 | high |
| [ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf) | ABDK | Audit | 2024-05 | stale | Direct | contract_name | 8 | high |
| [HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf) | HashCloak | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf) | HashCloak | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [TermMax-ABDK-audit-report-Phase1-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase1-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Direct | contract_name | 5 | high |
| [TermMax-ABDK-audit-report-Phase2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase2.pdf) | ABDK | Audit | 2025-07 | aging | Direct | contract_name | 14 | high |
| [TermMax-ABDK-audit-report-Phase3-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase3-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Direct | contract_name | 11 | high |
| [TermMax-ABDK-audit-report-TMX-v-1-0.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-TMX-v-1-0.pdf) | ABDK | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [TermMax-Cantina-competition-20250320.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-Cantina-competition-20250320.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [Audit Reports](https://github.com/term-structure/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Spearbit](https://cantina.xyz/competitions/205f8ca3-27fc-4da2-a2e6-0d43e1c60a41) | Spearbit | Contest | n/a | unknown | Direct | contract_name | 15 | high |
| [DeFiSafety](https://defisafety.com/app/pqrs/613) | DeFiSafety | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | AcreAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0391a651c080e99b38c179575342512769d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | acreBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e`](./contracts/ethereum-1/0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e/) | AcreBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c727b81eb776e2614c72430e306cefd614bb837`](./contracts/ethereum-1/0x4c727b81eb776e2614c72430e306cefd614bb837/) | AcreBtcDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d8a9dda649524d1ce31c204551a93560617d1d3`](./contracts/ethereum-1/0x5d8a9dda649524d1ce31c204551a93560617d1d3/) | AddressFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/ethereum-1/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | AddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f6568767d287b37bfe7529c863e3a9e88130362`](./contracts/ethereum-1/0x1f6568767d287b37bfe7529c863e3a9e88130362/) | AmazingLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35c14695bbd07dd19a950ec15acc2455ea28443f`](./contracts/ethereum-1/0x35c14695bbd07dd19a950ec15acc2455ea28443f/) | AmazingLiquidatorPt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68fe80c6e97e0c8613e2fed344358c6635ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/) | AuctionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8969d7c2e3e5b056d5d4984031788eca923960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/) | AvsOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/) | BNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130e22952dd3de2c80ebdfc2b256e344ff3a0729`](./contracts/ethereum-1/0x130e22952dd3de2c80ebdfc2b256e344ff3a0729/) | BoringVaultPriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | BullionEnumerableNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29646a077f9fbc3db930efe35d4e15b06e2776b4`](./contracts/ethereum-1/0x29646a077f9fbc3db930efe35d4e15b06e2776b4/) | BullionMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc`](./contracts/ethereum-1/0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc/) | BullionNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62`](./contracts/ethereum-1/0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62/) | Create2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26542fbe5f320f25747e80831acdd1f27cdd0c65`](./contracts/ethereum-1/0x26542fbe5f320f25747e80831acdd1f27cdd0c65/) | CumulativeMerkleDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3e55e2c23ab6adc12accf1075b91c174ee0102`](./contracts/ethereum-1/0x7a3e55e2c23ab6adc12accf1075b91c174ee0102/) | cUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | CustomAggregatorV3CompatibleFeedDiscounted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0978aa6ed342ff8327e97415653f5af790e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | CustomerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b16ea685735acabe519d682a08acade018f003`](./contracts/ethereum-1/0x01b16ea685735acabe519d682a08acade018f003/) | DataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/) | depositRootGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847`](./contracts/ethereum-1/0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847/) | DepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81be3526a71d9013a1a5bd38758e0f248231b523`](./contracts/ethereum-1/0x81be3526a71d9013a1a5bd38758e0f248231b523/) | eBtcRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b47a665364bc15c28b05f449b53354d0ceff72f`](./contracts/ethereum-1/0x1b47a665364bc15c28b05f449b53354d0ceff72f/) | EETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | EtherealPreDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4089dc8b6637218f13465d28950a82a7e90cbe27`](./contracts/ethereum-1/0x4089dc8b6637218f13465d28950a82a7e90cbe27/) | eUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | FallbackReserveFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec`](./contracts/bsc-56/0x276c0e52508d94ff2d4106b1559c8c4bc3a75dec/) | Faucet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x325ea059f11d6860e50a803ae52d49ef35c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | globalIndexLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48599ab08115cdf5731a7d8e5da1ac71d3c83459`](./contracts/ethereum-1/0x48599ab08115cdf5731a7d8e5da1ac71d3c83459/) | hypeBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x910cde06dfdcb06540744683812b8e2eb04a6f4c`](./contracts/ethereum-1/0x910cde06dfdcb06540744683812b8e2eb04a6f4c/) | HypeBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x389035180efd4ee704f6e1b6a11e8889a1bbcac4`](./contracts/ethereum-1/0x389035180efd4ee704f6e1b6a11e8889a1bbcac4/) | HypeBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab`](./contracts/ethereum-1/0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab/) | hypeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463`](./contracts/ethereum-1/0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463/) | HypeEthDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x109e2a83502edf977fb035929a51414e93f6867c`](./contracts/ethereum-1/0x109e2a83502edf977fb035929a51414e93f6867c/) | HypeEthDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e`](./contracts/ethereum-1/0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e/) | HypeUsdDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33ed485dcf400e9354173aebf6de37d8c03c6fa9`](./contracts/ethereum-1/0x33ed485dcf400e9354173aebf6de37d8c03c6fa9/) | HypeUsdRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bc73134a736437da780570308d3b37b67174ddb`](./contracts/ethereum-1/0x8bc73134a736437da780570308d3b37b67174ddb/) | InankrETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45`](./contracts/ethereum-1/0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45/) | IncbETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf`](./contracts/ethereum-1/0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf/) | InceptionBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66`](./contracts/ethereum-1/0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66/) | InceptionLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2356d46d89e056f222185ef101165e88073941bd`](./contracts/ethereum-1/0x2356d46d89e056f222185ef101165e88073941bd/) | InceptionRatioFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e2fce3efe6619ad882b159e7d897a9c03a33f0`](./contracts/ethereum-1/0x02e2fce3efe6619ad882b159e7d897a9c03a33f0/) | InceptionRestaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e`](./contracts/ethereum-1/0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e/) | InceptionTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aee5ec60fc79b669f11fe368fde789e267649e2`](./contracts/ethereum-1/0x1aee5ec60fc79b669f11fe368fde789e267649e2/) | InceptionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc`](./contracts/ethereum-1/0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc/) | InETHxRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36`](./contracts/ethereum-1/0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36/) | InlsETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa22a7a8c550760574fd7b722c9f7100902d57707`](./contracts/ethereum-1/0xa22a7a8c550760574fd7b722c9f7100902d57707/) | InmETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd600020f943f7c61a8123fe2720a05434a3b38b`](./contracts/ethereum-1/0xbd600020f943f7c61a8123fe2720a05434a3b38b/) | InoETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c`](./contracts/ethereum-1/0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c/) | InosETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6d553327b16dd6076d69c2daec91a50dd1e9f66`](./contracts/ethereum-1/0xd6d553327b16dd6076d69c2daec91a50dd1e9f66/) | InrETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63590b09bccc56667934f5e4793a1941bce69aba`](./contracts/ethereum-1/0x63590b09bccc56667934f5e4793a1941bce69aba/) | InrEthVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f86901057f392fd3a508b8abcbaafb08c13b1e`](./contracts/ethereum-1/0x07f86901057f392fd3a508b8abcbaafb08c13b1e/) | InsfrxETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc88b97cee6db90c1186497619eb43cc8160e391c`](./contracts/ethereum-1/0xc88b97cee6db90c1186497619eb43cc8160e391c/) | InslisBNBRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x343281bb5029c4b698fe736d800115ac64d5de39`](./contracts/ethereum-1/0x343281bb5029c4b698fe736d800115ac64d5de39/) | InstETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64a6c90871b774c1678ddbc48d99040b03a9b84d`](./contracts/ethereum-1/0x64a6c90871b774c1678ddbc48d99040b03a9b84d/) | InstEthVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebfa0353dff1801f5c8ea07448771d6fadd1e721`](./contracts/ethereum-1/0xebfa0353dff1801f5c8ea07448771d6fadd1e721/) | InswETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12181a5454542610f524e53650038889edc6a07f`](./contracts/ethereum-1/0x12181a5454542610f524e53650038889edc6a07f/) | IntBTCBNBRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12`](./contracts/ethereum-1/0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12/) | InVault_E1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fbf33a215861e2bfe01c90760ad5c58921def36`](./contracts/ethereum-1/0x4fbf33a215861e2bfe01c90760ad5c58921def36/) | InVault_E2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53`](./contracts/ethereum-1/0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53/) | InVault_S_E2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69c59c3dd7566eb12792203f8f832ca81a050eb1`](./contracts/ethereum-1/0x69c59c3dd7566eb12792203f8f832ca81a050eb1/) | InwbETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334b32f6298167d9efdc0f7affe447dba53e3d42`](./contracts/ethereum-1/0x334b32f6298167d9efdc0f7affe447dba53e3d42/) | JIV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x540f331ebc800b68d4972a01d57b2e1fe45d57ff`](./contracts/ethereum-1/0x540f331ebc800b68d4972a01d57b2e1fe45d57ff/) | JivCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151`](./contracts/ethereum-1/0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151/) | KarakReserveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5036017067a141726aee407dbd07949bc8bebd2b`](./contracts/berachain-80094/0x5036017067a141726aee407dbd07949bc8bebd2b/) | KodiakSwapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/) | L1LineaReceiverETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84c0359f6636302efd1332a2f8792c42f205a44f`](./contracts/ethereum-1/0x84c0359f6636302efd1332a2f8792c42f205a44f/) | LevelMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29759944834e08ace755dcea71491413f7e2cbad`](./contracts/ethereum-1/0x29759944834e08ace755dcea71491413f7e2cbad/) | LevelReserveLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70d544f75c2228d68ee04bc63e6e4bae8f31fcef`](./contracts/ethereum-1/0x70d544f75c2228d68ee04bc63e6e4bae8f31fcef/) | LevelReserveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x985de60bd3abeb7bb70b154de5669e20432f25f7`](./contracts/ethereum-1/0x985de60bd3abeb7bb70b154de5669e20432f25f7/) | LeveragedQQQon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36`](./contracts/ethereum-1/0x2163f6e5599d54c29f5064d19b9cb2ead7ab5e36/) | LeveragedQQQonCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29de44b2ac307416c3c7a6e3204034e257c05c20`](./contracts/ethereum-1/0x29de44b2ac307416c3c7a6e3204034e257c05c20/) | LeveragedQQQonDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e6fb060af7e12d6634685abfaf3b71300c29e4`](./contracts/ethereum-1/0x15e6fb060af7e12d6634685abfaf3b71300c29e4/) | LeveragedQQQonDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aad8e031877551a1a8955af456612f07b67e191`](./contracts/ethereum-1/0x7aad8e031877551a1a8955af456612f07b67e191/) | LeveragedQQQonRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02656fe285fac5d5c756c2f03c17277df9bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/) | LiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2225c97928934625e8382e6636d30f94c46b6ed3`](./contracts/ethereum-1/0x2225c97928934625e8382e6636d30f94c46b6ed3/) | Liquifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d716d4ec89060411b978e00691fac9795f2cd24`](./contracts/ethereum-1/0x1d716d4ec89060411b978e00691fac9795f2cd24/) | LoyaltyPointsMarketSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d987e04fc47ac625f720f169c658307fd9a16a2`](./contracts/ethereum-1/0x3d987e04fc47ac625f720f169c658307fd9a16a2/) | LRTSquare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x138f08a1798b7cf15adbf051bc2f11bca0ea7743`](./contracts/ethereum-1/0x138f08a1798b7cf15adbf051bc2f11bca0ea7743/) | LRTSquared | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5`](./contracts/ethereum-1/0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5/) | LRTSquaredAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb489ef513e1cc35c4657c91853a2e6ff1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/) | LRTSquaredCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c1156e515aa1a2e851674120074968c905aaf37`](./contracts/ethereum-1/0x7c1156e515aa1a2e851674120074968c905aaf37/) | lvlUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x066b5861d15261009a3bb48305770600e49745ab`](./contracts/bsc-56/0x066b5861d15261009a3bb48305770600e49745ab/) | MakerHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x562bb5014793e8d2df2b493a947fbd522d420c55`](./contracts/ethereum-1/0x562bb5014793e8d2df2b493a947fbd522d420c55/) | MApolloCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d371cc63fb8efd48aff59c5a0c064863ae4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | MApolloDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x103402aab421c668175946774020cf249df4f66c`](./contracts/base-8453/0x103402aab421c668175946774020cf249df4f66c/) | MarketViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54d4783f47889c73861152f027a1aedf75d439d0`](./contracts/ethereum-1/0x54d4783f47889c73861152f027a1aedf75d439d0/) | MBasisCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7`](./contracts/ethereum-1/0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7/) | MBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f5b02328db057c84217003ad3519c541fe887c9`](./contracts/ethereum-1/0x5f5b02328db057c84217003ad3519c541fe887c9/) | MBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39c1891875afa8faae0ea8d9d3e769c46174fb87`](./contracts/ethereum-1/0x39c1891875afa8faae0ea8d9d3e769c46174fb87/) | mEDGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0391508a7cf5cf30c233d08849813c2959c0ea2f`](./contracts/ethereum-1/0x0391508a7cf5cf30c233d08849813c2959c0ea2f/) | MEdgeCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1`](./contracts/ethereum-1/0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1/) | MEdgeDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6`](./contracts/ethereum-1/0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6/) | MEdgeDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6142ad2733c45d42ef3c625d4e33689406cc3ad5`](./contracts/ethereum-1/0x6142ad2733c45d42ef3c625d4e33689406cc3ad5/) | MEdgeRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8640574aa764763291ed733672d3a105107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | Members | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047a7749ad683c2fd8a27c7904ca8dd128f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/) | MembershipManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d981b41b713437265cd7846806d7500307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/) | MembershipNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7813671f9c083b63fcbecbc182e9a0fc7de629a4`](./contracts/ethereum-1/0x7813671f9c083b63fcbecbc182e9a0fc7de629a4/) | mevBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931403532a4a30fee41bfe79f5b2159dcd0a5b43`](./contracts/ethereum-1/0x931403532a4a30fee41bfe79f5b2159dcd0a5b43/) | MevBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3549f6936dafb87f456dca3a061bc9225ff44b3c`](./contracts/ethereum-1/0x3549f6936dafb87f456dca3a061bc9225ff44b3c/) | MevBtcDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c`](./contracts/ethereum-1/0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c/) | MevBtcRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06e7279e596af4804a0fcc78ece24059da75cf26`](./contracts/ethereum-1/0x06e7279e596af4804a0fcc78ece24059da75cf26/) | MEvUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x313c76ecd990b728681f29464978d5637cb78164`](./contracts/ethereum-1/0x313c76ecd990b728681f29464978d5637cb78164/) | MFarmDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb73d1e0aedcd5bbeca0119e88288204101411e89`](./contracts/ethereum-1/0xb73d1e0aedcd5bbeca0119e88288204101411e89/) | MFarmRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd`](./contracts/ethereum-1/0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd/) | MFOneDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d98b671af8c51f6ffa94248b90df1b11dff6c47`](./contracts/ethereum-1/0x0d98b671af8c51f6ffa94248b90df1b11dff6c47/) | MFOneRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e2352da4790e547095f06fa3ef3093881080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de`](./contracts/ethereum-1/0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de/) | MHyperBtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6e5852f89c5a94119b039b355ad7043e959393`](./contracts/ethereum-1/0x4f6e5852f89c5a94119b039b355ad7043e959393/) | MHyperBtcDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbccac5cbf0691da65e48810d316a1e5b9f895a52`](./contracts/ethereum-1/0xbccac5cbf0691da65e48810d316a1e5b9f895a52/) | MHyperBtcDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62249abe86e75717ef9705f2fdb19b39c130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | MHyperDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c68087e994d24d454ba6c96f7a3152f6a2e9850`](./contracts/ethereum-1/0x2c68087e994d24d454ba6c96f7a3152f6a2e9850/) | MHyperEthCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f4e7d11e54f34f5d02dade106a690efdbc74834`](./contracts/ethereum-1/0x2f4e7d11e54f34f5d02dade106a690efdbc74834/) | MHyperEthDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570c15bc5faf98531a8b351d69e22e41e3505e47`](./contracts/ethereum-1/0x570c15bc5faf98531a8b351d69e22e41e3505e47/) | MHyperRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | MidasLzMintBurnOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3eee3e0d2398799c884a47fc40c029c8e241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | MidasTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x344363f85a25837b154dd1c03117fef0341a0e2f`](./contracts/ethereum-1/0x344363f85a25837b154dd1c03117fef0341a0e2f/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522`](./contracts/ethereum-1/0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522/) | MLiquidityCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e14dd4f41955a1b10d4482345a1a4b06aaefac`](./contracts/ethereum-1/0x67e14dd4f41955a1b10d4482345a1a4b06aaefac/) | MLiquidityDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e5aab1aad75853ab8114264c3bf3427b0634c9e`](./contracts/ethereum-1/0x5e5aab1aad75853ab8114264c3bf3427b0634c9e/) | MLiquidityRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81`](./contracts/ethereum-1/0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81/) | MMevDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5c4dcd870c835f8943e62ab33cdadba850e5e5`](./contracts/ethereum-1/0xac5c4dcd870c835f8943e62ab33cdadba850e5e5/) | MMevDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x482d1e94a26bbaef59fc5d038c41b679120d00cb`](./contracts/ethereum-1/0x482d1e94a26bbaef59fc5d038c41b679120d00cb/) | MMevRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x636cdf65a5bb03c25c63ceb20e971f101ed060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | mPortofino | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31`](./contracts/ethereum-1/0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31/) | MPortofinoRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091f974e277a19485b9a713ac768850bc5af383b`](./contracts/ethereum-1/0x091f974e277a19485b9a713ac768850bc5af383b/) | MRe7BtcCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9953c4e85e6d249520e8ff2b134e5ded875615`](./contracts/ethereum-1/0x1d9953c4e85e6d249520e8ff2b134e5ded875615/) | MRe7BtcRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c764c938385bc439dc1596413e1557deed62d8`](./contracts/ethereum-1/0x53c764c938385bc439dc1596413e1557deed62d8/) | MRe7DepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521f6153b7c5080f550517d9b76d9c08766ccb2f`](./contracts/ethereum-1/0x521f6153b7c5080f550517d9b76d9c08766ccb2f/) | MSlDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1c52c7cd203e4f84d084a33a062c61d51762fc`](./contracts/ethereum-1/0x0d1c52c7cd203e4f84d084a33a062c61d51762fc/) | MSlRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307be9748111571739b92a5dda10191f29057a8b`](./contracts/ethereum-1/0x307be9748111571739b92a5dda10191f29057a8b/) | MSyrupUsdDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5`](./contracts/ethereum-1/0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5/) | msyrupUSDp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e2165801d84865587252155fb4580381f7a3fc4`](./contracts/ethereum-1/0x1e2165801d84865587252155fb4580381f7a3fc4/) | MSyrupUsdpCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5113bf83400d184cde30af154117e29351e1cc91`](./contracts/ethereum-1/0x5113bf83400d184cde30af154117e29351e1cc91/) | MSyrupUsdpRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c`](./contracts/ethereum-1/0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c/) | MSyrupUsdtCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca035326aa66b5db40fb6d3693772f073cd94bc`](./contracts/ethereum-1/0x5ca035326aa66b5db40fb6d3693772f073cd94bc/) | MSyrupUsdtDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1314fb72f67681e7617e59bcf92002a9311d2084`](./contracts/ethereum-1/0x1314fb72f67681e7617e59bcf92002a9311d2084/) | MSyrupUsdtRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c`](./contracts/ethereum-1/0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c/) | mTBILL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e0357e38fc7fae9c29050aef3744d4055490ada`](./contracts/ethereum-1/0x2e0357e38fc7fae9c29050aef3744d4055490ada/) | MTBillDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123ffe0a3c62878dcbee2742227dc8990058d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | MTokenMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ce2a00eb05b33b206b4057598f97ddc3028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | MTokenMessager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102874ca109a5a7e94a0385f1380cebc905fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | MTokenMessagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0be91692750982b4ba92dabc3985c548098f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | MTokenMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb350d8decc3adf68c3856d46ab42976ca7a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | MTokenMessengerLZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fd20e49239aaedb8490c07a622c129a39296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | MTokenMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19623f6af10bcd83b01c787e16219a738877851e`](./contracts/ethereum-1/0x19623f6af10bcd83b01c787e16219a738877851e/) | MWildUsdCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d8f821e72382e433f1bcf079c0365f976b2ccd0`](./contracts/ethereum-1/0x8d8f821e72382e433f1bcf079c0365f976b2ccd0/) | MWildUsdDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41`](./contracts/ethereum-1/0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41/) | MWildUsdDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8`](./contracts/ethereum-1/0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8/) | NetworkRestakeResetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07cf28d71a38c12e258922d9857ac415ae1ff579`](./contracts/ethereum-1/0x07cf28d71a38c12e258922d9857ac415ae1ff579/) | ObeatUsdLzElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa`](./contracts/arbitrum-42161/0x2e1c769a9ba8248c7c8128c2beba11331ebf98aa/) | OracleAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x014544d99d1eccea9979da7db6a5468cf2c84c73`](./contracts/bsc-56/0x014544d99d1eccea9979da7db6a5468cf2c84c73/) | OrderManagerV1Plus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44`](./contracts/ethereum-1/0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44/) | PreOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057b80bf364012326a8c06cdec4325b3d8266733`](./contracts/ethereum-1/0x057b80bf364012326a8c06cdec4325b3d8266733/) | PriceFeedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/) | PriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84283289d7e57a2f5b80dda065ac99450eb44cb6`](./contracts/ethereum-1/0x84283289d7e57a2f5b80dda065ac99450eb44cb6/) | ProtocolParamsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8749c3dc1fc0592f21c2593204c45d3be0d322`](./contracts/ethereum-1/0xaf8749c3dc1fc0592f21c2593204c45d3be0d322/) | ProtocolRevenueManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1372244cedcaf8ee1759d2f02435628f14975f`](./contracts/ethereum-1/0x2f1372244cedcaf8ee1759d2f02435628f14975f/) | RedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe123ebc5697151890dddf05943de393ceaccc7e9`](./contracts/ethereum-1/0xe123ebc5697151890dddf05943de393ceaccc7e9/) | RedemptionVaultWIthBUIDL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283cbedecb447dbe114b4268f79ba8b046e32f39`](./contracts/ethereum-1/0x283cbedecb447dbe114b4268f79ba8b046e32f39/) | RedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x489a797714708cf088d158714a376d8ff740d701`](./contracts/ethereum-1/0x489a797714708cf088d158714a376d8ff740d701/) | RedemptionVaultWithUSTB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4`](./contracts/ethereum-1/0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4/) | RegulationsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2ed5f1a9843917329c538a13d51c3c3d7249a1a`](./contracts/ethereum-1/0xf2ed5f1a9843917329c538a13d51c3c3d7249a1a/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ba087e30928886baba15b1584d4ac9abaab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | RsEthAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76c57e359c0eda0aac54d97832fb1b4451805ad8`](./contracts/ethereum-1/0x76c57e359c0eda0aac54d97832fb1b4451805ad8/) | SEthFiStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69340dc8d644829d49bdf2595b058d85b4fe1dff`](./contracts/bsc-56/0x69340dc8d644829d49bdf2595b058d85b4fe1dff/) | SimpleAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x609f20ee24e10010a62970e1dab7e2b84ed74cab`](./contracts/base-8453/0x609f20ee24e10010a62970e1dab7e2b84ed74cab/) | StableERC4626For4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b38383cdd15fe924933b0a0f8fcd1befa56d14a`](./contracts/ethereum-1/0x0b38383cdd15fe924933b0a0f8fcd1befa56d14a/) | StableERC4626ForCustomize | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x437e7b75c0a8733562219e25c55b0e2c01a1dacd`](./contracts/bsc-56/0x437e7b75c0a8733562219e25c55b0e2c01a1dacd/) | StableERC4626ForVenus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4737d9b4592b40d51e110b94c9c043c6654067ae`](./contracts/ethereum-1/0x4737d9b4592b40d51e110b94c9c043c6654067ae/) | StakedlvlUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce2326260c168525a3e905391e8bfee00ebd0cea`](./contracts/ethereum-1/0xce2326260c168525a3e905391e8bfee00ebd0cea/) | StakedUSDeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d39a5de30e57443bff2a8307a4256c8797a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | StakedUSDeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/) | StakingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948`](./contracts/ethereum-1/0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948/) | STBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eb8f11ec17c160b0d51586b0e420faff07b6f47`](./contracts/ethereum-1/0x0eb8f11ec17c160b0d51586b0e420faff07b6f47/) | StbtTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f0868fd7b0844e374277ebc9a3e4979465a37aa`](./contracts/ethereum-1/0x3f0868fd7b0844e374277ebc9a3e4979465a37aa/) | STBTv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x747cac75776b3a0bba3de3e61ec12a6a7f52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | Swapper1InchV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad298d3ec4af69af52701a539d3bd14873ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/) | SyrupAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa869cbc273daae91d6109ee5bb958ac6b7198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | SyrupUSDCAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570f37365fffff0a3884892b7363c0a8615bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | TACmBtcDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6808e4d8add893d0227690f435e1ff734d9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | TACmBtcRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c`](./contracts/ethereum-1/0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c/) | TACmEDGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8`](./contracts/ethereum-1/0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8/) | TACmEdgeRedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3147d11c88f5008db19cb5dd945ae682910202`](./contracts/ethereum-1/0x1d3147d11c88f5008db19cb5dd945ae682910202/) | TACmMEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eed111a10c25a739b0d72bd2383f958b9fde211`](./contracts/ethereum-1/0x4eed111a10c25a739b0d72bd2383f958b9fde211/) | tBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05e7774d0788671c0065415ec2efddda5847eba1`](./contracts/ethereum-1/0x05e7774d0788671c0065415ec2efddda5847eba1/) | TermMax4626Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x349e28fb4c0c3577151dfb874eefa66e8ae885b7`](./contracts/berachain-80094/0x349e28fb4c0c3577151dfb874eefa66e8ae885b7/) | TermMaxBeefySharePriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03301cfce4a91533103c7dfb1fe323f4437a031c`](./contracts/ethereum-1/0x03301cfce4a91533103c7dfb1fe323f4437a031c/) | TermMaxOndoPriceFeedAdapterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb2c53eff70ebe5ef1940b1e942ccce2a5613e394`](./contracts/arbitrum-42161/0xb2c53eff70ebe5ef1940b1e942ccce2a5613e394/) | TermMaxRewardContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04b945a67b799e87034b5f6ad4dedb57d08ef588`](./contracts/arbitrum-42161/0x04b945a67b799e87034b5f6ad4dedb57d08ef588/) | TermMaxRouter_Repay_Gt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1159bfc5fd9ffcbf7bd00db6fd067f809069eb8f`](./contracts/ethereum-1/0x1159bfc5fd9ffcbf7bd00db6fd067f809069eb8f/) | TermMaxRouter_V1_1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38832fdaf37a4cfb54d5fc46b9058f6a33e7f8f5`](./contracts/bsc-56/0x38832fdaf37a4cfb54d5fc46b9058f6a33e7f8f5/) | TermMaxRouter_V1_1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7112702927a99a43f1287916746b222a1f66dd8`](./contracts/ethereum-1/0xf7112702927a99a43f1287916746b222a1f66dd8/) | TermMaxUSPCPriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a9ecffdbdc595907f65640f810d3ddddde2fa61`](./contracts/ethereum-1/0x3a9ecffdbdc595907f65640f810d3ddddde2fa61/) | TermMaxVaultFactoryV1Plus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9d0956621bf85d1d4cafc92d76a0448a5e6b9b`](./contracts/ethereum-1/0x1d9d0956621bf85d1d4cafc92d76a0448a5e6b9b/) | TermMaxVaultV1Plus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x012bfcbac9edea04dff07cc61269e321f4595dff`](./contracts/arbitrum-42161/0x012bfcbac9edea04dff07cc61269e321f4595dff/) | TermMaxViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bba8a86f2f9d237bfe5df074478f19110adc6a0`](./contracts/ethereum-1/0x9bba8a86f2f9d237bfe5df074478f19110adc6a0/) | TermMaxWeETHPriceCapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71fcb23b5b68410637436347ca4fc97b7bd66bca`](./contracts/ethereum-1/0x71fcb23b5b68410637436347ca4fc97b7bd66bca/) | TermMaxXauePricefeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2022be364c2c0b46bb693d154bfb8eb5476a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | TERPOC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72cca9794018c10ce47af3fc8d47e167d0761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/) | tETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42e82b2ee52cdc922cfed82bfcef90ada31215b5`](./contracts/ethereum-1/0x42e82b2ee52cdc922cfed82bfcef90ada31215b5/) | TEthCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46eab5259e1a2f18cbbfeeaa093130a456d09e78`](./contracts/ethereum-1/0x46eab5259e1a2f18cbbfeeaa093130a456d09e78/) | TEthDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32652ab236f32482f5018b027c8b54c13750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | TEthRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/) | TNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc`](./contracts/ethereum-1/0x0d7598ce7cd1fa07c2a26c49876f850b0ad66bbc/) | TokenFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f0c371f808996187729ed1bee13ace2e901d526`](./contracts/ethereum-1/0x6f0c371f808996187729ed1bee13ace2e901d526/) | TUsdeCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507f409ba7e5ef489d5c0e3c4568b24985a029d0`](./contracts/ethereum-1/0x507f409ba7e5ef489d5c0e3c4568b24985a029d0/) | TUsdeDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603`](./contracts/ethereum-1/0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603/) | TUsdeRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a67bf4815b4f28e879fd09671ef74ebd60528f`](./contracts/ethereum-1/0x32a67bf4815b4f28e879fd09671ef74ebd60528f/) | UpgradeableSTBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | USDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7a4c3797236a1c37f8741c0be35c2c72736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x200057a0a4a97149b0924c5dbba868f283d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ecd155405ca52a5ca0e552981ff44a8252fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c4ab30743759ec142f7495b7e935e213cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57aaf0004c716388b21795431cd7d5f9d3bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857b4faa11b143f69f091d1c4ded5480a8d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0ff8996db4bdb46870b7e833b7532f484fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5edf7730abad812247f6f54d7bd31a52554e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2c5d576681d625ea9b6e9ee5d6a9159147328292`](./contracts/berachain-80094/0x2c5d576681d625ea9b6e9ee5d6a9159147328292/) | WhitelistManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ed97c79ded8894036da095b2e2f79f8080a9cd4`](./contracts/ethereum-1/0x3ed97c79ded8894036da095b2e2f79f8080a9cd4/) | WithdrawRequestNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5fafb87318c0deaebff096aba019501fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78c6b27be6db520d332b1b44323f94bc831f5e33`](./contracts/ethereum-1/0x78c6b27be6db520d332b1b44323f94bc831f5e33/) | WrappedRebasingERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288a8005c53632d920045b7c7c2e54a3f1bc4c83`](./contracts/ethereum-1/0x288a8005c53632d920045b7c7c2e54a3f1bc4c83/) | WSTBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7581ebe7870a220360d216c3404ff7cb79b2a0f`](./contracts/ethereum-1/0xa7581ebe7870a220360d216c3404ff7cb79b2a0f/) | wstETH_Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa74f994672f232a30067da820f0e54881edbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | WstEthAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82b09f8b6096039aa0d62a5cee8dff7f95791c04`](./contracts/ethereum-1/0x82b09f8b6096039aa0d62a5cee8dff7f95791c04/) | wUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x425bbf58df398d13677aa56fcd5daca02b2f2180`](./contracts/ethereum-1/0x425bbf58df398d13677aa56fcd5daca02b2f2180/) | XERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c858892decbf31460603f4bfc4620c328047f37`](./contracts/ethereum-1/0x4c858892decbf31460603f4bfc4620c328047f37/) | XERC20Lockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a`](./contracts/ethereum-1/0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a/) | ZeroGBtcvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac79fed395c2238c4fa13084ee440e19e4deb0fe`](./contracts/ethereum-1/0xac79fed395c2238c4fa13084ee440e19e4deb0fe/) | ZeroGEthvDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01feb0bba21552385de157174f32d97bc0e6afcc`](./contracts/ethereum-1/0x01feb0bba21552385de157174f32d97bc0e6afcc/) | ZeroGEthvDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x364fb05060e7562b0c6379b5bd3371c412e049aa`](./contracts/ethereum-1/0x364fb05060e7562b0c6379b5bd3371c412e049aa/) | ZeroGEthvRedemptionVaultWithSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347`](./contracts/ethereum-1/0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347/) | zeroGUSDV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf94465f8db8a273673dfe950bd1c9e34442aab`](./contracts/ethereum-1/0x8cf94465f8db8a273673dfe950bd1c9e34442aab/) | ZeroGUsdvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091074f37e8c72ddb8720afae77c44a855080e8a`](./contracts/ethereum-1/0x091074f37e8c72ddb8720afae77c44a855080e8a/) | ZeroGUsdvDataFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 311 |
| upstream | 4 |
| standard_library | 114 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=67

Zero-match audit list:

- [18369] ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf
- [18373] HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf
- [18378] TermMax-ABDK-audit-report-TMX-v-1-0.pdf
- [18380] Audit Reports
- [18382] DeFiSafety

Fork inheritance lineage and inherited audits are included when available.
