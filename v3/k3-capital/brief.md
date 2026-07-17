# Agentic Audit Brief: K3 Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: K3 Capital (`k3-capital`)
- Website: [https://k3.capital](https://k3.capital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, plasma, unichain
- Contract surface: 93 unique implementations (93 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $244,661,360.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for K3 Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, bsc, ethereum, plasma. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc4626 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 52 contracts are derived from known codebases. 52 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x14d8d8011df2b396ed2bbc4959bb73250324f386`, chain 1)
- UnnamedContract (`0x1a0fc0b843afd9140267d25d4e575cb37a838013`, chain 1)
- UnnamedContract (`0x20f7c9ad66983f6523a0881d0f82406541417526`, chain 1)
- UnnamedContract (`0x2f60bab0072abec7058017f48d7256ec288c8686`, chain 1)
- UnnamedContract (`0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b`, chain 1)
- UnnamedContract (`0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235`, chain 1)
- UnnamedContract (`0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65`, chain 1)
- UnnamedContract (`0x4bb5e28fdb12891369b560f2fab3c032600677c6`, chain 1)
- UnnamedContract (`0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d`, chain 1)
- UnnamedContract (`0x531a8f99c70d6a56a7cee02d6b4281650d7919a0`, chain 1)
- UnnamedContract (`0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf`, chain 1)
- UnnamedContract (`0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b`, chain 1)
- UnnamedContract (`0x5f98805a4e8be255a32880fdec7f6728c6568ba0`, chain 1)
- UnnamedContract (`0x6106046f031a22713697e04c08b330ddaf3e8789`, chain 1)
- UnnamedContract (`0x6440f144b7e50d6a8439336510312d2f54beb01d`, chain 1)
- UnnamedContract (`0x66017d22b0f8556afdd19fc67041899eb65a21bb`, chain 1)
- UnnamedContract (`0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d`, chain 1)
- UnnamedContract (`0x75036b1d6de5665c60f5c33bb4a64e8e123211a2`, chain 1)
- UnnamedContract (`0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873`, chain 1)
- UnnamedContract (`0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a`, chain 1)
- UnnamedContract (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- UnnamedContract (`0x807def5e7d057df05c796f4bc75c3fe82bd6eee1`, chain 1)
- UnnamedContract (`0x84eb85a8c25049255614f0536bea8f31682e86f1`, chain 1)
- UnnamedContract (`0x857aecebf75f1012dc18e15020c97096aea31b04`, chain 1)
- UnnamedContract (`0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54`, chain 1)
- UnnamedContract (`0x9074d72cc82dad1e13e454755aa8f144c479532f`, chain 1)
- UnnamedContract (`0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b`, chain 1)
- UnnamedContract (`0x97044531d0fd5b84438499a49629488105dc58e6`, chain 1)
- UnnamedContract (`0xa25269e41bd072513849f2e64ad221e84f3063f4`, chain 1)
- UnnamedContract (`0xa2895d6a3bf110561dfe4b71ca539d84e1928b22`, chain 1)
- UnnamedContract (`0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3`, chain 1)
- UnnamedContract (`0xae78736cd615f374d3085123a210448e74fc6393`, chain 1)
- UnnamedContract (`0xb2b2abeb5c357a234363ff5d180912d319e3e19e`, chain 1)
- UnnamedContract (`0xb366256d033ae7e4f7bddec822a5adec9df07b80`, chain 1)
- UnnamedContract (`0xba4a2bd8b76df84cac98eba3f4b967d8423192bf`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xca11bde05977b3631167028862be2a173976ca11`, chain 1)
- UnnamedContract (`0xcc5f8102eb670c89a4a3c567c13851260303c24f`, chain 1)
- UnnamedContract (`0xd442e41019b7f5c4dd78f50dc03726c446148695`, chain 1)
- UnnamedContract (`0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0`, chain 1)
- UnnamedContract (`0xd796e1648526400386cc4d12fa05e5f11e6a22a1`, chain 1)
- UnnamedContract (`0xdccbd7a365aee086aa3b4ede8afe895b20770ae3`, chain 1)
- UnnamedContract (`0xe453b864d3841469763bda2437e3dd0e38dca222`, chain 1)
- UnnamedContract (`0xe7aa2ba9e086a379d3beb224098bc634a46e314e`, chain 1)
- UnnamedContract (`0xe8119fc02953b27a1b48d2573855738485a17329`, chain 1)
- UnnamedContract (`0xe85230de04147c4ea363b21cdb801c1c19df0a56`, chain 1)
- UnnamedContract (`0xeb5a8c825582965f1d84606e078620a84ab16afe`, chain 1)
- UnnamedContract (`0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf`, chain 1)
- UnnamedContract (`0xf0cae19c96e572234398d6665cc1147a16cbe657`, chain 1)
- UnnamedContract (`0xf949982b91c8c61e952b3ba942cbbfaef5386684`, chain 1)
- UnnamedContract (`0xfa61db085510c64b83056db3a7acf3b6f631d235`, chain 1)
- sBold (`0x50bd66d59911f5e086ec87ae43c811e0d059dd11`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 52/101 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 52 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 13 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 52 of 93 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 93
- Raw deployments: 93
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 2.4% | n/a |
| Dedaub | Tier 2 | 1 | 2.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| sBold | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388004 | `0x50bd66d59911f5e086ec87ae43c811e0d059dd11` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | plasma | n/a | `0x141a6f77ca186861bfb323b07012e80ef4e09041` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xda33ba72a303c26515ede275a2521b469f97d71b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x007f7869dff5381940510f85d19a46656a736027` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x00d5e455b67b1370328a9f10bb60567ee6fe791e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x016572aacd1bcb1fca8c495488742a66d5fa4dab` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x04adbec2e6fc32a4faca0ebe9c79f4dba62e9e37` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x0a43f1d5a87bc3d474347badfc692164813af746` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4b1471638da297c8d2c13d9f1f52cb1766a4664b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x5ca49e6e2a4bf854add1892241c5be1957f5f83a` | ⚠️ Unaudited |
| InstaFlashAggregatorPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0f8a9922b65ff5ecd965e8378d46a10d9c7173b4` | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c0ee5e73d2350e19a6e29ad8416b58101b6eac8` | ⚠️ Unaudited |
| InstaFlashResolverPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x12c811702987e47b2797a0b19c4fc1edf2f93c7b` | ⚠️ Unaudited |
| MellowVaultCompat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x82f5104b23ff2fa54c2345f821dac9369e9e0b26` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93ef00bbcfbbb3dbf10e5696c5426cafe179348d` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3b3bdaa4462851621818d2cebc835e077587147a` | ⚠️ Unaudited |
| PoolV3_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5503d3d4bd254c2c17690eed523bcb2935db6de` | ⚠️ Unaudited |
| Roles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x14b3bd93d11a1f97c8e11940d02daf5e52f66c47` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdd84a24eedde63f10ec3e928f1c8302a47538b6b` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5bb012482fa43c44a29168c6393657130fdf0506` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x060db084bf41872861f175d83f3cb1b5566dfea3` | ⚠️ Unaudited |
| StrategyGovDeployerPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x182fe66b62ea845c8aba37c0926aea99831bfe37` | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1123dac01d5ef674b26e2069f0f59eb16810b45e` | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x924c71ec51fd8f4a9f809555713d756c643c50c1` | ⚠️ Unaudited |
| TermCeilingPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x970f1a76391f6a6793de1965a74e05deaa345494` | ⚠️ Unaudited |
| TermCombinationPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18019dfd4acc9560cd16776457e2be4180f4f123` | ⚠️ Unaudited |
| TermController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145e7813c5ceab4c5fd5f3c4943b40d075f67da9` | ⚠️ Unaudited |
| TermEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba1112f957f2d1d4e6f13cef17e68ed6f00c81be` | ⚠️ Unaudited |
| TermInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52b4c5908e8e033bd58a2f815973013b596d9005` | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xafaa777e3c71b93cee4288fa6be98e6c2b4ddd18` | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x0035f6945c855794aa5e707fc76d5205e0bd22fa` | ⚠️ Unaudited |
| TermRepoLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x0404758c1862de9af342b4b012dc24fb370c385a` | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x015caa0cc7a6fca2d141cb8e25eb331f01c9c316` | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae3fa745a2ad9178e5acbc5b58f2056d80c3bca` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x8fc260cd0a00cac30eb1f444b8f1511d71420af9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0243755a22e37b835486fdae9a839523adabd336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x866c6c6627303be103814150fc0e886be5d9ea83` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe1b4d34e8754600962cd944b535180bd758e6c2e` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc47953c816531a8ca9e1d461ab53687d48eea26` | ⚠️ Unaudited |
| VaultGovDeployerAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x182fe66b62ea845c8aba37c0926aea99831bfe37` | ⚠️ Unaudited |
| VaultGovDeployerPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2fbddb36cd41e4a6e3063afd257637208ef2d9fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387985 | `0x14d8d8011df2b396ed2bbc4959bb73250324f386` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387988 | `0x1a0fc0b843afd9140267d25d4e575cb37a838013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387989 | `0x20f7c9ad66983f6523a0881d0f82406541417526` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387992 | `0x2f60bab0072abec7058017f48d7256ec288c8686` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387993 | `0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387995 | `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387996 | `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388001 | `0x4bb5e28fdb12891369b560f2fab3c032600677c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388003 | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388006 | `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388008 | `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388010 | `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388011 | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388013 | `0x6106046f031a22713697e04c08b330ddaf3e8789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388014 | `0x6440f144b7e50d6a8439336510312d2f54beb01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388017 | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388019 | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388022 | `0x75036b1d6de5665c60f5c33bb4a64e8e123211a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388024 | `0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388025 | `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388027 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388029 | `0x807def5e7d057df05c796f4bc75c3fe82bd6eee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388033 | `0x84eb85a8c25049255614f0536bea8f31682e86f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388034 | `0x857aecebf75f1012dc18e15020c97096aea31b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388035 | `0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388036 | `0x9074d72cc82dad1e13e454755aa8f144c479532f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388039 | `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388040 | `0x97044531d0fd5b84438499a49629488105dc58e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388042 | `0xa25269e41bd072513849f2e64ad221e84f3063f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388043 | `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388045 | `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388048 | `0xae78736cd615f374d3085123a210448e74fc6393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388049 | `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388050 | `0xb366256d033ae7e4f7bddec822a5adec9df07b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388056 | `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388058 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388059 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388060 | `0xcc5f8102eb670c89a4a3c567c13851260303c24f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388062 | `0xd442e41019b7f5c4dd78f50dc03726c446148695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388063 | `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388064 | `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388065 | `0xdccbd7a365aee086aa3b4ede8afe895b20770ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388066 | `0xe453b864d3841469763bda2437e3dd0e38dca222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388067 | `0xe7aa2ba9e086a379d3beb224098bc634a46e314e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388068 | `0xe8119fc02953b27a1b48d2573855738485a17329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388069 | `0xe85230de04147c4ea363b21cdb801c1c19df0a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388070 | `0xeb5a8c825582965f1d84606e078620a84ab16afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388071 | `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388072 | `0xf0cae19c96e572234398d6665cc1147a16cbe657` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388076 | `0xf949982b91c8c61e952b3ba942cbbfaef5386684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388078 | `0xfa61db085510c64b83056db3a7acf3b6f631d235` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity](https://www.chainsecurity.com/security-audit/k3-sbold) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [Dedaub](https://dedaub.com/audits/k3-capital/sbold-may-19-2025) | Dedaub | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [- [Audit Reports]()](https://k3-capital.gitbook.io/sbold/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20599] ChainSecurity — matched: Only one contract name (sBOLD) is mentioned in the summary, but no explicit scope section or file listing is provided.
- [20600] Dedaub — matched: Audit report for sBOLD contract by K3 Capital. Scope includes sBOLD, SwapLogic, BaseSBold, and related interfaces. Date found in header: 'May 19, 2025'.
- [20601] - [Audit Reports]() — no match: The provided text is an index page listing two external audit report links (ChainSecurity and Dedaub) for 'k3-sbold'. No contract names, file paths, or scope details are present in the text itself.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity | sBOLD | own contract | sBold (selected) `0x50bd66d59911f5e086ec87ae43c811e0d059dd11` — deployed 2025-06-05 18:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub | sBOLD | own contract | sBold (selected) `0x50bd66d59911f5e086ec87ae43c811e0d059dd11` — deployed 2025-06-05 18:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub | SwapLogic | unmatched — not counted | — | library used for swap logic, mentioned in code snippets | no |
| Dedaub | BaseSBold | unmatched — not counted | — | base contract with _setSps function | no |
| Dedaub | IPriceOracle | unmatched — not counted | — | interface used in prepareSwap | no |
| Dedaub | ISBold | unmatched — not counted | — | interface used for data structures | no |
| Dedaub | IStabilityPool | unmatched — not counted | — | interface used in BaseSBold | no |
| Dedaub | AggregationRouterV6 | unmatched — not counted | — | external contract mentioned as swap adapter | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20601] - [Audit Reports]()

Fork inheritance lineage and inherited audits are included when available.
