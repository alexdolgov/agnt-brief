# Agentic Audit Brief: MEV Capital

## Project Overview

- Project: MEV Capital (`mev-capital`)
- Website: [https://mevcapital.com](https://mevcapital.com)
- Lifecycle: active (Tier 0, 95.6% below peak)
- Generated: 2026-06-17T07:00:50.248Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, polygon, sonic, unichain
- Contract surface: 71 unique implementations (159 raw deployments)
- DeFi Llama TVL: $54,639,775.94
- On-chain TVL (included contracts): $86,801,319.03
- TVL by chain: Avalanche $58,029,769.76 | Sonic $16,741,768.93 | Bsc $8,075,533.77 | Ethereum $3,882,643.68 | Berachain $71,602.89

## Project Description

MEV Capital is an on-chain liquidity and DeFi investment firm that operates curated vaults and liquidity strategies across multiple chains. It deploys and manages a variety of vault types (EVault, MetaMorpho, SiloVault, MultiVault, etc.) and deposit/redemption vaults for tokenized assets, integrating with third-party protocols to optimize yield and manage risk.

### Architecture

All product families share a common infrastructure of proxy-based upgradeability (BeaconProxy, ERC1967Proxy, TransparentUpgradeableProxy) and deployer clusters that manage multiple vault types. Token flows between deposit vaults, yield-bearing vaults, and redemption vaults are orchestrated through shared token contracts (e.g., tETH, tUSDe) and strategy implementations.

## Contract Surface Quality

- Indexed contracts: 4396; live-surface contracts included: 159 (149 live, 10 unknown).
- Excluded by liveness: 195 inactive, 4042 singleton, 0 uninitialized.
- Deployment units: 32/319 live.
- Detected codebases: aave-v2
- Unverified dependencies: 10/97.

## Audit Coverage Summary

- Verified implementations audited: 0/68 (0.0%)
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 71
- Raw deployments: 159
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $86,801,319.03
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SiloVault | core_logic | avalanche | unit-31062 | [`0x1f8e76...eda7e3`](./contracts/avalanche-43114/0x1f8e769b5b6010b2c2bbcd68629ea1a0a0eda7e3/) | ⚠️ Unaudited |
| EVault | core_logic | sonic | unit-31061 (9 proxies) | 9 deployments: sonic [`0x196f3c...0349d9`](./contracts/sonic-146/0x196f3c7443e940911ee2bb88e019fd71400349d9/); sonic `0x1cda7e...d01aab`; sonic `0x6832f3...b18f9e`; sonic `0x90a804...4f4d73`; sonic `0x9144c0...ada43a`; sonic `0xb38d43...e597b8`; sonic `0xb93613...ccec0a`; sonic `0xdebdab...029028`; sonic `0xf71b17...7802a0` | ⚠️ Unaudited |
| MoolahVault | core_logic | bsc | unit-31060 | [`0x6402d6...0f162d`](./contracts/bsc-56/0x6402d64f035e18f9834591d3b994dfe41a0f162d/) | ⚠️ Unaudited |
| LendingPoolv3 | core_logic | ethereum | unit-30889 | [`0x5fde59...eb357f`](./contracts/ethereum-1/0x5fde59415625401278c4d41c6befce3790eb357f/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-30824 (13 proxies) | 13 deployments: ethereum [`0x2be901...83a8ec`](./contracts/ethereum-1/0x2be901715468c3c5393efa841525a713c583a8ec/); ethereum `0x2cdaee...da764f`; ethereum `0x32a338...4b0931`; ethereum `0x330732...d902be`; ethereum `0x4718da...bb9f78`; ethereum `0x4b10de...fc4463`; ethereum `0x6e053c...2ca3f8`; ethereum `0x8be877...2fc730`; ethereum `0x901d94...ec7bff`; ethereum `0xa10c40...437228`; ethereum `0xb4e41e...256791`; ethereum `0xd50af9...60b0ce`; ethereum `0xddb8f4...195495` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-30787 (8 proxies) | 8 deployments: ethereum [`0x0fdf3b...0c15f6`](./contracts/ethereum-1/0x0fdf3b986d62be6ae1d5228e5da90ff6f00c15f6/); ethereum `0x3b5124...14818c`; ethereum `0x446970...3f7ea7`; ethereum `0x4e0554...4af9c5`; ethereum `0x9205c8...f57a0d`; ethereum `0xd25f31...5864b3`; ethereum `0xdc4795...8eea26`; ethereum `0xf60e6e...5bec31` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | unit-30895 (2 proxies) | 2 deployments: ethereum [`0x64047d...3f877f`](./contracts/ethereum-1/0x64047dd3288276d70a4f8b5df54668c8403f877f/); ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| EVault | core_logic | berachain | unit-31064 (9 proxies) | 9 deployments: berachain [`0x1371dd...61a280`](./contracts/berachain-80094/0x1371dd58ce95ecd624340f072f97212a2661a280/); berachain `0x2cccd3...9fedb7`; berachain `0x34018a...4e5e95`; berachain `0x3de0ca...7f9447`; berachain `0x4eb335...0ce20d`; berachain `0x558b16...6a8b87`; berachain `0x6d9769...dda000`; berachain `0xad9e5e...476870`; berachain `0xd538b6...4602bc` | ⚠️ Unaudited |
| Strategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x59d675...7dc65f`](./contracts/ethereum-1/0x59d675f75f973835b94d02b6d27b8539757dc65f/); ethereum `0xfc36c2...a47caf` | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | ethereum | unit-31027 | [`0xd731f9...e5188a`](./contracts/ethereum-1/0xd731f94c778f7c1090e2e0d797150a647de5188a/) | ⚠️ Unaudited |
| SiloVault | core_logic | avalanche | n/a | [`0x4c9edf...e67435`](./contracts/avalanche-43114/0x4c9edf85b8b33198f0c29a799965b6df1ae67435/) | ⚠️ Unaudited |
| TermStaker | core_logic | ethereum | n/a | [`0x435589...e495d7`](./contracts/ethereum-1/0x4355894373ae7fc7efd01d326433c8cdd3e495d7/) | ⚠️ Unaudited |
| PrincipalToken | token | sonic | n/a | 5 deployments: ethereum `0x3bae96...532f81`; ethereum `0x8eb9f9...55cce9`; ethereum `0xa97087...92cbfd`; ethereum `0xdc87d0...13d03a`; sonic [`0x0532d4...2fe34f`](./contracts/sonic-146/0x0532d4f06ba9b159d0b456662cc488eefe2fe34f/) | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-30760 (15 proxies) | 15 deployments: ethereum [`0x01d1a1...da8977`](./contracts/ethereum-1/0x01d1a1cd5955b2fefb167e8bc200a00bfada8977/); ethereum `0x0de382...c45b52`; ethereum `0x1334d0...f36e3b`; ethereum `0x2306e1...6d0290`; ethereum `0x463af6...f05175`; ethereum `0x6b6976...5a77a4`; ethereum `0x6c37d3...09c7ac`; ethereum `0x9426c7...65b6bb`; ethereum `0x991379...91ff49`; ethereum `0xb07bf0...1bedcb`; ethereum `0xc5ff8d...bae7f7`; ethereum `0xe00a44...6480fe`; ethereum `0xe2d6a2...9b8fa9`; ethereum `0xe3ea69...b10633`; ethereum `0xfc1b4e...0a7316` | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | unit-30785 (4 proxies) | 4 deployments: ethereum [`0x0f37f1...7de4ad`](./contracts/ethereum-1/0x0f37f1ff51fc2f8a9907ef3e226a12fdc47de4ad/); ethereum `0x1af14e...4ac47b`; ethereum `0x705588...fe8506`; ethereum `0x73d596...5770a5` | ⚠️ Unaudited |
| TermMaxVault | core_logic | ethereum | n/a | [`0xdadeac...0a47ec`](./contracts/ethereum-1/0xdadeacc03a59639c0ece5ec4ff3bc0d9920a47ec/) | ⚠️ Unaudited |
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| BeaconProxy | registry | berachain | n/a | 3 deployments: berachain [`0x1dfb66...f91bc0`](./contracts/berachain-80094/0x1dfb669df5e70d4238f2cc0a9ee3b1a21ff91bc0/); berachain `0x413dfb...5ffd5b`; berachain `0x91e1ec...99f15a` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | n/a | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xcffed5...8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | operational_periphery | ethereum | n/a | [`0x71c79f...aea0bb`](./contracts/ethereum-1/0x71c79f6f345df0ea7045d9259c4bc131deaea0bb/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1265a8...4d665a`](./contracts/ethereum-1/0x1265a81d42d513df40d0031f8f2e1346954d665a/); ethereum `0x2f1abb...834775`; ethereum `0x8e3c0a...0d540e`; ethereum `0x98cf0b...c70e0b`; ethereum `0x9a8bc3...2d61d8`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 13 deployments: ethereum [`0x28d24d...472f33`](./contracts/ethereum-1/0x28d24d4380b26a1ef305ad8d8db258159e472f33/); ethereum `0x749794...1576a1`; ethereum `0xd41830...b02acc`; ethereum `0xd50da5...c747ad`; ethereum `0xf1fd8a...c4c52d`; unichain `0x3f9357...3dc433`; unichain `0xc06318...66fdf6`; polygon `0xf25324...b420b5`; base `0x45f8cc...63179d`; base `0x877344...6e9084`; arbitrum `0x6d57da...b9cf75`; arbitrum `0x9b3307...0b3f09`; arbitrum `0xa60643...2019cf` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | n/a | [`0xad391d...7c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xfeb770...5cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | n/a | [`0x349c2d...fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | n/a | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xf4b77b...33d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | ethereum | n/a | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | unit-30790 | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30781 | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30808 | [`0x1dd188...18dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30823 | [`0x2adfb8...efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30852 | [`0x440040...e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30871 | [`0x553f9c...8ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30887 | [`0x5eff78...2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30900 | [`0x66b857...8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30902 | [`0x690f30...fb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30915 | [`0x74e0a5...130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30932 | [`0x84568b...24b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30934 | [`0x849f28...691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30961 | [`0x9e3fd8...076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-30985 | [`0xac6f22...d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-31015 | [`0xc87fce...a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-31032 | [`0xe2ad97...fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-31048 | [`0xf526ed...3c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| SiloVault | core_logic | avalanche | unit-31063 | [`0x4dc1ce...3dc0e8`](./contracts/avalanche-43114/0x4dc1ce9b9f9ef00c144bfad305f16c62293dc0e8/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TermDiscountRateAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x22eb9a...75f59e`](./contracts/ethereum-1/0x22eb9ab4ca9914d5821e05256f0efec2f675f59e/); ethereum `0x3c6b03...25acd2` | ⚠️ Unaudited |
| TermFinanceGovernor | governance | ethereum | n/a | [`0x2b7156...418607`](./contracts/ethereum-1/0x2b715634134220ffeee9458b4e34e41a41418607/) | ⚠️ Unaudited |
| TermVaultsKeeper | operational_periphery | ethereum | unit-30883 | [`0x5c39ad...708111`](./contracts/ethereum-1/0x5c39ad7b12487094f9222f0797b2a1ecbf708111/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| VaultTokenized | core_logic | ethereum | unit-31038 | [`0xea0f2e...5afb3c`](./contracts/ethereum-1/0xea0f2ea61998346ad39dddef7513ae90915afb3c/) | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/); ethereum `0xb79301...534bcc` | ⚠️ Unaudited |
| WstEthAdapter | adapter | ethereum | n/a | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | ethereum | n/a | [`0xa7ea8d...7d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | ethereum | n/a | [`0x3d09a1...f45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | unit-30815 | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0fdf3b...0c15f6`](./contracts/ethereum-1/0x0fdf3b986d62be6ae1d5228e5da90ff6f00c15f6/) | Vault | core_logic | $847,248.76 | Verified native implementation with $847,248.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd731f9...e5188a`](./contracts/ethereum-1/0xd731f94c778f7c1090e2e0d797150a647de5188a/) | PlasmaVaultBase | core_logic | $14,541.46 | Verified native implementation with $14,541.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdadeac...0a47ec`](./contracts/ethereum-1/0xdadeacc03a59639c0ece5ec4ff3bc0d9920a47ec/) | TermMaxVault | core_logic | $9.78 | Verified native implementation with $9.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea0f2e...5afb3c`](./contracts/ethereum-1/0xea0f2ea61998346ad39dddef7513ae90915afb3c/) | VaultTokenized | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 6 |
| standard_library | 8 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
