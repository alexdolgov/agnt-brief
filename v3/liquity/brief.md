# Agentic Audit Brief: Liquity

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Liquity (`liquity`)
- Website: [https://www.liquity.org/](https://www.liquity.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, ethereum, hyperliquid, optimism, scroll, sonic, swellchain
- Contract surface: 102 unique implementations (121 raw deployments)
- Coverage basis: 5/65 confirmed own live verified implementations (7.7%); conservative 7.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $204,759,211.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Liquity. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 65 contract row(s) across arbitrum, avalanche, base, berachain, ethereum, hyperliquid, optimism, scroll, sonic, swellchain. Structural roles: 38 core, 18 supporting, 9 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 65
- Structural roles: core (38), supporting (18), unclassified (9)
- Contract kinds: contract (61), unclassified (4)
- Detected standards: erc20 (10), erc165 (7), accesscontrol (5), erc20permit (4), erc721 (1)
- Frameworks: openzeppelin (35), solady (34), chainlink (5), foundry (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

13 of 68 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

**ActivePool** (`0x531a8f99c70d6a56a7cee02d6b4281650d7919a0`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x9074d72cc82dad1e13e454755aa8f144c479532f`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x6106046f031a22713697e04c08b330ddaf3e8789`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xe8119fc02953b27a1b48d2573855738485a17329`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GasCompZapper** (`0xbe8b230dcd12e246f5edc5c103cc98be68ab636f`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LeverageLSTZapper** (`0x75036b1d6de5665c60f5c33bb4a64e8e123211a2`, chain 1)
Origin: liquity (`0xe85230...df0a56`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SortedTroves** (`0x14d8d8011df2b396ed2bbc4959bb73250324f386`, chain 1)
Origin: liquity (`0xa25269...3063f4`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SortedTroves** (`0x84eb85a8c25049255614f0536bea8f31682e86f1`, chain 1)
Origin: liquity (`0xa25269...3063f4`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xd442e41019b7f5c4dd78f50dc03726c446148695`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xa2895d6a3bf110561dfe4b71ca539d84e1928b22`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xb2b2abeb5c357a234363ff5d180912d319e3e19e`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0c76eae597afa2aa163a8c845f7e7e870256ac7e`, chain 1)
- UnnamedContract (`0x2f60bab0072abec7058017f48d7256ec288c8686`, chain 1)
- UnnamedContract (`0x84533b1512a3a23f0c9668d88fdf86feffdbb11a`, chain 999)
- UnnamedContract (`0x03569cc076654f82679c4ba2124d64774781b01d`, chain 43114)
- ActivePool (`0xeb5a8c825582965f1d84606e078620a84ab16afe`, chain 1)
- AddressesRegistry (`0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54`, chain 1)
- BoldToken (`0x6440f144b7e50d6a8439336510312d2f54beb01d`, chain 1)
- BorrowerOperations (`0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65`, chain 1)
- BurnMintERC20 (`0x03569cc076654f82679c4ba2124d64774781b01d`, chain 10)
- BurnMintERC20 (`0xf05a207442f14e446b0e32b12d2043bfc68cb1c9`, chain 146)
- BurnMintERC20 (`0x03569cc076654f82679c4ba2124d64774781b01d`, chain 8453)
- BurnMintERC20 (`0x03569cc076654f82679c4ba2124d64774781b01d`, chain 42161)
- BurnMintERC20 (`0xf05a207442f14e446b0e32b12d2043bfc68cb1c9`, chain 80094)
- BurnMintERC20 (`0x03569cc076654f82679c4ba2124d64774781b01d`, chain 534352)
- CollateralRegistry (`0xf949982b91c8c61e952b3ba942cbbfaef5386684`, chain 1)
- CollSurplusPool (`0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235`, chain 1)
- CollSurplusPool (`0xba4a2bd8b76df84cac98eba3f4b967d8423192bf`, chain 1)
- CollSurplusPool (`0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf`, chain 1)
- CurveStableSwapNG (`0x7ed17e037b7d88a8270c89b3afa9c38e5218f12b`, chain 1)
- CurveStableSwapNG (`0xefc6516323fbd28e80b85a497b65a86243a54b3e`, chain 1)
- CurveV2GaugeRewards (`0xba415afa8fcd65196764b5e08cb4dbf90bee33b4`, chain 1)
- DefaultPool (`0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b`, chain 1)
- DefaultPool (`0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0`, chain 1)
- DefaultPool (`0xd796e1648526400386cc4d12fa05e5f11e6a22a1`, chain 1)
- GasCompZapper (`0xbd69d3e0ea967d146e925b7572b765c8e9c4127d`, chain 1)
- GasPool (`0x45c81dce308389e1bee63ae30a04fb1e148dad41`, chain 1)
- GasPool (`0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921`, chain 1)
- GasPool (`0x8c44fba379d8a8608c0e29b2729deb75a981db1f`, chain 1)
- GnosisSafeProxy (`0xdc6f869d2d34e4aee3e89a51f2af6d54f0f7f690`, chain 1)
- Governance (`0x807def5e7d057df05c796f4bc75c3fe82bd6eee1`, chain 1)
- HintHelpers (`0xf0cae19c96e572234398d6665cc1147a16cbe657`, chain 1)
- LeverageLSTZapper (`0xe85230de04147c4ea363b21cdb801c1c19df0a56`, chain 1)
- LeverageWETHZapper (`0xdccbd7a365aee086aa3b4ede8afe895b20770ae3`, chain 1)
- LiquidityGaugeV6 (`0x07a01471fa544d9c6531b631e6a96a79a9ad05e9`, chain 1)
- LiquidityGaugeV6 (`0xa37cdce0207127204682d3235ead2c7a4c5d6c5c`, chain 1)
- LQTYStaking (`0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d`, chain 1)
- LQTYToken (`0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d`, chain 1)
- LUSDToken (`0x5f98805a4e8be255a32880fdec7f6728c6568ba0`, chain 1)
- MetadataNFT (`0x3400874305e1547020fb8e80eaf1308b757171af`, chain 1)
- MetadataNFT (`0x362f822df79790c8077e61110484fffa48f682a1`, chain 1)
- MetadataNFT (`0x9b36c3b16299d68c79f174df7e728e35b6af4a12`, chain 1)
- MultiTroveGetter (`0xfa61db085510c64b83056db3a7acf3b6f631d235`, chain 1)
- RocketTokenRETH (`0xae78736cd615f374d3085123a210448e74fc6393`, chain 1)
- SortedTroves (`0xa25269e41bd072513849f2e64ad221e84f3063f4`, chain 1)
- StabilityPool (`0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf`, chain 1)
- TroveManager (`0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a`, chain 1)
- TroveNFT (`0x1a0fc0b843afd9140267d25d4e575cb37a838013`, chain 1)
- TroveNFT (`0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873`, chain 1)
- TroveNFT (`0x857aecebf75f1012dc18e15020c97096aea31b04`, chain 1)
- UnnamedContract (`0x1a17b22d762c8cf2ca0f07e2b3c32e7481bb0d8c`, chain 1923)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- WETHPriceFeed (`0xcc5f8102eb670c89a4a3c567c13851260303c24f`, chain 1)
- WETHZapper (`0x7022a4f4a2b9f0c30a5eb0b0073a8bb4c8e70c1f`, chain 1)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- WSTETHPriceFeed (`0xe7aa2ba9e086a379d3beb224098bc634a46e314e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 65; live-surface rows included: 65 (65 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 70/70 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/65 (7.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 70 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 70 of 102 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/87
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 102
- Raw deployments: 121
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 5 | 5.7% | 2025-01 |
| yAudit | Tier 2 | 5 | 5.7% | 2021-03 |
| Trail of Bits | Tier 1 | 3 | 3.4% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-388573 | `0xf0cae19c96e572234398d6665cc1147a16cbe657` | ✅ Audited |
| LQTYStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388528 | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ✅ Audited |
| LQTYToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388535 | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ✅ Audited |
| LUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388532 | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ✅ Audited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388575 | `0xfa61db085510c64b83056db3a7acf3b6f631d235` | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388529 | `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388548 | `0x9074d72cc82dad1e13e454755aa8f144c479532f` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388570 | `0xeb5a8c825582965f1d84606e078620a84ab16afe` | ⚠️ Unaudited |
| AddressesRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388520 | `0x20f7c9ad66983f6523a0881d0f82406541417526` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388533 | `0x6106046f031a22713697e04c08b330ddaf3e8789` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388547 | `0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` | ⚠️ Unaudited |
| BoldToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388534 | `0x6440f144b7e50d6a8439336510312d2f54beb01d` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179cd81c9e782a4096035f7ec97fb8b783e007` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388526 | `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388554 | `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388568 | `0xe8119fc02953b27a1b48d2573855738485a17329` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-388576 | `0x03569cc076654f82679c4ba2124d64774781b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6e53b51eae4628199a4fecdf94ba7d23fe6ae08` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | sonic | unit-388577 | `0xf05a207442f14e446b0e32b12d2043bfc68cb1c9` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | base | unit-388583 | `0x03569cc076654f82679c4ba2124d64774781b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-388579 | `0x03569cc076654f82679c4ba2124d64774781b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | berachain | unit-388582 | `0xf05a207442f14e446b0e32b12d2043bfc68cb1c9` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-388581 | `0x03569cc076654f82679c4ba2124d64774781b01d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x10a9de252eb9e11841fa58b18fd09ab43d4b7d92`; sonic `0xcfc5092583c1b2122f221f524c198abdecbf3d1b`; berachain `0x10a9de252eb9e11841fa58b18fd09ab43d4b7d92`; berachain `0xcfc5092583c1b2122f221f524c198abdecbf3d1b` | ⚠️ Unaudited |
| CollateralRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388574 | `0xf949982b91c8c61e952b3ba942cbbfaef5386684` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388525 | `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8b97ed5881324241cf03b2da5e2ebce5521` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388558 | `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388571 | `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` | ⚠️ Unaudited |
| CommunityIssuance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c9d9071123a059c6e0a945cf0e0c82b508d816` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388541 | `0x7ed17e037b7d88a8270c89b3afa9c38e5218f12b` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388572 | `0xefc6516323fbd28e80b85a497b65a86243a54b3e` | ⚠️ Unaudited |
| CurveV2GaugeRewards | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388557 | `0xba415afa8fcd65196764b5e08cb4dbf90bee33b4` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388531 | `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` | ⚠️ Unaudited |
| DefaultPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388564 | `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388565 | `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` | ⚠️ Unaudited |
| GasCompZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388559 | `0xbd69d3e0ea967d146e925b7572b765c8e9c4127d` | ⚠️ Unaudited |
| GasCompZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388560 | `0xbe8b230dcd12e246f5edc5c103cc98be68ab636f` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388527 | `0x45c81dce308389e1bee63ae30a04fb1e148dad41` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388539 | `0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388546 | `0x8c44fba379d8a8608c0e29b2729deb75a981db1f` | ⚠️ Unaudited |
| GasPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9555b042f969e561855e5f28cb1230819149a8d9` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-388585 | `0xdc6f869d2d34e4aee3e89a51f2af6d54f0f7f690` | ⚠️ Unaudited |
| Governance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388543 | `0x807def5e7d057df05c796f4bc75c3fe82bd6eee1` | ⚠️ Unaudited |
| HintHelpers | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0` | ⚠️ Unaudited |
| LeverageLSTZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388537 | `0x75036b1d6de5665c60f5c33bb4a64e8e123211a2` | ⚠️ Unaudited |
| LeverageLSTZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388569 | `0xe85230de04147c4ea363b21cdb801c1c19df0a56` | ⚠️ Unaudited |
| LeverageWETHZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388566 | `0xdccbd7a365aee086aa3b4ede8afe895b20770ae3` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388516 | `0x07a01471fa544d9c6531b631e6a96a79a9ad05e9` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388553 | `0xa37cdce0207127204682d3235ead2c7a4c5d6c5c` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb46c277da1599390eab394327602889e9546296` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388522 | `0x3400874305e1547020fb8e80eaf1308b757171af` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388524 | `0x362f822df79790c8077e61110484fffa48f682a1` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388550 | `0x9b36c3b16299d68c79f174df7e728e35b6af4a12` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b` | ⚠️ Unaudited |
| RedemptionHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb366256d033ae7e4f7bddec822a5adec9df07b80` | ⚠️ Unaudited |
| RETHPriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388523 | `0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b` | ⚠️ Unaudited |
| RocketTokenRETH | token | project_anchor | own_supporting | 0 | ethereum | unit-388555 | `0xae78736cd615f374d3085123a210448e74fc6393` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388518 | `0x14d8d8011df2b396ed2bbc4959bb73250324f386` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388544 | `0x84eb85a8c25049255614f0536bea8f31682e86f1` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388551 | `0xa25269e41bd072513849f2e64ad221e84f3063f4` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388530 | `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388549 | `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388563 | `0xd442e41019b7f5c4dd78f50dc03726c446148695` | ⚠️ Unaudited |
| TellorCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad430500ecda11e38c9bcb08a702274b94641112` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388540 | `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388552 | `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388556 | `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388519 | `0x1a0fc0b843afd9140267d25d4e575cb37a838013` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388538 | `0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388545 | `0x857aecebf75f1012dc18e15020c97096aea31b04` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5` | ⚠️ Unaudited |
| UniV4MerklRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x16897a8a7713d0f709a914d9d05edf6b598d24b6`; ethereum `0xb42448852a1bfc99d66ed53c65e2b49cf954f615`; ethereum `0xe9a4cfd1de3b83a774a82ff6f8c6da97d21dff49` | ⚠️ Unaudited |
| UniV4MerklRewardsWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e29308c96c2bebddc90b4a2e4ee7e60d57238e` | ⚠️ Unaudited |
| VotiumInitiative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69efec83296c711db4a403b1ee281e87f99590d6`; ethereum `0xb5d64a1afe7eadcc79b99bdfb932d406aae66aaa` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x513251fab2542532753972b8fe9a7b60621affad`; ethereum `0x6875ce8f1edd02665b72accf8a152c5a5134914f`; ethereum `0x707f9118e33a9b8998bea41dd0d46f38bb963fc8`; ethereum `0x777cee2a757bd958939d3fbfd8af17aa5a34051d`; ethereum `0x7859f9187837f99fc4a75f86b2afe61314f21ee4`; ethereum `0x7b64b0116fb2d7f80392173bb21c2dc1143d6bdd`; ethereum `0x86bb5d880d177a95995aebc74a5b1db2aa39c2ae`; ethereum `0xa9b2f5ce3aae7374a62313473a74c98baa7fa70e`; ethereum `0xb2022ea377994f66a81c01eb3e9170245afeaa52`; ethereum `0xdb99fdb42fec8ba414ea60b3a189208bbdbfa321`; ethereum `0xe3c8a4de3b8a484ff890a38d6d7b5d278d697fb7`; ethereum `0xf8b237d60af4865192bd8b8d2bc1b2d607c1ffad`; ethereum `0xfb27310beda96af0005e9ab2f029a088740da180`; ethereum `0xfef762dfdc87f79879aaef221a6a5d302833fe27` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-388561 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388562 | `0xcc5f8102eb670c89a4a3c567c13851260303c24f` | ⚠️ Unaudited |
| WETHZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388536 | `0x7022a4f4a2b9f0c30a5eb0b0073a8bb4c8e70c1f` | ⚠️ Unaudited |
| WstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-388542 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388567 | `0xe7aa2ba9e086a379d3beb224098bc634a46e314e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388517 | `0x0c76eae597afa2aa163a8c845f7e7e870256ac7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebef24da09489218ba2becb01867f6daaedcd4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388521 | `0x2f60bab0072abec7058017f48d7256ec288c8686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c517d4e2c851ca76d7ec94b805269df0f2201de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cca549ca706c39d68156e5e0a72ccbc95f563d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884acfa4593a6fdba0a9373007e48ea9af881c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a3fe99227f6060e4c1c62b557eee050b6483e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x39b59c8f0ed93f0a70c8eca07862e9139dc48b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x48fd11f0f21bac2d8486e6682fe1e2cb98f9aab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388584 | `0x84533b1512a3a23f0c9668d88fdf86feffdbb11a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcfc5092583c1b2122f221f524c198abdecbf3d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe9f1f1a93d1c0538bb119cd7df605c65f60baaec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-388578 | `0x1a17b22d762c8cf2ca0f07e2b3c32e7481bb0d8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-388580 | `0x03569cc076654f82679c4ba2124d64774781b01d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 2
- Unknown liveness contracts: 4
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, contamination review=2, source verified unclassified=1, unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | RETHPriceFeed<br>`0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x83cfa33a2ee969f8add9a2acdcdc0d7e556e5ed0` |
| contamination review | AddressesRegistry<br>`0x20f7c9ad66983f6523a0881d0f82406541417526` | project_anchor | unknown | live | verified | n/a | `0x83cfa33a2ee969f8add9a2acdcdc0d7e556e5ed0` |
| contamination review | VotiumInitiative<br>`0x69efec83296c711db4a403b1ee281e87f99590d6` | non_address_book | unknown | unknown | verified | n/a | `0x83cfa33a2ee969f8add9a2acdcdc0d7e556e5ed0` |
| source verified unclassified | VotiumInitiative<br>`0xb5d64a1afe7eadcc79b99bdfb932d406aae66aaa` | non_address_book | unknown | unknown | verified | n/a | `0x83cfa33a2ee969f8add9a2acdcdc0d7e556e5ed0` |
| unverified unclassified | UnnamedContract<br>`0x2ebef24da09489218ba2becb01867f6daaedcd4b` | non_address_book | unknown | unknown | unverified | n/a | `0xa850535d3628cd4dfeb528dc85cfa93051ff2984` |
| unverified unclassified | UnnamedContract<br>`0x4c517d4e2c851ca76d7ec94b805269df0f2201de` | non_address_book | unknown | unknown | unverified | n/a | `0xa850535d3628cd4dfeb528dc85cfa93051ff2984` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 12 | high |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | unknown | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021%2Epdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 55 | high |
| [www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021.pdf) | Coinspect | Audit | 2021-03 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 55 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13390] Liquity.pdf — matched: Extracted contract names from Coverage section (page 6) and findings targets. Audit date from cover page: 'January 13, 2021'.
- [13391] www.coinspect.com/blog/liquity-audit — no match: The report text does not list specific contract names or files in scope. It only mentions the Liquity Protocol generally.
- [13392] Liquity - Smart Contract Audit 2021.pdf — matched: All Solidity source files listed with sha256 hashes in the scope section are included. The audit date is March 2021, interpreted as end of month.
- [13393] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit — no match: The report text does not list specific contract names or file paths in scope. It only describes the system at a high level.
- [13394] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit — no match: The report text does not contain a clear scope section or list of contract files. Only 'Bold Core' is mentioned as the implementation audited, but no specific contract names or file paths are provided.
- [16572] Liquity - Smart Contract Audit 2021.pdf — matched: All Solidity source files listed with sha256 hashes in the scope section are included. The audit date is March 2021, interpreted as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Liquity.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119fc02953b27a1b48d2573855738485a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c825582965f1d84606e078620a84ab16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d72cc82dad1e13e454755aa8f144c479532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e41019b7f5c4dd78f50dc03726c446148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269e41bd072513849f2e64ad221e84f3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85a8c25049255614f0536bea8f31682e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8011df2b396ed2bbc4959bb73250324f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LockupContractFactory | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: LockupContractFactory.sol' | no |
| Liquity.pdf | OneYearLockupContract | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: ...OneYearLockupContract.sol' | no |
| Liquity.pdf | CustomDurationLockupContract | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: ...CustomDurationLockupContract.sol' | no |
| Liquity.pdf | PriceFeed | unmatched — not counted | — | Coverage section: 'Pool contracts...' and Appendix E | no |
| Liquity.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81dce308389e1bee63ae30a04fb1e148dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fba379d8a8608c0e29b2729deb75a981db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LiquityBase | unmatched — not counted | — | Appendix G: 'They consolidated them into a single implementation in LiquityBase' | no |
| Liquity - Smart Contract Audit 2021.pdf | HintHelpers | own contract | HintHelpers (selected) `0xf0cae19c96e572234398d6665cc1147a16cbe657` — deployed 2025-05-19 12:18:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c825582965f1d84606e078620a84ab16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d72cc82dad1e13e454755aa8f144c479532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | PriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81dce308389e1bee63ae30a04fb1e148dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fba379d8a8608c0e29b2729deb75a981db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e41019b7f5c4dd78f50dc03726c446148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119fc02953b27a1b48d2573855738485a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPoolScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManagerScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperationsScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStakingScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ETHTransferScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerWrappersScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TokenScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITroveManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYStaking | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILUSDToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IActivePool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ISortedTroves | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IDefaultPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IStabilityPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICollSurplusPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | MultiTroveGetter | own contract | MultiTroveGetter (selected) `0xfa61db085510c64b83056db3a7acf3b6f631d235` — deployed 2025-05-19 12:18:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Ownable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | console | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquitySafeMath128 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC2612 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellor | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CheckContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BaseMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CollSurplusPool | ambiguous — not counted | CollSurplusPool (alternative) `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` — deployed 2025-05-19 12:24:59+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` — deployed 2025-05-19 12:28:47+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` — deployed 2025-05-19 12:20:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269e41bd072513849f2e64ad221e84f3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85a8c25049255614f0536bea8f31682e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8011df2b396ed2bbc4959bb73250324f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | ERC20Mock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IUnipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILPTokenWrapper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Address | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Unipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit | Bold Core | unmatched — not counted | — | mentioned as the Solidity implementation of Liquity V2 protocol being audited | no |
| Liquity - Smart Contract Audit 2021.pdf | HintHelpers | own contract | HintHelpers (selected) `0xf0cae19c96e572234398d6665cc1147a16cbe657` — deployed 2025-05-19 12:18:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c825582965f1d84606e078620a84ab16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d72cc82dad1e13e454755aa8f144c479532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | PriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81dce308389e1bee63ae30a04fb1e148dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fba379d8a8608c0e29b2729deb75a981db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e41019b7f5c4dd78f50dc03726c446148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119fc02953b27a1b48d2573855738485a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPoolScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManagerScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperationsScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStakingScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ETHTransferScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerWrappersScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TokenScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITroveManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYStaking | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILUSDToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IActivePool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ISortedTroves | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IDefaultPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IStabilityPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICollSurplusPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | MultiTroveGetter | own contract | MultiTroveGetter (selected) `0xfa61db085510c64b83056db3a7acf3b6f631d235` — deployed 2025-05-19 12:18:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Ownable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | console | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquitySafeMath128 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC2612 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellor | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CheckContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BaseMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CollSurplusPool | ambiguous — not counted | CollSurplusPool (alternative) `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` — deployed 2025-05-19 12:24:59+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` — deployed 2025-05-19 12:28:47+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` — deployed 2025-05-19 12:20:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269e41bd072513849f2e64ad221e84f3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85a8c25049255614f0536bea8f31682e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8011df2b396ed2bbc4959bb73250324f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | ERC20Mock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IUnipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILPTokenWrapper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Address | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Unipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x531a8f99c70d6a56a7cee02d6b4281650d7919a0` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9074d72cc82dad1e13e454755aa8f144c479532f` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb5a8c825582965f1d84606e078620a84ab16afe` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20f7c9ad66983f6523a0881d0f82406541417526` | AddressesRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6106046f031a22713697e04c08b330ddaf3e8789` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d733f7ea7c23cbea7c613b6ebd845d46d3aac54` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6440f144b7e50d6a8439336510312d2f54beb01d` | BoldToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x372abd1810eaf23cb9d941bbe7596dfb2c46bc65` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa741a32f9dcfe6adba088fd0f97e90742d7d5da3` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe8119fc02953b27a1b48d2573855738485a17329` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x03569cc076654f82679c4ba2124d64774781b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf05a207442f14e446b0e32b12d2043bfc68cb1c9` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03569cc076654f82679c4ba2124d64774781b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x03569cc076654f82679c4ba2124d64774781b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf05a207442f14e446b0e32b12d2043bfc68cb1c9` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x03569cc076654f82679c4ba2124d64774781b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf949982b91c8c61e952b3ba942cbbfaef5386684` | CollateralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba4a2bd8b76df84cac98eba3f4b967d8423192bf` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xedbe2509e502c0320d2e7f8b6746a49b4b50e2bf` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4558240d50c2e219a21c9d25afd513bb6e5b1a0` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd796e1648526400386cc4d12fa05e5f11e6a22a1` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd69d3e0ea967d146e925b7572b765c8e9c4127d` | GasCompZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe8b230dcd12e246f5edc5c103cc98be68ab636f` | GasCompZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45c81dce308389e1bee63ae30a04fb1e148dad41` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b9ab3de4036cae51f1fa4ec0a2c2fd606bcf921` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c44fba379d8a8608c0e29b2729deb75a981db1f` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x807def5e7d057df05c796f4bc75c3fe82bd6eee1` | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75036b1d6de5665c60f5c33bb4a64e8e123211a2` | LeverageLSTZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe85230de04147c4ea363b21cdb801c1c19df0a56` | LeverageLSTZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdccbd7a365aee086aa3b4ede8afe895b20770ae3` | LeverageWETHZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07a01471fa544d9c6531b631e6a96a79a9ad05e9` | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa37cdce0207127204682d3235ead2c7a4c5d6c5c` | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3400874305e1547020fb8e80eaf1308b757171af` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x362f822df79790c8077e61110484fffa48f682a1` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b36c3b16299d68c79f174df7e728e35b6af4a12` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b` | RETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14d8d8011df2b396ed2bbc4959bb73250324f386` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84eb85a8c25049255614f0536bea8f31682e86f1` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa25269e41bd072513849f2e64ad221e84f3063f4` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9502b7c397e9aa22fe9db7ef7daf21cd2aebe56b` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd442e41019b7f5c4dd78f50dc03726c446148695` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2895d6a3bf110561dfe4b71ca539d84e1928b22` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2b2abeb5c357a234363ff5d180912d319e3e19e` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a0fc0b843afd9140267d25d4e575cb37a838013` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ae430e25b67f19b431e1d1dc048a5bcf24c0873` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x857aecebf75f1012dc18e15020c97096aea31b04` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc5f8102eb670c89a4a3c567c13851260303c24f` | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7022a4f4a2b9f0c30a5eb0b0073a8bb4c8e70c1f` | WETHZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7aa2ba9e086a379d3beb224098bc634a46e314e` | WSTETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 23 ambiguous, 100 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: unique_name=13

Zero-match audit list:

- [13391] www.coinspect.com/blog/liquity-audit
- [13393] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit
- [13394] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
