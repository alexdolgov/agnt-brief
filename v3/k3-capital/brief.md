# Agentic Audit Brief: K3 Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: K3 Capital (`k3-capital`)
- Website: [https://k3.capital](https://k3.capital)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, bsc, ethereum, plasma, unichain
- Contract surface: 935 unique implementations (946 raw deployments)
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
- Outside the address book: 882 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 52 of 935 unique; 883 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 894
- Unique implementations: 935
- Raw deployments: 946
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
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x007f7869dff5381940510f85d19a46656a736027`; avalanche `0x27dd7eae348ce9697df8fbc048f021286525fe06` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x00d5e455b67b1370328a9f10bb60567ee6fe791e`; avalanche `0xacf9f886da1a4d29f86e103957ca90c405828ef9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x016572aacd1bcb1fca8c495488742a66d5fa4dab`; avalanche `0xc008ef0e4ce3c9315da5b283f1b8864b0cb59c95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x04adbec2e6fc32a4faca0ebe9c79f4dba62e9e37`; avalanche `0xed0476d54be38fc55df0a6962d6b215508007d3c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0a43f1d5a87bc3d474347badfc692164813af746`; avalanche `0x3869550d5ae1343110c0f8f062fbf24621e537d1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4b1471638da297c8d2c13d9f1f52cb1766a4664b`; avalanche `0xf4366090d9614dc59c9e4d7c48783449d20c2770` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5ca49e6e2a4bf854add1892241c5be1957f5f83a`; avalanche `0xbe33ef4d1f61c0ff16088767ffbb60cbe1c68cdc` | ⚠️ Unaudited |
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
| TermPriceConsumerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xafaa777e3c71b93cee4288fa6be98e6c2b4ddd18`; avalanche `0xf6f7a44ff0f3c1f2633c3b971b9ee181ba72d3bc` | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0035f6945c855794aa5e707fc76d5205e0bd22fa`; avalanche `0x67b6eb2bdae054265e83c98c8e0d207013d6c7c1` | ⚠️ Unaudited |
| TermRepoLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0404758c1862de9af342b4b012dc24fb370c385a`; avalanche `0xe1c243c71bb54f9947de85517a6cc926459668ad` | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x015caa0cc7a6fca2d141cb8e25eb331f01c9c316`; avalanche `0xd9a00d2ae501278b78deea8991b4a3cb518c664e` | ⚠️ Unaudited |
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

### ❓ Unverified (894)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387985 | `0x14d8d8011df2b396ed2bbc4959bb73250324f386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16897a8a7713d0f709a914d9d05edf6b598d24b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387988 | `0x1a0fc0b843afd9140267d25d4e575cb37a838013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387989 | `0x20f7c9ad66983f6523a0881d0f82406541417526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179cd81c9e782a4096035f7ec97fb8b783e007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebef24da09489218ba2becb01867f6daaedcd4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387992 | `0x2f60bab0072abec7058017f48d7256ec288c8686` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387993 | `0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d36f18093c2930eae870e559f2c51121acea73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387995 | `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387996 | `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8b97ed5881324241cf03b2da5e2ebce5521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4702cf744b40da9c7756bd94ee86e6aa3cd6e8c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388001 | `0x4bb5e28fdb12891369b560f2fab3c032600677c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c517d4e2c851ca76d7ec94b805269df0f2201de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388003 | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388006 | `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388008 | `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388010 | `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cca549ca706c39d68156e5e0a72ccbc95f563d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388011 | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388013 | `0x6106046f031a22713697e04c08b330ddaf3e8789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388014 | `0x6440f144b7e50d6a8439336510312d2f54beb01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388017 | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69efec83296c711db4a403b1ee281e87f99590d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388019 | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7022a4f4a2b9f0c30a5eb0b0073a8bb4c8e70c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388022 | `0x75036b1d6de5665c60f5c33bb4a64e8e123211a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388024 | `0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388025 | `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388027 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbc71fe1c2e1200e291dd22aab0ae1fd6f714ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388029 | `0x807def5e7d057df05c796f4bc75c3fe82bd6eee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e29308c96c2bebddc90b4a2e4ee7e60d57238e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388033 | `0x84eb85a8c25049255614f0536bea8f31682e86f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388034 | `0x857aecebf75f1012dc18e15020c97096aea31b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884acfa4593a6fdba0a9373007e48ea9af881c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388035 | `0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388036 | `0x9074d72cc82dad1e13e454755aa8f144c479532f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388039 | `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9555b042f969e561855e5f28cb1230819149a8d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388040 | `0x97044531d0fd5b84438499a49629488105dc58e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388042 | `0xa25269e41bd072513849f2e64ad221e84f3063f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388043 | `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388045 | `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad430500ecda11e38c9bcb08a702274b94641112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388048 | `0xae78736cd615f374d3085123a210448e74fc6393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19997afb61b978ab586a349d6ae05e16d7cf74e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388049 | `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388050 | `0xb366256d033ae7e4f7bddec822a5adec9df07b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb42448852a1bfc99d66ed53c65e2b49cf954f615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5d64a1afe7eadcc79b99bdfb932d406aae66aaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388056 | `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd69d3e0ea967d146e925b7572b765c8e9c4127d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8b230dcd12e246f5edc5c103cc98be68ab636f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388058 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388059 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388060 | `0xcc5f8102eb670c89a4a3c567c13851260303c24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2cc0dc98ca0e712b88356f2b5f7596ab9de338e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388062 | `0xd442e41019b7f5c4dd78f50dc03726c446148695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388063 | `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388064 | `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c9d9071123a059c6e0a945cf0e0c82b508d816` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388065 | `0xdccbd7a365aee086aa3b4ede8afe895b20770ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388066 | `0xe453b864d3841469763bda2437e3dd0e38dca222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388067 | `0xe7aa2ba9e086a379d3beb224098bc634a46e314e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388068 | `0xe8119fc02953b27a1b48d2573855738485a17329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388069 | `0xe85230de04147c4ea363b21cdb801c1c19df0a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9a4cfd1de3b83a774a82ff6f8c6da97d21dff49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388070 | `0xeb5a8c825582965f1d84606e078620a84ab16afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388071 | `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388072 | `0xf0cae19c96e572234398d6665cc1147a16cbe657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a3fe99227f6060e4c1c62b557eee050b6483e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388076 | `0xf949982b91c8c61e952b3ba942cbbfaef5386684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388078 | `0xfa61db085510c64b83056db3a7acf3b6f631d235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x007f7869dff5381940510f85d19a46656a736027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x00d5e455b67b1370328a9f10bb60567ee6fe791e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x016572aacd1bcb1fca8c495488742a66d5fa4dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x01bb7c3575318caa8e626b5dcf8d3f6efe68a7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x038729fed17e69e5815be936a0918c7623a93b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x04adbec2e6fc32a4faca0ebe9c79f4dba62e9e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x05599bf17628753d44bfacf571699bc52f53ee8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x058ab264a24b646ad6dd5b02134608f9203cc893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x07835f147352e54ca0ea630755a9c485a8b183f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x07b1ab3c6b49529e9be06084127b8e6309bddfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0ef80293c8120b61ea49b0f9fb0ca435a05bbb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0effcc5989564605fd05aead0128d848b49a0dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0f468ba9ad380108a93674313a8ac945c0124e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x145e7813c5ceab4c5fd5f3c4943b40d075f67da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x146abf2a1a775a4a49c8f460b4072d14b3203c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1472a38cd3350f9867024e3174ceb96bfbc02b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x15b9247e1721fd831ea3a4c8c1f68cc0f20e2c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x15f6924598313abcf561374d4bfe37e5fcae5096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x162489aa48ad655f0fa5ab9402de8029d7af738f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18970f0bf97e395c26f63e352dbed6bcf123c87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x196e81349528bf03d33b9568e4dafb6ccc1834f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1d3416b1164f84567fe86c36daab47bfc3893aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1f874d39ef98d4c571ecf4e3958978826ec0695e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2699588fa3a69519880aaa8b2028dc641dd26c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x27dd7eae348ce9697df8fbc048f021286525fe06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x28d48f96c722bbf293a891e0e08459355b3373be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x292a000568b2e5acfa998d40e15a3e7b9870dec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x294a1f33fb2a3eff5c45cc52ba2c2f7ec60f1654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x29500cadbf1be87ad18372470a1e17b8f7b74c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2b50e07b0dbb6f165d6c590d86f76dd99d9a0071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2c96a7051fe21aa51aedecd5c95f0f8aa5bdfe2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x31f75480a8850043844486314b4b7cb05d805c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x33c5d1b7e85946ec71cb170eec7e52c0edca3880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x33d404f10ba3166a0244365ce690ffbc2c7f219e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x345485a0454c71cf83b9a590667eca58b3650be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x363c58cdb410ee0c52dd7116c152f3c71bc6cce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3869550d5ae1343110c0f8f062fbf24621e537d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x39249877b0617662cf4c0cf2fccc781fe45020eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3c168ba703a53c78e0a30f8e52732e62d2c3a5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3e7ddc47cdaf777f3a77dabcc6647baabcc3c23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x42f5fb1182d29e811d87c989cf5aa2fb88e5d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4358e2d3c9658b50b0c3c353c9cbc6898de5bd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x43b238051dfbbdcceb8d575730ea5b7f1edc2a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x45f95181eeb42de2a36a1355664e915246475dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x466b0b0f3b6e9faecb10679249bc34be54931a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x47bdb5277934118478ba7d7c959ac6b360f44c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4836985461a49d57228cde2a9bb80849b3e891b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x486926bcaf40211a2049df6b4197f91d6ae35def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4acac5329d1280f15a869265a83d9a41e18efe68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4b54112f1e07df053ebdfb66a213cd5eadb710bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4e78046cb6f23ce7c2d23d63da17ee7fbb0736eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x52b4c5908e8e033bd58a2f815973013b596d9005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x533b0e19c3449101370a0ce668ba3301e4465d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x53838e6d7713cd59e1a01d97b52e412891430ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x539b2ee4f3a04f33d53c0813f77e65148963f72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5cac38fb6966d679c44854ace64e7ff94fe13b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5d38a6d9c32a25c0964abd9c65b5c9b3d8adee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5df235f0d5ea0e4d8a0a02c0fd62be302031f01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5e3d24f4c7643b67156c07994f365eb1165c60b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5f10a9796ad3eca55bd73f9617630170bc67d2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60761f0a6fb3c37ff96a5f574b496d65e90e5e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60baaddef6a2f41206ef035245789cb8580cc32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6112a237de1aa6196b898daac738bce00649d404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x65d180ef8783c2bb6373d8629df06a060b25c9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x670ec51607c994e5cb7e01ac8a410ae1879627a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x67b6eb2bdae054265e83c98c8e0d207013d6c7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6a322cce37e5c71895d657df004c06a94cfd0bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6a8d6ac8a3e19f0c1435a26e34b872f82d346a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6bcb03b30c0d61e254234458738094fefd5356d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6c4d3a43c0ea0c70c2bd22800a67a60733d6a7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6ca8c750baae97802e13291432c60cbcf7d0733c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6f62cb7e73bbbeb285987a3c641c1265ab602989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x71046be7ee9166e3933302c47bbf192f54a0f4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x73ee6e0a7cd040301104bedcfdccd95f1074883d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x74d3e7ab48724bb3a48f38b88845ee00da6a108c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x75ce070c17f4b3cd9db34425b191e3154e7c2535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x77de52f1d9aeb53c9e3916c706109385eadae8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x77e7b2ba8ccaed9665351f2ff301fdf4ddfc2dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7926256ca6c7ab3693038bace043ec9924dc96df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7c1b4de41ec16e3d054a1b226e91c1232201b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7f55df1e37f707eb4d5bade7c539e17dd22d986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x81e61fc1f763dbe0b5b0bfdf48b186d1f2ff9a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8662459aacce546e9b4d7bad942f64bad8a8c439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x895f2b63b561a8616e27bb1ff46abbc732d88b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8a9a52bbe57542ad5545f5f3c73f4f8f1e539572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8b042eb585d23df18b8fc4904c9f6ef509d52862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8d16e3ca9e42bdf06934c3acbd1b582dcd1f562c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8fedb6d48c9425068c289464bba5cf8a8f0888a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x917edc4cfe91e92bf1684f50984173162dd7b96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x91b3ba993ba7699a0ec818a745c180706a4036c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x930c1cb6aee8c68d240dbd7d32ae8d91f5e84c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x969984b31d3a7e81f9a33364b8b45b01ee0f2d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x979a799c25cca57c44711a595919d795f3a90d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x980fe5ae0245e22a5f7e1bc23f23f7bee536623e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x99c5a92b435ea45054eb64fbcefec08910cbc151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9b5d3ed58ac5afe67714ba2c3fb2170c96c5ef57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9ed23816ed080427b1d2140eb6e5bc11d2dae32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa00faf8962f077f0719a4cbdef80b1db7fd7d3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa148c7c4562e5e17618b2666ae40e6f410a54253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa2550d8523c015f35b2a6a68fe9a37042943e1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa2b085b5a4fb25cae9d29d63d9330b426c1cd5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa3b836c3212639732098ccfdad8828e6080d2765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa3e573aaef9feb29e28cd4cdf450c1a46b4e7534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa6a7657cf9303e0af76cc0cceab1b07051eea0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xab853844181491f93c8bf6c5fdda8e5e3734682b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xacf9f886da1a4d29f86e103957ca90c405828ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaf293898269ac7f366d0e05052b5fdfee8c8052c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb405ec90006af9aba7d3262b03686b4df72864c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb45551ec241466b8464bd228d24063e287c25074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb6bb66992bdeaa8ccbb27d1ea5096c7f1b95aa41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb90ace736330f7bc6d93f498f62f92663a1d64be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb954bea207319593a26f0e4ee058b31b622abe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xba1289603f0a9251fbbc35354d0cf41086ff6ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbafb729dab56290a6bc09d8c0b03fb1402e43fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbd1cc507050d7f4dd9066646d83cda71f782295b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbe886df5a89bdb199f920201e46b4beb3f9249bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbf397d07e9ed3b56bba983deff9afd538739c89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc008ef0e4ce3c9315da5b283f1b8864b0cb59c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc27bc3e5faf27c06c58cb08872d9ee99adcbf8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc46e6fdba5dccebac9762f961e0373f5e6c447ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc4d4a20c029f7e9763778b9aaa526ec8cb69295d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc507d503e5076b725ae2069ef62baf5713bd7ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc55406c9abab9feaef11358a17c1a66212b0c9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc67a8c211b5f2774728d946ffc85f0b48dc50a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc8d93884b410b784c93bd11047f7ced383643ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc8f4d9935efa152d2fa0171e6c92697146a0d5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xca4f7f7e9eceed73dc52ce894153098815ddcd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcb704a1952674ea81b76754460a6b532dc2cd171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcc1e7cbdb6265960cc0b890ca1f70a564c11deff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcef45b465078f08eb1cc1400b138286aa5f8e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd18de0ee255a09f86b96b831f85519742894d512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd194f561151be2d69accd5cfa50323889a449e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd38226132c3b4ae1f8ec2cb946856ae09ef42a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd3b5d02ab11bd2988400ce154ebace44f4f58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd3ef65cddb5c070fc0021a6f8635c390a2e8d74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd4ede46096399a4d6db4fecf5f9a6d303ee68099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd542379900e030557bd2b1ead80d9b5da323ea2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd6bdb0e2e6df936929118ea5d25eafff3e19bb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd8af43a8165b7f67815b94a5fbda321122f80cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd9a00d2ae501278b78deea8991b4a3cb518c664e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdab51de9a509f171c19283cbe8747298f4300214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xddb74af74b9774f76186b186d08ff705f4c9c01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xde05fb2bac1283716de6bba669095431118d87c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe1c243c71bb54f9947de85517a6cc926459668ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe359b661130370f510431df89ce4cffb2b9df8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe411d9a83a80289329842666d8e3243d1fafce37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe44445b8f43c351ea6dd9b038eed2bf5c93d0e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe4531a95840733a5f0cb94fb0db01bac6186ef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe46e6ddad84abb0f87a1c2d8180ae1fb41a60031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe5f36c389f2d0c4dbe2c5c957e28c4b4b4a27151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe924648a8251d65bafd376189a8dfabaafdf0fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xed0476d54be38fc55df0a6962d6b215508007d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xed7054f941c797a4359cf008cd26269804978bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xeeb6c834a56bc0f9fcaeba98c0b3681ff05dcea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xeee59c8a6321c18069f0df1e31da21ebb35c2503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xefefe88505a63331046229b481aa0ebcd310e007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf04d1a22e4c804119ded24e28a8b5b3242f46f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf28a12e1d29142ddb79fb874e5224fb7192e8830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf6be3dd10ebd9ddb9f8840c59a7ba56e7a4b7a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf6c50a42748962a270a39f1ed9ce1da396962fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfb24ca7281f0044e1fc4088b076243f53832983f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfbdcf38c1f26806ed5811242037cef0fe00c6245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc241c82fd5f23e0afba8e08b6f60994a335053b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc434f9ea192cb62ed7c68d5a2a967753eec1c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfd22ff28b5bd6b10c627c117b0982667e0a2eadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xffe9fb398af9adaa4bbeae4c4e2ac99362840b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0082f5d32b25556f5f467630f4cb08f2376df285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00f1c47fb29f49e34fc875b1e3bb783bfb635976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01b42c05c707ae5241dd8fce51fb0f7187310419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01bd482b350e9c04753b80ad78ae70f49bbb36e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01e1c7a1b4bb2e2223244724b651db273e5a7ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02b6a12f1aa4d811406fd3068bb3c6331c1b24f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03a089ce440438d0efe21bc852b4488b71b43950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0429e6f1c4bd001b6896e748e3e64a4f0892c773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x044be1e7a26ec4ac8ac9a0c8d05115fcf57cc119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x048ca1f062a2a2fab36d3f4088157b632f6c6a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04e48a5274cbd953ea3846c4d4ab5dfe4cde89c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x051c9bddfd66b111f0478e2cc6e2d3fdf39f12f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05599bf17628753d44bfacf571699bc52f53ee8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x058ab264a24b646ad6dd5b02134608f9203cc893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x058ec3437aa4d115b03d986f7d647398035f03de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05b53e00a613f16972b8d2e50e29a3ac8aec4133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05dc39dfe76af2764384210e0d4a297cb8e02379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05f5c40b40edaea838ca77d366c6bd3c05df92ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06efd4b31113db5c0069b0332dae120730804a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07b1ab3c6b49529e9be06084127b8e6309bddfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x091429b7a7cce206a99d5154efb5af679140c7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0914a5815fe4d21613aaacacbe4e7097769683d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09cc7345a07816a73ea1b547dad2ee35c0c122f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09cf3325630c449b7531da90767f6a1b925fcfd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bbfd562e5b7067a05b16adbdc21f02a4cca9827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c768a65c4bac4b8bf802a58a3351585a7f43a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ca4b7a0e9843e7bc635a253de07e7f6368d1717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d5b3c5cd9db85f094feb9f2298fe8f8d7ba2634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ddd22550fe507dee08f0a5c35607b15ecb04343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e25ce9c56250b0d9baf0dfc86cfc7935fccdc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e8f0d9693c3048e37ba1fc1d7219e27a011eaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ef80293c8120b61ea49b0f9fb0ca435a05bbb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0effcc5989564605fd05aead0128d848b49a0dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f8a9922b65ff5ecd965e8378d46a10d9c7173b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107ba4464188da7f95bfb128d490cfb589b0ba22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1091d739658156cd76aa3bc672452cf1e114bcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1123dac01d5ef674b26e2069f0f59eb16810b45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1133acc5cb1bcef1732c7a46932ee4e6d04f8b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12c811702987e47b2797a0b19c4fc1edf2f93c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12ea1bcd91f69dcab1160067790678c61759035d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1374c1b71b36c11a2b6e02104a095cba4e51692d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x146abf2a1a775a4a49c8f460b4072d14b3203c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1472a38cd3350f9867024e3174ceb96bfbc02b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14b3bd93d11a1f97c8e11940d02daf5e52f66c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15223786420d7906920e7e220d6b644924f93f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15c284c843fa85d05b8f7efc8d6b31a2fbd80344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15c8eaa6cec40bd4bf7dae2cdf4d34f82f6ae9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15f6924598313abcf561374d4bfe37e5fcae5096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x162489aa48ad655f0fa5ab9402de8029d7af738f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x168e7f9acf01ec84611b42d2d970f87f20a1bca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16d11b709d77e6f97673d2f0a55ede38a95e4d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1751e9e1cca80e06472abbace35087ecb533947c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x176d2a93e6b819e338958edfcb1cc2372161c085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18019dfd4acc9560cd16776457e2be4180f4f123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18970f0bf97e395c26f63e352dbed6bcf123c87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18da8b7edec8d5da5bd2d6ae9ab4058a2b529f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1917fee190dea26a8ea1bc993a3a35610e14e710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19838fe133bc65f22a4932d28a0f1bc5b29cde67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19a545077bb579c3089c38baa31435fb3b904f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19fa547d57f0b96e4ffbf7129c631b99a00786b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a050b6c3aa3e23d77099785789c94644522084e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a270c68ded96246b28167c04496ead48337c344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a565e4f66642678cb095e1e407461eb229c8a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af8def690b011772bfce834e6cb5aa3f0eeddb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b99b8f0f371359e8d1e537ffe814cbc68728710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c45eba3f430d07d8d79226a72fdaec95c052997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c66695166d07414e4fdacb307420d9e07e1892f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d213b5ac3ea9f33dcb4bd4b92735d2a4eb4d61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d3416b1164f84567fe86c36daab47bfc3893aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d404e9c24c174ffba41f99637e69072b21d7648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dff76c770f01bafb6666a619604e00b9cf93ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e17895536f5103a635eb86b4f7f5a652956a69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e1b2a693222c1a61d735293d5adf229e3e4b950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e2c5e6c1a6c141a3cbb214292bce4a04d8f0198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ee5fb6cea0cc417174a20b563b5933500b8e46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f071090a390dc25ac0a59a6f280a47eab94aa4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f7f5d82ca6077ff61f2168dd065025968fec013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f874d39ef98d4c571ecf4e3958978826ec0695e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x211108dca242eae94480fe4b2e34b50944aaf222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21194c5f65c372c93ba1f37b5171978b3c249bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2135311607f406e8be5eb0fe519e2fbc693f3c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22aedfa3a8de3689426fdcb9afa41f48b9fabc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23f9c045d22d5102f1325a57dff074a861d8ce25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x243851e6037e72e6c9ef40b4ff9509c68db578b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25d1a3626af08e1de614d09ada9dc693866a314a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2670c1c5f5b846c826a951fb862904fa2b61dcff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2699588fa3a69519880aaa8b2028dc641dd26c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2779d07f2a8c702a5b3fc94591a17537d265997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27b1de4dabac4b57f5e3092f589b1d810b002da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28d48f96c722bbf293a891e0e08459355b3373be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x292a000568b2e5acfa998d40e15a3e7b9870dec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294895fe6e187f29c4e452a66dca8aaae9bef7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294a1f33fb2a3eff5c45cc52ba2c2f7ec60f1654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29500cadbf1be87ad18372470a1e17b8f7b74c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x297c75f4cae2fa87032b06e110fd612791aef27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29b79993ef0876dbd554e67b9916d86b0b49fa04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a1276cfd3bf5a2611a4ae924fdf3ec3fdc8d131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a6d63eef32783511a75f3d5539b7fbb9f76ba48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2abe88bda5de631259557fef4a11bfb17b506432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b50e07b0dbb6f165d6c590d86f76dd99d9a0071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bdb0eba04945017ce5b8f796d8bb127e1c33857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bf2de52edbbd1f95cfa147ffc59ef7d9216a3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c96a7051fe21aa51aedecd5c95f0f8aa5bdfe2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cf27a75a10daf563d8e195cb75cd960fc8f276f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d696daec85face12ad5dc65073fab36da94e1c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d7a5b2dccfeb6f7d2444b398263d0ff198a7d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d97695121ce38ecdc9eac555f8b231c3b593636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2de94f38060e4e40189e9fdad995157a83f2a2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e50d8387b2fedd06ae287df99586bb7399ecf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ec88a447d51f5cfeb4552d25e61256a2b25d74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f0d8e9da7147575fb2f49bdc8af36c4f5e651e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f8d2975669818bc1c3559f12722f1387876dff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fbddb36cd41e4a6e3063afd257637208ef2d9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31545e4326cd065b884ec9362c3fffb0c5379da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31864b5ef8ab2892c20d4a1c0de3ec399e094963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x320116091bea3f5245f73f7d3a3079cf7fac9412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32b5762ab22c163504db11fa223e92de9b558389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3304f0cf14a9bb90209ec950ab6efd522a42a2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33c241f96bbcd075b09e3b4d02d8178734a95266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33d404f10ba3166a0244365ce690ffbc2c7f219e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x345485a0454c71cf83b9a590667eca58b3650be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3522c2220c99461b81ee65bc493ae1c338959985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35a1bbdb800f82cd7c14b06617e50b707640118d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36332d2aee19fae4193319e678e250b2a7c8d7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36813c9ebec61e663692be8be62d346fdd23cb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x371a50dd3febc38afca6fe057a553b24b9f35870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x372bc737c26790a7c7b6cf5109e497543febb156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x376de583e4c58b9cc221f6f14ded7a0622c15be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37755183abeebfd8ed6b3bb4138807c4faad7088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x383ffdd6ce38a555e0ed4e059b7655a310d959ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38ae676f8fb400d19351a2c044f572d0ad5c4474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38cea8d808b4d67ad6007992ece044df769ba51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x390a5d8172f9e813996026ae26b1ade966085181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3917e685aa19257fd664c3262f6aaf2953522930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39249877b0617662cf4c0cf2fccc781fe45020eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a695438c486c84ee33c96e6422dfe8baf9bc6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a6facc84668a0ab1ddc3cb7be34711425ebc34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a98556075c078a9a0a5e59e8626143ef0dbab2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ae71ed8d3305f72d4b0bafa9eb5b041e5a6646a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b32ebad198f85c827681166546365c99e6e56be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b67d1c85f1e092c2487723f76b6abb32cf3a21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bac12f100f3177e86e54cc373c42c53d263f559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c168ba703a53c78e0a30f8e52732e62d2c3a5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c1e73ea233ea0c1b7ce9af689ed7e76882b54b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c946c2c7fe7191cec5eb078d23fd4a29fbb7c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ca2a5347b12cf58f774c25aea943cc85f4830f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cdd2be1b0cb9f3d221c11294ab38c28c44ac0e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d5d688dc4afbefe29aff4b0437cd707894c46af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e7ddc47cdaf777f3a77dabcc6647baabcc3c23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ec27f44dae9fcafd272196b5a225d8775a80ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f6c57bf3880c623d39aa1b41eb356ff77816c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f8b1c56d857b0b96e0d3bff065f3e2d8d5fa223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f8eeeb54f690e63ed000f48ed87f3e9b034cdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fc7b1bc1f42dd6db3270db57cc6ef70c010625e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x400fb7cb8231efd44add20cb77e758cdc4861fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40f4296aa3b7f4e6c6371796bed354abedccd932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x423ed63910e609b76a2420294ad2c5f3bb2dc74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42f5fb1182d29e811d87c989cf5aa2fb88e5d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x435498f02272023cabecd1777cc3bea0c6dc2853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4358e2d3c9658b50b0c3c353c9cbc6898de5bd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x437df483397d267898a612e6cf790a5419c6e436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43b238051dfbbdcceb8d575730ea5b7f1edc2a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43d2922102f129d09a597dd1bc39f6b05f5dca26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43eaa2c43153c0889ccabe96c059ab4cc072b437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44085a460a2be8a73e46179a1af10d469a0765b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x444affd061209aeb7a9368cce2eacd35e5067494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x445f8daa9e53efb5b535f0d0a3d72bb3b28503eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x450fff694983786fb1a26182343080a6f3b07674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45209e0623a02e700a184e3e1aa200801e48a0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45e7360448fafb802482c899c39a88b25d99d807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45f4708a22068ed7ce138a685c10d2d30b3565fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45f95181eeb42de2a36a1355664e915246475dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4608fce2e5349731e3d8665bf7f9725a4411db4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x461ed1ee85b74f805e3cb6002918ef94d593c15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46c1cff07f526ed140c5aa39c909a10ca16b43e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46e5d167f9ca1a17690393bdb4235bb4a2d5aa8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x470f165ebf54a385a24e8869223a5e845cc8dffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4723141192d7584915850e4aeece4abcad530ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4748335d4414d5f7cd1dd0fa85b6879f837217b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47bdb5277934118478ba7d7c959ac6b360f44c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47f972e207b906aa81b522b1bdeb43dd631eb6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4836985461a49d57228cde2a9bb80849b3e891b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x486926bcaf40211a2049df6b4197f91d6ae35def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a9a7badd94cb23fa8ee30a641db5d431996e4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ab2c938116ca3b9c44631c75f9aabc6ad344615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ac49dd75b5b1f7538f13972fe9df27097f5a992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acac5329d1280f15a869265a83d9a41e18efe68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4afab005bd33559827a86dd42bdf5383e24c96cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b3a5d3075f0b6535ccff994557ecdc87e49cfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b483604658e4a1bba6c49af27bbd3f33e46b04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b54112f1e07df053ebdfb66a213cd5eadb710bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c30b511d60887537baae0c9970526b7c77abaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cb74b980fcb46cba9f2da9365d96bbd9dabe5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cb98e7323181dd3aa2c2b22319500d2c807fa72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e78046cb6f23ce7c2d23d63da17ee7fbb0736eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ebbe213e19bd11bd89e6e89465d48ba2ed3a8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ec9042c88ef7ae74720072fbe298916a3dd2f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ecb8743a94173d27c6fedfd585cda3bb81e3591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ecee222105cac191fded637986805bf89ef90b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ef66a50b9cc5b4fe5cfdabde87af7b230268a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f235e6ac297fafc3d04acd646f14130629e613e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f2e128ab309937dc814d8d0571e18363fbf43de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4dda530e46f95cae3505a73515e5ba5fe3a659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4faa104aff9d87fec98b83a7fc7ebf1fcc7791a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fed184b50ff693b679aab32839fe99ed970056d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fffc9f9fc667e05c1eaee104e7ab0ef6c3ed5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50712c5aa47463701ffacb1be3666c10b222f515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x513246e97f0279017f6f1f771a036a42c8b5bbd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51ad51ce7b9c53f91ec014990682672883031f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x533b0e19c3449101370a0ce668ba3301e4465d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x537a9dde149c245b3e382bd8b3665dc3b16a8ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53838e6d7713cd59e1a01d97b52e412891430ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x539b2ee4f3a04f33d53c0813f77e65148963f72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x540c8552c26110d1b0c2ea0e93375d24ff9f44ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54bed4b6996c6c377901dae0e7290ad668bf8a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54f034852b9fb9dcb48ce64d43080d1a7f82fdc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5504b3d7bdf9684070f34b9230e28a8d5e6b1057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x550a829f1548ed65796457524fec8a0d76eee22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x553dc6f4f3145d59c6f94580ef1ee835387f5442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55497886855295c810a4f88fe85143da0f0d6b0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55cba10f39b372e2ba8c907ddcab443c107e896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5696e60dce1adf92fe9cbd5fc433ec077121f8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56dd62f6948e77385c304618bbf0148701b0c914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56ecd2348c5d27213429e0c669d024af365fad33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x572400866a1ced0cc73984160f59f4d36752b197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x576d603f37465aadcefa8a66a493058049ca20d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x577a3a8920e7b8bbe977acf39705c2f9dae43018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5992196933ec347572ec210c8e57909070a54d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a10c7354cd065dcea488f2c2441d0444f12d336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a3a0ceddca08c25282857685de2d19777e82bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b108d7c733f857306c0d3cbf4aa498ae40f1f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cac38fb6966d679c44854ace64e7ff94fe13b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ce9caf13530a82ff6ba3e4250a3380085caf96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d38a6d9c32a25c0964abd9c65b5c9b3d8adee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5df235f0d5ea0e4d8a0a02c0fd62be302031f01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e3d24f4c7643b67156c07994f365eb1165c60b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f0d5dcf1da611c250f0500b39d006a0277917cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f10a9796ad3eca55bd73f9617630170bc67d2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6031db73359bb14f5016374cb8a52bb349f943e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60761f0a6fb3c37ff96a5f574b496d65e90e5e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60a036a2eabc6e9bf223364eef51a109a8ecec9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60baaddef6a2f41206ef035245789cb8580cc32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60d3957d3c2a5d2fb3df97e3430d9f3dd0a6c903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6112a237de1aa6196b898daac738bce00649d404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x614d9eb9cb7dc01ae8e3ce9125f26a7e0f062a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63f3a3def1be43a9d1cbd983af73c0d4b8948397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6495daba0c8ec8de334d16fa9891ead9db7cab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65d180ef8783c2bb6373d8629df06a060b25c9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65ee1cfa4f540f44adbb124134cd286d124d607a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6725198b082f935c016f3113362ec69b498e427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67747f0496058c85b849f1b039a1382c097bbe64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6864cdc8e48f32ff626766b9b19b6a700450135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6897f7acd5e7394b618f3234e9d1308c42c1f23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68a67fff7ebd93850db08aef989e6f5aad01d8e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69255ded140da6ef28442e2193040e6f947a4b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69637de1f1f14946a3d58561c625f129272ae3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6969a4329eaaaa54116f63941b8a4b8135c2ee1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a322cce37e5c71895d657df004c06a94cfd0bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c4d3a43c0ea0c70c2bd22800a67a60733d6a7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d9c20286f59798a5ef18489f4b15d64080bf1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d9f84a12c837e74e755c251655de53f05c87804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e2c4c7950303ba640cd26c8f7ca92724467c291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e61e23a0d6fde00c18ba2882b937efa6f35071b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6eaae444275c45553417b90c6a5ad1167ebabc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f3dbfa0099d4d46522fbc3f5c861856eff334d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f62cb7e73bbbeb285987a3c641c1265ab602989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ff1c07caa77eb13f9f55465e884fa4c7cbcfc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x705799673998dace27ce0e0b64835c282eaa436c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x712710a135f2e7b73137be10e17f95031940fdbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x716e743a60433ad4b4d16c03d7a72c5df157e8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7193d02e2e7078027fe79386cf6a7df6d3bb7ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7196756cc2fcf3db37bb578f66a0f8181a58f7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72611b7b41723cffb95b9676d3eb5558e0959595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7300995001301cdd56a744348a63490c08611a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73acd73476a1accb597ecf170b86e956aad33ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73ae8fb4245b705189fbaf1aa0eed1906460b896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73ee6e0a7cd040301104bedcfdccd95f1074883d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7443464aa2e730680844f3008e3ef991f4bd0c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74b38e609da9809e1797ab676bf20a3b9a8c4eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74d3e7ab48724bb3a48f38b88845ee00da6a108c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751a610bf493422e23eed4d02f60da20cbc7be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75380ae523bc54e368627bb14cd2f76b12926c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75ce070c17f4b3cd9db34425b191e3154e7c2535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7682d6200b7ca200968b572362571d5c7b4a2516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76d133aef5acc1d73dec196765a11f2d886b4c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77de52f1d9aeb53c9e3916c706109385eadae8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77e7b2ba8ccaed9665351f2ff301fdf4ddfc2dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x785d6e43c5e16b19448d53c34571cee90d02921b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7926256ca6c7ab3693038bace043ec9924dc96df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79a9d9e560719b854852dea804bf03843485b1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a99108213df41d12b1d3094af3d89eb40e84179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aaa3aa399d7208c258a3a19186ed1bb88f90d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ac7f11ad6d31489f05d146a3892f21ac9a47989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c1b4de41ec16e3d054a1b226e91c1232201b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e50576604bb1fd4814d879e46c5b5e9b64ff8f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f55df1e37f707eb4d5bade7c539e17dd22d986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa03924769a9fb42dad6b6e4cf6f81d98c50c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8053e405fa7c84eeadf931948e2835d25ee6212a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80d739d1106077d3a9fa0d4ee9d375c62f61a1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81c12623bfa3ecc4dbe6eebe5ec50a09f73c7280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81e61fc1f763dbe0b5b0bfdf48b186d1f2ff9a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x821a977dcca7623c9154b5f50b2ed029f3ce6179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x827e4e2b17244db9abd3d82d115a6c116e56b8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x833eb0e88446422fcee8ca67a1cf62551969de22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x836b2a4ae936ad1ff592c4ec7e93c35a8e87a868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8419be64ff0c067bec9ca5952c7bd03a711ca9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84ae44eb54805cae096e4715486d0f01673cd806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85e8122b8b16f865dfa2ce4c8a0f070e47741772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8662459aacce546e9b4d7bad942f64bad8a8c439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x866818ed2ad354a3e8af5883b8d32a059b6b7b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8690381ac8e947e5c8dd79e109bb6e094d74500c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x869afc1992164b21b57ec608a77f0da57a944495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86b74303abe2809f5d37ed48dd1da326af06fda4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87177f9d3afff0f5023ec6ccec1bde4dd7cc31fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8744864ab9789ac3cc9a5178a6450e3a110ead39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x878d69cf8331a260a735a94f2e24be7b4afe19f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x883abeb5f1c0d3bf9ad5a7b561c2502af457b1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88e97455675854be3767afb51dae5788431d5972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x895f2b63b561a8616e27bb1ff46abbc732d88b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89dc52bd924e576a3cc734f8c9443694de224cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a9a52bbe57542ad5545f5f3c73f4f8f1e539572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8abd3b22b854d53f7deb9d32b4b24c1274e32fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b042eb585d23df18b8fc4904c9f6ef509d52862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b27c6409a884080ed640e882df86d10c56c6af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8bbceff0bddd400f96ced89ea7e2bcb678462703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8bf4cd58b29134ee09fecff0eaa1539263423fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d00685ee91bd6ebf5ff4c106c91633ac228b6c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d16e3ca9e42bdf06934c3acbd1b582dcd1f562c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d8610cc894265198ecdc3287c8e4e533fbc9c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8df56529d110acc350441e3adbee7dfed46b1321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e00c2df53541d8cf20add47816a66456e84ad98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8eca1654a212885ff3ac205b671dea33a664470f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ef51a946b939eed46552770d0d6511a72033b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f4bb100aebc46d318260f943f086778b4965bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fdd439038b8649b89ad6fae140ba51e8b9010b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90b5621edb8007758298876dcd316e8e4ed86356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x917edc4cfe91e92bf1684f50984173162dd7b96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91b3ba993ba7699a0ec818a745c180706a4036c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91c7aa348f484b16138a22d8937575eda2051ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x924c71ec51fd8f4a9f809555713d756c643c50c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x929bbc8d80d4f3a4d9c9661bc91a283871bd95f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92c399307ef244b913fb3b78e9ada5e425943593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x930c1cb6aee8c68d240dbd7d32ae8d91f5e84c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9360758e96dad3c34f6d6a9a0113094f25f60a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x938c0e1eb7a0a5df35bc3a8605690f28141191d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x949f1f7c1b2f08fdbc4812522c2329d57dabe817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9674affafb1d8d45daa914c0dcba1703088a686a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x969984b31d3a7e81f9a33364b8b45b01ee0f2d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96c010323fda845f4a1e1469856bbf6492a0f146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e21d8f3226f7a4468195050f06ebb4a5b68b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x970084213868bc81e2c91bc069e7749c9502b001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x971419cf26e78c49eae91435e3721f4c0f325380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97169e5e2c260394a89d42d38b7e4386822c3cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9790d6f74d495a92fce1c4c1f52cb3938a0f32af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x979a799c25cca57c44711a595919d795f3a90d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x980fe5ae0245e22a5f7e1bc23f23f7bee536623e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98c1fd0c415b8dc6690ad1128feaa654dcc49538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x995b912f7f19d39a14e4ebd5aae6925b5d61b70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997f213f6028d77259ed9c4661b138e967841914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99c5a92b435ea45054eb64fbcefec08910cbc151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a8ec1a77e371b1923ce7a89ce40cf789846380e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9aafd768d9f31408db6cf02c863bd17ab8dcdbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ab941b2c147e5fc8c111c6202a611dbb58586b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b06278d853419a4fba8a52c1e7e8bb342b88618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b55cfc9803df92a2e3318b585e47b5a1c0ea392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b5d3ed58ac5afe67714ba2c3fb2170c96c5ef57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ba66bbcf094c57ef44905f743758f7699e00e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bdd6962ad460a31672f8266852bd1b8805f9efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9beae137382a88a56009eb5319f396bfc7a600f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bfce557c5fefdebb533bf4585dda32a461a913d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c0ee5e73d2350e19a6e29ad8416b58101b6eac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c607fb262100fd20fb1f2c133e428b95e96c0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c6fa8e0141578d5dfa87def001d99729ac87661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cabd9ce2d0c6332458c9f6a3b14de3b1ce060e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d40b0123ae1ee8a7a1c14027830922b3e8f0e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9da28c31503caab83a0a2bdbe08db8e8634610cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9de42aeb388c0adc1a55d2b6285a58143b5cda90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e14c4bb804fdb6db3190ae6ef020a3d1b57a340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ec50a42a8829137f9a990a6163ebaf52d893aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ed23816ed080427b1d2140eb6e5bc11d2dae32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fc1b42dfe6c5ebc3fb050a3be55ce1dd7a45912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa04c2b3b3ce5f9486d700ee24d2ec20c33882438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa148c7c4562e5e17618b2666ae40e6f410a54253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa191162c8c56f36a9fafa61e8c19e2a41410fecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa198e102d5b9b05ff488242375d80ba40b3f2299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa21279a4eadd6af1dc3ba0e1f294459670b5f9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa227b557b04a618bd815ddde74be4010ee8b759d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa251bb8896810b70436dc12a464020b82746dc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2550d8523c015f35b2a6a68fe9a37042943e1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2b085b5a4fb25cae9d29d63d9330b426c1cd5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa34661d07d3170a1bedd9d51c467f31ce51f3704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3b836c3212639732098ccfdad8828e6080d2765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3e573aaef9feb29e28cd4cdf450c1a46b4e7534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4083b372f965e4ce951350f1e826ad230944ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa40fb270f378aacf50e9514fc92a9c89b29e40c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4422853d249e6a61e8a31abcd88365978bbc303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4573f097ab154eb0c66695e23cb5cca1dc06f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa537dd8ef85c4aad2861dba5d2af8a7f20dd7862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa552dd44d129b1aca8945d26a259d7ae44d0bd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa63ec4360ac9b4b59176307fb76c327268a178c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa64a0a25de00c7ced3ccaa1f7ec51c3c8e3e899d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6a7657cf9303e0af76cc0cceab1b07051eea0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6dd6f9ed66a138dc5374a1ae4e41c9abacf69f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6e7294a35d6463227861977759e460e8644489a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa88b9110e687e6571c34ba92b02bb67ab9610365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa944c4ae975f3a92c0aa50bfd7012332b471fb13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ca4909700505585b1ad2a1579da3b670ffa9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa7629c6e76f4142ccfbb632f6ad4f0c945caf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaad65dd06ecbcd66441105fb750a1e72d5aedaea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab00a2ea3f180879dd2f96299b357ea23eb545fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab853844181491f93c8bf6c5fdda8e5e3734682b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabb6b4f2af85d691860fff28994da4fd5596ad93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabbc012ef62bb6942b4165de98ab268c1b0ecb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac444ae064bb331db1221cb0d8290d1fbd8299b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac87fdbd9f4ce59368a054e609623862a9405278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xace871dc58cae32d73e4987a1fe6ac9858654d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad28dcbb2ccd022a0c9e4d2d73a2c7655c3db284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad42513bf18ac489e6eea41ee440e21d1eef136c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae215049af8e039b8ab40ee510549ba5e1b0dace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae7c408a32d48f1abc1b21f7234044aaf8123467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaebef388ae1e422771e9556d0b299a95d4a26dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaef3adb37a19feccc747022688725a5c25342476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf1bde2bce9db4fac89df5c97a159e99d020c97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf293898269ac7f366d0e05052b5fdfee8c8052c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb07c030d856b9956d980495f4d4ea899e9b47108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1b77884bee597c49f99bb1010ed382d7e28eb7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1cbe0868218ea1e405e373e89b57e7aaf19b9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2363e532e986be0ced039410155f0b0425d8cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb239549db9675e880522e738c0c022f27ff63b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb264b7d623798d16421ad37cf4700d8d0d1f13d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb268ab78f1fad4b822f5f49b7851356dfcb4b98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb336c449cdf32ed289de13806b28f1fa67a922a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3acd76d995546353176c1acf82ec7de7b99055d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3dcefe5baa21638a87ebdc140976bde5a758ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3f977b3828c0de2add1531d5c4c1ab54ab9bc95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb405ec90006af9aba7d3262b03686b4df72864c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42937236160f1725eaddac97ab92d61940a9667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb45551ec241466b8464bd228d24063e287c25074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4ae2f074f243c4612272a6bb7a9a219ab6ef80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4de2100ceedaca783a7b6d12e099b58aa55c36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb523f96a36ee5a2ac66cb89bcc6ad3454be07e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb56745e0822f1ed1da91f0eb9e7c207b95efd0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5875f09e4091b0befbc36f7f69f655ff78cb49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5f3993a6409a3b1d4e5ec53932f38d107f1fd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6b8e08f287b3a2e80c8429dfcb5734b5c7314b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6bb66992bdeaa8ccbb27d1ea5096c7f1b95aa41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7a42088e0bc221e1d5a9f9c098576adcd088ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8449f02222f31798044d88f6f4376620dff2445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb875d91915f5a72d395aa10e84e157ee043a1455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb88cdb4e5306f711850353128cbd36f19163fc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8fde180562525c8ced45e45d2111abc2b507449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb90ace736330f7bc6d93f498f62f92663a1d64be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb954bea207319593a26f0e4ee058b31b622abe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb962fd1abd9a365140493bd499acf1ec0acff040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba1289603f0a9251fbbc35354d0cf41086ff6ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba5914d54701f3734b9e563b5fe5095f1fccdc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbafb729dab56290a6bc09d8c0b03fb1402e43fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb292b4aebb933adf7e5b93bc8a1046336d236df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb44ff2c6373881cad73bdb4c0eeb40bef3a7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbce7fb374afb9dbc6509db24f1f266b5aeb307e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbda39791442e754911c18ebc63cb1a0048b3b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbf4747425deb8d34187fd66412bf6095b87aea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc09f251366b5e8ab5a93a3fde683020d1378a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc5f0a9e6bc6a638767c74e7fcb78b85e462f140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd1cc507050d7f4dd9066646d83cda71f782295b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd21ea46323073f3618b3bb6e3a178b1af842a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd3daa2d15074f61db79218cac72fee7e829544c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe061444ecf9f5fb714ed1846ea25622601e138c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf397d07e9ed3b56bba983deff9afd538739c89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc14fc94ee7cd36bcfecea69557520ee7b0263760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc176dd0dd76a752c4c99e31b8b0d765a4ec44e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc27bc3e5faf27c06c58cb08872d9ee99adcbf8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2ca489be823573d858c81db8fda51e355e33e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc336b55254daaa9c77df953864bd107c027e48a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc39f3ea55598623d7bdd638a9887208bf163f858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3c6032b27ace2342257f24cd84853f5f2c0eddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc46e6fdba5dccebac9762f961e0373f5e6c447ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4d4a20c029f7e9763778b9aaa526ec8cb69295d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc507d503e5076b725ae2069ef62baf5713bd7ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc67a8c211b5f2774728d946ffc85f0b48dc50a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc75956c39b1f776b831621b242f1cc096c418672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7866facb97aba92d51a50697330772b08e7d027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc78fb0e1a803b2d5dcb98c78cd3e0afc90dc2af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc843b5f18aaa2cc8f27ee7142d137385c3409ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc893e31550353e7137195c2a80e741968e0eb278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8d93884b410b784c93bd11047f7ced383643ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8f4d9935efa152d2fa0171e6c92697146a0d5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9309fd3e1928e1535740be35a1a58c9e333876f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9b4d67273cb20847651d2e0ac4929db542801fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca16a6fdf91766b4293fd5d6db4d39869947b9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca1e2a2cd8488d623628c5746b4178e34e12eefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca4f7f7e9eceed73dc52ce894153098815ddcd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca9797ca52b1deaa141965205a1dfebd527cd217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcaa0a4b85092a6bbf18657c41c1c5d34372cef0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcae18eab1d7aa4197adf2046647677d13cc453e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb704a1952674ea81b76754460a6b532dc2cd171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc1e7cbdb6265960cc0b890ca1f70a564c11deff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc670a67566cd86e68b4c08e3692e1c35afa3c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd4317bb3fd2ff90986377c11ddc53a76160d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd4537a0caf61488684be041c648e8b431ccb937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd4c4183b4726dd6c80d6b31fb14facd23170eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd53b444a9c271e2545943e2c9874c8713bcde6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd570ba8fecaa7ab97857b3f1587c7ca518ac143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcef45b465078f08eb1cc1400b138286aa5f8e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfbe4fb51bfcadcdeb21c0e5e9a4027d4d2e788b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd122f7013448b8143a451486bf2a69004b615ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd16412c24a7849a62b3089af96423a7f9cad148b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd18de0ee255a09f86b96b831f85519742894d512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd194f561151be2d69accd5cfa50323889a449e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2515ed3462e843fc7a2f0f6eb01f001b7062641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd25f6251eccc7d050bb55b09480247141b71c524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2973197f311e7f4f91d13011394a398a7b9686e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2e33a7b281a294653fdab71f31df07b96f07468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3b5d02ab11bd2988400ce154ebace44f4f58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3baae9d4878a4a81f8a30de9b7b977609b2c4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3ef65cddb5c070fc0021a6f8635c390a2e8d74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd42c1e3526622510f771eb43b41539bf01057565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd42e47389f27f99f607502ac7c010d5e7bf3da73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd449f3c893b203de11f0d3a39549114841e19edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd44b8bd1122c72911f684c886af8669c49bbac30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4ede46096399a4d6db4fecf5f9a6d303ee68099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd542379900e030557bd2b1ead80d9b5da323ea2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5bb674758a2dec50001a46ad8dd59a0c6b411e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5ddd63e70a1631c8ba6217e1f58a7ddbc61d4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5fb22c97614e02158143cdc130787ca26adc520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd62627511ceb85db49d13b55fcd97501ef71802f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd68cc8f8e6c7fad985859fc7e89695363f2d739f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6bdb0e2e6df936929118ea5d25eafff3e19bb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd792b87e7517d8a6bee1b82c7b9cef6c9b371c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd798ad443130b16cf7182d708d8f702e058a1dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd80991e00eaa945a08dd9fe54745dad12fbdc441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8af43a8165b7f67815b94a5fbda321122f80cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8ba5aa6bfed6bc2c908996ba35c160003949b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd90e32955ce092b37bccece6dcb468884e021031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd995204ec929b6bbad9421738020d8f28576f686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda09cb4c21d5df0a191fdacb7a816059335c8216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda3257edda256bd3a28f2e87a57aa4d618412325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdab51de9a509f171c19283cbe8747298f4300214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdac94325637e5bd18179e354d17ac403168bba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdae57189de35641e57df36c3cf4a73a6337fdabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb1f6f79d1df74c13332accc6bb3fc42f78383b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbe32356cb22ac8f8628e4d6099fe2f17a5b991a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc76e35a09ffb288980d6c380c619d2694202099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc773855a1ca8ebcfbc8fe3ea6a4e0df3e25c3bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddb74af74b9774f76186b186d08ff705f4c9c01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde00c6513682c77119c0d13d9f225b968200e5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde05fb2bac1283716de6bba669095431118d87c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde5f35e726a63ff0acb0136d47a0f1e1d6e39e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8c83e044adb280cfe8ab6ebc13074f7860939d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdee9bad40a2d2722786098db450895419865787b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf96a0341cd2880b26c612aad6b54650a906b827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfadab6a071e190f51e65a83afd67e9b18bba450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe07c755e910005e8acb1d2365738fe56ae52eb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0c8c6fdd322fc4141b7d299ea59f758dfc4b332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe12520297046109d30b48476eecb214743fbece4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe21ea31a6f293bb2b66097dea6a5b214740eb343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe247a983e96adcee394c8eb5d38335df3411d6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe253c4729da962fcc4d783b8cf2a592ededd56cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe355d4e2ed2ebe7631310e9afdbca51b62dc2a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe359b661130370f510431df89ce4cffb2b9df8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe411d9a83a80289329842666d8e3243d1fafce37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe43d2ec7975dc63edafbdb173b3b46e1dd854b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe44445b8f43c351ea6dd9b038eed2bf5c93d0e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4531a95840733a5f0cb94fb0db01bac6186ef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe46e6ddad84abb0f87a1c2d8180ae1fb41a60031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4d48203e99f3f8f17053805959141ef48c7f6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5df6bf9eebb071e67c23af8db4973e7bbe93019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5f2cb202bda662373b2cdb5af89680f3380dd69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5f36c389f2d0c4dbe2c5c957e28c4b4b4a27151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe647d02606cd00887478b2d61689de9555b0ea71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6a38d291e458f30206839c5a747a4d5701766cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6b041b2f6eaa5738fc15ded9ed0238c23c8988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6c42870ba57d10c98d3f16e8b3909b39cc75e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6d34e92ccf73e6b694f9b63081a8d12d1494fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe71cc84bd83e8aac42eb3c270efc434ea8845247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8130b5767e26671070788b8a4cb115a55529c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8371f98cc709841e15141d5eafa5a18714f4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8db7a7ceebc31a30a10800fa980243b864ec408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe924648a8251d65bafd376189a8dfabaafdf0fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9bbe056ea41d9e978585005ff186578b6bfdd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeafd4d94e4c55f0ffae8ae6db25e7e84aa01ac7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb4e2b29c61d44565868f1d1afd398f578d7b08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb8776bb80d7bc4d34f56238cd0209ca49ad56e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebd5b5a1b7fb64907d91a66e7047f452480cc736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec68366a3ed0f6de172492aa9bcf92d84089562a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecd2e9a1b653c19bd5ee00a88d43de9bc4eb5e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed4820f8ce0bcf5eb9c4d7c6e35da8cb1f61806f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed545dba127ff9bb88b515327b530c4deb72c124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed7054f941c797a4359cf008cd26269804978bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeda64b61cb2e1ba3a136f8342a391c11bec5d54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee09f971fa0eba8bd7ec2ddfc2c0dfa80d2d462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee67f8fd87ebff378b919235132be8e128cbe2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeeb07bcbeacf2aafd323c9708b7ac69b2e5b8ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeeb6c834a56bc0f9fcaeba98c0b3681ff05dcea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeec8dda168ca71e6967e6fb8f43b6a1842429031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0cb9fdd31c966277e47db29a4cf19d13e7390e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef1471f4193b52da071660385cbbcea58f006e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef327a0b39c0c95272d7322c9da4e428bb3f5d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef6033532cbd3b6affebecbb278582af6e041345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef981ccec40cead21cf2c6cca3504325a4cf2c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefe3e4c5622076ee0cd24da17511dc2128f9bfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefe449c89d045907d29f31bfb79aa99877834e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefefe88505a63331046229b481aa0ebcd310e007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf04d1a22e4c804119ded24e28a8b5b3242f46f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0a117a8a858834441a6f61f866c10a0c61cb19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf176dc0796a8e2560556ebf75bb16099cb953bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf23dfd1969c2bc20f4c3b2bf950320ce7c1b57cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf28a12e1d29142ddb79fb874e5224fb7192e8830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf35299b4b6730d8dfceb73cdb673a6391ff75f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf36c19c838581b2132d6e1abfd855ce09a671332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf39ce9b60908311444a96547fec2e110534959fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf414eec6cedc79d3f84b10731aa85fbb5b468304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf450d09fa1fa90ec7b385c18a752f5f267bf764d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf474ab101a95ed775f8c10f03c38ba2b6c205792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4de839d0d07517abd0097cc84aa58974b6f17bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf549336c70cf2481e4d9a41827992a369e7b7cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5bc89328aa96548155b65719aeba90fefbf4db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5c04ca5f1518ab07b7b5d197c2c5f2c02e43e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5e975a1bf908fc43aee7581efa5d52a8c9a3fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf655f239ce0f1168d2b4a057f9216d18c7fbb266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf673f33bc063be38ef91939ea753679652a8f8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6be3dd10ebd9ddb9f8840c59a7ba56e7a4b7a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6c50a42748962a270a39f1ed9ce1da396962fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf739ec2b6e5775be062672d7feaf051b279eb227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf819f44e148c5c22f9eaa3d1c64319362573fbb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8855f04cadce18b9cb35d31e89cbc8a5d66593c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf99c1feb693fc56174011484af55977ead3048a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa0e18b8e1eb3565802f404325cecfac81cc9dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbdcf38c1f26806ed5811242037cef0fe00c6245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc241c82fd5f23e0afba8e08b6f60994a335053b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc434f9ea192cb62ed7c68d5a2a967753eec1c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc44f311789e1f91f8fa228dfd09755fb44927bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcb666b7b08418ee54e32bfac9bf1c06d0de8722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcfb4e81e92129fc1a7bc3869d60391c582bb72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd22ff28b5bd6b10c627c117b0982667e0a2eadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd47d74cbca547b8fb0345be4856cabd79d12dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd4fe3e46eda6b1fadf118859665a1810c016973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd778f3dcec9957baf1eeb05d0f5b66d14f4caae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdc051fca4f75a7e569ad87fa47251a7bcb26d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdcb124e37787cb8ed2c16c8390627efdece0753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe2205d51c5b84d24a4f11223577aceb8e8ed586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfec76dea63135a13dce2656598fa08ade408433c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff4a137f53d65296759d145aaee735323ca44ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff7efe08807591bf0683ad4736092f011b15d5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffe9fb398af9adaa4bbeae4c4e2ac99362840b5e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 853
- Live contracts: 0
- Unknown liveness contracts: 853
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=853

Showing first 200 of 853 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x0082f5d32b25556f5f467630f4cb08f2376df285` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00f1c47fb29f49e34fc875b1e3bb783bfb635976` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01b42c05c707ae5241dd8fce51fb0f7187310419` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01bd482b350e9c04753b80ad78ae70f49bbb36e9` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01e1c7a1b4bb2e2223244724b651db273e5a7ead` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x02b6a12f1aa4d811406fd3068bb3c6331c1b24f5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x03a089ce440438d0efe21bc852b4488b71b43950` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0429e6f1c4bd001b6896e748e3e64a4f0892c773` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x044be1e7a26ec4ac8ac9a0c8d05115fcf57cc119` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x048ca1f062a2a2fab36d3f4088157b632f6c6a99` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x04e48a5274cbd953ea3846c4d4ab5dfe4cde89c6` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x051c9bddfd66b111f0478e2cc6e2d3fdf39f12f2` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05599bf17628753d44bfacf571699bc52f53ee8b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x058ab264a24b646ad6dd5b02134608f9203cc893` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x058ec3437aa4d115b03d986f7d647398035f03de` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05b53e00a613f16972b8d2e50e29a3ac8aec4133` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05dc39dfe76af2764384210e0d4a297cb8e02379` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05f5c40b40edaea838ca77d366c6bd3c05df92ba` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x06efd4b31113db5c0069b0332dae120730804a17` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07b1ab3c6b49529e9be06084127b8e6309bddfa9` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x091429b7a7cce206a99d5154efb5af679140c7c3` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0914a5815fe4d21613aaacacbe4e7097769683d4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x09cc7345a07816a73ea1b547dad2ee35c0c122f5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x09cf3325630c449b7531da90767f6a1b925fcfd9` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0bbfd562e5b7067a05b16adbdc21f02a4cca9827` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c768a65c4bac4b8bf802a58a3351585a7f43a7a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ca4b7a0e9843e7bc635a253de07e7f6368d1717` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0d5b3c5cd9db85f094feb9f2298fe8f8d7ba2634` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ddd22550fe507dee08f0a5c35607b15ecb04343` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e25ce9c56250b0d9baf0dfc86cfc7935fccdc45` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e8f0d9693c3048e37ba1fc1d7219e27a011eaa4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ef80293c8120b61ea49b0f9fb0ca435a05bbb0e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0effcc5989564605fd05aead0128d848b49a0dfc` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f8a9922b65ff5ecd965e8378d46a10d9c7173b4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x107ba4464188da7f95bfb128d490cfb589b0ba22` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1091d739658156cd76aa3bc672452cf1e114bcd8` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1123dac01d5ef674b26e2069f0f59eb16810b45e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1133acc5cb1bcef1732c7a46932ee4e6d04f8b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x12c811702987e47b2797a0b19c4fc1edf2f93c7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x12ea1bcd91f69dcab1160067790678c61759035d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1374c1b71b36c11a2b6e02104a095cba4e51692d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x146abf2a1a775a4a49c8f460b4072d14b3203c83` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1472a38cd3350f9867024e3174ceb96bfbc02b07` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14b3bd93d11a1f97c8e11940d02daf5e52f66c47` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15223786420d7906920e7e220d6b644924f93f3f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15c284c843fa85d05b8f7efc8d6b31a2fbd80344` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15c8eaa6cec40bd4bf7dae2cdf4d34f82f6ae9eb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15f6924598313abcf561374d4bfe37e5fcae5096` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x162489aa48ad655f0fa5ab9402de8029d7af738f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x168e7f9acf01ec84611b42d2d970f87f20a1bca7` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x16d11b709d77e6f97673d2f0a55ede38a95e4d80` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1751e9e1cca80e06472abbace35087ecb533947c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x176d2a93e6b819e338958edfcb1cc2372161c085` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18019dfd4acc9560cd16776457e2be4180f4f123` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18970f0bf97e395c26f63e352dbed6bcf123c87e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18da8b7edec8d5da5bd2d6ae9ab4058a2b529f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1917fee190dea26a8ea1bc993a3a35610e14e710` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x19838fe133bc65f22a4932d28a0f1bc5b29cde67` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x19a545077bb579c3089c38baa31435fb3b904f7d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x19fa547d57f0b96e4ffbf7129c631b99a00786b0` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a050b6c3aa3e23d77099785789c94644522084e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a270c68ded96246b28167c04496ead48337c344` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a565e4f66642678cb095e1e407461eb229c8a56` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1af8def690b011772bfce834e6cb5aa3f0eeddb8` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b99b8f0f371359e8d1e537ffe814cbc68728710` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c45eba3f430d07d8d79226a72fdaec95c052997` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c66695166d07414e4fdacb307420d9e07e1892f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d213b5ac3ea9f33dcb4bd4b92735d2a4eb4d61d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d3416b1164f84567fe86c36daab47bfc3893aa2` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d404e9c24c174ffba41f99637e69072b21d7648` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1dff76c770f01bafb6666a619604e00b9cf93ae4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e17895536f5103a635eb86b4f7f5a652956a69b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e1b2a693222c1a61d735293d5adf229e3e4b950` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e2c5e6c1a6c141a3cbb214292bce4a04d8f0198` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ee5fb6cea0cc417174a20b563b5933500b8e46b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f071090a390dc25ac0a59a6f280a47eab94aa4b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f7f5d82ca6077ff61f2168dd065025968fec013` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f874d39ef98d4c571ecf4e3958978826ec0695e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x211108dca242eae94480fe4b2e34b50944aaf222` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21194c5f65c372c93ba1f37b5171978b3c249bfe` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2135311607f406e8be5eb0fe519e2fbc693f3c72` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x22aedfa3a8de3689426fdcb9afa41f48b9fabc56` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x23f9c045d22d5102f1325a57dff074a861d8ce25` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x243851e6037e72e6c9ef40b4ff9509c68db578b5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x25d1a3626af08e1de614d09ada9dc693866a314a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2670c1c5f5b846c826a951fb862904fa2b61dcff` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2699588fa3a69519880aaa8b2028dc641dd26c34` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2779d07f2a8c702a5b3fc94591a17537d265997c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x27b1de4dabac4b57f5e3092f589b1d810b002da4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x27dd7eae348ce9697df8fbc048f021286525fe06` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28d48f96c722bbf293a891e0e08459355b3373be` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x292a000568b2e5acfa998d40e15a3e7b9870dec8` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x294895fe6e187f29c4e452a66dca8aaae9bef7e5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x294a1f33fb2a3eff5c45cc52ba2c2f7ec60f1654` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29500cadbf1be87ad18372470a1e17b8f7b74c4f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x297c75f4cae2fa87032b06e110fd612791aef27c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29b79993ef0876dbd554e67b9916d86b0b49fa04` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a1276cfd3bf5a2611a4ae924fdf3ec3fdc8d131` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a6d63eef32783511a75f3d5539b7fbb9f76ba48` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2abe88bda5de631259557fef4a11bfb17b506432` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2b50e07b0dbb6f165d6c590d86f76dd99d9a0071` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2bdb0eba04945017ce5b8f796d8bb127e1c33857` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2bf2de52edbbd1f95cfa147ffc59ef7d9216a3e4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2c96a7051fe21aa51aedecd5c95f0f8aa5bdfe2b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2cf27a75a10daf563d8e195cb75cd960fc8f276f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d696daec85face12ad5dc65073fab36da94e1c6` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d7a5b2dccfeb6f7d2444b398263d0ff198a7d2b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d97695121ce38ecdc9eac555f8b231c3b593636` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2de94f38060e4e40189e9fdad995157a83f2a2c5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e50d8387b2fedd06ae287df99586bb7399ecf18` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ec88a447d51f5cfeb4552d25e61256a2b25d74a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f0d8e9da7147575fb2f49bdc8af36c4f5e651e0` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f8d2975669818bc1c3559f12722f1387876dff5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2fbddb36cd41e4a6e3063afd257637208ef2d9fb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31545e4326cd065b884ec9362c3fffb0c5379da0` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31864b5ef8ab2892c20d4a1c0de3ec399e094963` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x320116091bea3f5245f73f7d3a3079cf7fac9412` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x32b5762ab22c163504db11fa223e92de9b558389` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3304f0cf14a9bb90209ec950ab6efd522a42a2f9` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x33c241f96bbcd075b09e3b4d02d8178734a95266` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x33d404f10ba3166a0244365ce690ffbc2c7f219e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x345485a0454c71cf83b9a590667eca58b3650be7` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3522c2220c99461b81ee65bc493ae1c338959985` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35a1bbdb800f82cd7c14b06617e50b707640118d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36332d2aee19fae4193319e678e250b2a7c8d7a1` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36813c9ebec61e663692be8be62d346fdd23cb03` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x371a50dd3febc38afca6fe057a553b24b9f35870` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x372bc737c26790a7c7b6cf5109e497543febb156` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x376de583e4c58b9cc221f6f14ded7a0622c15be3` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x37755183abeebfd8ed6b3bb4138807c4faad7088` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x383ffdd6ce38a555e0ed4e059b7655a310d959ba` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3869550d5ae1343110c0f8f062fbf24621e537d1` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38ae676f8fb400d19351a2c044f572d0ad5c4474` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38cea8d808b4d67ad6007992ece044df769ba51b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x390a5d8172f9e813996026ae26b1ade966085181` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3917e685aa19257fd664c3262f6aaf2953522930` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x39249877b0617662cf4c0cf2fccc781fe45020eb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a695438c486c84ee33c96e6422dfe8baf9bc6e5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a6facc84668a0ab1ddc3cb7be34711425ebc34b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a98556075c078a9a0a5e59e8626143ef0dbab2c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ae71ed8d3305f72d4b0bafa9eb5b041e5a6646a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3b32ebad198f85c827681166546365c99e6e56be` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3b67d1c85f1e092c2487723f76b6abb32cf3a21e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3bac12f100f3177e86e54cc373c42c53d263f559` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c168ba703a53c78e0a30f8e52732e62d2c3a5ca` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c1e73ea233ea0c1b7ce9af689ed7e76882b54b0` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c946c2c7fe7191cec5eb078d23fd4a29fbb7c60` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ca2a5347b12cf58f774c25aea943cc85f4830f2` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3cdd2be1b0cb9f3d221c11294ab38c28c44ac0e6` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d5d688dc4afbefe29aff4b0437cd707894c46af` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3e7ddc47cdaf777f3a77dabcc6647baabcc3c23c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ec27f44dae9fcafd272196b5a225d8775a80ff8` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f6c57bf3880c623d39aa1b41eb356ff77816c7f` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f8b1c56d857b0b96e0d3bff065f3e2d8d5fa223` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f8eeeb54f690e63ed000f48ed87f3e9b034cdd7` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3fc7b1bc1f42dd6db3270db57cc6ef70c010625e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x400fb7cb8231efd44add20cb77e758cdc4861fba` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40f4296aa3b7f4e6c6371796bed354abedccd932` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x423ed63910e609b76a2420294ad2c5f3bb2dc74d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x42f5fb1182d29e811d87c989cf5aa2fb88e5d42c` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x435498f02272023cabecd1777cc3bea0c6dc2853` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4358e2d3c9658b50b0c3c353c9cbc6898de5bd72` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x437df483397d267898a612e6cf790a5419c6e436` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x43b238051dfbbdcceb8d575730ea5b7f1edc2a7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x43d2922102f129d09a597dd1bc39f6b05f5dca26` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x43eaa2c43153c0889ccabe96c059ab4cc072b437` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x44085a460a2be8a73e46179a1af10d469a0765b2` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x444affd061209aeb7a9368cce2eacd35e5067494` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x445f8daa9e53efb5b535f0d0a3d72bb3b28503eb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x450fff694983786fb1a26182343080a6f3b07674` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45209e0623a02e700a184e3e1aa200801e48a0e0` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45e7360448fafb802482c899c39a88b25d99d807` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45f4708a22068ed7ce138a685c10d2d30b3565fa` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45f95181eeb42de2a36a1355664e915246475dfa` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4608fce2e5349731e3d8665bf7f9725a4411db4b` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x461ed1ee85b74f805e3cb6002918ef94d593c15d` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x46c1cff07f526ed140c5aa39c909a10ca16b43e4` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x46e5d167f9ca1a17690393bdb4235bb4a2d5aa8a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x470f165ebf54a385a24e8869223a5e845cc8dffe` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4723141192d7584915850e4aeece4abcad530ecf` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4748335d4414d5f7cd1dd0fa85b6879f837217b5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47bdb5277934118478ba7d7c959ac6b360f44c4e` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47f972e207b906aa81b522b1bdeb43dd631eb6fb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4836985461a49d57228cde2a9bb80849b3e891b5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x486926bcaf40211a2049df6b4197f91d6ae35def` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4a9a7badd94cb23fa8ee30a641db5d431996e4fc` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ab2c938116ca3b9c44631c75f9aabc6ad344615` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ac49dd75b5b1f7538f13972fe9df27097f5a992` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4acac5329d1280f15a869265a83d9a41e18efe68` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4afab005bd33559827a86dd42bdf5383e24c96cd` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b3a5d3075f0b6535ccff994557ecdc87e49cfdb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b483604658e4a1bba6c49af27bbd3f33e46b04a` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b54112f1e07df053ebdfb66a213cd5eadb710bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4c30b511d60887537baae0c9970526b7c77abaae` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4cb74b980fcb46cba9f2da9365d96bbd9dabe5e5` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4cb98e7323181dd3aa2c2b22319500d2c807fa72` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4e78046cb6f23ce7c2d23d63da17ee7fbb0736eb` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ebbe213e19bd11bd89e6e89465d48ba2ed3a8f7` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ec9042c88ef7ae74720072fbe298916a3dd2f90` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4ecb8743a94173d27c6fedfd585cda3bb81e3591` | non_address_book | unknown | unknown | unverified | n/a | `0xdace6985e42ec10f492d0919493964922b833b5b` |

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
| needs_review | 894 |

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
