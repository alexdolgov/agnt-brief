# Agentic Audit Brief: Reservoir Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma
- Contract surface: 160 unique implementations (261 raw deployments)
- Coverage basis: 2/10 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $46,514,844.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reservoir Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma. Structural roles: 12 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (12), supporting (9)
- Contract kinds: contract (21)
- Detected standards: accesscontrol (13), erc165 (13), erc20 (7), ownable (7), pausable (3), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (21), layerzero (7), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x31eae643b679a84b37e3d0b4bd4f5da90fb04a61`, chain 1)
- AssetAdapter (`0xc5dea68cce26c014bec516cda70c107c534a73c4`, chain 1)
- DamOft (`0xf9ca3fe094212ffa705742d3626a8ab96aababf8`, chain 56)
- MorphoUnderlyingAdapter (`0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc`, chain 1)
- MorphoUnderlyingAdapter (`0x99a95a9e38e927486fc878f41ff8b118eb632b10`, chain 1)
- MorphoUnderlyingAdapter (`0xb595ba80d38b8e4c9894a6734a1b9a7b198870a2`, chain 1)
- RusdOft (`0x866d66f64fb81461903e1e38d998e747ecf35e78`, chain 999)
- RusdOftAdapter (`0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da`, chain 1)
- SrusdOftAdapter (`0x316cd39632cac4f4cdfc21757c4500fe12f64514`, chain 1)
- WsrusdOft (`0x62344be8ca1c339b46274a4017dd87af436900b1`, chain 8453)
- WsrusdOftAdapter (`0xbb431abd156b960e5b77cc45c75f107e3991258a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (10 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/10 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 11 of 160 unique; 149 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/104
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 160
- Raw deployments: 261
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 1.0% | 2024-05 |
| unknown | Tier 2 | 1 | 1.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252929 | `0xc5dea68cce26c014bec516cda70c107c534a73c4` | ✅ Audited |
| DamOft | unknown | project_anchor | own_supporting | 0 | bsc | unit-252933 | `0xf9ca3fe094212ffa705742d3626a8ab96aababf8` | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`; ethereum `0x87bf779346dbd1d0a0e97282cb715543c8daf031` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0391a651c080e99b38c179575342512769d9d5` | ⚠️ Unaudited |
| AssetAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2adf038b67a8a29cda82f0eceb1ff0dba704b98d`; ethereum `0x65078cfef8f7c07441661393eab6cb93b31db0dd`; ethereum `0x86ac8e29be5ad83c611fe054df20970d3b4f9be0`; ethereum `0xa100a910a30b745064d7174863b730ad6d92fe64`; ethereum `0xb82749f316cb9c06f38587abecf3eb1bc842cc93` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4097bc51a9cde57254947768039e2d671d7110e8`; ethereum `0x6427cc8c8f7149a0dc488a96136b40f881c2a133`; ethereum `0x6f117ebb33ceb617d867506d892ee56e40f4a91f`; ethereum `0xa8c37368640c834323910a63784000b27926bc29`; ethereum `0xb5d23b36ef5e94ec02df27048731bbd753ddc2f3`; ethereum `0xd0812902fd6c3426eae52c30ebaec404819f3288`; ethereum `0xf3519add0d4ad01b736c63a1b75e80b2fe3d5be7` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0c0d01abf3e6adfca0989ebba9d6e85dd58eab1e`; ethereum `0x7c0477d085ecb607cf8429f3ec91ae5e1e460f4f` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe3190143eb552456f88464662f0c0c4ac67a77eb` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 2 deployments: mantle `0x7053bad224f0c021839f6ac645bdae5f8b585b69`; mantle `0x8917d4ee4609f991b559daf8d0ad1b892c13b127` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | plasma | n/a | 2 deployments: plasma `0x5d72a9d9a9510cd8cbdba12ac62593a58930a948`; plasma `0x7519403e12111ff6b710877fcd821d0c12caf43a` | ⚠️ Unaudited |
| BYUSDOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x688e72142674041f8f6af4c808a4045ca1d6ac82` | ⚠️ Unaudited |
| CollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x551fb0309dd7e1c6e1a59d9389ef10da864a552e` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde04c469ad658163e2a5e860a03a86b52f6fa8c8` | ⚠️ Unaudited |
| CreditEnforcer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252906 | `0x04716db62c085d9e08050fcf6f7d775a03d07720` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| DAM | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252909 | `0x0fedba9178b70e8b54e2af08ebffcf28a1e5a43b` | ⚠️ Unaudited |
| DamOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: hyperliquid `0xc6eab56426ae6e0dfe72ec1ce2aaf73dae0e4ff4`; base `0x71356761fd23e77e5d78c37c70fe78229ca75a72` | ⚠️ Unaudited |
| DamOftAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a341b76a766c56f54985285987dfe52fea237a` | ⚠️ Unaudited |
| DolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x66be42a0bda425a8c3b3c2cf4f4cb9edfcaed21d`; plasma `0xe818ad0d20d504c55601b9d5e0e137314414dec4` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x6dfc8ae855fa8ab7babb81ab7c8a6da7794f60fb`; ethereum `0x797dd80692c3b2dadabce8e30c07fde5307d48a9`; ethereum `0x9bd52f2805c6af014132874124686e7b248c2cbb`; ethereum `0xab2726daf820aa9270d14db9b18c8d187cbf2f30`; ethereum `0xaf5372792a29dc6b296d6ffd4aa3386aff8f9bb2`; ethereum `0xba98fc35c9dfd69178ad5dce9fa29c64554783b5`; ethereum `0xe0a80d35bb6618cba260120b279d357978c42bce` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: plasma `0x1dd4b13fcae900c60a350589be8052959d2ed27b`; plasma `0xd8f824d4252cae7d5e49b95d47b0efafe6f2d570`; arbitrum `0x1a996cb54bb95462040408c06122d45d6cdb6096` | ⚠️ Unaudited |
| GhoBucketSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x2ce400703dacc37b7edfa99d228b8e70a4d3831b`; plasma `0x2ce400703dacc37b7edfa99d228b8e70a4d3831b` | ⚠️ Unaudited |
| GhoCcipSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6`; plasma `0x20fd5f3fcac8883a3a0a2bbcd658a2d2c6efa6b6` | ⚠️ Unaudited |
| GhoOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12`; plasma `0xb0e1c7830aa781362f79225559aa068e6bdaf1d1` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x1fb6c1ade4f9083b2ea42ed3fa9342e41788d4b5`; berachain `0x7fd165b73775884a38aa8f2b384a53a3ca7400e6` | ⚠️ Unaudited |
| LPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x17bbc9bd51a52aaf4d2cc6652630daf4fdb358f7`; ethereum `0x5daaee9ef143faff495b581e9863570e83f99d31`; optimism `0x8d66ff1845b1bacc6e87d867ca4680d05a349ca8`; arbitrum `0x6ea313859a5d9f6ff2a68f529e6361174bfd2225`; arbitrum `0x8d66ff1845b1bacc6e87d867ca4680d05a349ca8` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 6 deployments: ethereum `0x777791c4d6dc2ce140d00d2828a7c93503c67777`; optimism `0xc30ce6a5758786e0f640cc5f881dd96e9a1c5c59`; base `0xbeefe94c8ad530842bfe7d8b397938ffc1cb83b2`; arbitrum `0x5c0c306aaa9f877de636f4d5822ca9f2e81563ba`; arbitrum `0x7e97fa6893871a2751b5fe961978dccb2c201e65`; berachain `0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad391d0c554391c7cd81ebaf410866d1967c77d2` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b` | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x10e2352da4790e547095f06fa3ef3093881080fb`; ethereum `0x9903e9a950d4d50e23e833de0a27083f4dc781ae`; ethereum `0xa8bb0307b255925718e7f76788fb663f23d9bbfb`; ethereum `0xf406f9b5d1c78d6ee2d0d1d297057b1721dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249abe86e75717ef9705f2fdb19b39c130e5e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`; ethereum `0xa0df4e2d295a450e4704c3603b54b33eb7d086c0`; ethereum `0xc76e6105f79feb40ae04efbb10d994386c1c04c5`; ethereum `0xe43d2d52c047e2ca3f7ba3a0d03e513536eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3e0d2398799c884a47fc40c029c8e241852` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a56c3255c55c9f324eac74923406dc02e913a1` | ⚠️ Unaudited |
| MockUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x331ae83c9ef83f1a2e408eedca49a68bb1ec5954`; ethereum `0xe7b9d18af42b80bba370dfdd9c4d7b6f0b820cef` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252923 | `0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252926 | `0x99a95a9e38e927486fc878f41ff8b118eb632b10` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99e8903bdefb9e44cd6a24b7f6f97ddd071549bc` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252927 | `0xb595ba80d38b8e4c9894a6734a1b9a7b198870a2` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| MultiSign | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x1073d55dfb892ed86151015402db8b1cdb6ede78`; ethereum `0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd`; ethereum `0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c`; ethereum `0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25`; ethereum `0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566`; ethereum `0x46f05709230c5a6c780d9bc1f629a991084eaa53`; ethereum `0x49218440314834dacc38051e39a5054b7958ea19`; ethereum `0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b`; ethereum `0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e`; ethereum `0x6e36e38910c0145cafaa96516083c160049fe3e6`; ethereum `0x7272b2a0d2e9ae6f381677887760e953bc9f2cec`; ethereum `0x7f9922bae30ccc28d32ae284ee69e47f94c6de44`; ethereum `0x83f7f1c6a1547afe2841943f428cf6ff28541fa9`; ethereum `0x860a80bd349dc4e46dc7345600eb627552ff898e`; ethereum `0x863c8754c298d3efec3863f2a46f1c71a355ce6c`; ethereum `0x866eb2f5c483fa525137f982c2be220aa096918c`; ethereum `0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591`; ethereum `0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165`; ethereum `0x9b8a83e875023c3fefd8354044e011d8bc847a34`; ethereum `0xa2eea193444b16fe2d18cfe977aceeea6dd9c367`; ethereum `0xb60fa2ad48959c016fb7545d045aeb60086aca2a`; ethereum `0xb723d5ef303711d774fed6435ed6f5e82ed155ea`; ethereum `0xd4707b518a03d3a05dd2a33df5d1fb33690385d1`; ethereum `0xd48ede10152fcad67621fc5a6ae30b5b79fedd68`; ethereum `0xd9334dd55b25f928b702d143981a8173c7272761`; ethereum `0xe230900ece18f5ca83c8640b2eb73de74f9df5ae`; ethereum `0xf1dcb5394d27a41662847d512dcc903cda30056f`; ethereum `0xf26b8bb4e76528e7f061df4441965df80d72a71f`; ethereum `0xf7db20653fe8951e3c72f168310f4229d9945b3a`; ethereum `0xfbca8b5f5794456b59ad4177e5b212d0db600bb6`; ethereum `0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | ⚠️ Unaudited |
| OpportunityOVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0aa752c9dda32d237a22f04a5971976c71e96036`; ethereum `0x239b05e4e426f4dd029aae82189c4e79281d1cd5`; ethereum `0x25df1488dcb18e56573f4417173e7793e4cf7017`; ethereum `0x4c921bf9dfa88ef92c86c17ce5a30e9bb3b0a140`; ethereum `0x657a2473f81434fc827e26d77d7ff913e6e7d766`; ethereum `0xa3958f59f3ca340a71470aa167c1d01d6d59b00d`; ethereum `0xc2b5781b8d90a3d1e4174bf6eb3559b50988cafc`; ethereum `0xe9a65548438857cfcf2a843ff7528e904bd72727`; ethereum `0xf3dea88e5d5c41f65a5a07b26e383098dbe12c0e`; ethereum `0xf993d22b1e312da0ee4a8c8d5da3a6c20f6fd87b` | ⚠️ Unaudited |
| PegStabilityModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252914 | `0x4809010926aec940b550d34a46a52739f996d75d` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1dd1889702a64bfc6197ac9a2c206b723918dc18` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2adfb82dd33165b76d55b926a2edabed49efa2a2` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x440040d670efe06ac666957692d0cd7c36e3498e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x553f9c0bc76492e1e2d6d426c0217be6f68ee089` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5eff78782e823de725974a9db02d440c1a2e7887` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66b85714e4aba1644d50c7f9fc173222aa8d9005` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x690f305e51650e7549fb60182cd0db81bafb7687` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x74e0a55ea3db85f6106ffd69ef7c9829fd130888` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84568bccd84f7fd8c680e9101da0ef75a024b6b9` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e3fd82a18d72a74308c65193269f1af2f076f4e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac6f2295156026cccddffbadbfa975e8c6d340be` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87fce4358dd5f82e937a885bc10269660a12470` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d` | ⚠️ Unaudited |
| PendlePrincipalToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1135b22d6e8fd0809392478eedcd8c107db6af9d`; ethereum `0x62c6e813b9589c3631ba0cdb013acdb8544038b7`; ethereum `0x8a47b431a7d947c6a3ed6e42d501803615a97eaa`; ethereum `0xb7de5dfcb74d25c2f21841fbd6230355c50d9308`; ethereum `0xbc6736d346a5ebc0debc997397912cd9b8fae10a`; ethereum `0xe00bd3df25fb187d6abbb620b3dfd19839947b81` | ⚠️ Unaudited |
| PlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc197ad72936b7c558c96417f22041fe9e3c7043f` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252922 | `0x813b0857e016b7ae5fb57f464dfad8ee7b74232e` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252931 | `0xeae91b4c84e1edfa5d78dcae40962c7655a549b9` | ⚠️ Unaudited |
| PYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6c3ea9036406852006290770bedfcaba0e23a0e8` | ⚠️ Unaudited |
| Rebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0ccb9a2a5ad747baeebf00385da9e98f2e5dc829`; ethereum `0x95326f35e6fdc87956c1d0445e03f6ec5811cfe7`; ethereum `0xf3fce677743350629dd1ec0820fbe6f72c5871c3` | ⚠️ Unaudited |
| RollingBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x23698719581ee595277e3f4506be73412b38f096`; ethereum `0x6ba949c39c2ef9748c8e3eac58f7099f0543c19f`; ethereum `0xfd36896c28f168bff79c9e7d57307e4a2645da4f` | ⚠️ Unaudited |
| RsEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52ba087e30928886baba15b1584d4ac9abaab2a` | ⚠️ Unaudited |
| RusdMintBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252920 | `0x6360f43803732eaeb9f1967b9f74d117e03154b3` | ⚠️ Unaudited |
| RusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x09d4214c03d01f49544c0448dbe3a27f768f2b34`; base `0x09d4214c03d01f49544c0448dbe3a27f768f2b34` | ⚠️ Unaudited |
| RusdOft | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252937 | `0x866d66f64fb81461903e1e38d998e747ecf35e78` | ⚠️ Unaudited |
| RusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252932 | `0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252921 | `0x738d1115b90efa71ae468f1287fc864775e23a31` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252930 | `0xd3fd63209fa2d55b07a0f6db36c2f43900be3094` | ⚠️ Unaudited |
| SavingModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252918 | `0x5475611dffb8ef4d697ae39df9395513b6e947d7` | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252912 | `0x316cd39632cac4f4cdfc21757c4500fe12f64514` | ⚠️ Unaudited |
| Stablecoin | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252907 | `0x09d4214c03d01f49544c0448dbe3a27f768f2b34` | ⚠️ Unaudited |
| StablecoinUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec` | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8292bb45bf1ee4d140127049757c2e0ff06317ed` | ⚠️ Unaudited |
| StakedCap | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x88887be419578051ff9f4eb6c858a951921d8888` | ⚠️ Unaudited |
| StakeToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d` | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252915 | `0x4be8be2b72638f87c76f738cc1341665ed2f5876` | ⚠️ Unaudited |
| SyrupAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xad298d3ec4af69af52701a539d3bd14873ac8493`; ethereum `0xb1e60a45de12adb09d67bc361ed7a79ffd237850`; ethereum `0xd071079c4c450af995e17afca91d03446b368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43835934e2b8aea718bdb014f5df08761a47df0a` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x050ce30b927da55177a4914ec73480238bad56f0`; base `0xbeef0e0834849acc03f0089f01f4f1eeb06873c9`; arbitrum `0xbeeff1d5de8f79ff37a151681100b039661da518`; arbitrum `0xbeeff77ce5c059445714e6a3490e273fe7f2492f`; arbitrum `0xbeefff13dd098de415e07f033dae65205b31a894` | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c3f5fafb87318c0deaebff096aba019501fcb69`; ethereum `0xb79301126f9641b20771e3276b9011a481534bcc` | ⚠️ Unaudited |
| WsrusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: bsc `0x4809010926aec940b550d34a46a52739f996d75d`; hyperliquid `0x04716db62c085d9e08050fcf6f7d775a03d07720` | ⚠️ Unaudited |
| WsrusdOft | unknown | project_anchor | own_supporting | 0 | base | unit-252935 | `0x62344be8ca1c339b46274a4017dd87af436900b1` | ⚠️ Unaudited |
| WsrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252928 | `0xbb431abd156b960e5b77cc45c75f107e3991258a` | ⚠️ Unaudited |
| WstEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74f994672f232a30067da820f0e54881edbb9d7` | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21522659c821c9f35be3815787287eaff2234f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7e4342534e6e8783311dcf17828a2aa0951cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f65f32e2043a661fbf151b1831eda7bf4cb562d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f59fb2bc4197caa5fa57320886d3caf6f24c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128d86a9e854a709df06b884f81eee7240f6ccf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252910 | `0x12c69d535605d035fe5eb63da04fea0434771c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e31c26e099a0a7489237345f9a469eddbec0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189f2ba6da6f5900eebaf96ffa7ec16dccff00ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262353a0770b7672c4bdd79578c2c5626872ea3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b930c0a75d12e8c8655dd3cc5352eebd2bdcfe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252913 | `0x31eae643b679a84b37e3d0b4bd4f5da90fb04a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ade4df56df6c3f080d2180a2b653f2fe3a8815a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6f8c0eeb1635d3a3fe8b293699dbb9c65afc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3befd65f20534b927730f9aee4d37a0316f164b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b6c3e17b139dfe4d0650914c3317d09654cf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aab19dc2f4951c1024c48c6976270bd4d08a12f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252916 | `0x4e684032b8b066215faacf883e16c01e456bc4d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252917 | `0x5130fb9bd3331d1c128a0552463ce9cb02d70b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d699fa596ee91f315fe99bd75b7e56447275dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62344be8ca1c339b46274a4017dd87af436900b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c19e25bd34d063829dd05e2a5fae165ddf2c8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e324681b6b1746aace4b0361c0670f51d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad369f1fc8ac0cba5a4ddb8381cd7d210b63769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a14ea8f237cd2f40ebd9fc4cf48d25ba8e816d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f19644d78dc4dace7afa410486f446dab8c6f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9961732e2c4536beab31fddd2415b650c8505b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8259b0347e8b9543f1a3f33a3781fd644eb554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb2c38f57883e5285b7c296c66b9eea4769ef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e6db0c4cdbaa18141fbc9d4365b829910072bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd2f48578f92c1abf4075da395a8aa8dccddfca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98b4a70e17e55045cde4972b95bc2e8cec22a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa07148fade101e3ba976b6f38ba454f9f49cb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22ad8c16d921dada40f150ef48bd9055574c42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb385d20dab411d20870f47d9ca1920533db21b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f89c68e382b9639e536d70851e72964ab699c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95289df7857b27509151a10612ada745c9934ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ed1dd7dc9909aa39d5f67476971c53c2595c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71d9b65bab0f3499c17773a6466da485ddad093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf556e471e7916135176afd7de24a305793880024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c9f57454b993f1b3f65c6e67b0e39a43d621d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac98fbe68a4153be8eed8de289a9ccdec8b1674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfee08d34a0323aadd2bd788e5258d26275c317b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb0e1c7830aa781362f79225559aa068e6bdaf1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb77e872a68c62cfc0dfb02c067ecc3da23b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde6539018b095353a40753dc54c91c68c9487d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfc421ad3c883bf9e7c4f42de845c4e4405799e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4809010926aec940b550d34a46a52739f996d75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x360d8aa8f6b09b7bc57af34db2eb84dd87bf4d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb77e872a68c62cfc0dfb02c067ecc3da23b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xde6539018b095353a40753dc54c91c68c9487d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc421ad3c883bf9e7c4f42de845c4e4405799e73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.halborn.com/audits/fortunafi/reservoir-updated) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18059] DL audit link — no match: The provided text is a website navigation/marketing page, not an audit report. No contracts, scope, or audit date are present.
- [18060] docs.google.com/viewerng/viewer — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is the end of the engagement period (May 31, 2024).
- [18061] Rebalancer.pdf — no match: Only one contract in scope: Rebalance (src/Rebalance.sol). Audit date from engagement date: August 6th, 2025.
- [18062] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is end of engagement period (May 31, 2024).
- [18063] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view — matched: Scope section lists four Solidity files. Audit date is the end date of engagement: September 26, 2024.
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf — no match: Only one contract name found in findings; scope section not explicitly provided.
- [18065] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf — matched: Four contracts in scope: Migration, Savingcoin, Rebalance, Dam. Audit date is end of engagement (April 2, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.google.com/viewerng/viewer | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea68cce26c014bec516cda70c107c534a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| docs.google.com/viewerng/viewer | TermCalculator | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | AccountManager | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | SavingModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Savingcoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Stablecoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Term | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | TermIssuer | unmatched — not counted | — | listed in scope | no |
| Rebalancer.pdf | Rebalance | unmatched — not counted | — | listed in scope section: Items in scope: src/Rebalance.sol | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea68cce26c014bec516cda70c107c534a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermCalculator | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AccountManager | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SavingModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Stablecoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Term | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermIssuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | VaultSharesOracleV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | MorphoRUSDAdapter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | LiquidTerm | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | DAM | own contract | DamOft (selected) `0xf9ca3fe094212ffa705742d3626a8ab96aababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf | rusdmintbridge | unmatched — not counted | — | mentioned in finding title 'Lack of msg.value validation in rusdmintbridge' | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Migration | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Rebalance | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Dam | own contract | DamOft (selected) `0xf9ca3fe094212ffa705742d3626a8ab96aababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x841db2ca7e8a8c2fb06128e8c58aa162de0cfcbc` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99a95a9e38e927486fc878f41ff8b118eb632b10` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb595ba80d38b8e4c9894a6734a1b9a7b198870a2` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x866d66f64fb81461903e1e38d998e747ecf35e78` | RusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0e9f6d9ba5d1b3f76e0f82f9dcdb9ebeef4b4da` | RusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x316cd39632cac4f4cdfc21757c4500fe12f64514` | SrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x62344be8ca1c339b46274a4017dd87af436900b1` | WsrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb431abd156b960e5b77cc45c75f107e3991258a` | WsrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 19 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [18059] DL audit link
- [18061] Rebalancer.pdf
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
