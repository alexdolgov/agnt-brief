# Agentic Audit Brief: Reservoir Protocol

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: active (Tier 0, 81% below peak)
- Generated: 2026-06-17T07:00:46.791Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma
- Contract surface: 106 unique implementations (214 raw deployments)
- DeFi Llama TVL: $63,120,432.21
- On-chain TVL (included contracts): $2,061,152,381.98
- TVL by chain: Ethereum $1,084,886,409.11 | Plasma $427,753,011.65 | Base $241,815,943.54 | Mantle $205,518,610.32 | Arbitrum $77,471,488.44 | Berachain $23,706,918.92

## Project Description

Reservoir Protocol is a decentralized finance (DeFi) platform that enables users to mint and manage a variety of yield-bearing stablecoins and tokenized assets backed by real-world and crypto collateral. It provides infrastructure for deposits, redemptions, and cross-chain asset transfers, with a focus on capital efficiency and composability across multiple blockchain networks.

### Architecture

The Core family issues the base stablecoin RUSD, which is used across the Reservoir Protocol family's vaults and tokens as a primary asset. OFT Addresses extend these assets cross-chain, while Asset Adapters connect Reservoir to external money markets like Morpho, enabling yield strategies and liquidity provisioning.

## Contract Surface Quality

- Indexed contracts: 749; live-surface contracts included: 214 (205 live, 9 unknown).
- Excluded by liveness: 79 inactive, 456 singleton, 0 uninitialized.
- Deployment units: 27/230 live.
- Detected codebases: balancer-v2, uniswap-v3
- Unverified dependencies: 2/81.

## Audit Coverage Summary

