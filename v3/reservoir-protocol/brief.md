# Agentic Audit Brief: Reservoir Protocol

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.358Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma
- Contract surface: 642 unique implementations (752 raw deployments)
- DeFi Llama TVL: $46,514,844.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 81 project-authored contract(s) across 8 chain(s); 12 ERC4626 vaults, 30 ERC20 tokens, 9 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 41 common project-authored base contract(s) (erc165, erc20burnable, oft). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 752; live-surface contracts included: 752 (204 live, 548 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/94 (9.6%)
- Deployed-live implementations: 94 of 642 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/95
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 547
- Unique implementations: 642
- Raw deployments: 752
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 6.3% | 2024-05 |
| unknown | Tier 2 | 4 | 4.2% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x2adf03...04b98d`](./contracts/ethereum-1/0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d/); ethereum `0x65078c...1db0dd`; ethereum `0x86ac8e...4f9be0`; ethereum `0xa100a9...92fe64`; ethereum `0xb82749...42cc93`; ethereum `0xc5dea6...4a73c4` | ✅ Audited |
| CreditEnforcer | unknown | ethereum | n/a | [`0x04716d...d07720`](./contracts/ethereum-1/0x04716db62c085d9e08050fcf6f7d775a03d07720/) | ✅ Audited |
| DAM | adapter | ethereum | n/a | [`0x0fedba...e5a43b`](./contracts/ethereum-1/0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b/) | ✅ Audited |
| PegStabilityModule | unknown | ethereum | n/a | [`0x480901...96d75d`](./contracts/ethereum-1/0x4809010926aec940b550d34a46a52739f996d75d/) | ✅ Audited |
| Rebalance | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0ccb9a...5dc829`](./contracts/ethereum-1/0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829/); ethereum `0x95326f...11cfe7`; ethereum `0xf3fce6...5871c3` | ✅ Audited |
| RusdMintBridge | operational_periphery | ethereum | n/a | [`0x6360f4...3154b3`](./contracts/ethereum-1/0x6360f43803732eaeb9f1967b9f74d117e03154b3/) | ✅ Audited |
| Savingcoin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x738d11...e23a31`](./contracts/ethereum-1/0x738d1115b90efa71ae468f1287fc864775e23a31/); ethereum `0xd3fd63...be3094` | ✅ Audited |
| SavingModule | unknown | ethereum | n/a | [`0x547561...e947d7`](./contracts/ethereum-1/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | ✅ Audited |
| Stablecoin | token | ethereum | n/a | [`0x09d421...8f2b34`](./contracts/ethereum-1/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | 7 deployments: ethereum [`0x4097bc...7110e8`](./contracts/ethereum-1/0x4097bc51a9cde57254947768039e2d671d7110e8/); ethereum `0x6427cc...c2a133`; ethereum `0x6f117e...f4a91f`; ethereum `0xa8c373...26bc29`; ethereum `0xb5d23b...ddc2f3`; ethereum `0xd08129...9f3288`; ethereum `0xf3519a...3d5be7` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | 2 deployments: ethereum [`0x0c0d01...8eab1e`](./contracts/ethereum-1/0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e/); ethereum `0x7c0477...460f4f` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0xe31901...7a77eb`](./contracts/ethereum-1/0xe3190143eb552456f88464662f0c0c4ac67a77eb/) | ⚠️ Unaudited |
| ATokenInstance | token | mantle | n/a | 2 deployments: mantle [`0x7053ba...585b69`](./contracts/mantle-5000/0x7053bad224f0c021839f6ac645bdae5f8b585b69/); mantle `0x8917d4...13b127` | ⚠️ Unaudited |
| ATokenInstance | token | plasma | n/a | 2 deployments: plasma [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/); plasma `0x751940...caf43a` | ⚠️ Unaudited |
| BYUSDOFT | unknown | berachain | n/a | [`0x688e72...d6ac82`](./contracts/berachain-80094/0x688e72142674041f8f6af4c808a4045ca1d6ac82/) | ⚠️ Unaudited |
| CollateralVault | core_logic | berachain | n/a | [`0x551fb0...4a552e`](./contracts/berachain-80094/0x551fb0309dd7e1c6e1a59d9389ef10da864a552e/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | berachain | n/a | [`0xde04c4...6fa8c8`](./contracts/berachain-80094/0xde04c469ad658163e2a5e860a03a86b52f6fa8c8/) | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| DamOft | unknown | base | n/a | 3 deployments: bsc `0xf9ca3f...ababf8`; hyperliquid `0xc6eab5...0e4ff4`; base [`0x713567...a75a72`](./contracts/base-8453/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | ⚠️ Unaudited |
| DamOftAdapter | adapter | ethereum | n/a | [`0x40a341...ea237a`](./contracts/ethereum-1/0x40a341b76a766c56f54985285987dfe52fea237a/) | ⚠️ Unaudited |
| DolomiteMargin | unknown | ethereum | n/a | [`0x003ca2...c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ⚠️ Unaudited |
| EulerEarn | unknown | plasma | n/a | 2 deployments: plasma [`0x66be42...aed21d`](./contracts/plasma-9745/0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d/); plasma `0xe818ad...14dec4` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x6dfc8a...4f60fb`](./contracts/ethereum-1/0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb/); ethereum `0x797dd8...7d48a9`; ethereum `0x9bd52f...8c2cbb`; ethereum `0xab2726...bf2f30`; ethereum `0xaf5372...8f9bb2`; ethereum `0xba98fc...4783b5`; ethereum `0xe0a80d...c42bce` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 3 deployments: plasma `0x1dd4b1...2ed27b`; plasma `0xd8f824...f2d570`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| GhoBucketSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x2ce400...d3831b`](./contracts/mantle-5000/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/); plasma [`0x2ce400...d3831b`](./contracts/plasma-9745/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/) | ⚠️ Unaudited |
| GhoCcipSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x20fd5f...efa6b6`](./contracts/mantle-5000/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/); plasma [`0x20fd5f...efa6b6`](./contracts/plasma-9745/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/) | ⚠️ Unaudited |
| GhoOracle | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x360d8a...bf4d12`](./contracts/mantle-5000/0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12/); plasma `0xb0e1c7...daf1d1` | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | 2 deployments: berachain [`0x1fb6c1...88d4b5`](./contracts/berachain-80094/0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5/); berachain `0x7fd165...7400e6` | ⚠️ Unaudited |
| LPToken | token | ethereum | n/a | 5 deployments: ethereum [`0x17bbc9...b358f7`](./contracts/ethereum-1/0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7/); ethereum `0x5daaee...f99d31`; optimism `0x8d66ff...349ca8`; arbitrum `0x6ea313...fd2225`; arbitrum `0x8d66ff...349ca8` | ⚠️ Unaudited |
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
| MSlCustomAggregatorFeed | unknown | ethereum | n/a | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| MultiSign | governance | ethereum | n/a | 31 deployments: ethereum [`0x1073d5...6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/); ethereum `0x2147bd...bbc5fd`; ethereum `0x2591c2...461d8c`; ethereum `0x315bab...0b6f25`; ethereum `0x3ecbf8...a3d566`; ethereum `0x46f057...4eaa53`; ethereum `0x492184...58ea19`; ethereum `0x5c1e4c...18608b`; ethereum `0x66fc2d...ac6a0e`; ethereum `0x6e36e3...9fe3e6`; ethereum `0x7272b2...9f2cec`; ethereum `0x7f9922...c6de44`; ethereum `0x83f7f1...541fa9`; ethereum `0x860a80...ff898e`; ethereum `0x863c87...55ce6c`; ethereum `0x866eb2...96918c`; ethereum `0x97e9d0...428591`; ethereum `0x9ab2ce...6f8165`; ethereum `0x9b8a83...847a34`; ethereum `0xa2eea1...d9c367`; ethereum `0xb60fa2...6aca2a`; ethereum `0xb723d5...d155ea`; ethereum `0xd4707b...0385d1`; ethereum `0xd48ede...fedd68`; ethereum `0xd9334d...272761`; ethereum `0xe23090...9df5ae`; ethereum `0xf1dcb5...30056f`; ethereum `0xf26b8b...72a71f`; ethereum `0xf7db20...945b3a`; ethereum `0xfbca8b...600bb6`; ethereum `0xff72e1...209ecb` | ⚠️ Unaudited |
| OpportunityOVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x0aa752...e96036`](./contracts/ethereum-1/0x0aa752c9dda32d237a22f04a5971976c71e96036/); ethereum `0x239b05...1d1cd5`; ethereum `0x25df14...cf7017`; ethereum `0x4c921b...b0a140`; ethereum `0x657a24...e7d766`; ethereum `0xa3958f...59b00d`; ethereum `0xc2b578...88cafc`; ethereum `0xe9a655...d72727`; ethereum `0xf3dea8...e12c0e`; ethereum `0xf993d2...6fd87b` | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x1dd188...18dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x2adfb8...efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x440040...e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x553f9c...8ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x5eff78...2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x66b857...8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x690f30...fb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x74e0a5...130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x84568b...24b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x849f28...691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x9e3fd8...076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xac6f22...d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xc87fce...a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xe2ad97...fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xf526ed...3c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | 6 deployments: ethereum [`0x1135b2...b6af9d`](./contracts/ethereum-1/0x1135b22d6e8fd0809392478eedcd8c107db6af9d/); ethereum `0x62c6e8...4038b7`; ethereum `0x8a47b4...a97eaa`; ethereum `0xb7de5d...0d9308`; ethereum `0xbc6736...fae10a`; ethereum `0xe00bd3...947b81` | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | n/a | [`0xc197ad...c7043f`](./contracts/ethereum-1/0xc197ad72936b7c558c96417f22041fe9e3c7043f/) | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x813b08...74232e`](./contracts/ethereum-1/0x813b0857e016b7ae5fb57f464dfad8ee7b74232e/); ethereum `0xeae91b...a549b9` | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | n/a | [`0x6c3ea9...23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | ⚠️ Unaudited |
| RollingBond | unknown | ethereum | n/a | 3 deployments: ethereum [`0x236987...38f096`](./contracts/ethereum-1/0x23698719581ee595277e3f4506be73412b38f096/); ethereum `0x6ba949...43c19f`; ethereum `0xfd3689...45da4f` | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| RusdOft | unknown | bsc | n/a | 3 deployments: bsc [`0x09d421...8f2b34`](./contracts/bsc-56/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/); hyperliquid `0x866d66...f35e78`; base [`0x09d421...8f2b34`](./contracts/base-8453/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ⚠️ Unaudited |
| RusdOftAdapter | adapter | ethereum | n/a | [`0xf0e9f6...f4b4da`](./contracts/ethereum-1/0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da/) | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | ethereum | n/a | [`0x316cd3...f64514`](./contracts/ethereum-1/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | ⚠️ Unaudited |
| StablecoinUpgradeable | token | ethereum | n/a | [`0xcfd748...f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | ethereum | n/a | [`0x8292bb...6317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| StakedCap | token | ethereum | n/a | [`0x88887b...1d8888`](./contracts/ethereum-1/0x88887be419578051ff9f4eb6c858a951921d8888/) | ⚠️ Unaudited |
| StakeToken | token | ethereum | n/a | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | ethereum | n/a | [`0x4be8be...2f5876`](./contracts/ethereum-1/0x4be8be2b72638f87c76f738cc1341665ed2f5876/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| VaultV2 | core_logic | base | n/a | 5 deployments: base [`0x050ce3...ad56f0`](./contracts/base-8453/0x050ce30b927da55177a4914ec73480238bad56f0/); base `0xbeef0e...6873c9`; arbitrum `0xbeeff1...1da518`; arbitrum `0xbeeff7...f2492f`; arbitrum `0xbeefff...31a894` | ⚠️ Unaudited |
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

### ❓ Unverified (547)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | n/a | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x007115...ef7d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b16e...18f003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01feb0...e6afcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x030b69...6a0bf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0312a9...19ac4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x039150...c0ea2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03fda2...f26ec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x056339...6b2e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057a3a...56a7d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06e727...75cf26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07cf28...1ff579` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x091074...080e8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x091f97...af383b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a2a51...722395` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c3291...59fbfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7a74...d085de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7e43...951cc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d1c52...1762fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d84ec...4efc1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d89c1...17d123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d98b6...ff6c47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0eb6...d80847` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f2115...cb9e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f50b4...4e49c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f65f3...cb562d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x109e2a...f6867c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10cc8d...f693bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10f59f...f24c68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x128d86...f6ccf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12c69d...771c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1314fb...1d2084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140e71...1ff8ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x141f0e...9172b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1498dd...56baf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14e31c...bec0f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a4c3...ee3862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f724...348c57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1615cb...5d76e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x164645...b146dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16d4f9...7cdb67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x189f2b...ff00ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18f7f9...ee8648` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19569a...616f07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19623f...77851e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ab19...ca9f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a57ab...e128cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ac3e6...77a603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b5717...11bc24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bb6dd...32f0fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c04a3...ebf085` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c2757...be92b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ce3e1...0955dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d3147...910202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d9953...875615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e2165...7a3fc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe179...9291c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x202266...683464` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x207bd5...f04f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20c548...1c5bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20cd58...8d91cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21f3bc...0ea749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x238a70...e466ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x247222...cb1a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24aea6...473e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2530e3...567ea5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x262353...72ea3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263a7a...52383c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x265041...d6ab3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27c0d4...7780b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27e6f2...1b0ea7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x283cbe...e32f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a2bdb...b75fb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a8c22...88b656` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aee3e...dbb7dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b930c...bdcfe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdaef...39e8e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c2d0c...721499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6808...2e9850` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ce151...574b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d7d5b...9b950c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2db1ec...fe0085` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ddc91...8e91c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e0357...490ada` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f1372...14975f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f319e...e1f4e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f4e7d...c74834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f98a1...8091d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe058...7d8e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x307267...589fd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x307be9...057a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30acce...338c06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30d542...d1b3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30d9d1...3efc1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x313c76...b78164` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x319a05...3d5106` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32fb95...6406e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x334b32...3e3d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335992...82517c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x337d91...895241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ed48...3c6fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34031e...dfd0dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341cb1...7ecac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3549f6...f44b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x355060...945ab3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x364fb0...e049aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x375af4...ae36d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37769a...7af6ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x389035...bbcac4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39592b...69ae4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39c189...74fb87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39f050...341455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3aac6f...c0edc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ade4d...a8815a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b6f8c...5afc25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c24ec...441ae9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3de2e7...42f5d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e45d8...4dd14c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f5e04...30a855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x408077...f7c926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4089dc...0cbe27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40b6c3...54cf21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x414384...a0c3de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x416ec6...4ec93c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c607...efa663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42d2b0...653f3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42e82b...1215b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4323c7...116aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43881b...005f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4388ba...f43fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x449f44...12287c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44b044...5fd19c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452a72...48f9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46eab5...d09e78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x482d1e...0d00cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48599a...c83459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x488f2a...573796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x489a79...40d701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48e284...bb49c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f42c...7ca724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a6947...da83b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aab19...08a12f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b805d...f5a522` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcfda...95001a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c727b...4bb837` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cfd86...c76fd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e6840...6bc4d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eed11...fde211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6e58...959393` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fd4dd...4321b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe7f6...e8080f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff00e...080d81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x504c04...11fb5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x507f40...a029d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508fe9...f40fc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5113bf...e1cc91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5130fb...d70b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x513bd4...1aaf9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517d00...71c18b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x521f61...6ccb2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52e808...a5b35d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5356b8...565234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53a709...eaf113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c764...ed62d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x540f33...5d57ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x543cd6...7765ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545522...498c2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5463a2...e06912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x548857...92785b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54d08a...5fe81f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54d478...d439d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e5b3...b3d871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5572eb...062d78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x562bb5...420c55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x568143...de744f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5696b6...e966af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x569d7d...c4f0ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x570c15...505e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57b3be...9ecdab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57c0fb...702295` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57da05...dfe27e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5940c6...3fede4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a096a...90bf1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a4286...a2e0c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ad2e3...8d2dfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ae23d...77d1b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aea6d...6af5c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b1b99...eb40cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c81ee...08a0fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca035...cd94bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5cdabc...efacca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d699f...275dfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5da804...247409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e1549...0e47f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5aab...634c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f09af...e55d61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f5b02...e887c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6022a0...55081a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x605a84...18db0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6142ad...cc3ad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x620330...f6bd4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62344b...6900b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62c81e...f15e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6390b8...14dc56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63f4fe...5bf8b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x649f86...986aeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x654560...83aac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65c4e0...0f15ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65df72...df039b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672dce...72d116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67e14d...aaefac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x689e9f...d86b17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x695fb3...850c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x698da5...0406b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a3996...30e40e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6abbe3...3eef82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b6b87...0857e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6be2f5...366e98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bffda...7e5fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c19e2...f2c8dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d233c...cff437` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d62d3...4823b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e0433...0d30df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e3b7f...ae8522` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ee5bc...be58ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f0c37...01d526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f51d8...e83be6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x711077...03ce75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7165c2...cd83d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x718875...5d5b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71efa7...679c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72cca9...761e96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73117e...5044b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x733ace...5fa347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73ad6a...7e8528` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73cb9a...ee9d84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x743c08...abffa8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x745088...76c5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7463f8...f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x753171...28d6bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75515e...754de9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x757876...600dec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x766255...b6a810` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76cc16...3f7bbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7700af...49761a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x771242...873050` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77e7d3...f9c32c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7811c1...a81188` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x781367...e629a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7814b9...e88723` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x783339...33cfb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78b67f...05163c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78f9fb...142610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x798910...48a6fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a4c56...41b3b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a66a9...66433a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ad369...b63769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b7982...578683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b83aa...bf799d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b904f...fd49c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b9a4e...78c151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c5b87...7aa26c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf9de...116c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d5b8a...b040bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d9bcf...c04b67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7daee1...f837cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e8c63...34da93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ecbc2...53025a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807f2c...4a9801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81c097...7f6f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8335d9...2ece2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8378d5...c78a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x841eeb...24e29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84303e...b7ee4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x844889...d15f1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8459f6...c92c27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8493f1...73789a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87c905...afb0cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88956c...264403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8978e3...ae1470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a14ea...e816d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a8305...a75e79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b0fdf...fe701e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bee38...d57c22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c7400...c047d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cc8fe...34f35d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cf944...442aab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d51db...50e68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d7ee2...be24b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d874a...7f3a9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d8f82...b2ccd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e2c2c...4154be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f1964...8c6f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f382a...ee1386` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9004b9...d6cd22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x906d24...224a9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90cd34...5b8508` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x910cde...4a6f4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x915fbb...3ca331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91e5f5...ef65cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ff55...58fb8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92004d...6decde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931403...0a5b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a404...89f57a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95a17b...d5b87d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96325d...30f922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96927b...d84b51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97acdf...a1b3a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bfe1...857609` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x993614...796683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x996173...505b4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x997346...09cde9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9987be...b3e28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a4b20...d9919f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a5cf6...2d8387` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aebf5...bdd358` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b2c5e...6af15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b5528...1191b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b5908...b39198` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b8259...4eb554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bb2c3...69ef80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bf00b...7ee359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c3743...ac446f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9de073...eb8967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9df595...92612b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e1366...02b0cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6050...f4279c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6db0...072bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e7d51...89cb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9dbc...e4d70c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9f92...a853cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ed03d...fcd463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9edca6...eb4e9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f49b0...ff9524` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f7dd5...e2f972` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f8136...cf9635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f819f...df3990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fb442...9f661a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fd2f4...cddfca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa01227...dea417` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1150c...a5adab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa14fda...37ba3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa19f6e...f5eca6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa37cfc...324c1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa384e7...3893db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa48cfd...eee17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa537ef...a189ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d60a...491e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d932...8f4576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa70009...e07b41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7ab67...25897c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7c6c1...9a9a96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8010a...b502d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85b5d...1fa458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a5c4...a15d88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9111d...0b0c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96ee5...75331a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98b4a...c22a0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa0714...49cb52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa192f...196deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa7bee...e7d567` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac14a1...34184d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac5c4d...50e5e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac76ef...7fadfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac79fe...deb0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfbf6...9a680e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad2b15...12761e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad6ae6...5fc7f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef69c...ffcdd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcc1c...a352b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb02cc7...346cca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ea26...71d126` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb164b2...22ca30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1aab9...4c192e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb22ad8...74c42c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb385d2...b21b20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4f89c...b699c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4fa9f...108221` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5721b...a9b10c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5c5f2...19c701` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5d648...74186d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb64c01...5963dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb70ece...aae6a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb73d1e...411e89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb75b82...043157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb83a6c...af86ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb89ea4...bbd877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ba8a...f9d056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8d9ec...b6f5ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb93b94...84251e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb94ec9...5b2ebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb95289...9934ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9e65b...fb6bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba9fd2...f11024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb51e2...ab7a55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbccac5...895a52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd560c...021ea2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdc030...74f15c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe1f59...513804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf25b5...600aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf2a93...7e6e7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfb6b9...20d5f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfd184...071429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc04e15...f4492f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc18091...b8947b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc21511...0d5921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2a261...fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2c265...083b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc344db...4f2368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc35b2a...c86557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc434e7...69fc87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc470e9...29e3d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4fb4b...587ed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5efb1...d344a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63b92...c11bbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc665f0...b9a0b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc747fd...5c947f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc78fc5...c53767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7ed1d...595c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8495e...783085` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8af84...55982b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc904de...a73cc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc93bb8...a0181b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9d25e...25b276` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaacb4...57e5e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbcf1e...3369f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc6efe...82300a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0a29...924ac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce2326...bd0cea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4117...e01afc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf4e49...9c1c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0402b...b8515d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0bbc3...355c95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0bdef...a3ef67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0eed9...9af61f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1660d...597e91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd194df...84ba24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1c5cb...cbb4f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd252eb...ced7c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b5f8...101c63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38cbf...2c5b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3c16f...277185` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd43cc4...97df0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4998c...5c8455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd60cb8...7b5dc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65556...7202fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6fd5d...ffc1bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89a4d...747c77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd91546...48719b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd91b5b...86d32e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdadd82...3e87ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce7eb...b0f504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd2ec1...4cf487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd58d3...25dbc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5a54...3960e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd629e...54e438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddc408...fc8071` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddfda0...a8bc1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdecc61...f0052a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1451...13df4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe00560...59b588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04267...34ba0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe08462...417893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe09273...74704f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe09823...603861` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe123eb...ccc7e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe19980...8e2288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe32403...05654a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe35b66...802e71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe35c30...9b107e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe43861...fb0689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe451b7...4ebf5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4b2e0...80aded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4b767...a46fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4f2ae...390d24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe54778...1d9c05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5a76d...3af6c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe60066...68bf40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe604a4...e99aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe71d9b...dad093` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe786da...0cea30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7ece9...0ad2d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe802e0...80be50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe85f2b...e30109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e48a...3db87f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea6a49...cc995e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6a96...e10148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebdb72...86a781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec4449...27adbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecca68...61786f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecdfd5...940270` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed22a9...3fe65e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed5905...800104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed8378...d5c268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedba99...62747d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec3e8...4be21b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb2e2...7a4d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefed40...39b084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c91b...2008cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf39b57...77cca9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c24b...7fe04b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4376c...718324` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4ec6b...1d6e5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f042...a7e600` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf51ad2...17a237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf54c49...cf40dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf556e4...880024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5fcd6...2d9a41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62a22...eee2df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c9f5...d621d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6e51d...6d4517` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7c450...589b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf80332...8a7327` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf804a6...969840` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89d50...d2b3c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89feb...b27e3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1c5...e69b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9ac90...d4bd4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa4f57...457718` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaae52...ace18c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfabb7e...d2c6f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfac68d...4127f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfac98f...8b1674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb136e...b67712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2804...0ef23e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfca6c2...7f707f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc991...00ad56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcee97...734a2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcf0fd...9602e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe052c...51b1e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8de1...c668cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfee08d...c317b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfee636...ee6950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffa36b...c3571e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffc671...c2361f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffd462...474b65` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb0e1c7...daf1d1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb77e87...b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xde6539...487d4e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfc421a...799e73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x480901...96d75d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x360d8a...bf4d12` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb77e87...b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xde6539...487d4e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc421a...799e73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.halborn.com/audits/fortunafi/reservoir-updated) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 3 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | 12 | high |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | medium |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 642 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=22

Zero-match audit list:

- [18059] DL audit link
- [18060] docs.google.com/viewerng/viewer
- [18063] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view

Fork inheritance lineage and inherited audits are included when available.
