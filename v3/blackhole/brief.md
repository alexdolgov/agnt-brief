# Agentic Audit Brief: Blackhole

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DECLINING - TVL dropped 79.1% over 90 days

## Project Overview

- Project: Blackhole (`blackhole`)
- Website: [https://blackhole.xyz/](https://blackhole.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 114 unique implementations (166 raw deployments)
- Coverage basis: 14/55 confirmed own live verified implementations (25.5%); conservative 25.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,708,891.00
- On-chain TVL (included contracts): $372,881.52
- TVL by chain: Avalanche $372,881.52

## Project Description

This brief describes the observed EVM deployment and audit surface for Blackhole. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 75 contract row(s) across avalanche. Structural roles: 39 unclassified, 23 supporting, 13 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 75
- Structural roles: unclassified (39), supporting (23), core (13)
- Contract kinds: contract (74), unclassified (1)
- Detected standards: ownable (9), multicall (5), erc165 (4), erc721 (3), accesscontrol (1), erc20 (1), ownable2step (1)
- Frameworks: openzeppelin (21), openzeppelin-upgradeable (6), foundry (2), chainlink (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

4 of 62 contracts are derived from known codebases. 58 contracts have no detected origin.

### Forked Contracts

**BasePluginV3Factory** (`0x5af551ba1bf743978b42d4e133bff8b6231176ff`, chain 43114)
Origin: supernova (`0xdbfd67...f99b97`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NonfungiblePositionManager** (`0xfd1c727d8a2259493c66899f478ebfea41329545`, chain 43114)
Origin: supernova (`0x00d5bb...c8aaaa`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RouterHelperZap** (`0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1`, chain 43114)
Origin: supernova (`0x15783a...d95564`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RouterV2** (`0x9eed160d7d8253dec1a2a512e504de5e7ff3c111`, chain 43114)
Origin: supernova (`0x3ce467...95813b`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x038cba84d1cdf5b0820fc6a1fae93f42240268bb`, chain 43114)
- UnnamedContract (`0x0541b43200ce35d78b97e3ab5351c054289bbe27`, chain 43114)
- UnnamedContract (`0x109309e885ee9023bd22e4f45a347640bb2a82aa`, chain 43114)
- UnnamedContract (`0x19844c931406cc9bd237aa3e169310978a33f0b9`, chain 43114)
- UnnamedContract (`0x27ae8c52a41ec52a4150ba6321007ec41702c0f0`, chain 43114)
- UnnamedContract (`0x42a53f5460f126cccaf57d1b79155c65d229f82b`, chain 43114)
- UnnamedContract (`0x4cd13301c1b0555272be010bfbe8901a55e520f2`, chain 43114)
- UnnamedContract (`0x5b0f5acde0a779856d6885a67253529c235929e6`, chain 43114)
- UnnamedContract (`0x631c0eae26937c0beae293b3be4518e51288b41b`, chain 43114)
- UnnamedContract (`0x656fc9b7f681099cc1a7d44f9eebe3212926f8dc`, chain 43114)
- UnnamedContract (`0x6b19153936b35eb5d035193463491ee902bfd9da`, chain 43114)
- UnnamedContract (`0x6c4acf40b81b15643ab58ac145a8b043497baf2f`, chain 43114)
- UnnamedContract (`0x6cab6577257523e1d609de76104764f042f993d2`, chain 43114)
- UnnamedContract (`0x91b8c8c51a11a7033c34257c3768035eff4f7736`, chain 43114)
- UnnamedContract (`0xa02ec3ba8d17887567672b2cdcaf525534636ea0`, chain 43114)
- UnnamedContract (`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`, chain 43114)
- UnnamedContract (`0xd6b6618cbddfc8f33cc6ad44fb6557fa900049b7`, chain 43114)
- UnnamedContract (`0xe168fcd8f27c22e1c5e9c7aa6cf78afed82f06c6`, chain 43114)
- UnnamedContract (`0xe93b6875d7bc4aab57b2473f2d974d0f8de5fc95`, chain 43114)
- UnnamedContract (`0xe98aec7fe3648c104fac23a350926c17951cf0be`, chain 43114)
- UnnamedContract (`0xf19a0fbade62210d6b67d63ec95fa0febd8bfb9d`, chain 43114)
- UnnamedContract (`0xff39c52b6649af0f73c8d3088344436a5e3b2fb6`, chain 43114)
- AlgebraCustomPoolEntryPoint (`0x580be59a0461eae3414352c0abd88e485a294bfc`, chain 43114)
- AlgebraEternalFarming (`0x01a8a00a6fc8106b94f84aabaef689fd0d77271a`, chain 43114)
- AlgebraEternalFarming (`0x9c70bedd11cf874f07b1bd9c29e3e41f9f248f5c`, chain 43114)
- AlgebraFactory (`0x512eb749541b7cf294be882d636218c84a5e9e5f`, chain 43114)
- AlgebraInterfaceMulticall (`0x9df9457d5c55b4c880dc86c67ae323b00b5be48e`, chain 43114)
- AlgebraPoolAPI (`0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca`, chain 43114)
- AlgebraPoolDeployer (`0x9b2441037e286d5bf9456a3be7b5273fe28dba1e`, chain 43114)
- AlgebraVaultFactory (`0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3`, chain 43114)
- Black (`0xcd94a87696fac69edae3a70fe5725307ae1c43f6`, chain 43114)
- BridgeFeeWrapper (`0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b`, chain 43114)
- CustomPoolDeployer (`0x9f52f2beec30f2ebc9bbeb105e68cfe73dd4d74f`, chain 43114)
- CustomPoolDeployer (`0xc046f2f09549e20039ca67496ebcf4f7a0221aee`, chain 43114)
- FarmingCenter (`0xa47ad2c95fae476a73b85a355a5855adb4b3a449`, chain 43114)
- FarmingCenter (`0xcecc64211f1ed70a71bd47eb656f7067c1f45541`, chain 43114)
- FeeDiscountRegistry (`0x6a8591adb2ca2427021906e223e2b5de20106aa9`, chain 43114)
- GaugeFactoryCL (`0x824dbc85b7609f294148b122a2cb826ab13f0296`, chain 43114)
- GaugeManager (`0x66c6650a106e82fc40824077fa501d6f28974091`, chain 43114)
- GaugeManager (`0x93c601c31145185787dab3617d6b419894dc0b8f`, chain 43114)
- GaugeOwner (`0xdd35894a790ee9625c3aad49e8bd14e135f3f946`, chain 43114)
- GenesisPoolFactory (`0xdeb50ac7a0a03332626b3c45eb20e7310653260f`, chain 43114)
- GenesisPoolManager (`0x0eb1e103116b8ec5f13a72f6943440340c4840dd`, chain 43114)
- NFTDescriptor (`0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13`, chain 43114)
- NonfungiblePositionManager (`0x3fed017ec0f5517cdf2e8a9a4156c64d74252146`, chain 43114)
- PairBootstrapper (`0xa053ca9c51524d67e5e435c62031ad2031e09a22`, chain 43114)
- PairBootstrapper (`0xa589c80e228df3671c4fa3d02cdf000e05b2bd8d`, chain 43114)
- PairGenerator (`0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c`, chain 43114)
- PermissionsRegistry (`0x751b7152aa11e39216cd00c0f65311efdf1a65ff`, chain 43114)
- PluginV3Deployer (`0xefc098ca1bba02104590cda910f7f9d494bde662`, chain 43114)
- Quoter (`0x7a88c46740fdfe446dd6ad97cc0a94716848d214`, chain 43114)
- QuoterV2 (`0x3e182bcf14be6142b9217847ec1112e3c39eb689`, chain 43114)
- RewardsDistributor (`0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28`, chain 43114)
- SecurityRegistry (`0xd2fe840c24e1e4b217909bd3f88fed6bf3537b02`, chain 43114)
- SwapRouter (`0xabfc48e8bed7b26762745f3139555f320119709d`, chain 43114)
- TickLens (`0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e`, chain 43114)
- veNFTAPI (`0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9`, chain 43114)
- VotingEscrow (`0xeac562811cc6abdbb2c9ee88719eca4ee79ad763`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 75; live-surface rows included: 75 (73 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 69/127 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/55 (25.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 70 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 43
- Confirmed-live implementations: 70 of 114 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 14/86
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 114
- Raw deployments: 166
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: 25.5% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 14 | 16.3% | 2025-07 |
| PeckShield | Tier 2 | 4 | 4.7% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Black | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380771 | `0xcd94a87696fac69edae3a70fe5725307ae1c43f6` | ✅ Audited |
| GaugeFactoryCL | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380808 | 2 deployments: avalanche `0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e`; avalanche `0x824dbc85b7609f294148b122a2cb826ab13f0296` | ✅ Audited |
| GenesisPoolFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380781 | `0xdeb50ac7a0a03332626b3c45eb20e7310653260f` | ✅ Audited |
| GenesisPoolManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380697 | `0x0eb1e103116b8ec5f13a72f6943440340c4840dd` | ✅ Audited |
| PairFactory | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380797 | 2 deployments: avalanche `0x0dea372e70350d9c298a3825f0249fe2dbad26f8`; avalanche `0xfe926062fb99ca5653080d6c14fe945ad68c265c` | ✅ Audited |
| PairGenerator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380705 | `0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c` | ✅ Audited |
| PermissionsRegistry | registry | project_anchor | own_supporting | 0 | avalanche | unit-380733 | `0x751b7152aa11e39216cd00c0f65311efdf1a65ff` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380738 | `0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28` | ✅ Audited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380753 | `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380817 | 2 deployments: avalanche `0x3755df8a937e9505af7b14d8b13e83f133ed11c3`; avalanche `0xf7f32fe3af99005fb4839a735458321f8754112e` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380803 | 2 deployments: avalanche `0x58318fd6adb8caea00727ee4f579d48e6c9631d1`; avalanche `0x631c0eae26937c0beae293b3be4518e51288b41b` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380813 | 2 deployments: avalanche `0x9e95ef7d8b87708641923c48c4eb298ed7ca6552`; avalanche `0xe46d245942dc01c5ea3e1dd05f3268ace867b5e1` | ✅ Audited |
| VoterV3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380806 | 2 deployments: avalanche `0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525`; avalanche `0xe30d0c8532721551a51a9fec7fb233759964d9e3` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380786 | `0xeac562811cc6abdbb2c9ee88719eca4ee79ad763` | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x64b9b45dbf624d63d15c04c576faf5c8366d0696`; avalanche `0x930487d060fcd5fa7ff5167a8f5b6407bc7ca365` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380719 | `0x580be59a0461eae3414352c0abd88e485a294bfc` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380691 | `0x01a8a00a6fc8106b94f84aabaef689fd0d77271a` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380750 | `0x9c70bedd11cf874f07b1bd9c29e3e41f9f248f5c` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6180a0f879c675d4eafeaafbd2d876578c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380716 | `0x512eb749541b7cf294be882d636218c84a5e9e5f` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380751 | `0x9df9457d5c55b4c880dc86c67ae323b00b5be48e` | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380799 | 2 deployments: avalanche `0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca`; avalanche `0xf0274c793d16713338af4b8bf2bef64ba2485b99` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | avalanche | unit-380802 | 2 deployments: avalanche `0x263625c4dff7a2c7d64e141ed45189681a27c84e`; avalanche `0xa90bc0e1d28151206530daba53a5b8d28332cb7f` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380749 | `0x9b2441037e286d5bf9456a3be7b5273fe28dba1e` | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380778 | `0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3` | ⚠️ Unaudited |
| ASSET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767`; avalanche `0xd36d9209cd5e8a32682c0d1ba761dc00e0729d21`; avalanche `0xf3212bc5c79e9c36428770dc074490cba192e878` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380723 | 2 deployments: avalanche `0x5af551ba1bf743978b42d4e133bff8b6231176ff`; avalanche `0x74544e33aad327c3f6d01028fdba8cacb1e52ed0` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3935f7e11e33e676b6108f6e86ab8578d8e32d43` | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380743 | `0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 5 | avalanche | unit-380810 (5 proxies) | 6 deployments: avalanche `0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2`; avalanche `0x14e4e36f70ff06dc874f0e827b174ced91e51cc8`; avalanche `0x43c4b7bd4c173992c6711c631859a2eac84bf8db`; avalanche `0x48b1d49fb891bab3543db6e902cc54726a133ace`; avalanche `0x5ef3876ca93b93c9bcfd637783ed99412b1eff43`; avalanche `0x9f52f2beec30f2ebc9bbeb105e68cfe73dd4d74f` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 4 | avalanche | unit-380812 (4 proxies) | 5 deployments: avalanche `0x58b05074d52d1a84d8ffdadda3c1b652e8c56994`; avalanche `0x5d433a94a4a2aa8f9aa34d8d15692dc2e9960584`; avalanche `0xc046f2f09549e20039ca67496ebcf4f7a0221aee`; avalanche `0xdcfccf2e8c4efbba9127b80eac76c5a122125d29`; avalanche `0xf9221de143a0e57c324bf2a0f281e605e845d767` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380757 | `0xa47ad2c95fae476a73b85a355a5855adb4b3a449` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbf15ea9f0e44d563ed07d6496ceba01790932ab` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380772 | `0xcecc64211f1ed70a71bd47eb656f7067c1f45541` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | project_anchor | own_supporting | 0 | avalanche | n/a | 2 deployments: avalanche `0x2334338da0bb192dcfc33356f5d1cc6bc03adc02`; avalanche `0x6a8591adb2ca2427021906e223e2b5de20106aa9` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586` | ⚠️ Unaudited |
| GaugeManager | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380804 | 2 deployments: avalanche `0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6`; avalanche `0x66c6650a106e82fc40824077fa501d6f28974091` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380745 | `0x93c601c31145185787dab3617d6b419894dc0b8f` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380780 | `0xdd35894a790ee9625c3aad49e8bd14e135f3f946` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5`; avalanche `0x2118048486b400f3b6ea73b2d652ce21b3f038a5` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0fd4a527a4422aca27f48cd79e4093867544a616`; avalanche `0xddfa1f6eee4d09baa0707cfc7f8400b4b7aa3507` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x8966443f81f11d10f69aa679ccbaa9b73661000c`; avalanche `0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1` | ⚠️ Unaudited |
| NFTDescriptor | token | project_anchor | own_supporting | 0 | avalanche | unit-380712 | 2 deployments: avalanche `0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13`; avalanche `0xf91d96f66e0fc9ee9f0182803b9c546b82ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-380708 | `0x3fed017ec0f5517cdf2e8a9a4156c64d74252146` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf5b19925b9bc2d3966b4193544a8644ff9b9d70` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-380795 | `0xfd1c727d8a2259493c66899f478ebfea41329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380801 | 2 deployments: avalanche `0x23b216788e78c8a4755473b8b2ed7be7929a81e7`; avalanche `0x8ce534f3fcb4c0f4f8cf3ca06e744739f9f8830e` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573`; avalanche `0xc26e546b632348e76ebbd2811f4458a32ea29b7a` | ⚠️ Unaudited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380755 | `0xa053ca9c51524d67e5e435c62031ad2031e09a22` | ⚠️ Unaudited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380758 | `0xa589c80e228df3671c4fa3d02cdf000e05b2bd8d` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380787 | `0xefc098ca1bba02104590cda910f7f9d494bde662` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x775ebcce9310a097f39847e23cc88b38bbac4327`; avalanche `0xd763061cc3015642ca104496107bc69944c74bed` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380736 | `0x7a88c46740fdfe446dd6ad97cc0a94716848d214` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380706 | `0x3e182bcf14be6142b9217847ec1112e3c39eb689` | ⚠️ Unaudited |
| RouterHelperZap | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380775 | `0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1` | ⚠️ Unaudited |
| RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04e1dee021cd12bba022a72806441b43d8212fec` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcad684775d7879e63f5d319dacc8086eecc01b01`; avalanche `0xd1447c4140b1f6ecae955813b779a2a59dbda08a` | ⚠️ Unaudited |
| SecurityRegistry | registry | project_anchor | own_supporting | 0 | avalanche | n/a | 2 deployments: avalanche `0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5`; avalanche `0xd2fe840c24e1e4b217909bd3f88fed6bf3537b02` | ⚠️ Unaudited |
| SHARE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x005ff8b18fb3f61a69a492c7a062dc497226b430`; avalanche `0x62e134d7274efadb9d165baff76c7340e663f0e2`; avalanche `0xb6c18bb7e0167e5e92268bf6f7f667f49408f66c` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380760 | `0xabfc48e8bed7b26762745f3139555f320119709d` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380784 | `0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5bb4c84da2d5de0af12c301818012802e64e750` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380814 | 2 deployments: avalanche `0x1112f67a7098d80c35fcd139fa951496749dfec3`; avalanche `0xe93b6875d7bc4aab57b2473f2d974d0f8de5fc95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380815 | 2 deployments: avalanche `0x18bf868878fc0722a7400de93dcb791aba7d001f`; avalanche `0xe98aec7fe3648c104fac23a350926c17951cf0be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380800 | 2 deployments: avalanche `0x19844c931406cc9bd237aa3e169310978a33f0b9`; avalanche `0xfe842861b9f79bb77ccb6043731d433d63b365df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x21760a0269c99a711269b60df59d9a35dc2d66b2`; avalanche `0xc200e687ae4da86fc4b649d9d145dde86ec60524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2e694d02cf3da855b19ee31f5f61c0b8608256d0`; avalanche `0x9aebf5fa3ede9cd4a483759a69843cc4c81c2f8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d39212cbca54627c0fc4e27aa316d10c184ecd3`; avalanche `0x98e3299de7edac19446ec3792afbd7211aafd615` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x516ab0f04dd90ee755f5ea2533888b5333789f85` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 2 | avalanche | unit-380811 (2 proxies) | 3 deployments: avalanche `0x53d569bc4b37adbbdb6ab447d92adf42514ae480`; avalanche `0xb603a73eb0e8713b87f957051d5128548bca37d7`; avalanche `0xb888979122365cee81d274e4bb6c970ce42af336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380816 | 2 deployments: avalanche `0x553901e346fcadebfd15adffd2ba3c58ac6f9988`; avalanche `0xf19a0fbade62210d6b67d63ec95fa0febd8bfb9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x6499d25b850fa00da2fa33d9ef036b33b4be40d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380805 | 2 deployments: avalanche `0x6b19153936b35eb5d035193463491ee902bfd9da`; avalanche `0x8ba179fbbc41d36573097a6cc9924db7c3978fdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380807 | 2 deployments: avalanche `0x6c4acf40b81b15643ab58ac145a8b043497baf2f`; avalanche `0x9d45e1acf9f164be11eeae206b459dd575ee0bb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e`; avalanche `0xdc469e32771df0a7ff3ba33ed1993a92f9a15c84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x73c4b095b0cb52cb02db918138324f8009e8cdbc`; avalanche `0xea6f5924acd41817fd9a4f04b52d9e6cb303219b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x83700b8809754f67f824532ee167ef7880d0b21f`; avalanche `0xc35af3a31e354ce4b4396aeb478009540ad3f422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x86cf4b676056aedfc8ffeba0cffd047f7b84428a`; avalanche `0xdca25b5ff3a4be4b8c4bb9f45edc77bc0c3df21e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380809 | 2 deployments: avalanche `0x86eba1b766667b99dd4f9a40d01960e36cf753e3`; avalanche `0xacc34ad51457930989fb5050c2dce6339f06479b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4`; avalanche `0xa9257e4a3e1af0c162fef2d41f9e7de4d5b5431b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa46552eda2f84fe843a66bbe244515bbfa951c68`; avalanche `0xc9384c77faa29183d2bc54d120c78ccbe92e7012` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380798 | `0xca756ef397b8f039d04b4ff967f43417b723afde` | ⚠️ Unaudited |
| veNFTAPI | token | project_anchor | own_supporting | 0 | avalanche | unit-380763 | `0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d67c7729135583f2ee11fd34c7921a8ae500e6f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380692 | `0x038cba84d1cdf5b0820fc6a1fae93f42240268bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380693 | `0x0541b43200ce35d78b97e3ab5351c054289bbe27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380698 | `0x109309e885ee9023bd22e4f45a347640bb2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380703 | `0x27ae8c52a41ec52a4150ba6321007ec41702c0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3760211121b776945b38584f440d724ea80ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380709 | `0x42a53f5460f126cccaf57d1b79155c65d229f82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380714 | `0x4cd13301c1b0555272be010bfbe8901a55e520f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ae672484074893a3e60b91a5e983da08be8d21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380724 | `0x5b0f5acde0a779856d6885a67253529c235929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b2c919000c6e368307904d50ccc66c98bc517bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380726 | `0x656fc9b7f681099cc1a7d44f9eebe3212926f8dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380730 | `0x6cab6577257523e1d609de76104764f042f993d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dbab3faa00c286cb65996535f2562a5ef2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88a49cfcee0ed5b176073dde12186c4c922a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380744 | `0x91b8c8c51a11a7033c34257c3768035eff4f7736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b0c4d5114f6a0373ca521e50b8c3da97b20b47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cc44526f59c12d3f675d307241d6ed97b50104f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380754 | `0xa02ec3ba8d17887567672b2cdcaf525534636ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ba8b96d390478eb84164cc97f7e2340db34430` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380762 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f679e2cb42965c99e72035184a7a9d6df98f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd62c869a90224cf30e9a2c059e5ee8dea13f01d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380776 | `0xd6b6618cbddfc8f33cc6ad44fb6557fa900049b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380782 | `0xe168fcd8f27c22e1c5e9c7aa6cf78afed82f06c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe809b72e7b1e62cb2a38baf2f681887d054d2a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe946a9f39312e2346ba79dab865b0e9a74f2f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec909973d7a8da5ec010c380924462abca3033d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380796 | `0xff39c52b6649af0f73c8d3088344436a5e3b2fb6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 85
- Live contracts: 46
- Unknown liveness contracts: 39
- Source-verified contracts: 64
- Currently scope-matched contracts retained as-is: 6
- Classification counts: currently scope matched=6, candidate review=47, exact address book overlap=4, source verified unclassified=9, unverified unclassified=19

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x3755df8a937e9505af7b14d8b13e83f133ed11c3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x58318fd6adb8caea00727ee4f579d48e6c9631d1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x9e95ef7d8b87708641923c48c4eb298ed7ca6552` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xe30d0c8532721551a51a9fec7fb233759964d9e3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xfe926062fb99ca5653080d6c14fe945ad68c265c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | ASSET<br>`0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | ASSET<br>`0xd36d9209cd5e8a32682c0d1ba761dc00e0729d21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | GaugeFactory<br>`0xe46d245942dc01c5ea3e1dd05f3268ace867b5e1` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | GSCORE<br>`0x2118048486b400f3b6ea73b2d652ce21b3f038a5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x23b216788e78c8a4755473b8b2ed7be7929a81e7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | PairFactory<br>`0x0dea372e70350d9c298a3825f0249fe2dbad26f8` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | RouterHelper<br>`0xb888979122365cee81d274e4bb6c970ce42af336` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | SHARE<br>`0x005ff8b18fb3f61a69a492c7a062dc497226b430` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | SHARE<br>`0xb6c18bb7e0167e5e92268bf6f7f667f49408f66c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | TransparentUpgradeableProxy<br>`0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | TransparentUpgradeableProxy<br>`0x1112f67a7098d80c35fcd139fa951496749dfec3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x14e4e36f70ff06dc874f0e827b174ced91e51cc8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x18bf868878fc0722a7400de93dcb791aba7d001f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x43c4b7bd4c173992c6711c631859a2eac84bf8db` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x48b1d49fb891bab3543db6e902cc54726a133ace` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x516ab0f04dd90ee755f5ea2533888b5333789f85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x53d569bc4b37adbbdb6ab447d92adf42514ae480` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x553901e346fcadebfd15adffd2ba3c58ac6f9988` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x58b05074d52d1a84d8ffdadda3c1b652e8c56994` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x5d433a94a4a2aa8f9aa34d8d15692dc2e9960584` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x5ef3876ca93b93c9bcfd637783ed99412b1eff43` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x6499d25b850fa00da2fa33d9ef036b33b4be40d6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x83700b8809754f67f824532ee167ef7880d0b21f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x8ba179fbbc41d36573097a6cc9924db7c3978fdc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x8ce534f3fcb4c0f4f8cf3ca06e744739f9f8830e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x98e3299de7edac19446ec3792afbd7211aafd615` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x9aebf5fa3ede9cd4a483759a69843cc4c81c2f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0x9d45e1acf9f164be11eeae206b459dd575ee0bb0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xa90bc0e1d28151206530daba53a5b8d28332cb7f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xa9257e4a3e1af0c162fef2d41f9e7de4d5b5431b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xacc34ad51457930989fb5050c2dce6339f06479b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xb603a73eb0e8713b87f957051d5128548bca37d7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xc200e687ae4da86fc4b649d9d145dde86ec60524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xc9384c77faa29183d2bc54d120c78ccbe92e7012` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xca756ef397b8f039d04b4ff967f43417b723afde` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xcad684775d7879e63f5d319dacc8086eecc01b01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xdca25b5ff3a4be4b8c4bb9f45edc77bc0c3df21e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xdcfccf2e8c4efbba9127b80eac76c5a122125d29` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xddfa1f6eee4d09baa0707cfc7f8400b4b7aa3507` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| candidate review | TransparentUpgradeableProxy<br>`0xea6f5924acd41817fd9a4f04b52d9e6cb303219b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xf0274c793d16713338af4b8bf2bef64ba2485b99` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xf9221de143a0e57c324bf2a0f281e605e845d767` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe842861b9f79bb77ccb6043731d433d63b365df` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| candidate review | VoterV3<br>`0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| exact address book overlap | AlgebraPoolAPI<br>`0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca` | project_anchor | unknown | live | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| exact address book overlap | GaugeFactoryCL<br>`0x824dbc85b7609f294148b122a2cb826ab13f0296` | project_anchor | unknown | live | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| exact address book overlap | UnnamedContract<br>`0x6cab6577257523e1d609de76104764f042f993d2` | project_anchor | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| exact address book overlap | UnnamedContract<br>`0xe98aec7fe3648c104fac23a350926c17951cf0be` | project_anchor | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | AlgebraPoolAPIStorage<br>`0x263625c4dff7a2c7d64e141ed45189681a27c84e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | ASSET<br>`0xf3212bc5c79e9c36428770dc074490cba192e878` | non_address_book | unknown | unknown | verified | n/a | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| source verified unclassified | CustomPoolDeployer<br>`0x9f52f2beec30f2ebc9bbeb105e68cfe73dd4d74f` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | CustomPoolDeployer<br>`0xc046f2f09549e20039ca67496ebcf4f7a0221aee` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | GaugeManager<br>`0x66c6650a106e82fc40824077fa501d6f28974091` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | GSCORE<br>`0x0fd4a527a4422aca27f48cd79e4093867544a616` | non_address_book | unknown | unknown | verified | n/a | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| source verified unclassified | GSCORE<br>`0x8966443f81f11d10f69aa679ccbaa9b73661000c` | non_address_book | unknown | unknown | verified | n/a | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| source verified unclassified | RouterV2<br>`0xd1447c4140b1f6ecae955813b779a2a59dbda08a` | non_address_book | unknown | unknown | verified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| source verified unclassified | SHARE<br>`0x62e134d7274efadb9d165baff76c7340e663f0e2` | non_address_book | unknown | unknown | verified | n/a | `0xa4d86450dabd2131d83be0eee3365e864400fbd0` |
| unverified unclassified | UnnamedContract<br>`0x19844c931406cc9bd237aa3e169310978a33f0b9` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x21760a0269c99a711269b60df59d9a35dc2d66b2` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x2e694d02cf3da855b19ee31f5f61c0b8608256d0` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x3d39212cbca54627c0fc4e27aa316d10c184ecd3` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x52ae672484074893a3e60b91a5e983da08be8d21` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x5b2c919000c6e368307904d50ccc66c98bc517bb` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x631c0eae26937c0beae293b3be4518e51288b41b` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x6b19153936b35eb5d035193463491ee902bfd9da` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x6c4acf40b81b15643ab58ac145a8b043497baf2f` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x73c4b095b0cb52cb02db918138324f8009e8cdbc` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x86cf4b676056aedfc8ffeba0cffd047f7b84428a` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x86eba1b766667b99dd4f9a40d01960e36cf753e3` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xa46552eda2f84fe843a66bbe244515bbfa951c68` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xc35af3a31e354ce4b4396aeb478009540ad3f422` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xdc469e32771df0a7ff3ba33ed1993a92f9a15c84` | non_address_book | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xe93b6875d7bc4aab57b2473f2d974d0f8de5fc95` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xf19a0fbade62210d6b67d63ec95fa0febd8bfb9d` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |
| unverified unclassified | UnnamedContract<br>`0xf7f32fe3af99005fb4839a735458321f8754112e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xafd356bc0db2b5a0dc879a2424ef384c0f266fe9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | n/a | matched | 4 | 0 | 0 | 3 | n/a |
| [Code4rena+Audit-Blackhole-report.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/Code4rena+Audit-Blackhole-report.pdf) | Code4rena | Contest | 2025-06 | aging | Direct | contract_name | matched | 15 | 6 | 0 | 48 | high |
| [Addendum+to+Code4rena+Audit+Report.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/Addendum+to+Code4rena+Audit+Report.pdf) | Code4rena | Contest | 2025-07 | aging | Direct | n/a | matched | 4 | 1 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1796] PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf — matched: No reason recorded
- [1797] Code4rena+Audit-Blackhole-report.pdf — matched: Extracted 116 smart contracts in scope from the audit report. The audit date is the end date of the audit period (May 28 – Jun 09, 2025).
- [1798] Addendum+to+Code4rena+Audit+Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | BlackGovernor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | GaugeCL | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | GaugeExtraRewarder | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e103116b8ec5f13a72f6943440340c4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28` — deployed 2025-11-27 13:16:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xeac562811cc6abdbb2c9ee88719eca4ee79ad763` — deployed 2025-04-18 20:52:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e103116b8ec5f13a72f6943440340c4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeFactoryCL | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e` — deployed 2025-07-04 12:28:28+03 — liveness: live (code_present_context)<br>GaugeFactoryCL (alternative) `0x824dbc85b7609f294148b122a2cb826ab13f0296` — deployed 2026-05-07 13:40:37+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-07-04 was 25d from audit; next candidate 332d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | MinterUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | PermissionsRegistry | own contract | PermissionsRegistry (selected) `0x751b7152aa11e39216cd00c0f65311efdf1a65ff` — deployed 2025-07-04 12:19:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28` — deployed 2025-11-27 13:16:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeCL | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | BribeFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | VoterV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe30d0c8532721551a51a9fec7fb233759964d9e3` — deployed 2025-07-04 12:34:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xeac562811cc6abdbb2c9ee88719eca4ee79ad763` — deployed 2025-04-18 20:52:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | BlackGovernor | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Pair | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe926062fb99ca5653080d6c14fe945ad68c265c` — deployed 2025-07-04 12:26:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GenesisPoolFactory | own contract | GenesisPoolFactory (selected) `0xdeb50ac7a0a03332626b3c45eb20e7310653260f` — deployed 2025-09-03 16:10:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | Bribe | unmatched — not counted | — | mentioned in findings as target | no |
| Code4rena+Audit-Blackhole-report.pdf | L2Governor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Governor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | VotingDelegationLib | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Black | own contract | Black (selected) `0xcd94a87696fac69edae3a70fe5725307ae1c43f6` — deployed 2025-04-18 20:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | TokenHandler | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x58318fd6adb8caea00727ee4f579d48e6c9631d1` — deployed 2025-07-04 14:06:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeManager | ambiguous — not counted | GaugeManager (alternative) `0x93c601c31145185787dab3617d6b419894dc0b8f` — deployed 2025-07-04 12:32:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6` — deployed 2025-07-04 12:32:40+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena+Audit-Blackhole-report.pdf | AutoVotingEscrowManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3755df8a937e9505af7b14d8b13e83f133ed11c3` — deployed 2025-07-04 13:50:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | PairGenerator | own contract | PairGenerator (selected) `0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c` — deployed 2025-07-04 12:23:57+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9e95ef7d8b87708641923c48c4eb298ed7ca6552` — deployed 2025-07-04 12:26:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | AlgebraPoolAPIStorage | own contract | 0x42a53f… (selected) `0x42a53f5460f126cccaf57d1b79155c65d229f82b` — deployed 2026-03-24 13:18:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | BlackTimeLibrary | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAlgebraEternalFarming | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAlgebraPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAlgebraPoolAPIStorage | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAlgebraEternalVirtualPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAlgebraEternalFarmingCustom | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IBaseV1Factory | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IBaseV1Pair | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IBribe | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IBlackGovernor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IBlackHoleVotes | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IMinter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IRouter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | ISwapRouter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IVotingEscrow | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IAutoVotingEscrowManager | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IGaugeManager | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IGenesisPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IPair | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IPairGenerator | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IFarmingPlugin | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IFarmingCenter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | IERC20Minimal | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | TransferHelper | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | MockContractDelegates | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockRouter | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockGenesisPool | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockPairFactory | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | GaugeManagerMock | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | RewardsDistributorMock | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | BlackGovernorMock | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockToken | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockVoter | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockGaugeManager | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockTokenHandler | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockVotingEscrow | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockMinter | unmatched — not counted | — | mentioned in PoC | no |
| Code4rena+Audit-Blackhole-report.pdf | MockERC20 | unmatched — not counted | — | mentioned in PoC | no |
| Addendum+to+Code4rena+Audit+Report.pdf | GenesisPoolFactory | own contract | GenesisPoolFactory (selected) `0xdeb50ac7a0a03332626b3c45eb20e7310653260f` — deployed 2025-09-03 16:10:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e103116b8ec5f13a72f6943440340c4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | IBaseV1Pair | unmatched — not counted | — | — | no |
| Addendum+to+Code4rena+Audit+Report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe926062fb99ca5653080d6c14fe945ad68c265c` — deployed 2025-07-04 12:26:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x580be59a0461eae3414352c0abd88e485a294bfc` | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x01a8a00a6fc8106b94f84aabaef689fd0d77271a` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x512eb749541b7cf294be882d636218c84a5e9e5f` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9df9457d5c55b4c880dc86c67ae323b00b5be48e` | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca` | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9b2441037e286d5bf9456a3be7b5273fe28dba1e` | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3` | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5af551ba1bf743978b42d4e133bff8b6231176ff` | BasePluginV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b` | BridgeFeeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2` | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x58b05074d52d1a84d8ffdadda3c1b652e8c56994` | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa47ad2c95fae476a73b85a355a5855adb4b3a449` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcecc64211f1ed70a71bd47eb656f7067c1f45541` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2334338da0bb192dcfc33356f5d1cc6bc03adc02` | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6` | GaugeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x93c601c31145185787dab3617d6b419894dc0b8f` | GaugeManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdd35894a790ee9625c3aad49e8bd14e135f3f946` | GaugeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13` | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3fed017ec0f5517cdf2e8a9a4156c64d74252146` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfd1c727d8a2259493c66899f478ebfea41329545` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x23b216788e78c8a4755473b8b2ed7be7929a81e7` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa053ca9c51524d67e5e435c62031ad2031e09a22` | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa589c80e228df3671c4fa3d02cdf000e05b2bd8d` | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xefc098ca1bba02104590cda910f7f9d494bde662` | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x7a88c46740fdfe446dd6ad97cc0a94716848d214` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3e182bcf14be6142b9217847ec1112e3c39eb689` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1` | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5` | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xabfc48e8bed7b26762745f3139555f320119709d` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9` | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 2 |
| standard_library | 14 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 51 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1, unique_name=22

Fork inheritance lineage and inherited audits are included when available.