- Verified implementations audited: 0/95 (0.0%)
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 106
- Raw deployments: 214
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,061,152,381.98
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EVault | core_logic | ethereum | unit-28318 (7 proxies) | 7 deployments: ethereum [`0x6dfc8a...4f60fb`](./contracts/ethereum-1/0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb/); ethereum `0x797dd8...7d48a9`; ethereum `0x9bd52f...8c2cbb`; ethereum `0xab2726...bf2f30`; ethereum `0xaf5372...8f9bb2`; ethereum `0xba98fc...4783b5`; ethereum `0xe0a80d...c42bce` | ⚠️ Unaudited |
| ATokenInstance | token | plasma | unit-28444 (2 proxies) | 2 deployments: plasma [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/); plasma `0x751940...caf43a` | ⚠️ Unaudited |
| VaultV2 | core_logic | base | n/a | 5 deployments: base [`0x050ce3...ad56f0`](./contracts/base-8453/0x050ce30b927da55177a4914ec73480238bad56f0/); base `0xbeef0e...6873c9`; arbitrum `0xbeeff1...1da518`; arbitrum `0xbeeff7...f2492f`; arbitrum `0xbeefff...31a894` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-28419 | [`0xe31901...7a77eb`](./contracts/ethereum-1/0xe3190143eb552456f88464662f0c0c4ac67a77eb/) | ⚠️ Unaudited |
| ATokenInstance | token | mantle | unit-28440 (2 proxies) | 2 deployments: mantle [`0x7053ba...585b69`](./contracts/mantle-5000/0x7053bad224f0c021839f6ac645bdae5f8b585b69/); mantle `0x8917d4...13b127` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 3 deployments: plasma `0x1dd4b1...2ed27b`; plasma `0xd8f824...f2d570`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| StakeToken | token | ethereum | unit-28238 | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| StakedCap | token | ethereum | unit-28342 | [`0x88887b...1d8888`](./contracts/ethereum-1/0x88887be419578051ff9f4eb6c858a951921d8888/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | unit-28223 (2 proxies) | 2 deployments: ethereum [`0x0c0d01...8eab1e`](./contracts/ethereum-1/0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e/); ethereum `0x7c0477...460f4f` | ⚠️ Unaudited |
| CollateralVault | core_logic | berachain | n/a | [`0x551fb0...4a552e`](./contracts/berachain-80094/0x551fb0309dd7e1c6e1a59d9389ef10da864a552e/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | 6 deployments: ethereum [`0x1135b2...b6af9d`](./contracts/ethereum-1/0x1135b22d6e8fd0809392478eedcd8c107db6af9d/); ethereum `0x62c6e8...4038b7`; ethereum `0x8a47b4...a97eaa`; ethereum `0xb7de5d...0d9308`; ethereum `0xbc6736...fae10a`; ethereum `0xe00bd3...947b81` | ⚠️ Unaudited |
| Stablecoin | token | ethereum | n/a | [`0x09d421...8f2b34`](./contracts/ethereum-1/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ⚠️ Unaudited |
| LPToken | token | ethereum | n/a | 5 deployments: ethereum [`0x17bbc9...b358f7`](./contracts/ethereum-1/0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7/); ethereum `0x5daaee...f99d31`; optimism `0x8d66ff...349ca8`; arbitrum `0x6ea313...fd2225`; arbitrum `0x8d66ff...349ca8` | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | n/a | [`0xc197ad...c7043f`](./contracts/ethereum-1/0xc197ad72936b7c558c96417f22041fe9e3c7043f/) | ⚠️ Unaudited |
| StablecoinUpgradeable | token | ethereum | n/a | [`0xcfd748...f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| OpportunityOVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x0aa752...e96036`](./contracts/ethereum-1/0x0aa752c9dda32d237a22f04a5971976c71e96036/); ethereum `0x239b05...1d1cd5`; ethereum `0x25df14...cf7017`; ethereum `0x4c921b...b0a140`; ethereum `0x657a24...e7d766`; ethereum `0xa3958f...59b00d`; ethereum `0xc2b578...88cafc`; ethereum `0xe9a655...d72727`; ethereum `0xf3dea8...e12c0e`; ethereum `0xf993d2...6fd87b` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | berachain | n/a | [`0xde04c4...6fa8c8`](./contracts/berachain-80094/0xde04c469ad658163e2a5e860a03a86b52f6fa8c8/) | ⚠️ Unaudited |
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| AssetAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x2adf03...04b98d`](./contracts/ethereum-1/0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d/); ethereum `0x65078c...1db0dd`; ethereum `0x86ac8e...4f9be0`; ethereum `0xa100a9...92fe64`; ethereum `0xb82749...42cc93`; ethereum `0xc5dea6...4a73c4` | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | 7 deployments: ethereum [`0x4097bc...7110e8`](./contracts/ethereum-1/0x4097bc51a9cde57254947768039e2d671d7110e8/); ethereum `0x6427cc...c2a133`; ethereum `0x6f117e...f4a91f`; ethereum `0xa8c373...26bc29`; ethereum `0xb5d23b...ddc2f3`; ethereum `0xd08129...9f3288`; ethereum `0xf3519a...3d5be7` | ⚠️ Unaudited |
| BYUSDOFT | unknown | berachain | n/a | [`0x688e72...d6ac82`](./contracts/berachain-80094/0x688e72142674041f8f6af4c808a4045ca1d6ac82/) | ⚠️ Unaudited |
| CreditEnforcer | unknown | ethereum | n/a | [`0x04716d...d07720`](./contracts/ethereum-1/0x04716db62c085d9e08050fcf6f7d775a03d07720/) | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| DAM | adapter | ethereum | n/a | [`0x0fedba...e5a43b`](./contracts/ethereum-1/0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b/) | ⚠️ Unaudited |
| DamOft | unknown | base | n/a | 2 deployments: bsc `0xf9ca3f...ababf8`; base [`0x713567...a75a72`](./contracts/base-8453/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | ⚠️ Unaudited |
| DamOftAdapter | adapter | ethereum | n/a | [`0x40a341...ea237a`](./contracts/ethereum-1/0x40a341b76a766c56f54985285987dfe52fea237a/) | ⚠️ Unaudited |
| DolomiteMargin | unknown | ethereum | n/a | [`0x003ca2...c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ⚠️ Unaudited |
| EulerEarn | unknown | plasma | n/a | 2 deployments: plasma [`0x66be42...aed21d`](./contracts/plasma-9745/0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d/); plasma `0xe818ad...14dec4` | ⚠️ Unaudited |
| GhoBucketSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x2ce400...d3831b`](./contracts/mantle-5000/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/); plasma [`0x2ce400...d3831b`](./contracts/plasma-9745/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/) | ⚠️ Unaudited |
| GhoCcipSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x20fd5f...efa6b6`](./contracts/mantle-5000/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/); plasma [`0x20fd5f...efa6b6`](./contracts/plasma-9745/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/) | ⚠️ Unaudited |
| GhoOracle | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x360d8a...bf4d12`](./contracts/mantle-5000/0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12/); plasma `0xb0e1c7...daf1d1` | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | 2 deployments: berachain [`0x1fb6c1...88d4b5`](./contracts/berachain-80094/0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5/); berachain `0x7fd165...7400e6` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | n/a | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xcffed5...8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | [`0xee8f4e...e44b61`](./contracts/base-8453/0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | berachain | n/a | 6 deployments: ethereum `0x777791...c67777`; optimism `0xc30ce6...1c5c59`; base `0xbeefe9...cb83b2`; arbitrum `0x5c0c30...1563ba`; arbitrum `0x7e97fa...201e65`; berachain [`0x30bba9...545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | n/a | [`0xad391d...7c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xfeb770...5cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | n/a | [`0x349c2d...fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | n/a | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xf4b77b...33d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | ethereum | n/a | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| MockERC20 | token | ethereum | n/a | [`0x74a56c...e913a1`](./contracts/ethereum-1/0x74a56c3255c55c9f324eac74923406dc02e913a1/) | ⚠️ Unaudited |
| MockUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x331ae8...ec5954`](./contracts/ethereum-1/0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954/); ethereum `0xe7b9d1...820cef` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x841db2...0cfcbc`](./contracts/ethereum-1/0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc/); ethereum `0x99a95a...632b10`; ethereum `0x99e890...1549bc`; ethereum `0xb595ba...8870a2` | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | unit-28227 | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| MultiSign | governance | ethereum | n/a | 31 deployments: ethereum [`0x1073d5...6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/); ethereum `0x2147bd...bbc5fd`; ethereum `0x2591c2...461d8c`; ethereum `0x315bab...0b6f25`; ethereum `0x3ecbf8...a3d566`; ethereum `0x46f057...4eaa53`; ethereum `0x492184...58ea19`; ethereum `0x5c1e4c...18608b`; ethereum `0x66fc2d...ac6a0e`; ethereum `0x6e36e3...9fe3e6`; ethereum `0x7272b2...9f2cec`; ethereum `0x7f9922...c6de44`; ethereum `0x83f7f1...541fa9`; ethereum `0x860a80...ff898e`; ethereum `0x863c87...55ce6c`; ethereum `0x866eb2...96918c`; ethereum `0x97e9d0...428591`; ethereum `0x9ab2ce...6f8165`; ethereum `0x9b8a83...847a34`; ethereum `0xa2eea1...d9c367`; ethereum `0xb60fa2...6aca2a`; ethereum `0xb723d5...d155ea`; ethereum `0xd4707b...0385d1`; ethereum `0xd48ede...fedd68`; ethereum `0xd9334d...272761`; ethereum `0xe23090...9df5ae`; ethereum `0xf1dcb5...30056f`; ethereum `0xf26b8b...72a71f`; ethereum `0xf7db20...945b3a`; ethereum `0xfbca8b...600bb6`; ethereum `0xff72e1...209ecb` | ⚠️ Unaudited |
| PegStabilityModule | unknown | ethereum | n/a | [`0x480901...96d75d`](./contracts/ethereum-1/0x4809010926aec940b550d34a46a52739f996d75d/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28222 | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28242 | [`0x1dd188...18dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28254 | [`0x2adfb8...efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28277 | [`0x440040...e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28288 | [`0x553f9c...8ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28302 | [`0x5eff78...2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28309 | [`0x66b857...8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28311 | [`0x690f30...fb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28324 | [`0x74e0a5...130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28338 | [`0x84568b...24b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28340 | [`0x849f28...691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28363 | [`0x9e3fd8...076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28383 | [`0xac6f22...d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28404 | [`0xc87fce...a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28418 | [`0xe2ad97...fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-28428 | [`0xf526ed...3c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x813b08...74232e`](./contracts/ethereum-1/0x813b0857e016b7ae5fb57f464dfad8ee7b74232e/); ethereum `0xeae91b...a549b9` | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | unit-28316 | [`0x6c3ea9...23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | ⚠️ Unaudited |
| Rebalance | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0ccb9a...5dc829`](./contracts/ethereum-1/0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829/); ethereum `0x95326f...11cfe7`; ethereum `0xf3fce6...5871c3` | ⚠️ Unaudited |
| RollingBond | unknown | ethereum | n/a | 3 deployments: ethereum [`0x236987...38f096`](./contracts/ethereum-1/0x23698719581ee595277e3f4506be73412b38f096/); ethereum `0x6ba949...43c19f`; ethereum `0xfd3689...45da4f` | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| RusdMintBridge | operational_periphery | ethereum | n/a | [`0x6360f4...3154b3`](./contracts/ethereum-1/0x6360f43803732eaeb9f1967b9f74d117e03154b3/) | ⚠️ Unaudited |
| RusdOft | unknown | bsc | n/a | 2 deployments: bsc [`0x09d421...8f2b34`](./contracts/bsc-56/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/); base [`0x09d421...8f2b34`](./contracts/base-8453/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ⚠️ Unaudited |
| RusdOftAdapter | adapter | ethereum | n/a | [`0xf0e9f6...f4b4da`](./contracts/ethereum-1/0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da/) | ⚠️ Unaudited |
| Savingcoin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x738d11...e23a31`](./contracts/ethereum-1/0x738d1115b90efa71ae468f1287fc864775e23a31/); ethereum `0xd3fd63...be3094` | ⚠️ Unaudited |
| SavingModule | unknown | ethereum | n/a | [`0x547561...e947d7`](./contracts/ethereum-1/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | ethereum | n/a | [`0x316cd3...f64514`](./contracts/ethereum-1/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | ethereum | unit-28334 | [`0x8292bb...6317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | ethereum | n/a | [`0x4be8be...2f5876`](./contracts/ethereum-1/0x4be8be2b72638f87c76f738cc1341665ed2f5876/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/); ethereum `0xb79301...534bcc` | ⚠️ Unaudited |
| WsrusdOft | unknown | hyperliquid | n/a | 3 deployments: bsc `0x480901...96d75d`; hyperliquid [`0x04716d...d07720`](./contracts/hyperliquid-999/0x04716db62c085d9e08050fcf6f7d775a03d07720/); base `0x62344b...6900b1` | ⚠️ Unaudited |
| WsrusdOftAdapter | adapter | ethereum | n/a | [`0xbb431a...91258a`](./contracts/ethereum-1/0xbb431abd156b960e5b77cc45c75f107e3991258a/) | ⚠️ Unaudited |
| WstEthAdapter | adapter | ethereum | n/a | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | ethereum | n/a | [`0xa7ea8d...7d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | ethereum | n/a | [`0x3d09a1...f45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | unit-28247 | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14e31c...bec0f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7463f8...f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2a261...fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38cbf...2c5b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65556...7202fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1c5...e69b83` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x866d66...f35e78` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6eab5...0e4ff4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6dfc8a...4f60fb`](./contracts/ethereum-1/0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb/) | EVault | core_logic | $568,919,533.39 | Verified native implementation with $568,919,533.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050ce3...ad56f0`](./contracts/base-8453/0x050ce30b927da55177a4914ec73480238bad56f0/) | VaultV2 | core_logic | $269,968,374.89 | Verified native implementation with $269,968,374.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | fToken | token | $119,542,927.02 | Verified native implementation with $119,542,927.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | StakeToken | token | $97,377,550.41 | Verified native implementation with $97,377,550.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x551fb0...4a552e`](./contracts/berachain-80094/0x551fb0309dd7e1c6e1a59d9389ef10da864a552e/) | CollateralVault | core_logic | $23,706,916.91 | Verified native implementation with $23,706,916.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09d421...8f2b34`](./contracts/ethereum-1/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | Stablecoin | token | $287,991.01 | Verified native implementation with $287,991.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17bbc9...b358f7`](./contracts/ethereum-1/0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7/) | LPToken | token | $120,908.34 | Verified native implementation with $120,908.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc197ad...c7043f`](./contracts/ethereum-1/0xc197ad72936b7c558c96417f22041fe9e3c7043f/) | PlasmaVault | core_logic | $33.05 | Verified native implementation with $33.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa752...e96036`](./contracts/ethereum-1/0x0aa752c9dda32d237a22f04a5971976c71e96036/) | OpportunityOVault | core_logic | $10.33 | Verified native implementation with $10.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2adf03...04b98d`](./contracts/ethereum-1/0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d/) | AssetAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x688e72...d6ac82`](./contracts/berachain-80094/0x688e72142674041f8f6af4c808a4045ca1d6ac82/) | BYUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04716d...d07720`](./contracts/ethereum-1/0x04716db62c085d9e08050fcf6f7d775a03d07720/) | CreditEnforcer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fedba...e5a43b`](./contracts/ethereum-1/0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b/) | DAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1073d5...6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/) | MultiSign | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x480901...96d75d`](./contracts/ethereum-1/0x4809010926aec940b550d34a46a52739f996d75d/) | PegStabilityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x813b08...74232e`](./contracts/ethereum-1/0x813b0857e016b7ae5fb57f464dfad8ee7b74232e/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ccb9a...5dc829`](./contracts/ethereum-1/0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829/) | Rebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6360f4...3154b3`](./contracts/ethereum-1/0x6360f43803732eaeb9f1967b9f74d117e03154b3/) | RusdMintBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0e9f6...f4b4da`](./contracts/ethereum-1/0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da/) | RusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x738d11...e23a31`](./contracts/ethereum-1/0x738d1115b90efa71ae468f1287fc864775e23a31/) | Savingcoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x547561...e947d7`](./contracts/ethereum-1/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | SavingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316cd3...f64514`](./contracts/ethereum-1/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | SrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8292bb...6317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | StablecoinUpgradeableV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be8be...2f5876`](./contracts/ethereum-1/0x4be8be2b72638f87c76f738cc1341665ed2f5876/) | StakingWithUnbonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb431a...91258a`](./contracts/ethereum-1/0xbb431abd156b960e5b77cc45c75f107e3991258a/) | WsrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d09a1...f45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ZeroGEthvDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 6 |
| standard_library | 18 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
