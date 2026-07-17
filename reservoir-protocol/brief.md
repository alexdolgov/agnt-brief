# Agentic Audit Brief: Reservoir Protocol

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.715Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma
- Contract surface: 150 unique implementations (260 raw deployments)
- DeFi Llama TVL: $46,514,844.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 81 project-authored contract(s) across 8 chain(s); 12 ERC4626 vaults, 30 ERC20 tokens, 9 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 41 common project-authored base contract(s) (erc165, erc20burnable, oft). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 260; live-surface contracts included: 260 (204 live, 56 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/75 (12.0%)
- Deployed-live implementations: 94 of 150 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/95
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 150
- Raw deployments: 260
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
| AssetAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d`](./contracts/ethereum-1/0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d/); ethereum `0x65078cfef8f7c07441661393eab6cb93b31db0dd`; ethereum `0x86ac8e29be5ad83c611fe054df20970d3b4f9be0`; ethereum `0xa100a910a30b745064d7174863b730ad6d92fe64`; ethereum `0xb82749f316cb9c06f38587abecf3eb1bc842cc93`; ethereum `0xc5dea68cce26c014bec516cda70c107c534a73c4` | ✅ Audited |
| CreditEnforcer | unknown | ethereum | n/a | [`0x04716db62c085d9e08050fcf6f7d775a03d07720`](./contracts/ethereum-1/0x04716db62c085d9e08050fcf6f7d775a03d07720/) | ✅ Audited |
| DAM | adapter | ethereum | n/a | [`0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b`](./contracts/ethereum-1/0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b/) | ✅ Audited |
| PegStabilityModule | unknown | ethereum | n/a | [`0x4809010926aec940b550d34a46a52739f996d75d`](./contracts/ethereum-1/0x4809010926aec940b550d34a46a52739f996d75d/) | ✅ Audited |
| Rebalance | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829`](./contracts/ethereum-1/0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829/); ethereum `0x95326f35e6fdc87956c1d0445e03f6ec5811cfe7`; ethereum `0xf3fce677743350629dd1ec0820fbe6f72c5871c3` | ✅ Audited |
| RusdMintBridge | operational_periphery | ethereum | n/a | [`0x6360f43803732eaeb9f1967b9f74d117e03154b3`](./contracts/ethereum-1/0x6360f43803732eaeb9f1967b9f74d117e03154b3/) | ✅ Audited |
| Savingcoin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x738d1115b90efa71ae468f1287fc864775e23a31`](./contracts/ethereum-1/0x738d1115b90efa71ae468f1287fc864775e23a31/); ethereum `0xd3fd63209fa2d55b07a0f6db36c2f43900be3094` | ✅ Audited |
| SavingModule | unknown | ethereum | n/a | [`0x5475611dffb8ef4d697ae39df9395513b6e947d7`](./contracts/ethereum-1/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | ✅ Audited |
| Stablecoin | token | ethereum | n/a | [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/ethereum-1/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf779346dbd1d0a0e97282cb715543c8daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391a651c080e99b38c179575342512769d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | n/a | 7 deployments: ethereum [`0x4097bc51a9cde57254947768039e2d671d7110e8`](./contracts/ethereum-1/0x4097bc51a9cde57254947768039e2d671d7110e8/); ethereum `0x6427cc8c8f7149a0dc488a96136b40f881c2a133`; ethereum `0x6f117ebb33ceb617d867506d892ee56e40f4a91f`; ethereum `0xa8c37368640c834323910a63784000b27926bc29`; ethereum `0xb5d23b36ef5e94ec02df27048731bbd753ddc2f3`; ethereum `0xd0812902fd6c3426eae52c30ebaec404819f3288`; ethereum `0xf3519add0d4ad01b736c63a1b75e80b2fe3d5be7` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | 2 deployments: ethereum [`0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e`](./contracts/ethereum-1/0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e/); ethereum `0x7c0477d085ecb607cf8429f3ec91ae5e1e460f4f` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | [`0xe3190143eb552456f88464662f0c0c4ac67a77eb`](./contracts/ethereum-1/0xe3190143eb552456f88464662f0c0c4ac67a77eb/) | ⚠️ Unaudited |
| ATokenInstance | token | mantle | n/a | 2 deployments: mantle [`0x7053bad224f0c021839f6ac645bdae5f8b585b69`](./contracts/mantle-5000/0x7053bad224f0c021839f6ac645bdae5f8b585b69/); mantle `0x8917d4ee4609f991b559daf8d0ad1b892c13b127` | ⚠️ Unaudited |
| ATokenInstance | token | plasma | n/a | 2 deployments: plasma [`0x5d72a9d9a9510cd8cbdba12ac62593a58930a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/); plasma `0x7519403e12111ff6b710877fcd821d0c12caf43a` | ⚠️ Unaudited |
| BYUSDOFT | unknown | berachain | n/a | [`0x688e72142674041f8f6af4c808a4045ca1d6ac82`](./contracts/berachain-80094/0x688e72142674041f8f6af4c808a4045ca1d6ac82/) | ⚠️ Unaudited |
| CollateralVault | core_logic | berachain | n/a | [`0x551fb0309dd7e1c6e1a59d9389ef10da864a552e`](./contracts/berachain-80094/0x551fb0309dd7e1c6e1a59d9389ef10da864a552e/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | berachain | n/a | [`0xde04c469ad658163e2a5e860a03a86b52f6fa8c8`](./contracts/berachain-80094/0xde04c469ad658163e2a5e860a03a86b52f6fa8c8/) | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| DamOft | unknown | base | n/a | 3 deployments: bsc `0xf9ca3fe094212ffa705742d3626a8ab96aababf8`; hyperliquid `0xc6eab56426ae6e0dfe72ec1ce2aaf73dae0e4ff4`; base [`0x71356761fd23e77e5d78c37c70fe78229ca75a72`](./contracts/base-8453/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | ⚠️ Unaudited |
| DamOftAdapter | adapter | ethereum | n/a | [`0x40a341b76a766c56f54985285987dfe52fea237a`](./contracts/ethereum-1/0x40a341b76a766c56f54985285987dfe52fea237a/) | ⚠️ Unaudited |
| DolomiteMargin | unknown | ethereum | n/a | [`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ⚠️ Unaudited |
| EulerEarn | unknown | plasma | n/a | 2 deployments: plasma [`0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d`](./contracts/plasma-9745/0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d/); plasma `0xe818ad0d20d504c55601b9d5e0e137314414dec4` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb`](./contracts/ethereum-1/0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb/); ethereum `0x797dd80692c3b2dadabce8e30c07fde5307d48a9`; ethereum `0x9bd52f2805c6af014132874124686e7b248c2cbb`; ethereum `0xab2726daf820aa9270d14db9b18c8d187cbf2f30`; ethereum `0xaf5372792a29dc6b296d6ffd4aa3386aff8f9bb2`; ethereum `0xba98fc35c9dfd69178ad5dce9fa29c64554783b5`; ethereum `0xe0a80d35bb6618cba260120b279d357978c42bce` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 3 deployments: plasma `0x1dd4b13fcae900c60a350589be8052959d2ed27b`; plasma `0xd8f824d4252cae7d5e49b95d47b0efafe6f2d570`; arbitrum [`0x1a996cb54bb95462040408c06122d45d6cdb6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| GhoBucketSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x2ce400703dacc37b7edfa99d228b8e70a4d3831b`](./contracts/mantle-5000/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/); plasma [`0x2ce400703dacc37b7edfa99d228b8e70a4d3831b`](./contracts/plasma-9745/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/) | ⚠️ Unaudited |
| GhoCcipSteward | unknown | mantle | n/a | 2 deployments: mantle [`0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6`](./contracts/mantle-5000/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/); plasma [`0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6`](./contracts/plasma-9745/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/) | ⚠️ Unaudited |
| GhoOracle | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12`](./contracts/mantle-5000/0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12/); plasma `0xb0e1c7830aa781362f79225559aa068e6bdaf1d1` | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | 2 deployments: berachain [`0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5`](./contracts/berachain-80094/0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5/); berachain `0x7fd165b73775884a38aa8f2b384a53a3ca7400e6` | ⚠️ Unaudited |
| LPToken | token | ethereum | n/a | 5 deployments: ethereum [`0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7`](./contracts/ethereum-1/0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7/); ethereum `0x5daaee9ef143faff495b581e9863570e83f99d31`; optimism `0x8d66ff1845b1bacc6e87d867ca4680d05a349ca8`; arbitrum `0x6ea313859a5d9f6ff2a68f529e6361174bfd2225`; arbitrum `0x8d66ff1845b1bacc6e87d867ca4680d05a349ca8` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | n/a | [`0x4d371cc63fb8efd48aff59c5a0c064863ae4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | [`0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61`](./contracts/base-8453/0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | berachain | n/a | 6 deployments: ethereum `0x777791c4d6dc2ce140d00d2828a7c93503c67777`; optimism `0xc30ce6a5758786e0f640cc5f881dd96e9a1c5c59`; base `0xbeefe94c8ad530842bfe7d8b397938ffc1cb83b2`; arbitrum `0x5c0c306aaa9f877de636f4d5822ca9f2e81563ba`; arbitrum `0x7e97fa6893871a2751b5fe961978dccb2c201e65`; berachain [`0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | n/a | [`0xad391d0c554391c7cd81ebaf410866d1967c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | n/a | [`0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10e2352da4790e547095f06fa3ef3093881080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9a950d4d50e23e833de0a27083f4dc781ae`; ethereum `0xa8bb0307b255925718e7f76788fb663f23d9bbfb`; ethereum `0xf406f9b5d1c78d6ee2d0d1d297057b1721dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | n/a | [`0xa62249abe86e75717ef9705f2fdb19b39c130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e2d295a450e4704c3603b54b33eb7d086c0`; ethereum `0xc76e6105f79feb40ae04efbb10d994386c1c04c5`; ethereum `0xe43d2d52c047e2ca3f7ba3a0d03e513536eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | ethereum | n/a | [`0xe3eee3e0d2398799c884a47fc40c029c8e241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| MockERC20 | token | ethereum | n/a | [`0x74a56c3255c55c9f324eac74923406dc02e913a1`](./contracts/ethereum-1/0x74a56c3255c55c9f324eac74923406dc02e913a1/) | ⚠️ Unaudited |
| MockUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954`](./contracts/ethereum-1/0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954/); ethereum `0xe7b9d18af42b80bba370dfdd9c4d7b6f0b820cef` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc`](./contracts/ethereum-1/0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc/); ethereum `0x99a95a9e38e927486fc878f41ff8b118eb632b10`; ethereum `0x99e8903bdefb9e44cd6a24b7f6f97ddd071549bc`; ethereum `0xb595ba80d38b8e4c9894a6734a1b9a7b198870a2` | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf65a5bb03c25c63ceb20e971f101ed060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | n/a | [`0x12570b84b633629b1db532fd3420f34a30acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| MultiSign | governance | ethereum | n/a | 31 deployments: ethereum [`0x1073d55dfb892ed86151015402db8b1cdb6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/); ethereum `0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd`; ethereum `0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c`; ethereum `0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25`; ethereum `0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566`; ethereum `0x46f05709230c5a6c780d9bc1f629a991084eaa53`; ethereum `0x49218440314834dacc38051e39a5054b7958ea19`; ethereum `0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b`; ethereum `0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e`; ethereum `0x6e36e38910c0145cafaa96516083c160049fe3e6`; ethereum `0x7272b2a0d2e9ae6f381677887760e953bc9f2cec`; ethereum `0x7f9922bae30ccc28d32ae284ee69e47f94c6de44`; ethereum `0x83f7f1c6a1547afe2841943f428cf6ff28541fa9`; ethereum `0x860a80bd349dc4e46dc7345600eb627552ff898e`; ethereum `0x863c8754c298d3efec3863f2a46f1c71a355ce6c`; ethereum `0x866eb2f5c483fa525137f982c2be220aa096918c`; ethereum `0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591`; ethereum `0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165`; ethereum `0x9b8a83e875023c3fefd8354044e011d8bc847a34`; ethereum `0xa2eea193444b16fe2d18cfe977aceeea6dd9c367`; ethereum `0xb60fa2ad48959c016fb7545d045aeb60086aca2a`; ethereum `0xb723d5ef303711d774fed6435ed6f5e82ed155ea`; ethereum `0xd4707b518a03d3a05dd2a33df5d1fb33690385d1`; ethereum `0xd48ede10152fcad67621fc5a6ae30b5b79fedd68`; ethereum `0xd9334dd55b25f928b702d143981a8173c7272761`; ethereum `0xe230900ece18f5ca83c8640b2eb73de74f9df5ae`; ethereum `0xf1dcb5394d27a41662847d512dcc903cda30056f`; ethereum `0xf26b8bb4e76528e7f061df4441965df80d72a71f`; ethereum `0xf7db20653fe8951e3c72f168310f4229d9945b3a`; ethereum `0xfbca8b5f5794456b59ad4177e5b212d0db600bb6`; ethereum `0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | ⚠️ Unaudited |
| OpportunityOVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x0aa752c9dda32d237a22f04a5971976c71e96036`](./contracts/ethereum-1/0x0aa752c9dda32d237a22f04a5971976c71e96036/); ethereum `0x239b05e4e426f4dd029aae82189c4e79281d1cd5`; ethereum `0x25df1488dcb18e56573f4417173e7793e4cf7017`; ethereum `0x4c921bf9dfa88ef92c86c17ce5a30e9bb3b0a140`; ethereum `0x657a2473f81434fc827e26d77d7ff913e6e7d766`; ethereum `0xa3958f59f3ca340a71470aa167c1d01d6d59b00d`; ethereum `0xc2b5781b8d90a3d1e4174bf6eb3559b50988cafc`; ethereum `0xe9a65548438857cfcf2a843ff7528e904bd72727`; ethereum `0xf3dea88e5d5c41f65a5a07b26e383098dbe12c0e`; ethereum `0xf993d22b1e312da0ee4a8c8d5da3a6c20f6fd87b` | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x0aecdf39d9d02833a055bf1eca518a83f66f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x1dd1889702a64bfc6197ac9a2c206b723918dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x2adfb82dd33165b76d55b926a2edabed49efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x440040d670efe06ac666957692d0cd7c36e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x553f9c0bc76492e1e2d6d426c0217be6f68ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x5eff78782e823de725974a9db02d440c1a2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x66b85714e4aba1644d50c7f9fc173222aa8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x690f305e51650e7549fb60182cd0db81bafb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x74e0a55ea3db85f6106ffd69ef7c9829fd130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x84568bccd84f7fd8c680e9101da0ef75a024b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x9e3fd82a18d72a74308c65193269f1af2f076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xac6f2295156026cccddffbadbfa975e8c6d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xc87fce4358dd5f82e937a885bc10269660a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | 6 deployments: ethereum [`0x1135b22d6e8fd0809392478eedcd8c107db6af9d`](./contracts/ethereum-1/0x1135b22d6e8fd0809392478eedcd8c107db6af9d/); ethereum `0x62c6e813b9589c3631ba0cdb013acdb8544038b7`; ethereum `0x8a47b431a7d947c6a3ed6e42d501803615a97eaa`; ethereum `0xb7de5dfcb74d25c2f21841fbd6230355c50d9308`; ethereum `0xbc6736d346a5ebc0debc997397912cd9b8fae10a`; ethereum `0xe00bd3df25fb187d6abbb620b3dfd19839947b81` | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | n/a | [`0xc197ad72936b7c558c96417f22041fe9e3c7043f`](./contracts/ethereum-1/0xc197ad72936b7c558c96417f22041fe9e3c7043f/) | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x813b0857e016b7ae5fb57f464dfad8ee7b74232e`](./contracts/ethereum-1/0x813b0857e016b7ae5fb57f464dfad8ee7b74232e/); ethereum `0xeae91b4c84e1edfa5d78dcae40962c7655a549b9` | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | n/a | [`0x6c3ea9036406852006290770bedfcaba0e23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | ⚠️ Unaudited |
| RollingBond | unknown | ethereum | n/a | 3 deployments: ethereum [`0x23698719581ee595277e3f4506be73412b38f096`](./contracts/ethereum-1/0x23698719581ee595277e3f4506be73412b38f096/); ethereum `0x6ba949c39c2ef9748c8e3eac58f7099f0543c19f`; ethereum `0xfd36896c28f168bff79c9e7d57307e4a2645da4f` | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba087e30928886baba15b1584d4ac9abaab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| RusdOft | unknown | bsc | n/a | 3 deployments: bsc [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/bsc-56/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/); hyperliquid `0x866d66f64fb81461903e1e38d998e747ecf35e78`; base [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/base-8453/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ⚠️ Unaudited |
| RusdOftAdapter | adapter | ethereum | n/a | [`0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da`](./contracts/ethereum-1/0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da/) | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | ethereum | n/a | [`0x316cd39632cac4f4cdfc21757c4500fe12f64514`](./contracts/ethereum-1/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | ⚠️ Unaudited |
| StablecoinUpgradeable | token | ethereum | n/a | [`0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | ethereum | n/a | [`0x8292bb45bf1ee4d140127049757c2e0ff06317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| StakedCap | token | ethereum | n/a | [`0x88887be419578051ff9f4eb6c858a951921d8888`](./contracts/ethereum-1/0x88887be419578051ff9f4eb6c858a951921d8888/) | ⚠️ Unaudited |
| StakeToken | token | ethereum | n/a | [`0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | ethereum | n/a | [`0x4be8be2b72638f87c76f738cc1341665ed2f5876`](./contracts/ethereum-1/0x4be8be2b72638f87c76f738cc1341665ed2f5876/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d3ec4af69af52701a539d3bd14873ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a45de12adb09d67bc361ed7a79ffd237850`; ethereum `0xd071079c4c450af995e17afca91d03446b368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cbc273daae91d6109ee5bb958ac6b7198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37365fffff0a3884892b7363c0a8615bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4d8add893d0227690f435e1ff734d9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x43835934e2b8aea718bdb014f5df08761a47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652ab236f32482f5018b027c8b54c13750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| VaultV2 | core_logic | base | n/a | 5 deployments: base [`0x050ce30b927da55177a4914ec73480238bad56f0`](./contracts/base-8453/0x050ce30b927da55177a4914ec73480238bad56f0/); base `0xbeef0e0834849acc03f0089f01f4f1eeb06873c9`; arbitrum `0xbeeff1d5de8f79ff37a151681100b039661da518`; arbitrum `0xbeeff77ce5c059445714e6a3490e273fe7f2492f`; arbitrum `0xbeefff13dd098de415e07f033dae65205b31a894` | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0c3f5fafb87318c0deaebff096aba019501fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/); ethereum `0xb79301126f9641b20771e3276b9011a481534bcc` | ⚠️ Unaudited |
| WsrusdOft | unknown | hyperliquid | n/a | 3 deployments: bsc `0x4809010926aec940b550d34a46a52739f996d75d`; hyperliquid [`0x04716db62c085d9e08050fcf6f7d775a03d07720`](./contracts/hyperliquid-999/0x04716db62c085d9e08050fcf6f7d775a03d07720/); base `0x62344be8ca1c339b46274a4017dd87af436900b1` | ⚠️ Unaudited |
| WsrusdOftAdapter | adapter | ethereum | n/a | [`0xbb431abd156b960e5b77cc45c75f107e3991258a`](./contracts/ethereum-1/0xbb431abd156b960e5b77cc45c75f107e3991258a/) | ⚠️ Unaudited |
| WstEthAdapter | adapter | ethereum | n/a | [`0xa74f994672f232a30067da820f0e54881edbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | ethereum | n/a | [`0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | ethereum | n/a | [`0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | n/a | `0x21522659c821c9f35be3815787287eaff2234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7e4342534e6e8783311dcf17828a2aa0951cc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f65f32e2043a661fbf151b1831eda7bf4cb562d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10f59fb2bc4197caa5fa57320886d3caf6f24c68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x128d86a9e854a709df06b884f81eee7240f6ccf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12c69d535605d035fe5eb63da04fea0434771c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14e31c26e099a0a7489237345f9a469eddbec0f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x189f2ba6da6f5900eebaf96ffa7ec16dccff00ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x262353a0770b7672c4bdd79578c2c5626872ea3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b930c0a75d12e8c8655dd3cc5352eebd2bdcfe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ade4df56df6c3f080d2180a2b653f2fe3a8815a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b6f8c0eeb1635d3a3fe8b293699dbb9c65afc25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd65f20534b927730f9aee4d37a0316f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40b6c3e17b139dfe4d0650914c3317d09654cf21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aab19dc2f4951c1024c48c6976270bd4d08a12f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e684032b8b066215faacf883e16c01e456bc4d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5130fb9bd3331d1c128a0552463ce9cb02d70b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d699fa596ee91f315fe99bd75b7e56447275dfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62344be8ca1c339b46274a4017dd87af436900b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c19e25bd34d063829dd05e2a5fae165ddf2c8dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324681b6b1746aace4b0361c0670f51d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ad369f1fc8ac0cba5a4ddb8381cd7d210b63769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a14ea8f237cd2f40ebd9fc4cf48d25ba8e816d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f19644d78dc4dace7afa410486f446dab8c6f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9961732e2c4536beab31fddd2415b650c8505b4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b8259b0347e8b9543f1a3f33a3781fd644eb554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bb2c38f57883e5285b7c296c66b9eea4769ef80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6db0c4cdbaa18141fbc9d4365b829910072bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fd2f48578f92c1abf4075da395a8aa8dccddfca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98b4a70e17e55045cde4972b95bc2e8cec22a0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa07148fade101e3ba976b6f38ba454f9f49cb52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb22ad8c16d921dada40f150ef48bd9055574c42c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb385d20dab411d20870f47d9ca1920533db21b20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4f89c68e382b9639e536d70851e72964ab699c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb95289df7857b27509151a10612ada745c9934ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7ed1dd7dc9909aa39d5f67476971c53c2595c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe71d9b65bab0f3499c17773a6466da485ddad093` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf556e471e7916135176afd7de24a305793880024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c9f57454b993f1b3f65c6e67b0e39a43d621d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfac98fbe68a4153be8eed8de289a9ccdec8b1674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfee08d34a0323aadd2bd788e5258d26275c317b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb0e1c7830aa781362f79225559aa068e6bdaf1d1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb77e872a68c62cfc0dfb02c067ecc3da23b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xde6539018b095353a40753dc54c91c68c9487d4e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfc421ad3c883bf9e7c4f42de845c4e4405799e73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4809010926aec940b550d34a46a52739f996d75d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb77e872a68c62cfc0dfb02c067ecc3da23b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xde6539018b095353a40753dc54c91c68c9487d4e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc421ad3c883bf9e7c4f42de845c4e4405799e73` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | AcreAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0391a651c080e99b38c179575342512769d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | acreBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4097bc51a9cde57254947768039e2d671d7110e8`](./contracts/ethereum-1/0x4097bc51a9cde57254947768039e2d671d7110e8/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e`](./contracts/ethereum-1/0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3190143eb552456f88464662f0c0c4ac67a77eb`](./contracts/ethereum-1/0xe3190143eb552456f88464662f0c0c4ac67a77eb/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7053bad224f0c021839f6ac645bdae5f8b585b69`](./contracts/mantle-5000/0x7053bad224f0c021839f6ac645bdae5f8b585b69/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x5d72a9d9a9510cd8cbdba12ac62593a58930a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x688e72142674041f8f6af4c808a4045ca1d6ac82`](./contracts/berachain-80094/0x688e72142674041f8f6af4c808a4045ca1d6ac82/) | BYUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x551fb0309dd7e1c6e1a59d9389ef10da864a552e`](./contracts/berachain-80094/0x551fb0309dd7e1c6e1a59d9389ef10da864a552e/) | CollateralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xde04c469ad658163e2a5e860a03a86b52f6fa8c8`](./contracts/berachain-80094/0xde04c469ad658163e2a5e860a03a86b52f6fa8c8/) | ComposableStablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | CustomAggregatorV3CompatibleFeedDiscounted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x71356761fd23e77e5d78c37c70fe78229ca75a72`](./contracts/base-8453/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | DamOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40a341b76a766c56f54985285987dfe52fea237a`](./contracts/ethereum-1/0x40a341b76a766c56f54985285987dfe52fea237a/) | DamOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | DolomiteMargin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d`](./contracts/plasma-9745/0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d/) | EulerEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb`](./contracts/ethereum-1/0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a996cb54bb95462040408c06122d45d6cdb6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | fToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2ce400703dacc37b7edfa99d228b8e70a4d3831b`](./contracts/mantle-5000/0x2ce400703dacc37b7edfa99d228b8e70a4d3831b/) | GhoBucketSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6`](./contracts/mantle-5000/0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6/) | GhoCcipSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12`](./contracts/mantle-5000/0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12/) | GhoOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | GhoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5`](./contracts/berachain-80094/0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5/) | KodiakIslandWithRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7`](./contracts/ethereum-1/0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d371cc63fb8efd48aff59c5a0c064863ae4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | MApolloDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | MApolloRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad391d0c554391c7cd81ebaf410866d1967c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | MevBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | MevBtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | MFarmDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e2352da4790e547095f06fa3ef3093881080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62249abe86e75717ef9705f2fdb19b39c130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | MHyperDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | MHyperRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | MidasLzMintBurnOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3eee3e0d2398799c884a47fc40c029c8e241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | MidasTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a56c3255c55c9f324eac74923406dc02e913a1`](./contracts/ethereum-1/0x74a56c3255c55c9f324eac74923406dc02e913a1/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954`](./contracts/ethereum-1/0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954/) | MockUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc`](./contracts/ethereum-1/0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc/) | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x636cdf65a5bb03c25c63ceb20e971f101ed060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | mPortofino | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12570b84b633629b1db532fd3420f34a30acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | MSlCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1073d55dfb892ed86151015402db8b1cdb6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/) | MultiSign | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa752c9dda32d237a22f04a5971976c71e96036`](./contracts/ethereum-1/0x0aa752c9dda32d237a22f04a5971976c71e96036/) | OpportunityOVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc197ad72936b7c558c96417f22041fe9e3c7043f`](./contracts/ethereum-1/0xc197ad72936b7c558c96417f22041fe9e3c7043f/) | PlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x813b0857e016b7ae5fb57f464dfad8ee7b74232e`](./contracts/ethereum-1/0x813b0857e016b7ae5fb57f464dfad8ee7b74232e/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c3ea9036406852006290770bedfcaba0e23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | PYUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23698719581ee595277e3f4506be73412b38f096`](./contracts/ethereum-1/0x23698719581ee595277e3f4506be73412b38f096/) | RollingBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ba087e30928886baba15b1584d4ac9abaab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | RsEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/bsc-56/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | RusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da`](./contracts/ethereum-1/0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da/) | RusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316cd39632cac4f4cdfc21757c4500fe12f64514`](./contracts/ethereum-1/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | SrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | StablecoinUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8292bb45bf1ee4d140127049757c2e0ff06317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | StablecoinUpgradeableV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88887be419578051ff9f4eb6c858a951921d8888`](./contracts/ethereum-1/0x88887be419578051ff9f4eb6c858a951921d8888/) | StakedCap | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | StakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be8be2b72638f87c76f738cc1341665ed2f5876`](./contracts/ethereum-1/0x4be8be2b72638f87c76f738cc1341665ed2f5876/) | StakingWithUnbonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad298d3ec4af69af52701a539d3bd14873ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/) | SyrupAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa869cbc273daae91d6109ee5bb958ac6b7198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | SyrupUSDCAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570f37365fffff0a3884892b7363c0a8615bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | TACmBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6808e4d8add893d0227690f435e1ff734d9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | TACmBtcRedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43835934e2b8aea718bdb014f5df08761a47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | TBtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32652ab236f32482f5018b027c8b54c13750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | TEthRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | TUsdeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050ce30b927da55177a4914ec73480238bad56f0`](./contracts/base-8453/0x050ce30b927da55177a4914ec73480238bad56f0/) | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5fafb87318c0deaebff096aba019501fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04716db62c085d9e08050fcf6f7d775a03d07720`](./contracts/hyperliquid-999/0x04716db62c085d9e08050fcf6f7d775a03d07720/) | WsrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb431abd156b960e5b77cc45c75f107e3991258a`](./contracts/ethereum-1/0xbb431abd156b960e5b77cc45c75f107e3991258a/) | WsrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa74f994672f232a30067da820f0e54881edbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | WstEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ZeroGEthvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ZeroGEthvDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 76 |
| upstream | 19 |
| standard_library | 0 |
| needs_review | 55 |

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
