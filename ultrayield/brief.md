# Agentic Audit Brief: UltraYield

⚠️ Lifecycle status: DECLINING - TVL dropped 48.1% over 90 days

## Project Overview

- Project: UltraYield (`ultrayield`)
- Website: [https://ultrayield.app/](https://ultrayield.app/)
- Lifecycle: declining (Tier 0, 79.4% below peak)
- Generated: 2026-06-17T07:00:46.605Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, linea, optimism, plasma
- Contract surface: 69 unique implementations (137 raw deployments)
- DeFi Llama TVL: $63,396,596.00
- On-chain TVL (included contracts): $23,109,395.34
- TVL by chain: Ethereum $23,082,564.59 | Plasma $26,670.08 | Linea $160.45 | Base $0.22

## Project Description

UltraYield is a DeFi yield and vault platform by Edge Capital that curates market-neutral strategies, risk-curated vaults, and vault-launch infrastructure across multiple chains. It provides users with access to structured yield products through a system of vaults, tokens, and lending pools.

### Architecture

The UltraYield Curator family relies on a shared infrastructure of proxy contracts (BeaconProxy, TransparentUpgradeableProxy, UUPSProxy) to deploy and manage its core vaults and tokens. These proxies point to implementation contracts like EVault and UltraVault, enabling upgradeability and consistent access control across the protocol.

## Contract Surface Quality

- Indexed contracts: 4517; live-surface contracts included: 137 (122 live, 15 unknown).
- Excluded by liveness: 191 inactive, 4189 singleton, 0 uninitialized.
- Deployment units: 24/384 live.
- Detected codebases: aave-v2
- Unverified dependencies: 7/98.

## Audit Coverage Summary

- Verified implementations audited: 0/65 (0.0%)
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 69
- Raw deployments: 137
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,109,395.34
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $23,109,395.34 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GainLendingPool | core_logic | ethereum | unit-28047 | [`0xc824a0...8859fd`](./contracts/ethereum-1/0xc824a08db624942c5e5f330d56530cd1598859fd/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-27839 (13 proxies) | 13 deployments: ethereum [`0x2be901...83a8ec`](./contracts/ethereum-1/0x2be901715468c3c5393efa841525a713c583a8ec/); ethereum `0x2cdaee...da764f`; ethereum `0x32a338...4b0931`; ethereum `0x330732...d902be`; ethereum `0x4718da...bb9f78`; ethereum `0x4b10de...fc4463`; ethereum `0x6e053c...2ca3f8`; ethereum `0x8be877...2fc730`; ethereum `0x901d94...ec7bff`; ethereum `0xa10c40...437228`; ethereum `0xb4e41e...256791`; ethereum `0xd50af9...60b0ce`; ethereum `0xddb8f4...195495` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x699e04...976490`](./contracts/ethereum-1/0x699e04f98de2fc395a7dcbf36b48ec837a976490/) | ⚠️ Unaudited |
| Strategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x59d675...7dc65f`](./contracts/ethereum-1/0x59d675f75f973835b94d02b6d27b8539757dc65f/); ethereum `0xfc36c2...a47caf` | ⚠️ Unaudited |
| PoolV3 | core_logic | plasma | n/a | [`0x53e4e9...c8ac97`](./contracts/plasma-9745/0x53e4e9b8766969c43895839cc9c673bb6bc8ac97/) | ⚠️ Unaudited |
| TermStaker | core_logic | ethereum | n/a | [`0x435589...e495d7`](./contracts/ethereum-1/0x4355894373ae7fc7efd01d326433c8cdd3e495d7/) | ⚠️ Unaudited |
| EVault | core_logic | linea | unit-28144 | [`0x4789d8...0604f1`](./contracts/linea-59144/0x4789d8066cac17fd24f24206a49abc72830604f1/) | ⚠️ Unaudited |
| TokenizedAccount | core_logic | ethereum | unit-28073 | [`0xeaa3b9...94c605`](./contracts/ethereum-1/0xeaa3b922e9febca37d1c02d2142a59595094c605/) | ⚠️ Unaudited |
| EVault | core_logic | base | unit-28104 (7 proxies) | 7 deployments: base [`0x1fd3a2...15b885`](./contracts/base-8453/0x1fd3a242a549d595431442f898fdbb374f15b885/); base `0x614bd5...cd5d17`; base `0x78d6a3...4f9b3a`; base `0x85114a...749616`; base `0xa67a95...256121`; base `0xbc4639...602ea2`; base `0xd7c286...edb190` | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | unit-27980 | [`0x9a6340...ca8839`](./contracts/ethereum-1/0x9a6340ce1282e01cb4ec9faae5fc5f4b60ca8839/) | ⚠️ Unaudited |
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| BeaconProxy | registry | linea | n/a | 8 deployments: plasma `0x230fb9...60facd`; plasma `0xa467ad...274ef2`; plasma `0xd3da8d...60798a`; plasma `0xf51038...245bd2`; linea [`0x140bd9...99faf5`](./contracts/linea-59144/0x140bd9a62ba84fbf78d9e3dd4a94fdafc999faf5/); linea `0x1da14e...457d7d`; linea `0x3cc796...68a839`; linea `0xe27c25...469e1f` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| EulerEarn | unknown | plasma | n/a | [`0x2ad9fd...69e2fb`](./contracts/plasma-9745/0x2ad9fd319b10bb59734e1dbbe42e0ad06869e2fb/) | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | n/a | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xcffed5...8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | operational_periphery | ethereum | n/a | [`0x71c79f...aea0bb`](./contracts/ethereum-1/0x71c79f6f345df0ea7045d9259c4bc131deaea0bb/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0562ae...2f8d66`](./contracts/ethereum-1/0x0562ae950276b24f3eae0d0a518dadb7ad2f8d66/); ethereum `0x62efa7...397e5c`; ethereum `0x965ec3...c98d01`; optimism `0x48921e...c0b2fe`; base `0x5435bc...259ca0`; arbitrum `0x2d9146...7c3f6e` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | n/a | [`0xad391d...7c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xfeb770...5cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | n/a | [`0x349c2d...fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | n/a | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xf4b77b...33d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | base | n/a | 2 deployments: ethereum `0xe3eee3...241852`; base [`0x9230f9...8eb0cb`](./contracts/base-8453/0x9230f9cbaca32bad2b19cab331d3e6509b8eb0cb/) | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | unit-27802 | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27795 | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27820 | [`0x1dd188...18dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27838 | [`0x2adfb8...efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27870 | [`0x440040...e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27891 | [`0x553f9c...8ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27908 | [`0x5eff78...2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27919 | [`0x66b857...8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27921 | [`0x690f30...fb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27934 | [`0x74e0a5...130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27955 | [`0x84568b...24b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27957 | [`0x849f28...691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-27990 | [`0x9e3fd8...076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28016 | [`0xac6f22...d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28049 | [`0xc87fce...a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28066 | [`0xe2ad97...fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28083 | [`0xf526ed...3c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | adapter | base | n/a | [`0x8336c9...6fece9`](./contracts/base-8453/0x8336c93e3706251297bfc95dbdac3fc1966fece9/) | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| sUSDeRateProvider | unknown | ethereum | n/a | [`0x580709...132bdf`](./contracts/ethereum-1/0x580709d755a016e3952621ea6d26362cc2132bdf/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TermDiscountRateAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x22eb9a...75f59e`](./contracts/ethereum-1/0x22eb9ab4ca9914d5821e05256f0efec2f675f59e/); ethereum `0x3c6b03...25acd2` | ⚠️ Unaudited |
| TermFinanceGovernor | governance | ethereum | n/a | [`0x2b7156...418607`](./contracts/ethereum-1/0x2b715634134220ffeee9458b4e34e41a41418607/) | ⚠️ Unaudited |
| TermVaultsKeeper | operational_periphery | ethereum | unit-27904 | [`0x5c39ad...708111`](./contracts/ethereum-1/0x5c39ad7b12487094f9222f0797b2a1ecbf708111/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| UltraFrontendHelper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/); ethereum `0x264638...808921`; ethereum `0x2bf69e...7f3e5d`; ethereum `0x7d159f...de32e7`; ethereum `0x93bffc...55571b`; ethereum `0xa2b51c...e5bb6f`; ethereum `0xaea48c...114414`; ethereum `0xea8baf...bda2a9`; ethereum `0xf076c4...544729` | ⚠️ Unaudited |
| UltraVaultOracle | operational_periphery | ethereum | n/a | 9 deployments: ethereum [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/); ethereum `0x199378...549032`; ethereum `0x3adf95...b848e6`; ethereum `0x536080...f53b07`; ethereum `0x6217de...969526`; ethereum `0x74c4bb...87dc2b`; ethereum `0xbae89d...947ebf`; ethereum `0xc9fa75...487308`; ethereum `0xe8149f...351bac` | ⚠️ Unaudited |
| VaultPriceManager | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/); ethereum `0x0fcea1...315f86`; ethereum `0x2882a1...58268a`; ethereum `0x303ab4...8a1617`; ethereum `0x525ee8...b41ad5`; ethereum `0x6bb07c...b2b311`; ethereum `0xa5c6d7...5a75a2`; ethereum `0xd7fc73...864983`; ethereum `0xdd5085...7eb640`; ethereum `0xff5e63...e0a5b5` | ⚠️ Unaudited |
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | unit-27827 | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53d835...db87cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2be901...83a8ec`](./contracts/ethereum-1/0x2be901715468c3c5393efa841525a713c583a8ec/) | TokenizedStrategy | core_logic | $1,103,482.31 | Verified native implementation with $1,103,482.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59d675...7dc65f`](./contracts/ethereum-1/0x59d675f75f973835b94d02b6d27b8539757dc65f/) | Strategy | core_logic | $50,056.77 | Verified native implementation with $50,056.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/) | VaultPriceManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 8 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
