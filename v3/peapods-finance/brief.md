# Agentic Audit Brief: Peapods Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 171 unique implementations (426 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,268,642.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Peapods Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, ethereum, mode, sonic. Structural roles: 7 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), supporting (1)
- Contract kinds: contract (8)
- Detected standards: erc20 (1)
- Frameworks: uniswap-v3 (2), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 13 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

**AlgebraPool** (`0x44cc8b40b1483e62e59ef937441ba6aa8e584a77`, chain 42161)
Origin: swapbased (`0x3ce99e3b6e4207dfbaccfe42132e763834eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraPool** (`0xcf71459248557807b87cf988f30ae7845f7bd6d5`, chain 42161)
Origin: swapbased (`0x3ce99e3b6e4207dfbaccfe42132e763834eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44c95bf226a6a1385beaced2bb3328d6afb044a3`, chain 1)
- UnnamedContract (`0x9af2bfb7117d24eb97961ce6f747cd0c80482606`, chain 1)
- UnnamedContract (`0x2787d72d17db123351ebe903237e761ebcf529d6`, chain 8453)
- UnnamedContract (`0xb0a65b3a6f9da0e5eb057e0d5327deddbe17309e`, chain 8453)
- UnnamedContract (`0x23d17764f41aea93fdbb5beffa83571f0bf3f8b2`, chain 42161)
- AlgebraPool (`0x54f0b20d4e140d9beb0e2fadb4f3c425621b9243`, chain 34443)
- CLPool (`0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e`, chain 8453)
- PEAS (`0x02f92800f57bcd74066f5709f1daa1a4302df875`, chain 1)
- UniswapV3Pool (`0x5268006a9da67c19a25aeb594f8e921867c56b36`, chain 1)
- UniswapV3Pool (`0xae750560b09ad1f5246f3b279b3767afd1d79160`, chain 1)
- UniswapV3Pool (`0x5abdb204b1e5365fc523b6aac9d0fc405bf5a72b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 158 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 13 of 171 unique; 158 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/76
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 95
- Unique implementations: 171
- Raw deployments: 426
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 1 | 1.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PEAS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251168 | `0x02f92800f57bcd74066f5709f1daa1a4302df875` | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x04595a47216076fd418cdd3fcfd9255e59dfce35`; base `0xb9f88534d856dc3c6785f47a0c6944b71d1ff944`; base `0xf24f39fe95aaab3ccbee9e478e46b1b7adf9ca0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | mode | unit-251173 | `0x54f0b20d4e140d9beb0e2fadb4f3c425621b9243` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251175 | `0x44cc8b40b1483e62e59ef937441ba6aa8e584a77` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251176 | `0xcf71459248557807b87cf988f30ae7845f7bd6d5` | ⚠️ Unaudited |
| ArbitragePP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26947f4ddccd36604b141989ebf3e66f78944265`; ethereum `0x8a581e373544047716bfc2aaa9c3ad3df27e016b` | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 21 deployments: ethereum `0x40b7b0efed725118f36a2e6c061d2b836bd275e2`; ethereum `0x62f95a6378b09914ce87131885d569844cf8c621`; ethereum `0x7b68b5c8ba1b2d399dc371270ea5cecf5b30adbe`; ethereum `0x938afcd473244c36630169b0b0864a34d24ef794`; ethereum `0xa4bc139d693c69ccdf1ed6b0755d745dec5d827b`; sonic `0x26134ac4ebd5ca2967163e9f5ca12d49877dadf9`; sonic `0x37a7fc091a5762df9fff5a1b65707fcfdcee0764`; sonic `0x46f0815f0d46bb54d7f1f97358d745eedb9f33d0`; base `0x25b9dd337e64f0c5fb34bf6f46fe17e1d50fdb8d`; base `0x39d284703f388ad57910e43c9c96b8c3ed58d2fb`; base `0xa24b7cd636898c7dd7dd29f5f3c9c3b268a068e2`; base `0xc2b0a3f6f6e58ee10f22be44eb15c6d4f6e62374`; base `0xeed5e974a792f9ac91f3582ef79f2d95e12d0a67`; mode `0xf29778125dd98f9ee16d0a1a00ae2414e897d168`; arbitrum `0x5c9715430e581f465544c14d84a13d127f98305e`; arbitrum `0x73a97a171af10b3694044df05f05fe2fd1403c1c`; arbitrum `0x9c2ef6402fcd55b7afedb1437b0c925ea3256aa2`; arbitrum `0xcd64e91ba26c1c006ccdb804535c131fd6213f5e`; arbitrum `0xd8eea1e3ec883b15efadd0c0327f1a532fd6759b`; berachain `0x9030165704cf36cb25e4e927124b611bac4fe622`; berachain `0xc2d75b4eedeac1426fe7c1a9e23452e35145e140` | ⚠️ Unaudited |
| AutoCompoundingPodLpFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xeec2820fd5750541511ac032e42f57bdf603faea` | ⚠️ Unaudited |
| CamelotDexAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mode `0x77683b25f7324315da0ee721de2b88cf19af7f57`; mode `0x97be1fa213ac6200c91fe3ee2676cf5879b65a36`; mode `0xc38d4240a1e47ef954247a38aafdd3e85f56198f`; arbitrum `0x22dc5b739b34f98be2f2f262bd104ed9ab1aad7a`; arbitrum `0x83eccba9f04c94a6c520114c48f493095e823f94`; arbitrum `0xac9d76199e4a304810512638fe24e58df2ceb10e` | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48b50c792d993a56cdf23b0ad64c257f2a3888a1` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | base | unit-251180 | `0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e` | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b55d55790f1369fa6c45e702bf30ea81dd4aa18` | ⚠️ Unaudited |
| DIAOracleV2SinglePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0xc815d43b0d5965d91d06867fff51b2c845e4466e`; sonic `0xa335cc8146353fa3da64053f715af11aa79df131`; sonic `0xb80510ee7f6d9cda34a2d5b4407f262b0da82d74`; base `0x4201809771825f93c3235d9a5a842e77dacbe179`; arbitrum `0x0d71e8487df7ed8ac111bfab9cc44cc69bac6653`; berachain `0x486d450d0849bc157f5a7890e2b1a42e3a17d276` | ⚠️ Unaudited |
| ERC20Bridgeable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x02f92800f57bcd74066f5709f1daa1a4302df875`; base `0x02f92800f57bcd74066f5709f1daa1a4302df875`; mode `0x02f92800f57bcd74066f5709f1daa1a4302df875`; arbitrum `0x02f92800f57bcd74066f5709f1daa1a4302df875`; berachain `0x02f92800f57bcd74066f5709f1daa1a4302df875` | ⚠️ Unaudited |
| EulerFlashSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x17b55d4ce08a55fe6235149d7b4fe97911a5b610`; berachain `0x93121a4e52912d0e5a93fbb822d5cf141da567bc`; berachain `0xeec2820fd5750541511ac032e42f57bdf603faea` | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x429fffd75ff44b3d6ec884c4b79b3ee0603ee7e0`; base `0x5d82905ed25dbe508948f827f61a7110302777f8`; base `0x87f6a1ad256a2d5d60c2ff6b398777fa634905ee`; base `0xa892833f8caabc61059576c3a74fb49f115f2ca0` | ⚠️ Unaudited |
| IndexManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`; ethereum `0x6effcf94993d6a6081204fc3c30473468eb7666e`; ethereum `0xdb9dc623e965a4a2675cb13708c7d4db584a3fa5`; sonic `0x3018465d3ed4558069e55287522577362f9660fd`; sonic `0x9e054f6c328d8e424a2354af726fdc88cb166060`; base `0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`; base `0x556059e80cb0073d4a9547081cf0f80cbb94ec30`; mode `0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`; mode `0x93121a4e52912d0e5a93fbb822d5cf141da567bc`; arbitrum `0x0bb39ba2ee60f825348676f9a87b7cd1e3b4ae6b`; arbitrum `0x64511cce99ab01a6dd136207450ea81263b14fd8`; berachain `0xc9260ce495b5eec77219bf4faccf27eefd932f01` | ⚠️ Unaudited |
| IndexUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 23 deployments: ethereum `0x2bcca7ea2c7eca696ace6d71c9719fb171a1054c`; ethereum `0x521e246fadbab84a3b75d8c9c6c7ae4433bd03cc`; ethereum `0x88b6db67000f8ef34ae1a34542b2e4b43b87d9b7`; ethereum `0x9a103ab4fe2de5db16338b16fd7550d21d7b8db6`; sonic `0x24232517e648525a2a5b9935aadc42ae250f5eca`; sonic `0x37e84588f6bd782044a4c45a7b7d5bf8ab7a8390`; sonic `0xf29778125dd98f9ee16d0a1a00ae2414e897d168`; base `0x37cd1fd593639d453cd97670bac4e59fd5659dde`; base `0x490b03c6afe733576cf1f5d2a821cf261b15826d`; base `0x59b7300a3b450e024a52d7b0578f9d263ca0a962`; base `0xa15cf74b3955638136d6700302ead6c2745f0042`; mode `0x9e341711c58ef919fec9448e0dead5c852e3400c`; mode `0x9e93507942f7e1bf9aaeb9608562957e8aefdbe6`; arbitrum `0x19f6bdfb1c22c3636525a1a07734313d7b96724d`; arbitrum `0x1f422d01d513efc565e034ddc6c5db20f1c9190b`; arbitrum `0x25648abb2b89020ee796cacacb70dc39a0e83d2e`; arbitrum `0x36c5e50550ef08cdc7266da986fb0b5f40e1ad83`; arbitrum `0x3e462a1b97f2b2e646fbb3883e96a90864e06c19`; arbitrum `0x4b6d3fdf201d5a169d933adbe063614113745e0d`; arbitrum `0x5c5c288f5ef3559aaf961c5cca0e77ac3565f0c0`; arbitrum `0xa06439a9d7f2a416965e4b446c4bef1227350c10`; arbitrum `0xbb6f81e69a87730233b1550196ea870fb1252bed`; berachain `0x40bd82a15e958e5e8e81d43bba736a14ed386717` | ⚠️ Unaudited |
| IndirectOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`; sonic `0x7d8c804092464d63260b29bf64b916cce517755e`; base `0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`; mode `0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`; arbitrum `0x14dec875e8ff3eae9f62198e7c29a0021c4e4965`; berachain `0x14dec875e8ff3eae9f62198e7c29a0021c4e4965` | ⚠️ Unaudited |
| LendingAssetVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3717e340140d30f3a077dd21fac39a86ace873aa` | ⚠️ Unaudited |
| LendingAssetVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 11 deployments: ethereum `0xa811d1bb3e8faf4ec503a1876976df5d5f191875`; ethereum `0xbab29f09f595bf2c8d4142ee544e1bc1db7912c6`; sonic `0x6786d3f3e4e05fc126d0511c2e96017759b7a8ec`; sonic `0x898cc8a83f2d854b06c1703abb5b2fa18321d55c`; sonic `0xbf9d217014ae75ed2a82a75761b3b8b600546855`; base `0x3cc2a9d0cab4176ee485016f5620c88b8a875cfc`; base `0x48f39fd89142cf062825c47206f202a012b7c31e`; mode `0xb7d368571bc7c2920bd0222dbe2c33de89c2b0a3`; arbitrum `0xa9a92c6440f5b98ca6bb2b02e5d0578904e1c95e`; arbitrum `0xf252b0478fab0c31abcab802955d03258d3bda3a`; berachain `0x37cd1fd593639d453cd97670bac4e59fd5659dde` | ⚠️ Unaudited |
| LeverageFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x43b9d9b0585e5e8a1e069195170adfd0461939d3`; sonic `0xf2db5e810a1839bf004737c086322f4bf4800f96`; base `0x459b5464af691a7f46d24ce6ce9a5b81d3f38d5f`; arbitrum `0x7225d7c6096dc4ba6b244e0c8ed667fd814a1d2f`; berachain `0xe50d25eacfcf9e53609e2fe95f4deefb2dc87a72` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xff673afd42f850fcf2f6883bc2a4d7d34fc8ae2b`; sonic `0xedd48a71f739b5ed0776d1d604a35a5872d55544`; base `0x9698b93775907afa0968e9b121744f4641097ae9`; arbitrum `0x97bbe65e0f1adf91c5735662ceeef1462abeccb3` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x4e1086aae93f24404c695db4ae06c9bc43ee403c`; ethereum `0x4e6ef371c9cdde8c3e6716affeebad14c8c62d0b`; ethereum `0x8c38378f29c9c491c1ea0d5f5aca2d422047f90e` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x0c4b19994f466ac4b6ba8f9b220d83bec6118b61`; sonic `0x3c12e5d1f69b06faf31b80a044acd4aaf3cc5f98`; sonic `0x588bf5392ac9736c69de63c93ab50c56c56faa35` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x138ce9033f999e3fbc650aa20ddbdc559949c629`; sonic `0x550382c5c358ebfd742d59e1decf5bebb3247cf6`; base `0x002373c90ca02869024f6acc0c61874063fdc6c7`; arbitrum `0x55af4715b96e6860df65778b3de872fe1c40bf76` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x31e35550b15b2dfd267edfb39dd9f3cd1c6ab82d`; base `0x62eadf4c53f81f334a898ca307d65b402db05f2a`; base `0x817e65a2075410334d8f0f6776fbb0dd8ba40edb` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x3f2257b6f1fd055aee020027740f266127e8e2b0`; arbitrum `0x77214f355b6cdc31ed3c9d9d989b1061e531900b`; arbitrum `0xe89c470751e45966d2e156f03adc007991a3ac46` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | berachain | n/a | 3 deployments: berachain `0x0ff519eeec6f1c362a76f87fef3b4a3997bf5a69`; berachain `0x4cc4536ecf4fbc2c8917c2bed8b453f8c113536f`; berachain `0x718964b9dbeebe135faa6ad4aceb34a36d2461a5` | ⚠️ Unaudited |
| LeveragePositions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf290d511d842396a3c61dd5a2d058844509beb16` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801642b6efb861fe624dad704b7a747779d9b433` | ⚠️ Unaudited |
| PodFlashMintSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x12aa48422c83857de4a50f3b6a63cb45811a1eef`; ethereum `0x4c86a67d0f29d6f23bcc9bd5bf4c917f87344350`; ethereum `0xc73c64bb519f6c9229c2a34d88c6313962eda601`; sonic `0xacee05fcae604eb75ec2349f6fee9f46c9a01ff5`; sonic `0xb2a28e49fca4db6bb109b28741eb9a9e1b7679de`; base `0x1b59d458a8a70c8d464802b4d499558e68af84a0`; base `0x67be5ac917f23d3ef236dce5cca8c1dbdbc101fd`; base `0xf59c79982259d9c01a7c3249a4c3c120484bcd1a`; arbitrum `0x0d9a0344b290ac1f12452986da6018dc53cc83c7`; arbitrum `0x8cf3b7084a0d38cc9d7d1dea6e7bc21ad76347e9`; berachain `0xab31040cdb98f21b20c6d817fabfbb649aa5c682` | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xace71c69ab1c44c8330da420bc6fab1c51959d74`; sonic `0x02b7d3d5438037d49a25ed15ae34f2d0099494b5`; base `0x76d6bb1fafb23b314807aa9961f6374cea6619c2`; arbitrum `0xcb19e5077dbf8f145842154ac1f7faa656ca8a3a`; berachain `0x4e4766b64b1d55cc92fd494eb57ed8cdc231bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x7f782f23d954ce129d74db62435a139aa90afeef`; ethereum `0xebebc4ce9ff6520b793f4f96aff28d9f4d159910`; sonic `0x08bafc8f264772b4788f56abb9963cf57f1de253`; base `0xaee454b09c10ae53dc7648b6e1a9f15db9757a5e`; arbitrum `0x06386d5225d642fcbaa11c608fd50c4318440fc9` | ⚠️ Unaudited |
| ProtocolFeeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: ethereum `0x7d544dd34abbe24c8832db27820ff53c151e949b`; ethereum `0x8687975d5008e0f12e7ebf024c3f0b658e11a5ff`; sonic `0x0d7a0f0deba08c984c6517f5eec59503ff9bc24e`; sonic `0xcb1843a388ed75b9a6870294f88d500a0ed5bf7d`; base `0x45c4adf501cd90ffd62bbc4b7cbe99bf31572611`; base `0xabcafce2f7b8db30c5bb1d20dd6394561baffcdb`; mode `0x9f8c3ef04810d4dd567b7b224626449db5c92355`; mode `0xdbac337e5c1bd7d68aa9d807f29b2636aa9aa00f`; arbitrum `0x98bb5ae50478d7e012326e067e1e49db1e59fe39`; arbitrum `0xeebb4b00f916436244ca045f8ce8d1fe00054ae2`; berachain `0x94a00630d615b6182bf3bc7585e7650edd51d44e` | ⚠️ Unaudited |
| ProtocolFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x26f6bfe6d5a10db4399fa105562cae7a5fa216c7`; ethereum `0xc2b0a3f6f6e58ee10f22be44eb15c6d4f6e62374`; sonic `0x27d8097f06abcaec585719b6c084456f18010f8a`; sonic `0xabcafce2f7b8db30c5bb1d20dd6394561baffcdb`; base `0x3018465d3ed4558069e55287522577362f9660fd`; base `0x83eccba9f04c94a6c520114c48f493095e823f94`; mode `0xc1081b1cb8026d4098b20b9f7fb8b41b3fb67476`; mode `0xeaf725566b4913e4d1fa04e2ec88f78b35e1955f`; arbitrum `0x2492fd2134a68fbfb3471390ac2d13fd2d4ec8a2`; arbitrum `0xbf9d217014ae75ed2a82a75761b3b8b600546855`; berachain `0xc0b9475fbe6aab82493c38d1292e7c457fc6ce10` | ⚠️ Unaudited |
| RewardsWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x5cdad2512a46744100e38bea7006b486f4d14eea`; ethereum `0xec0eb48d2d638f241c1a7f109e38ef2901e9450f`; sonic `0x1f422d01d513efc565e034ddc6c5db20f1c9190b`; sonic `0x36c5e50550ef08cdc7266da986fb0b5f40e1ad83`; base `0x0d7a0f0deba08c984c6517f5eec59503ff9bc24e`; base `0xfa9d58222f4b7b9760e7d57422e19314cfe0296f`; mode `0x635f5b913d194880eb8bb8643779c8bec011569a`; mode `0xdb9dc623e965a4a2675cb13708c7d4db584a3fa5`; arbitrum `0x14940e0b3fa7ed05baeb348c29864331d59396ba`; arbitrum `0xac4050e06520e71785b00832dd390ad0a093cbf1`; berachain `0x4dd1a2bd6686432cf86ef79393178a7622ae0ba0` | ⚠️ Unaudited |
| ShadowDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x4a76876f4c792f1de90eddac6c24b222967dcc72`; sonic `0x515e7fd1c29263dff8d987f15fa00c12cd10a49b`; sonic `0x652ab0d74902304f15e35bc12e5cf624caa53ffc` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28cd26607b09f6a2c89c1ec02cc5ec9b25cb0257`; ethereum `0x7c9c6c832a94511586c52561fce8cfc9db88f91b` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x006076d007c4db62f1809f636d2f4314bb7114cc`; sonic `0x22987483b2585927bd9b3215611be70225272919` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9f8c3ef04810d4dd567b7b224626449db5c92355`; sonic `0xeaf725566b4913e4d1fa04e2ec88f78b35e1955f` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x04576925f4a18c3003a500bcbf3cfb21c73b63cf`; base `0x8a581e373544047716bfc2aaa9c3ad3df27e016b` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe50d25eacfcf9e53609e2fe95f4deefb2dc87a72` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1f8d9f45e8f6c5a28368aa01ef4c1df421c31988`; arbitrum `0x211c8544c44aba90741ab8faeffd76c61a134945` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0f7650301940cbf8b3e245780c2a1f736f44471d`; berachain `0xa4f43cf1173697bb44cc7af0b7dd424619e63044` | ⚠️ Unaudited |
| StakingVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0588b70a940fc6b5664326017cb04a683c3fba45`; ethereum `0xb5482f99700bcb9904bf0397db78ece093ba8b9b`; ethereum `0xdab17556ae10062f5939e56d44063c12eb7b1ecc` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a7734281725f534f83d1bc9d91c40b1e80618cc`; ethereum `0x2d2d83afe241c1ca57fec3eb9c4f4786f1e0ca31` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x635f5b913d194880eb8bb8643779c8bec011569a`; sonic `0xc38d4240a1e47ef954247a38aafdd3e85f56198f` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb8f9e639ba6610e2aec352cc549d502611bec010`; sonic `0xc9ec2a09b863d0e3c2c544b827fa013b9f4a2fb0` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7189b95caccc2e5734b1592ccc8caeaeb87573f5`; base `0xbd91d04f0156674e389611d789ec08828ddde50e` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: ethereum `0xba72a27bb27b32560f41bcc0e8d53c5f664a85e2`; base `0xaa2adb675d6cd5040b712657f37b49c929a32a06`; mode `0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a`; arbitrum `0x37247d24937425b1f13e7745e90db3546d3e4aae` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe743974cfc4c8670796ded0027bbe0a8420005b1`; arbitrum `0xfcd30db836eb533ee689abfd28ec4f7c8bae7fd8` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0663ab773a4d00d65fe0e0c3e9727c898f6f38eb`; berachain `0x6116b4584e596b30e711c6b64bf7d42587952b38` | ⚠️ Unaudited |
| UniswapDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf05ef850f9ee3d94c7a5609153a82638d41727cd` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251170 | `0x5268006a9da67c19a25aeb594f8e921867c56b36` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251172 | `0xae750560b09ad1f5246f3b279b3767afd1d79160` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | base | unit-251178 | `0x5abdb204b1e5365fc523b6aac9d0fc405bf5a72b` | ⚠️ Unaudited |
| UnweightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x290e6d7f9b92d338d2dd44e8358bf11b2f787f7a`; ethereum `0x3c56cabe6dbbad11c4fe36f09777ef417ef5451c` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x21053b76188426e354e0fc22f3e5da8a4ae7a06e`; mode `0x30a1f81d69c467c33a2a37cc4d34c3e8d5bdb3a3`; mode `0x515e7fd1c29263dff8d987f15fa00c12cd10a49b` | ⚠️ Unaudited |
| V2ReservesCamelot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec8a490000e9553a373e54ed71c09c7aa73eeaf8` | ⚠️ Unaudited |
| V3Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4abbe1b9c4382c550eb81e9f4dd908918003fba` | ⚠️ Unaudited |
| V3TwapAerodromeUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x024ff47d552cb222b265d68c7aeb26e586d5229d` | ⚠️ Unaudited |
| V3TwapCamelotUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mode `0x948e2e5f60fdb55052bb9453bb641ca98518ad48`; arbitrum `0x0b9d4c3fbf57777283979537baed9b834a60c32f`; arbitrum `0x88b6db67000f8ef34ae1a34542b2e4b43b87d9b7`; arbitrum `0xe8869f393d083bc41358b6c13b1ebce54fe11458` | ⚠️ Unaudited |
| V3TwapKimUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0b9d4c3fbf57777283979537baed9b834a60c32f`; mode `0x17b55d4ce08a55fe6235149d7b4fe97911a5b610`; mode `0x9030165704cf36cb25e4e927124b611bac4fe622` | ⚠️ Unaudited |
| V3TwapKodiakUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b025cfe2ecc57a62864d823aef6c6a78629adcc` | ⚠️ Unaudited |
| V3TwapShadowUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x041482b897b96eb4525da1449ec99978263a3f52`; sonic `0x694a3659cc5bb48c29924f395b8e2b3d30f36635` | ⚠️ Unaudited |
| V3TwapUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x024ff47d552cb222b265d68c7aeb26e586d5229d`; ethereum `0x9de8aa7743660e73a481e5647e75050da9504533`; sonic `0xce4ab22d33b7f13c541e638aca27df1841eb6b6e`; base `0x0b9d4c3fbf57777283979537baed9b834a60c32f`; base `0x920093009684af7780616924b1893c90e4c9bdc0`; arbitrum `0x024ff47d552cb222b265d68c7aeb26e586d5229d`; arbitrum `0x948e2e5f60fdb55052bb9453bb641ca98518ad48`; arbitrum `0xadb0704ac0f468df04c1f0957c80564d5949466b` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: ethereum `0x4e8d33ebd2470958be5af47b2a35cbd9f428e888`; ethereum `0x638050e7d19a11c7d5daec2c2d2f305a18f8acd0`; ethereum `0x823e88f1607f6ffe7b39e06bd4519563e3dfded0`; ethereum `0x8cec61d99c0510fe3b85f2673245ec196d79bc27`; ethereum `0xa8afef7065fa28551a46e6adbd60b39093fe9c94`; base `0x11c96ef61b7c08f1eedab3ee141a4b10eade5064`; base `0x4777f838f71a763b963b27ac1954f0c0828df291`; base `0x5288e7706a1278ced57de5087994f0b57c1ef07b`; base `0x544361f23d042ea3a36e5378a238c940cf000a81`; base `0xb38177f7fd13181e27b608308e0e83dce0450869`; arbitrum `0x28da3fc407461ab231f5e80c78e23a76b5f0519d`; arbitrum `0x41799ba0d44b44ac4a817bbef5c98d429ba48310`; arbitrum `0x7697076b8d20d4ba4fa0c25c8902c9c8a06ea044`; arbitrum `0x8b6018dcb7907a0ddf66b0cea07b22ea57fde9ca`; arbitrum `0xf0f08cede1e01e09890f960da2c3709037a8923a` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e45673d425a0e9b27e6688bbec53ea9f22f2d8a`; ethereum `0x50d2acb0d9ee43c39dcf7cf694e94a0f9187491a` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3c56cabe6dbbad11c4fe36f09777ef417ef5451c`; sonic `0xe4aff4d549c9fd6953af730690aab3f5ff37bd3e` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4081bae6498de226b6e5b356d9d32d2971b433d8`; sonic `0x7ca355c2f28de70c88be61708ba3dc53d1b9e569` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 35 deployments: ethereum `0x027ce48b9b346728557e8d420fe936a72bf9b1c7`; ethereum `0x21eadff43eab8d0824d5c3bcb2e75ed1f3ce8685`; ethereum `0x2556d7768dabff8d028700a516ef05ae4b0c0200`; ethereum `0x260e5091b84786f7fb27b3c3e96bde844e33b3a3`; ethereum `0x294067538f59cf9e3bd31af12194cd530f9c324a`; ethereum `0x35e828a71ef5e6748dfa91a763673bd82cdb4979`; ethereum `0x515e7fd1c29263dff8d987f15fa00c12cd10a49b`; ethereum `0x60f8bd30a8c520763a91dcf024ca716f17d2faaa`; ethereum `0x6d0ac92624c04003de6655a86cacc858dc39dab0`; ethereum `0x88e08adb69f2618adf1a3ff6cc43c671612d1ca4`; ethereum `0xbe0eb51d105189000690ab267e8e549cdc87da55`; ethereum `0xc38d4240a1e47ef954247a38aafdd3e85f56198f`; ethereum `0xcd742ff64f1274deaedc37f8126f9d191fef5161`; ethereum `0xd41f9788e0d89f9533ade51af4c772bb1d6cd359`; ethereum `0xd751755c597888b2dc1dc2ad0466927d7c42b62d`; base `0x016c3f33a008e99ba332da0002b08521bd2e02d0`; base `0x252daeb0926d5635bb7b3b437efe538dbd55ca3e`; base `0x4edabec23d4e8b7509d205267972cc2f57b727a6`; base `0x52c2cfe283c98a84d8e9fcee4a8cb7e95c9ca0ac`; base `0x54ddb5de08584206df4dd5b50220764c6aa60fd5`; base `0x6786d3f3e4e05fc126d0511c2e96017759b7a8ec`; base `0xd1a4d147719283e878967196257d837989296d5b`; base `0xe042573db2eed2d87dcd2cf97c15aaeaa0a796d8`; mode `0x064efc5cb0b7bc52ac9e717ea5f3f35f3534f855`; mode `0xfe6d4d56e0d736d441e480133f3779eee81d0380`; arbitrum `0x04595a47216076fd418cdd3fcfd9255e59dfce35`; arbitrum `0x1851275a77533b7ddc52c69e61e0bebb17c09fb7`; arbitrum `0x288e94fbb5f2973c9ef204bad332f4a7dec31f52`; arbitrum `0x491393cf76e3e1e6aace5a1d72ea7aa3ff763d32`; arbitrum `0x4cf85937abaa72ccdd9c95e8755029678ae24433`; arbitrum `0x5288e7706a1278ced57de5087994f0b57c1ef07b`; arbitrum `0x60dc09b440e3b27ec5d71604db71e62dfb4a35ab`; arbitrum `0x6116b4584e596b30e711c6b64bf7d42587952b38`; arbitrum `0xce4ab22d33b7f13c541e638aca27df1841eb6b6e`; arbitrum `0xf38009a8c1026b95985b171154abc89408e7e625` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x74e7cb40ba093b14a23628a5438ff2fc6f9a0e13`; base `0xb11fe78c5cfe5d50f0acf075f5b93fa821b2c3fd` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xce354a900abe84a031840d89b22bf78dd407bebd`; arbitrum `0xe519b793988d112fa97ea9cadeee178a8afe6f50` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x4f325fe3e1f88d73d9e80e034691d6bfebaa0320`; berachain `0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f` | ⚠️ Unaudited |
| WeightedIndexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1a3f5e320b86293017b6e36b75eb9e8bb048b5cd`; sonic `0x983853a354ca8213254af7419c7a1d5356e2e971`; sonic `0xeebb4b00f916436244ca045f8ce8d1fe00054ae2`; base `0x389ac635535e3c58ee22864f146b87e3235eee89`; mode `0x31753112f1f79334de72729f89049a11f28e2595`; arbitrum `0xae2cb5254a4973597bf9cccaf3b77834be46985c`; berachain `0xbd6e75b5f9d27671b8623d28d385e8e5fd7ea680` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (95)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x4f325fe3e1f88d73d9e80e034691d6bfebaa0320`; sonic `0xa4f43cf1173697bb44cc7af0b7dd424619e63044`; sonic `0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4b19994f466ac4b6ba8f9b220d83bec6118b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f5254b60d4387d3d607600947a57085d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1201099811f904de7c0b75bf49b89d36fc8832d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14794665d2f467a6e393e1a7210c49a1aa571d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1686b67e17960b020a8e500fc9e5bc49c68ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f422d01d513efc565e034ddc6c5db20f1c9190b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24df48d8b5ddffb23adf2739c9e56c8b6c6c71cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d8097f06abcaec585719b6c084456f18010f8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251169 | `0x44c95bf226a6a1385beaced2bb3328d6afb044a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c4adf501cd90ffd62bbc4b7cbe99bf31572611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b50c792d993a56cdf23b0ad64c257f2a3888a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a76876f4c792f1de90eddac6c24b222967dcc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e6f962aabf6487954d8564133995b91285301d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55af4715b96e6860df65778b3de872fe1c40bf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6974a9446f30af188ed5935d3d623b267808ab8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7581f7467fb8b1a1fa787aa124dfb381269f37ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e4b1f81ece66d1331c9dfe7ca111394c42a1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c6eeceb352d7e38ca8cd48f3d2642c91df3db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acabcf5ba56abaa599af9d13987174495a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251171 | `0x9af2bfb7117d24eb97961ce6f747cd0c80482606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58556a66cd945182da0429760ccfdc2b2d33c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfb4ca6d43ad76326395ee80fd3208916a60f75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc58941f35936240751b142fb054b6e52d9e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb5cc249f3cd098941b6d838094112d1341fd598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb2d4cae3624ac90822e6d5385dfe42a8aff3ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2315f5350baa58f1d8f7a0b4f8eeacfac0361f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f7650301940cbf8b3e245780c2a1f736f44471d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x182dddd2b29a8551ef6430ba2008842211bc5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ce46d25f4de5edc50dd5c3c34fb0e37bfb4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21eadff43eab8d0824d5c3bcb2e75ed1f3ce8685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26947f4ddccd36604b141989ebf3e66f78944265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x294067538f59cf9e3bd31af12194cd530f9c324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d2d83afe241c1ca57fec3eb9c4f4786f1e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4dd1a2bd6686432cf86ef79393178a7622ae0ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66d39b2bbfa826038a8cc403919a178d50daf291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87b05f610707df1e2f92f6a28d2f70b6ab776cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87caed1e19da46098e710b69cae33e74c146bacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e9b4dad84e6d66b27643a1077f2a3ea254eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3d59cc14c9b39aa02dd5c6f76885ecda29bb656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa922ad82da33e46b1f645740162bb5c5eed9c6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbde78ec31f524ecf4878a89f205b1e9c4e7f44f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4ba497fdd70eca0cf50fe26f3a3863e1c1ae039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef6ca17b721756c4de10c7838a8cdf2f8a601734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf79e973ca79e06b77e48a1df37109f80dcc598bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc4c956330bf15d0e8bf6d617ece6d6612137ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07468655b83e5baa3e8b8bc1044ca88ef1db649a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d05d300adecc11c7753eeb5149c1a4c33265a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fc6ca1ad988bb08111584b419ea21519d6a608d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14be87ac5355a5ea7b78d5b2ccffbb3e511c853b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x264509a866033d84529474ba47f88b9908b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251177 | `0x2787d72d17db123351ebe903237e761ebcf529d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x336836d0d499ec66e84b33b40eb0d39fee35d16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x363c8a1f9828fe492d1910856d0a983f714e75fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37e84588f6bd782044a4c45a7b7d5bf8ab7a8390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50e6f962aabf6487954d8564133995b91285301d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56427dad84b2b245d38fbe1465bb8f3f2aeb2c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62603f6ed89ed8d2100f19d555d22520e834668c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x652ab0d74902304f15e35bc12e5cf624caa53ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66748756af1070284d484f8cc6c9185e28327e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x694a3659cc5bb48c29924f395b8e2b3d30f36635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b0079453d9c54f573c23338b2f850b694125714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87875db4c98e35e94c5693a4731533693ad958c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88f19d67cf74a3ab93d8ceed0e7b0d16361625ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x915b8fd1e9e03749d396781d952cc8e7d7fb2268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x929f65574ea93716f0234518fee63cbb7c07eddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaad319383a6cff51afe4c003aca34391c6e3824c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac4050e06520e71785b00832dd390ad0a093cbf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251179 | `0xb0a65b3a6f9da0e5eb057e0d5327deddbe17309e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc979380b02a7de52788bcc366fe550bfff253fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd8a5733eb1e57617cc783b7419e528657a55797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0de996292a195dbb5fc94ff1899781c874a9750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbf9d217014ae75ed2a82a75761b3b8b600546855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x027ce48b9b346728557e8d420fe936a72bf9b1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08bafc8f264772b4788f56abb9963cf57f1de253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b55d4ce08a55fe6235149d7b4fe97911a5b610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x182dddd2b29a8551ef6430ba2008842211bc5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x186dfe865c682fd2cb98d52f99c9c7a0573c2f80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251174 | `0x23d17764f41aea93fdbb5beffa83571f0bf3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a1bf8187b156ac1101254c0014f20367a53dd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x700bad1a9faa837ac386ac16b46faae178c2d0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8afee0d008fa4c358109c4c6c02f1dd17d002caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb56fce87a32d4ad3574b2a84c343e591a97b314f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2810eb57526df869049fbf4c541791a3255d24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc91104fe3de5478a73a6fa0a2a80a3226b65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeb7798c2dadb3daf28484d67a7919d42eed83d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4abbe1b9c4382c550eb81e9f4dd908918003fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7caed3c6ea6f1db7a0bf02ff45cdb8b86dfc805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf79e475e8f13f824aa9c9470a726e754da1dd261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc4c956330bf15d0e8bf6d617ece6d6612137ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0ada7a77de209ac9261ccb6e6155eaf499a13ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d9d37b7262161e61e5f55dcba6198401257b0cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x31e35550b15b2dfd267edfb39dd9f3cd1c6ab82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4c73789b76a801679b46b98bb5f994053d0ddc21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa415a0f3daebc70451769072d801f13ff5957cdf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/PeapodsFinance](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 0 | 0 | 53 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2198] sourcehat.com/audits/PeapodsFinance — matched: No reason recorded
- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf — no match: No reason recorded
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf — no match: No reason recorded
- [2201] spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/PeapodsFinance | IndexUtils | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | PEAS | own contract | PEAS (selected) `0x02f92800f57bcd74066f5709f1daa1a4302df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PeapodsFinance | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | ProtocolFees | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | StakingPoolToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | TokenRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | UnweightedIndex | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3Locker | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3TwapUtilities | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLP | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3AerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VariableInterestRate | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeCommands | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BulkPodYieldProcess | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | CamelotDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DIAOracleV2SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ERC20Bridgeable | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVaultFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PEAS | own contract | PEAS (selected) `0x02f92800f57bcd74066f5709f1daa1a4302df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddress | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressAlgebra | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressKimMode | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressSlipstream | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFees | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | RewardsWhitelist | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenBridge | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesCamelot | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesUniswap | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3Locker | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapAerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapCamelotUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapKimUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0x54f0b20d4e140d9beb0e2fadb4f3c425621b9243` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x44cc8b40b1483e62e59ef937441ba6aa8e584a77` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf71459248557807b87cf988f30ae7845f7bd6d5` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 106 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Zero-match audit list:

- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
