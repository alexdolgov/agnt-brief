# Agentic Audit Brief: NFTX

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.751Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, ethereum
- Contract surface: 158 unique implementations (310 raw deployments)
- DeFi Llama TVL: $1,165,703.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 163 project-authored contract(s) across 2 chain(s); 13 ERC20 tokens, 19 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 51 common project-authored base contract(s) (proxy, erc721burnable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 394; live-surface contracts included: 307 (258 live, 49 unknown).
- Excluded by liveness: 87 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 36/102 (35.3%)
- Deployed-live implementations: 109 of 158 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 36/109
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 158
- Raw deployments: 310
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 32 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 34.3% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 31 | 28.4% | 2022-04 |
| Code4rena | Tier 1 | 6 | 5.5% | 2022-12 |
| unknown | Tier 2 | 1 | 0.9% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NFTXEligibilityManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4086e9...ed94d5`](./contracts/ethereum-1/0x4086e98cce041d286112d021612fd894cfed94d5/); ethereum `0x74520b...d96674` | ✅ Audited |
| NFTXEligibilityManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0b8ee2...b65fb1`](./contracts/arbitrum-42161/0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1/); arbitrum `0x2c556f...29d493` | ✅ Audited |
| NFTXEligibilityManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1a0f3d...7f35a2`](./contracts/arbitrum-42161/0x1a0f3d0e40e9c211bd2d215e709b6fd2c17f35a2/); arbitrum `0xc88f4c...3a211e` | ✅ Audited |
| NFTXEligibilityManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6dcdfd...c2ad16`](./contracts/arbitrum-42161/0x6dcdfd7e94957cbae9023c232de18c0f72c2ad16/); arbitrum `0x8d03b9...11f9b7` | ✅ Audited |
| NFTXInventoryStaking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x11e3f6...119f43`](./contracts/ethereum-1/0x11e3f6c1c5b751f2bf2cabc7d48e6a5af9119f43/); ethereum `0x3e9f47...05bd74`; ethereum `0x72012a...ed6b66`; arbitrum `0x1678c8...af4434`; arbitrum `0x3f8fdf...b8b742` | ✅ Audited |
| NFTXInventoryStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e135c...fab893`](./contracts/ethereum-1/0x3e135c3e981fae3383a5ae0d323860a34cfab893/); ethereum `0xccb1cf...485880` | ✅ Audited |
| NFTXInventoryStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x608f0d...9d5798`](./contracts/ethereum-1/0x608f0d84657bb876ddedd8d8d5ab9d12639d5798/); ethereum `0xde74a8...961cb7` | ✅ Audited |
| NFTXInventoryStaking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1a2c03...8c4cc6`](./contracts/arbitrum-42161/0x1a2c03abd4af7c87d8b4d5ad39b56fa98e8c4cc6/); arbitrum `0x6fc85d...63c6a8` | ✅ Audited |
| NFTXInventoryStaking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64029e...e5d557`](./contracts/arbitrum-42161/0x64029e2da85b1d53815d111fed15609034e5d557/); arbitrum `0xd9a609...c5d857` | ✅ Audited |
| NFTXLPStaking | unknown | ethereum | n/a | 15 deployments: ethereum [`0x0e3ab4...94ff3b`](./contracts/ethereum-1/0x0e3ab439db6504df11d19a2bc9107bdd6994ff3b/); ethereum `0x156911...dead37`; ethereum `0x4f566a...46188e`; ethereum `0x64651f...9cc86c`; ethereum `0x703845...dd7649`; ethereum `0x8dceab...c3753b`; ethereum `0x95eadd...3df8be`; ethereum `0xa64c2f...04bf68`; ethereum `0xb9a6b3...7b22b7`; ethereum `0xbde654...f24da9`; ethereum `0xd9a609...c5d857`; ethereum `0xdde5a3...1976d6`; ethereum `0xf7a232...0b0687`; arbitrum `0x57c8aa...a59cd6`; arbitrum `0x7827bc...ecabd7` | ✅ Audited |
| NFTXLPStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e49a0...85029a`](./contracts/ethereum-1/0x0e49a0fa1ae7b7a16fa66a5d5a7057e96285029a/); ethereum `0x688c3e...538e37` | ✅ Audited |
| NFTXLPStaking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5326a7...df3934`](./contracts/arbitrum-42161/0x5326a720f76cfbdfe9e18fa618c3a3f7abdf3934/); arbitrum `0x5b3004...9fa41d` | ✅ Audited |
| NFTXMarketplace0xZap | unknown | ethereum | n/a | 4 deployments: ethereum [`0x27eb56...ec3c22`](./contracts/ethereum-1/0x27eb56bce836f1068e12157d57c5083781ec3c22/); ethereum `0x941a6d...cd481c`; ethereum `0xbbc530...c14371`; arbitrum `0x3bd751...8a2904` | ✅ Audited |
| NFTXMarketplaceZap | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0fc584...c0c22d`](./contracts/ethereum-1/0x0fc584529a2aefa997697fafacba5831fac0c22d/); arbitrum `0x66f26e...8001b7` | ✅ Audited |
| NFTXRangeEligibility | unknown | arbitrum | n/a | [`0xafa950...f6c686`](./contracts/arbitrum-42161/0xafa950c8b1699e36488626a79934932951f6c686/) | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06c36f...79d8e1`](./contracts/ethereum-1/0x06c36fb81ee037139b1b44406ef70e565e79d8e1/); ethereum `0x309577...af562d` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ef372...2d1680`](./contracts/ethereum-1/0x0ef372b6a2f8bb030760261b858b6c50e92d1680/); ethereum `0xfd8a76...ae4a86` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d74b7...4915c6`](./contracts/arbitrum-42161/0x0d74b761eab5cc7cc0e4e625a2e2b8251a4915c6/); arbitrum `0x4939f5...dd2765` | ✅ Audited |
| NFTXSimpleFeeDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68a7f4...d3f78e`](./contracts/arbitrum-42161/0x68a7f493f6c40556931559afd22d7ed868d3f78e/); arbitrum `0xc6d7e3...5d14ee` | ✅ Audited |
| NFTXStakingZap | adapter | ethereum | n/a | [`0xdc774d...11345c`](./contracts/ethereum-1/0xdc774d5260ec66e5dd4627e1dd800eff3911345c/) | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | ethereum | n/a | 7 deployments: ethereum [`0x367b2c...a46207`](./contracts/ethereum-1/0x367b2c045e15c3e653b55e08f18c1ee851a46207/); ethereum `0x612447...017812`; ethereum `0x6a911d...cb0dab`; ethereum `0x7f899e...00f16d`; ethereum `0xb0652e...9705ba`; arbitrum `0x786bd8...e75a99`; arbitrum `0x86157f...e060e9` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x668fa5...5a33c1`](./contracts/ethereum-1/0x668fa5d6d156faaccacb95371adbae376c5a33c1/); ethereum `0xe2858f...e5b46a` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | ethereum | n/a | [`0xbe86f6...558216`](./contracts/ethereum-1/0xbe86f647b167567525ccaafcd6f881f1ee558216/) | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | ethereum | n/a | [`0xfa7504...4b7062`](./contracts/ethereum-1/0xfa750439a60e385d9e5f3d25eb9db289b74b7062/) | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x91c0f0...e1f48c`](./contracts/arbitrum-42161/0x91c0f0cda1fc1d855b548649093e195bc2e1f48c/); arbitrum `0xe77b89...fbb33c` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcb6230...2b4b08`](./contracts/arbitrum-42161/0xcb62303a5ecc5f9c5cf7b5aa967a25d9bb2b4b08/); arbitrum `0xe01cf5...98afae` | ✅ Audited |
| NFTXVaultUpgradeable | unknown | ethereum | n/a | 24 deployments: ethereum [`0x0fa0fd...d279ed`](./contracts/ethereum-1/0x0fa0fd98727c443dd5275774c44d27cff9d279ed/); ethereum `0x20ea6c...4db6a3`; ethereum `0x2c556f...29d493`; ethereum `0x2d7db0...bb198e`; ethereum `0x36b799...7d321c`; ethereum `0x46c64e...463d12`; ethereum `0x4d6d11...8d3172`; ethereum `0x73d2ff...f6b52a`; ethereum `0x881ca9...0f6c14`; ethereum `0x8b0c35...30cd26`; ethereum `0xb13907...c31545`; ethereum `0xb14b8f...559d2e`; ethereum `0xcb6230...2b4b08`; ethereum `0xe0fbc3...3700b9`; ethereum `0xe8b682...d97bd1`; ethereum `0xf69d08...e8fa80`; ethereum `0xfd5fb4...646ee2`; ethereum `0xfe8e4f...0ace82`; arbitrum `0xb14b8f...559d2e`; arbitrum `0xca523f...a65baa`; arbitrum `0xd4031c...034338`; arbitrum `0xe7a3ee...a4f7ed`; arbitrum `0xf09bcf...6316b7`; arbitrum `0xfde612...b05342` | ✅ Audited |
| ProxyController | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4333d6...0437df`](./contracts/ethereum-1/0x4333d66ec59762d1626ec102d7700e64610437df/); ethereum `0x947c0b...8741c2`; ethereum `0xae9f6b...ffde7d`; ethereum `0xb359ee...fd98cc` | ✅ Audited |
| StakingTokenProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fad0e...b1a5c7`](./contracts/ethereum-1/0x5fad0e4cc9925365b9b0bbec9e0c3536c0b1a5c7/); ethereum `0xacc36b...62f5a2` | ✅ Audited |
| StakingTokenProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x930ebe...4c9041`](./contracts/ethereum-1/0x930ebedde65a95144dd169cb3a9c15b4614c9041/); ethereum `0xea478e...5ba71d` | ✅ Audited |
| StakingTokenProvider | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d7775...05dd8e`](./contracts/arbitrum-42161/0x2d77756c139ed3c25472daf233f332e8f605dd8e/); arbitrum `0x31cb83...a02aed` | ✅ Audited |
| StakingTokenProvider | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5ee78a...2a9543`](./contracts/arbitrum-42161/0x5ee78a5a46c4c90caa5898f5fbb14360bb2a9543/); arbitrum `0x92b80f...5830d5` | ✅ Audited |
| StakingTokenProvider | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe5ab39...4b0b7a`](./contracts/arbitrum-42161/0xe5ab394e284d095adacff8a0fb486cb5a24b0b7a/); arbitrum `0xfb3c37...3b842a` | ✅ Audited |
| TimelockRewardDistributionTokenImpl | governance | ethereum | n/a | [`0xfda2d4...a55ec0`](./contracts/ethereum-1/0xfda2d4ea96ae4c6c21b34ec4e607576163a55ec0/) | ✅ Audited |
| XStore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x92abef...036198`](./contracts/ethereum-1/0x92abef50275abfb37bbf266c917b378d33036198/); ethereum `0xbe5473...92e7b7` | ✅ Audited |
| XTokenUpgradeable | token | ethereum | n/a | [`0x08765c...dd76fb`](./contracts/ethereum-1/0x08765c76c758da951dc73d3a8863b34752dd76fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Autoglyphs | unknown | ethereum | n/a | [`0xd4e407...197782`](./contracts/ethereum-1/0xd4e4078ca3495de5b1d4db434bebc5a986197782/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | n/a | [`0x03b1a9...e0af59`](./contracts/ethereum-1/0x03b1a9e8bc6cbe4beaeeac277a042a584fe0af59/) | ⚠️ Unaudited |
| Blockmon | unknown | ethereum | n/a | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | n/a | 5 deployments: ethereum [`0x1ba12a...435357`](./contracts/ethereum-1/0x1ba12ae1fcfadd08fa37db849ef4b6e11e435357/); ethereum `0x4333b4...fc4671`; ethereum `0x59304d...e134ca`; ethereum `0xd55c20...024232`; ethereum `0xf13206...581c6a` | ⚠️ Unaudited |
| Create2BeaconProxy | registry | ethereum | n/a | [`0x013cf7...7f9635`](./contracts/ethereum-1/0x013cf78239144abcf06bbd56d3d190c65d7f9635/) | ⚠️ Unaudited |
| CreateVaultZap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x510c9f...587a0d`](./contracts/ethereum-1/0x510c9fb7d1ab8b0338b7434872f0d22633587a0d/); ethereum `0x56dab3...8e6f74`; arbitrum `0xf9e891...38946f` | ⚠️ Unaudited |
| CryptoPunks | unknown | ethereum | n/a | [`0x6ba6f2...66db8d`](./contracts/ethereum-1/0x6ba6f2207e343923ba692e5cae646fb0f566db8d/) | ⚠️ Unaudited |
| CryptopunksData | unknown | ethereum | n/a | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | n/a | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| InventoryStakingDescriptor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39d9a9...e9f8bb`](./contracts/ethereum-1/0x39d9a925d7fca17e430b731882b97e2d10e9f8bb/); arbitrum `0x7bd0ff...2bd732` | ⚠️ Unaudited |
| KittyCore | unknown | ethereum | n/a | [`0x06012c...7a266d`](./contracts/ethereum-1/0x06012c8cf97bead5deae237070f9587f8e7a266d/) | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | unknown | ethereum | n/a | [`0xd42638...5541eb`](./contracts/ethereum-1/0xd42638863462d2f21bb7d4275d7637ee5d5541eb/) | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | ethereum | n/a | [`0x08ce97...b3ef05`](./contracts/ethereum-1/0x08ce97807a81896e85841d74fb7e7b065ab3ef05/) | ⚠️ Unaudited |
| LSSVMPairFactory | registry | ethereum | n/a | [`0xb16c13...89c0a4`](./contracts/ethereum-1/0xb16c1342e617a5b6e4b631eb114483fdb289c0a4/) | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | unknown | ethereum | n/a | [`0x92de3a...755b22`](./contracts/ethereum-1/0x92de3a1511ef22abcf3526c302159882a4755b22/) | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | ethereum | n/a | [`0xcd80c9...436d56`](./contracts/ethereum-1/0xcd80c916b1194beb48abf007d0b79a7238436d56/) | ⚠️ Unaudited |
| LSSVMRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2b2e8c...d68329`](./contracts/ethereum-1/0x2b2e8cda09bba9660dca5cb6233787738ad68329/); ethereum `0xe5763f...fb50a4` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | ethereum | n/a | 2 deployments: ethereum [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/); arbitrum `0xf56296...b9ca40` | ⚠️ Unaudited |
| Meebits | unknown | ethereum | n/a | [`0x7bd294...716bc7`](./contracts/ethereum-1/0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7/) | ⚠️ Unaudited |
| MigratorZap | unknown | ethereum | n/a | 4 deployments: ethereum [`0x089610...e98cec`](./contracts/ethereum-1/0x089610fb04c34c014b4b391f4ecefaef94e98cec/); ethereum `0x946eca...6b3f51`; ethereum `0xd0999d...9b9fe3`; arbitrum `0x6e1537...d2cabd` | ⚠️ Unaudited |
| MineablePunks | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b5a69...e22a06`](./contracts/ethereum-1/0x3b5a6917e1c9cf9aa12975de71a2136dade22a06/); ethereum `0x595a89...bda687` | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0x87d73e...47f776`](./contracts/ethereum-1/0x87d73e916d7057945c9bcd8cdd94e42a6f47f776/) | ⚠️ Unaudited |
| MonMinter | unknown | ethereum | n/a | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | ⚠️ Unaudited |
| MonStaker2 | core_logic | ethereum | n/a | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | ⚠️ Unaudited |
| MultiRouter | unknown | ethereum | n/a | [`0x306262...dfb6c8`](./contracts/ethereum-1/0x3062627136de797f807bcb63f0d5399a21dfb6c8/) | ⚠️ Unaudited |
| Multisender | unknown | ethereum | n/a | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | ⚠️ Unaudited |
| Nftnft | token | ethereum | n/a | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | ⚠️ Unaudited |
| NFTStaker | core_logic | ethereum | n/a | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | ⚠️ Unaudited |
| NFTX | unknown | ethereum | n/a | [`0x3a2f04...afe868`](./contracts/ethereum-1/0x3a2f04faa1d39acb088bece5c2d6b00e81afe868/) | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | unknown | arbitrum | n/a | 3 deployments: ethereum `0x6845ff...7406e7`; ethereum `0xf4d96c...9e21fe`; arbitrum [`0x0d5097...7de886`](./contracts/arbitrum-42161/0x0d50970c7848ebbe52661e70057d7d063b7de886/) | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | token | ethereum | n/a | 2 deployments: ethereum [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/); ethereum `0x8e912c...61de33` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x889f31...cd6152`](./contracts/ethereum-1/0x889f313e2a3fdc1c9a45bc6020a8a18749cd6152/); ethereum `0xf76e6b...45081a` | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2c76d2...0433de`](./contracts/arbitrum-42161/0x2c76d21d2ff72756ae7adcef87745813470433de/); arbitrum `0xe39a7e...47d155` | ⚠️ Unaudited |
| NFTXRouter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/); ethereum `0x70a741...ebe42a`; ethereum `0x833657...e13a94`; arbitrum `0x527317...a3ef4d` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | unknown | arbitrum | n/a | 6 deployments: ethereum `0x2374a3...4868d3`; ethereum `0x51d660...f3543b`; ethereum `0xa8f152...6e8eef`; arbitrum [`0x009e41...de8c70`](./contracts/arbitrum-42161/0x009e4110fd68c603dd1f9189c4bac3d12cde8c70/); arbitrum `0xb25ea8...67bc07`; arbitrum `0xe8c93d...60dd28` | ⚠️ Unaudited |
| NFTXv12Migration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x47d9ac...876c72`](./contracts/ethereum-1/0x47d9acee6aa260c36f4368091be92f0824876c72/); ethereum `0xed2431...8dab98` | ⚠️ Unaudited |
| NFTXV1Buyout | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28083d...8a6f1e`](./contracts/ethereum-1/0x28083d8bce883aa7b70130c915cd4308448a6f1e/); ethereum `0xba8880...f89075` | ⚠️ Unaudited |
| NFTXv2 | unknown | ethereum | n/a | [`0xeaf638...59ec9f`](./contracts/ethereum-1/0xeaf638b2ec38724b95b384127893dc938a59ec9f/) | ⚠️ Unaudited |
| NFTXv3 | unknown | ethereum | n/a | [`0xcf912d...1dc04d`](./contracts/ethereum-1/0xcf912dafa570d6a97bd177b7b28e08097b1dc04d/) | ⚠️ Unaudited |
| NFTXv4 | unknown | ethereum | n/a | [`0x4d52e6...2e7f4f`](./contracts/ethereum-1/0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f/) | ⚠️ Unaudited |
| NFTXv5 | unknown | ethereum | n/a | [`0xb67f19...d58ac4`](./contracts/ethereum-1/0xb67f19b92210ca64c32defad5bed2898cdd58ac4/) | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | ethereum | n/a | [`0x9b85d7...441480`](./contracts/ethereum-1/0x9b85d72791f5aa390eccde320bb125df23441480/) | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaba2eb...47b4db`](./contracts/ethereum-1/0xaba2eb6cb6121de2a2c754a02f265dfa3547b4db/); ethereum `0xc25533...858f01` | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4deeb9...1cb711`](./contracts/arbitrum-42161/0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711/); arbitrum `0xa96b03...f9ced2` | ⚠️ Unaudited |
| NFTXVaultUpgradeableV3 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x173233...6768af`](./contracts/ethereum-1/0x1732336586a5c27eb07eff5a4abed0400c6768af/); ethereum `0x1f8698...c7fdc0`; ethereum `0x4bdd44...e4066e`; ethereum `0x711b85...b79f16`; arbitrum `0xe263cf...527dda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/); ethereum `0xb38b19...072fda`; arbitrum `0x8ad238...5466ea` | ⚠️ Unaudited |
| OtherPunks | unknown | ethereum | n/a | [`0x1a9b1b...06389f`](./contracts/ethereum-1/0x1a9b1bb73ed02db2dc3cd0d25adb42ad4d06389f/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/); arbitrum [`0x000000...c78ba3`](./contracts/arbitrum-42161/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 13 deployments: ethereum `0x1abdcb...a2ca5e`; ethereum `0x51a0df...fed976`; ethereum `0x57e266...108533`; ethereum `0x6ce71b...c52fab`; ethereum `0x7be610...b4a9db`; ethereum `0x99751a...535a62`; ethereum `0xbb270b...3c579c`; ethereum `0xdbaad4...687f91`; ethereum `0xf8cab5...325e58`; arbitrum [`0x19f319...229ba8`](./contracts/arbitrum-42161/0x19f3194e98f87367dcaa2ce502d8706a73229ba8/); arbitrum `0x2be289...5c7b77`; arbitrum `0xbab852...1b8be8`; arbitrum `0xda7c2f...468a54` | ⚠️ Unaudited |
| PublicCryptopunksData | unknown | ethereum | n/a | [`0x0f15e1...6cd1cc`](./contracts/ethereum-1/0x0f15e15b4b2b7e3c25afde61c424c82e186cd1cc/) | ⚠️ Unaudited |
| PunkToken | token | ethereum | n/a | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | ⚠️ Unaudited |
| S3KS | unknown | ethereum | n/a | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | ⚠️ Unaudited |
| SaleClockAuction | unknown | ethereum | n/a | [`0xb1690c...b57d8c`](./contracts/ethereum-1/0xb1690c08e213a35ed9bab7b318de14420fb57d8c/) | ⚠️ Unaudited |
| Salt | unknown | ethereum | n/a | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31333d...172d5a`](./contracts/ethereum-1/0x31333df4a9c32c1a74c2869d8bb8de3225172d5a/); ethereum `0x96cf14...aa7f30` | ⚠️ Unaudited |
| ShutdownRedeemerV3Upgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b4e64...e4ae7e`](./contracts/ethereum-1/0x3b4e64beaa22c88844c53c122e9a290497e4ae7e/); ethereum `0xa9abbf...87cbe3` | ⚠️ Unaudited |
| SiringClockAuction | unknown | ethereum | n/a | [`0xc7af99...f27f26`](./contracts/ethereum-1/0xc7af99fe5513eb6710e6d5f44f9989da40f27f26/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/); arbitrum `0xea6024...eef502` | ⚠️ Unaudited |
| TokenAppController | unknown | ethereum | n/a | [`0x13f89a...b8f4e2`](./contracts/ethereum-1/0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2/) | ⚠️ Unaudited |
| TokenMultiCall | unknown | ethereum | n/a | [`0xd62b2d...1b8df3`](./contracts/ethereum-1/0xd62b2dd08fca73b82f014107bf1cc888c61b8df3/) | ⚠️ Unaudited |
| TransformERC20Feature | token | ethereum | n/a | [`0xdef1c0...b25eff`](./contracts/ethereum-1/0xdef1c0ded9bec7f1a1670819833240f027b25eff/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0x33b381...5b6702`](./contracts/arbitrum-42161/0x33b381e2e0c4adc1dbd388888e9a29079e5b6702/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0463a0...99d332`](./contracts/ethereum-1/0x0463a06fbc8bf28b3f120cd1bfc59483f099d332/) | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | ethereum | n/a | [`0xa70e10...3db101`](./contracts/ethereum-1/0xa70e10beb02ff9a44007d9d3695d4b96003db101/) | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | unknown | arbitrum | n/a | [`0xf4d051...1cabf8`](./contracts/arbitrum-42161/0xf4d0512fb47319b0ce9144ef582862e2921cabf8/) | ⚠️ Unaudited |
| UniversalRouter | adapter | ethereum | n/a | [`0x250d62...0cc90f`](./contracts/ethereum-1/0x250d62a67254a46c0de472d2c9215e1d890cc90f/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| XBounties | unknown | ethereum | n/a | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | ⚠️ Unaudited |
| XMON | unknown | ethereum | n/a | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | ⚠️ Unaudited |
| XStoreMultiCall | unknown | ethereum | n/a | [`0x0cca02...3aed62`](./contracts/ethereum-1/0x0cca025c7b8c264f7a569aff1a74907cd43aed62/) | ⚠️ Unaudited |
| XToken | unknown | ethereum | n/a | 24 deployments: ethereum [`0x04e6ba...0611f6`](./contracts/ethereum-1/0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6/); ethereum `0x0fe629...a48a3f`; ethereum `0x181380...3dd9b5`; ethereum `0x1aa177...1df428`; ethereum `0x1dc172...ad7347`; ethereum `0x27ffed...80a8a2`; ethereum `0x49706a...2ded4d`; ethereum `0x4acc9c...333f58`; ethereum `0x59a82f...fe1769`; ethereum `0x5b9f63...a49729`; ethereum `0x603002...061c21`; ethereum `0x69bbe2...786385`; ethereum `0x77ecd3...91e895`; ethereum `0x8712a5...cdf7b6`; ethereum `0x9cea2e...a61ea5`; ethereum `0xab9c92...4403c8`; ethereum `0xaba49d...70536e`; ethereum `0xb10d6a...b6244a`; ethereum `0xb547fa...40eb08`; ethereum `0xb5a093...1ae32d`; ethereum `0xb7acb1...dfcc3c`; ethereum `0xc4bf60...354849`; ethereum `0xc8aa43...2cb2b5`; ethereum `0xf18ade...4a3a74` | ⚠️ Unaudited |
| XXMON | unknown | ethereum | n/a | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02363a...c4f760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08cc6d...26cb56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x091c7d...a1b9a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12680c...cbf349` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x143ba2...2f0cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b2ab8...ad795e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2428f4...bc8e01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x309558...d82314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39d327...4816c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a8881...d75cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x516431...85d764` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5296e8...f4290d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58517b...f4eafa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ba23b...fde32e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6731f4...c07455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a56a8...053485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bde06...f95ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77f4df...a416c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3ee7...f0fec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7af7b1...5044db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c7336...8de419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82744d...91c821` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83b28b...f71a05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84c902...576cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86f6e5...52409d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e2c1e...8f428e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f2631...a9b277` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9683d9...19cc8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x984976...aea346` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac6dcf...869438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae9574...da67a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd6bf3...37fd20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61735...f08839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8c0a6...cb5303` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a6e8...f6010b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9377b...47d4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed16db...3eb43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0202e...28f6dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf81d6e...c0ead8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc5af9...e6bc46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe56c3...e1d883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26735b...b7a644` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cd6fc...3f30ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47d9ac...876c72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d67ba...4175a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57ebf3...1065b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86e6ed...fd0bd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8b9e6...95dd12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9b081...b4c7a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NFTX-final.pdf](https://github.com/NFTX-project/audit-level-k/blob/master/NFTX-final.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2021-05-nftx](https://code4rena.com/reports/2021-05-nftx) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2021-12-nftx](https://code4rena.com/reports/2021-12-nftx) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | 5 | n/a |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2FxxMQXacJ9gspSb09eUCz%2FToB_Audit.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | contract_name | 103 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2Ff5r6lXZIs4rTMBTrt0eH%2FNFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4e407...197782`](./contracts/ethereum-1/0xd4e4078ca3495de5b1d4db434bebc5a986197782/) | Autoglyphs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | Blockmon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba12a...435357`](./contracts/ethereum-1/0x1ba12ae1fcfadd08fa37db849ef4b6e11e435357/) | CErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x013cf7...7f9635`](./contracts/ethereum-1/0x013cf78239144abcf06bbd56d3d190c65d7f9635/) | Create2BeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x510c9f...587a0d`](./contracts/ethereum-1/0x510c9fb7d1ab8b0338b7434872f0d22633587a0d/) | CreateVaultZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ba6f2...66db8d`](./contracts/ethereum-1/0x6ba6f2207e343923ba692e5cae646fb0f566db8d/) | CryptoPunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | CryptopunksData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | CryptoPunksMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39d9a9...e9f8bb`](./contracts/ethereum-1/0x39d9a925d7fca17e430b731882b97e2d10e9f8bb/) | InventoryStakingDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06012c...7a266d`](./contracts/ethereum-1/0x06012c8cf97bead5deae237070f9587f8e7a266d/) | KittyCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd42638...5541eb`](./contracts/ethereum-1/0xd42638863462d2f21bb7d4275d7637ee5d5541eb/) | LSSVMPairEnumerableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ce97...b3ef05`](./contracts/ethereum-1/0x08ce97807a81896e85841d74fb7e7b065ab3ef05/) | LSSVMPairEnumerableETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb16c13...89c0a4`](./contracts/ethereum-1/0xb16c1342e617a5b6e4b631eb114483fdb289c0a4/) | LSSVMPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92de3a...755b22`](./contracts/ethereum-1/0x92de3a1511ef22abcf3526c302159882a4755b22/) | LSSVMPairMissingEnumerableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd80c9...436d56`](./contracts/ethereum-1/0xcd80c916b1194beb48abf007d0b79a7238436d56/) | LSSVMPairMissingEnumerableETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b2e8c...d68329`](./contracts/ethereum-1/0x2b2e8cda09bba9660dca5cb6233787738ad68329/) | LSSVMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/) | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bd294...716bc7`](./contracts/ethereum-1/0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7/) | Meebits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x089610...e98cec`](./contracts/ethereum-1/0x089610fb04c34c014b4b391f4ecefaef94e98cec/) | MigratorZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b5a69...e22a06`](./contracts/ethereum-1/0x3b5a6917e1c9cf9aa12975de71a2136dade22a06/) | MineablePunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87d73e...47f776`](./contracts/ethereum-1/0x87d73e916d7057945c9bcd8cdd94e42a6f47f776/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | MonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | MonStaker2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306262...dfb6c8`](./contracts/ethereum-1/0x3062627136de797f807bcb63f0d5399a21dfb6c8/) | MultiRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | Multisender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | Nftnft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | NFTStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2f04...afe868`](./contracts/ethereum-1/0x3a2f04faa1d39acb088bece5c2d6b00e81afe868/) | NFTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d5097...7de886`](./contracts/arbitrum-42161/0x0d50970c7848ebbe52661e70057d7d063b7de886/) | NFTXFeeDistributorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/) | NFTXInventoryStakingV3Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889f31...cd6152`](./contracts/ethereum-1/0x889f313e2a3fdc1c9a45bc6020a8a18749cd6152/) | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c76d2...0433de`](./contracts/arbitrum-42161/0x2c76d21d2ff72756ae7adcef87745813470433de/) | NFTXInventoryStakingV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/) | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x009e41...de8c70`](./contracts/arbitrum-42161/0x009e4110fd68c603dd1f9189c4bac3d12cde8c70/) | NFTXUnstakingInventoryZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47d9ac...876c72`](./contracts/ethereum-1/0x47d9acee6aa260c36f4368091be92f0824876c72/) | NFTXv12Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28083d...8a6f1e`](./contracts/ethereum-1/0x28083d8bce883aa7b70130c915cd4308448a6f1e/) | NFTXV1Buyout | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeaf638...59ec9f`](./contracts/ethereum-1/0xeaf638b2ec38724b95b384127893dc938a59ec9f/) | NFTXv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf912d...1dc04d`](./contracts/ethereum-1/0xcf912dafa570d6a97bd177b7b28e08097b1dc04d/) | NFTXv3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d52e6...2e7f4f`](./contracts/ethereum-1/0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f/) | NFTXv4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb67f19...d58ac4`](./contracts/ethereum-1/0xb67f19b92210ca64c32defad5bed2898cdd58ac4/) | NFTXv5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b85d7...441480`](./contracts/ethereum-1/0x9b85d72791f5aa390eccde320bb125df23441480/) | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaba2eb...47b4db`](./contracts/ethereum-1/0xaba2eb6cb6121de2a2c754a02f265dfa3547b4db/) | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4deeb9...1cb711`](./contracts/arbitrum-42161/0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711/) | NFTXVaultFactoryUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173233...6768af`](./contracts/ethereum-1/0x1732336586a5c27eb07eff5a4abed0400c6768af/) | NFTXVaultUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9b1b...06389f`](./contracts/ethereum-1/0x1a9b1bb73ed02db2dc3cd0d25adb42ad4d06389f/) | OtherPunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f15e1...6cd1cc`](./contracts/ethereum-1/0x0f15e15b4b2b7e3c25afde61c424c82e186cd1cc/) | PublicCryptopunksData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | PunkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | S3KS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1690c...b57d8c`](./contracts/ethereum-1/0xb1690c08e213a35ed9bab7b318de14420fb57d8c/) | SaleClockAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | Salt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31333d...172d5a`](./contracts/ethereum-1/0x31333df4a9c32c1a74c2869d8bb8de3225172d5a/) | ShutdownRedeemerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b4e64...e4ae7e`](./contracts/ethereum-1/0x3b4e64beaa22c88844c53c122e9a290497e4ae7e/) | ShutdownRedeemerV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7af99...f27f26`](./contracts/ethereum-1/0xc7af99fe5513eb6710e6d5f44f9989da40f27f26/) | SiringClockAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13f89a...b8f4e2`](./contracts/ethereum-1/0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2/) | TokenAppController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd62b2d...1b8df3`](./contracts/ethereum-1/0xd62b2dd08fca73b82f014107bf1cc888c61b8df3/) | TokenMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdef1c0...b25eff`](./contracts/ethereum-1/0xdef1c0ded9bec7f1a1670819833240f027b25eff/) | TransformERC20Feature | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x250d62...0cc90f`](./contracts/ethereum-1/0x250d62a67254a46c0de472d2c9215e1d890cc90f/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | XMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cca02...3aed62`](./contracts/ethereum-1/0x0cca025c7b8c264f7a569aff1a74907cd43aed62/) | XStoreMultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04e6ba...0611f6`](./contracts/ethereum-1/0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6/) | XToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | XXMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 102 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=7, extraction_exact=107

Fork inheritance lineage and inherited audits are included when available.
