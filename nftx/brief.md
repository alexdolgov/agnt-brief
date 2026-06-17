# Agentic Audit Brief: NFTX

⚠️ Lifecycle status: DECLINING - TVL dropped 25.5% over 90 days

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:43.595Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 51 unique implementations (73 raw deployments)
- DeFi Llama TVL: $1,239,151.27
- On-chain TVL (included contracts): $6,135,264.77
- TVL by chain: Ethereum $6,135,264.77

## Project Description

NFTX is a protocol that creates liquid ERC-20 tokens (vault tokens) backed by NFT collections, enabling users to fractionalize, trade, and provide liquidity for NFTs. It also offers staking mechanisms for these vault tokens to earn fees and rewards.

### Architecture

Vaults mint ERC-20 tokens that are used across staking and marketplace families; staking contracts distribute fees collected from vault and marketplace activity. Governance contracts control upgrades and parameters for vault factories, staking, and fee distributors, while marketplace zaps integrate with external DEX infrastructure (0x, Uniswap V3) to provide liquidity and swaps for vault tokens.

## Contract Surface Quality

- Indexed contracts: 431; live-surface contracts included: 73 (71 live, 2 unknown).
- Excluded by liveness: 292 inactive, 66 singleton, 0 uninitialized.
- Deployment units: 5/44 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 9/120.

## Audit Coverage Summary

- Verified implementations audited: 6/50 (12.0%)
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 51
- Raw deployments: 73
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $6,135,264.77
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 1 unknown
- Tier 1 coverage: 10.0% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $6,135,264.77 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 5 | 10.0% | 2022-12 |
| unknown | Tier 2 | 1 | 2.0% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NFTXMarketplaceZap | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0fc584...c0c22d`](./contracts/ethereum-1/0x0fc584529a2aefa997697fafacba5831fac0c22d/); arbitrum `0x66f26e...8001b7` | ✅ Audited |
| NFTXStakingZap | adapter | ethereum | n/a | [`0xdc774d...11345c`](./contracts/ethereum-1/0xdc774d5260ec66e5dd4627e1dd800eff3911345c/) | ✅ Audited |
| NFTXVaultUpgradeable | core_logic | ethereum | n/a | [`0x36b799...7d321c`](./contracts/ethereum-1/0x36b799160cdc2d9809d108224d1967cc9b7d321c/) | ✅ Audited |
| TimelockRewardDistributionTokenImpl | governance | ethereum | n/a | [`0xfda2d4...a55ec0`](./contracts/ethereum-1/0xfda2d4ea96ae4c6c21b34ec4e607576163a55ec0/) | ✅ Audited |
| XStore | unknown | ethereum | n/a | [`0xbe5473...92e7b7`](./contracts/ethereum-1/0xbe54738723cea167a76ad5421b50caa49692e7b7/) | ✅ Audited |
| XTokenUpgradeable | token | ethereum | unit-26724 | [`0x08765c...dd76fb`](./contracts/ethereum-1/0x08765c76c758da951dc73d3a8863b34752dd76fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0x87d73e...47f776`](./contracts/ethereum-1/0x87d73e916d7057945c9bcd8cdd94e42a6f47f776/) | ⚠️ Unaudited |
| XToken | token | ethereum | n/a | 13 deployments: ethereum [`0x0fe629...a48a3f`](./contracts/ethereum-1/0x0fe629d1e84e171f8ff0c1ded2cc2221caa48a3f/); ethereum `0x1aa177...1df428`; ethereum `0x49706a...2ded4d`; ethereum `0x4acc9c...333f58`; ethereum `0x59a82f...fe1769`; ethereum `0x69bbe2...786385`; ethereum `0x8712a5...cdf7b6`; ethereum `0x9cea2e...a61ea5`; ethereum `0xab9c92...4403c8`; ethereum `0xaba49d...70536e`; ethereum `0xb5a093...1ae32d`; ethereum `0xc4bf60...354849`; ethereum `0xf18ade...4a3a74` | ⚠️ Unaudited |
| TransformERC20Feature | token | ethereum | unit-26746 | [`0xdef1c0...b25eff`](./contracts/ethereum-1/0xdef1c0ded9bec7f1a1670819833240f027b25eff/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | unit-26725 (5 proxies) | 5 deployments: ethereum [`0x1ba12a...435357`](./contracts/ethereum-1/0x1ba12ae1fcfadd08fa37db849ef4b6e11e435357/); ethereum `0x4333b4...fc4671`; ethereum `0x59304d...e134ca`; ethereum `0xd55c20...024232`; ethereum `0xf13206...581c6a` | ⚠️ Unaudited |
| NFTStaker | core_logic | ethereum | n/a | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-26760 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Autoglyphs | unknown | ethereum | n/a | [`0xd4e407...197782`](./contracts/ethereum-1/0xd4e4078ca3495de5b1d4db434bebc5a986197782/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | n/a | [`0x03b1a9...e0af59`](./contracts/ethereum-1/0x03b1a9e8bc6cbe4beaeeac277a042a584fe0af59/) | ⚠️ Unaudited |
| Blockmon | unknown | ethereum | n/a | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | ⚠️ Unaudited |
| Create2BeaconProxy | registry | ethereum | n/a | [`0x013cf7...7f9635`](./contracts/ethereum-1/0x013cf78239144abcf06bbd56d3d190c65d7f9635/) | ⚠️ Unaudited |
| CryptoPunks | unknown | ethereum | n/a | [`0x6ba6f2...66db8d`](./contracts/ethereum-1/0x6ba6f2207e343923ba692e5cae646fb0f566db8d/) | ⚠️ Unaudited |
| CryptopunksData | unknown | ethereum | n/a | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | n/a | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| KittyCore | unknown | ethereum | n/a | [`0x06012c...7a266d`](./contracts/ethereum-1/0x06012c8cf97bead5deae237070f9587f8e7a266d/) | ⚠️ Unaudited |
| LSSVMPairFactory | registry | ethereum | n/a | [`0xb16c13...89c0a4`](./contracts/ethereum-1/0xb16c1342e617a5b6e4b631eb114483fdb289c0a4/) | ⚠️ Unaudited |
| LSSVMRouter | adapter | ethereum | n/a | [`0x2b2e8c...d68329`](./contracts/ethereum-1/0x2b2e8cda09bba9660dca5cb6233787738ad68329/) | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | ethereum | n/a | 2 deployments: ethereum [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/); arbitrum `0xf56296...b9ca40` | ⚠️ Unaudited |
| Meebits | unknown | ethereum | n/a | [`0x7bd294...716bc7`](./contracts/ethereum-1/0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7/) | ⚠️ Unaudited |
| MineablePunks | unknown | ethereum | n/a | [`0x595a89...bda687`](./contracts/ethereum-1/0x595a8974c1473717c4b5d456350cd594d9bda687/) | ⚠️ Unaudited |
| MonMinter | unknown | ethereum | n/a | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | ⚠️ Unaudited |
| MonStaker2 | core_logic | ethereum | n/a | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | ⚠️ Unaudited |
| Multisender | unknown | ethereum | n/a | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | ⚠️ Unaudited |
| Nftnft | token | ethereum | n/a | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | token | ethereum | n/a | [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/) | ⚠️ Unaudited |
| NFTXMarketplace0xZap | adapter | ethereum | n/a | [`0xbbc530...c14371`](./contracts/ethereum-1/0xbbc53022af15bb973ad906577c84784c47c14371/) | ⚠️ Unaudited |
| NFTXRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/); ethereum `0x70a741...ebe42a`; arbitrum `0x527317...a3ef4d` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | adapter | ethereum | n/a | [`0x2374a3...4868d3`](./contracts/ethereum-1/0x2374a32ab7b4f7be058a69ea99cb214bff4868d3/) | ⚠️ Unaudited |
| NFTXv12Migration | operational_periphery | ethereum | n/a | [`0xed2431...8dab98`](./contracts/ethereum-1/0xed24316f06d67b0933c9c2a961a568ce7e8dab98/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/); arbitrum `0x8ad238...5466ea` | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/); arbitrum [`0x000000...c78ba3`](./contracts/arbitrum-42161/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0xbab852...1b8be8`](./contracts/arbitrum-42161/0xbab85293cf2a6702dc81943a9d9bfaf02e1b8be8/) | ⚠️ Unaudited |
| PunkToken | token | ethereum | n/a | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | ⚠️ Unaudited |
| S3KS | unknown | ethereum | n/a | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | ⚠️ Unaudited |
| SaleClockAuction | unknown | ethereum | n/a | [`0xb1690c...b57d8c`](./contracts/ethereum-1/0xb1690c08e213a35ed9bab7b318de14420fb57d8c/) | ⚠️ Unaudited |
| Salt | unknown | ethereum | n/a | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | ⚠️ Unaudited |
| SiringClockAuction | unknown | ethereum | n/a | [`0xc7af99...f27f26`](./contracts/ethereum-1/0xc7af99fe5513eb6710e6d5f44f9989da40f27f26/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-26753 | [`0x33b381...5b6702`](./contracts/arbitrum-42161/0x33b381e2e0c4adc1dbd388888e9a29079e5b6702/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0463a0...99d332`](./contracts/ethereum-1/0x0463a06fbc8bf28b3f120cd1bfc59483f099d332/) | ⚠️ Unaudited |
| UniversalRouter | adapter | ethereum | n/a | [`0x250d62...0cc90f`](./contracts/ethereum-1/0x250d62a67254a46c0de472d2c9215e1d890cc90f/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| XBounties | unknown | ethereum | n/a | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | ⚠️ Unaudited |
| XMON | unknown | ethereum | n/a | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | ⚠️ Unaudited |
| XXMON | unknown | ethereum | n/a | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x83b28b...f71a05` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NFTX-final.pdf](https://github.com/NFTX-project/audit-level-k/blob/master/NFTX-final.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 1 | high |
| [Code Arena competition 1](https://code4rena.com/reports/2021-05-nftx) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Code Arena competition 2](https://code4rena.com/reports/2021-12-nftx) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | 6 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2FxxMQXacJ9gspSb09eUCz%2FToB_Audit.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2Ff5r6lXZIs4rTMBTrt0eH%2FNFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf) | Code4rena | Contest | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0fe629...a48a3f`](./contracts/ethereum-1/0x0fe629d1e84e171f8ff0c1ded2cc2221caa48a3f/) | XToken | token | $375,864.65 | Verified native implementation with $375,864.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | NFTStaker | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | Blockmon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | CryptopunksData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/) | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x595a89...bda687`](./contracts/ethereum-1/0x595a8974c1473717c4b5d456350cd594d9bda687/) | MineablePunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | MonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | MonStaker2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | Multisender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | Nftnft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/) | NFTXInventoryStakingV3Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbc530...c14371`](./contracts/ethereum-1/0xbbc53022af15bb973ad906577c84784c47c14371/) | NFTXMarketplace0xZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/) | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2374a3...4868d3`](./contracts/ethereum-1/0x2374a32ab7b4f7be058a69ea99cb214bff4868d3/) | NFTXUnstakingInventoryZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2431...8dab98`](./contracts/ethereum-1/0xed24316f06d67b0933c9c2a961a568ce7e8dab98/) | NFTXv12Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | PunkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | S3KS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | Salt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | XMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | XXMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 11 |
| standard_library | 7 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=186

Zero-match audit list:

- [3025] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf
- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf

Fork inheritance lineage and inherited audits are included when available.
