# Agentic Audit Brief: Blackhole

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 79.1% over 90 days

## Project Overview

- Project: Blackhole (`blackhole`)
- Website: [https://blackhole.xyz/](https://blackhole.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
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

**BasePluginV3Factory** (`0x5af551...1176ff`, chain 43114)
Origin: supernova (`0xdbfd67...f99b97`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NonfungiblePositionManager** (`0xfd1c72...329545`, chain 43114)
Origin: supernova (`0x00d5bb...c8aaaa`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RouterHelperZap** (`0xd68b9c...9636e1`, chain 43114)
Origin: supernova (`0x15783a...d95564`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RouterV2** (`0x9eed16...f3c111`, chain 43114)
Origin: supernova (`0x3ce467...95813b`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x038cba...0268bb`, chain 43114)
- UnnamedContract (`0x0541b4...9bbe27`, chain 43114)
- UnnamedContract (`0x109309...2a82aa`, chain 43114)
- UnnamedContract (`0x19844c...33f0b9`, chain 43114)
- UnnamedContract (`0x27ae8c...02c0f0`, chain 43114)
- UnnamedContract (`0x42a53f...29f82b`, chain 43114)
- UnnamedContract (`0x4cd133...e520f2`, chain 43114)
- UnnamedContract (`0x5b0f5a...5929e6`, chain 43114)
- UnnamedContract (`0x631c0e...88b41b`, chain 43114)
- UnnamedContract (`0x656fc9...26f8dc`, chain 43114)
- UnnamedContract (`0x6b1915...bfd9da`, chain 43114)
- UnnamedContract (`0x6c4acf...7baf2f`, chain 43114)
- UnnamedContract (`0x6cab65...f993d2`, chain 43114)
- UnnamedContract (`0x91b8c8...4f7736`, chain 43114)
- UnnamedContract (`0xa02ec3...636ea0`, chain 43114)
- UnnamedContract (`0xb31f66...fd66c7`, chain 43114)
- UnnamedContract (`0xd6b661...0049b7`, chain 43114)
- UnnamedContract (`0xe168fc...2f06c6`, chain 43114)
- UnnamedContract (`0xe93b68...e5fc95`, chain 43114)
- UnnamedContract (`0xe98aec...1cf0be`, chain 43114)
- UnnamedContract (`0xf19a0f...8bfb9d`, chain 43114)
- UnnamedContract (`0xff39c5...3b2fb6`, chain 43114)
- AlgebraCustomPoolEntryPoint (`0x580be5...294bfc`, chain 43114)
- AlgebraEternalFarming (`0x01a8a0...77271a`, chain 43114)
- AlgebraEternalFarming (`0x9c70be...248f5c`, chain 43114)
- AlgebraFactory (`0x512eb7...5e9e5f`, chain 43114)
- AlgebraInterfaceMulticall (`0x9df945...5be48e`, chain 43114)
- AlgebraPoolAPI (`0x16766b...9c99ca`, chain 43114)
- AlgebraPoolDeployer (`0x9b2441...8dba1e`, chain 43114)
- AlgebraVaultFactory (`0xdc0b5d...d079b3`, chain 43114)
- Black (`0xcd94a8...1c43f6`, chain 43114)
- BridgeFeeWrapper (`0x8c2207...b8888b`, chain 43114)
- CustomPoolDeployer (`0x9f52f2...d4d74f`, chain 43114)
- CustomPoolDeployer (`0xc046f2...221aee`, chain 43114)
- FarmingCenter (`0xa47ad2...b3a449`, chain 43114)
- FarmingCenter (`0xcecc64...f45541`, chain 43114)
- FeeDiscountRegistry (`0x6a8591...106aa9`, chain 43114)
- GaugeFactoryCL (`0x824dbc...3f0296`, chain 43114)
- GaugeManager (`0x66c665...974091`, chain 43114)
- GaugeManager (`0x93c601...dc0b8f`, chain 43114)
- GaugeOwner (`0xdd3589...f3f946`, chain 43114)
- GenesisPoolFactory (`0xdeb50a...53260f`, chain 43114)
- GenesisPoolManager (`0x0eb1e1...4840dd`, chain 43114)
- NFTDescriptor (`0x469412...519e13`, chain 43114)
- NonfungiblePositionManager (`0x3fed01...252146`, chain 43114)
- PairBootstrapper (`0xa053ca...e09a22`, chain 43114)
- PairBootstrapper (`0xa589c8...b2bd8d`, chain 43114)
- PairGenerator (`0x34098b...9afe1c`, chain 43114)
- PermissionsRegistry (`0x751b71...1a65ff`, chain 43114)
- PluginV3Deployer (`0xefc098...bde662`, chain 43114)
- Quoter (`0x7a88c4...48d214`, chain 43114)
- QuoterV2 (`0x3e182b...9eb689`, chain 43114)
- RewardsDistributor (`0x7c7bd8...83ba28`, chain 43114)
- SecurityRegistry (`0xd2fe84...537b02`, chain 43114)
- SwapRouter (`0xabfc48...19709d`, chain 43114)
- TickLens (`0xe66aae...4a822e`, chain 43114)
- veNFTAPI (`0xb3629c...b35de9`, chain 43114)
- VotingEscrow (`0xeac562...9ad763`, chain 43114)

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
| Black | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380771 | `0xcd94a8...1c43f6` | ✅ Audited |
| GaugeFactoryCL | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380808 | 2 deployments: avalanche `0x6b6a3d...a6ea5e`; avalanche `0x824dbc...3f0296` | ✅ Audited |
| GenesisPoolFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380781 | `0xdeb50a...53260f` | ✅ Audited |
| GenesisPoolManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380697 | `0x0eb1e1...4840dd` | ✅ Audited |
| PairFactory | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380797 | 2 deployments: avalanche `0x0dea37...ad26f8`; avalanche `0xfe9260...8c265c` | ✅ Audited |
| PairGenerator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380705 | `0x34098b...9afe1c` | ✅ Audited |
| PermissionsRegistry | registry | project_anchor | own_supporting | 0 | avalanche | unit-380733 | `0x751b71...1a65ff` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380738 | `0x7c7bd8...83ba28` | ✅ Audited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380753 | `0x9eed16...f3c111` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380817 | 2 deployments: avalanche `0x3755df...ed11c3`; avalanche `0xf7f32f...54112e` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380803 | 2 deployments: avalanche `0x58318f...9631d1`; avalanche `0x631c0e...88b41b` | ✅ Audited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380813 | 2 deployments: avalanche `0x9e95ef...ca6552`; avalanche `0xe46d24...67b5e1` | ✅ Audited |
| VoterV3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380806 | 2 deployments: avalanche `0x6bd81e...0c4525`; avalanche `0xe30d0c...64d9e3` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380786 | `0xeac562...9ad763` | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x64b9b4...6d0696`; avalanche `0x930487...7ca365` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380719 | `0x580be5...294bfc` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380691 | `0x01a8a0...77271a` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380750 | `0x9c70be...248f5c` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6180a...c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380716 | `0x512eb7...5e9e5f` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380751 | `0x9df945...5be48e` | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380799 | 2 deployments: avalanche `0x16766b...9c99ca`; avalanche `0xf0274c...485b99` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | avalanche | unit-380802 | 2 deployments: avalanche `0x263625...27c84e`; avalanche `0xa90bc0...32cb7f` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-380749 | `0x9b2441...8dba1e` | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380778 | `0xdc0b5d...d079b3` | ⚠️ Unaudited |
| ASSET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1997ef...0b5767`; avalanche `0xd36d92...729d21`; avalanche `0xf3212b...92e878` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-380723 | 2 deployments: avalanche `0x5af551...1176ff`; avalanche `0x74544e...e52ed0` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3935f7...e32d43` | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380743 | `0x8c2207...b8888b` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 5 | avalanche | unit-380810 (5 proxies) | 6 deployments: avalanche `0x0aff49...76efa2`; avalanche `0x14e4e3...e51cc8`; avalanche `0x43c4b7...4bf8db`; avalanche `0x48b1d4...133ace`; avalanche `0x5ef387...1eff43`; avalanche `0x9f52f2...d4d74f` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 4 | avalanche | unit-380812 (4 proxies) | 5 deployments: avalanche `0x58b050...c56994`; avalanche `0x5d433a...960584`; avalanche `0xc046f2...221aee`; avalanche `0xdcfccf...125d29`; avalanche `0xf9221d...45d767` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380757 | `0xa47ad2...b3a449` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbf15e...0932ab` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380772 | `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | project_anchor | own_supporting | 0 | avalanche | n/a | 2 deployments: avalanche `0x233433...3adc02`; avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaecb52...f50586` | ⚠️ Unaudited |
| GaugeManager | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380804 | 2 deployments: avalanche `0x59aa17...76cbf6`; avalanche `0x66c665...974091` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380745 | `0x93c601...dc0b8f` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6630...c66de5` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-380780 | `0xdd3589...f3f946` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0c8b31...c4e2e5`; avalanche `0x211804...f038a5` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0fd4a5...44a616`; avalanche `0xddfa1f...aa3507` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x896644...61000c`; avalanche `0xd9c5a9...bcc6f1` | ⚠️ Unaudited |
| NFTDescriptor | token | project_anchor | own_supporting | 0 | avalanche | unit-380712 | 2 deployments: avalanche `0x469412...519e13`; avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-380708 | `0x3fed01...252146` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf5b19...9b9d70` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-380795 | `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380801 | 2 deployments: avalanche `0x23b216...9a81e7`; avalanche `0x8ce534...f8830e` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x14e4a5...abd573`; avalanche `0xc26e54...a29b7a` | ⚠️ Unaudited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380755 | `0xa053ca...e09a22` | ⚠️ Unaudited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380758 | `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecbbc0...7863d3` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380787 | `0xefc098...bde662` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x775ebc...ac4327`; avalanche `0xd76306...c74bed` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380736 | `0x7a88c4...48d214` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380706 | `0x3e182b...9eb689` | ⚠️ Unaudited |
| RouterHelperZap | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380775 | `0xd68b9c...9636e1` | ⚠️ Unaudited |
| RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04e1de...212fec` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcad684...c01b01`; avalanche `0xd1447c...bda08a` | ⚠️ Unaudited |
| SecurityRegistry | registry | project_anchor | own_supporting | 0 | avalanche | n/a | 2 deployments: avalanche `0x275e24...d82cb5`; avalanche `0xd2fe84...537b02` | ⚠️ Unaudited |
| SHARE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x005ff8...26b430`; avalanche `0x62e134...63f0e2`; avalanche `0xb6c18b...08f66c` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-380760 | `0xabfc48...19709d` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | avalanche | unit-380784 | `0xe66aae...4a822e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5bb4c...64e750` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380814 | 2 deployments: avalanche `0x1112f6...9dfec3`; avalanche `0xe93b68...e5fc95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380815 | 2 deployments: avalanche `0x18bf86...7d001f`; avalanche `0xe98aec...1cf0be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380800 | 2 deployments: avalanche `0x19844c...33f0b9`; avalanche `0xfe8428...b365df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x21760a...2d66b2`; avalanche `0xc200e6...c60524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2e694d...8256d0`; avalanche `0x9aebf5...1c2f8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d3921...84ecd3`; avalanche `0x98e329...afd615` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x516ab0...789f85` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 2 | avalanche | unit-380811 (2 proxies) | 3 deployments: avalanche `0x53d569...4ae480`; avalanche `0xb603a7...ca37d7`; avalanche `0xb88897...2af336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380816 | 2 deployments: avalanche `0x553901...6f9988`; avalanche `0xf19a0f...8bfb9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x6499d2...be40d6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380805 | 2 deployments: avalanche `0x6b1915...bfd9da`; avalanche `0x8ba179...978fdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380807 | 2 deployments: avalanche `0x6c4acf...7baf2f`; avalanche `0x9d45e1...ee0bb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6cdc88...5f8c3e`; avalanche `0xdc469e...a15c84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x73c4b0...e8cdbc`; avalanche `0xea6f59...03219b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x83700b...d0b21f`; avalanche `0xc35af3...d3f422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x86cf4b...84428a`; avalanche `0xdca25b...3df21e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380809 | 2 deployments: avalanche `0x86eba1...f753e3`; avalanche `0xacc34a...06479b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8f6c94...c287c4`; avalanche `0xa9257e...b5431b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa46552...951c68`; avalanche `0xc9384c...2e7012` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-380798 | `0xca756e...23afde` | ⚠️ Unaudited |
| veNFTAPI | token | project_anchor | own_supporting | 0 | avalanche | unit-380763 | `0xb3629c...b35de9` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d67c7...500e6f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380692 | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380693 | `0x0541b4...9bbe27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380698 | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380703 | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380709 | `0x42a53f...29f82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380714 | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ae67...be8d21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380724 | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b2c91...c517bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380726 | `0x656fc9...26f8dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380730 | `0x6cab65...f993d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380744 | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380754 | `0xa02ec3...636ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380762 | `0xb31f66...fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380776 | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380782 | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-380796 | `0xff39c5...3b2fb6` | ❓ Unverified |

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
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e1...4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x7c7bd8...83ba28` — deployed 2025-11-27 13:16:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed16...f3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xeac562...9ad763` — deployed 2025-04-18 20:52:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e1...4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeFactoryCL | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b6a3d...a6ea5e` — deployed 2025-07-04 12:28:28+03 — liveness: live (code_present_context)<br>GaugeFactoryCL (alternative) `0x824dbc...3f0296` — deployed 2026-05-07 13:40:37+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-07-04 was 25d from audit; next candidate 332d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | MinterUpgradeable | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | PermissionsRegistry | own contract | PermissionsRegistry (selected) `0x751b71...1a65ff` — deployed 2025-07-04 12:19:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x7c7bd8...83ba28` — deployed 2025-11-27 13:16:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed16...f3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeCL | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | BribeFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | VoterV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe30d0c...64d9e3` — deployed 2025-07-04 12:34:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xeac562...9ad763` — deployed 2025-04-18 20:52:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | BlackGovernor | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Pair | unmatched — not counted | — | listed in scope and findings | no |
| Code4rena+Audit-Blackhole-report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe9260...8c265c` — deployed 2025-07-04 12:26:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GenesisPoolFactory | own contract | GenesisPoolFactory (selected) `0xdeb50a...53260f` — deployed 2025-09-03 16:10:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | Bribe | unmatched — not counted | — | mentioned in findings as target | no |
| Code4rena+Audit-Blackhole-report.pdf | L2Governor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Governor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | VotingDelegationLib | unmatched — not counted | — | mentioned in findings | no |
| Code4rena+Audit-Blackhole-report.pdf | Black | own contract | Black (selected) `0xcd94a8...1c43f6` — deployed 2025-04-18 20:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | TokenHandler | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x58318f...9631d1` — deployed 2025-07-04 14:06:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeManager | ambiguous — not counted | GaugeManager (alternative) `0x93c601...dc0b8f` — deployed 2025-07-04 12:32:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x59aa17...76cbf6` — deployed 2025-07-04 12:32:40+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena+Audit-Blackhole-report.pdf | AutoVotingEscrowManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3755df...ed11c3` — deployed 2025-07-04 13:50:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | PairGenerator | own contract | PairGenerator (selected) `0x34098b...9afe1c` — deployed 2025-07-04 12:23:57+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | GaugeFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9e95ef...ca6552` — deployed 2025-07-04 12:26:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena+Audit-Blackhole-report.pdf | AlgebraPoolAPIStorage | own contract | 0x42a53f… (selected) `0x42a53f...29f82b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Addendum+to+Code4rena+Audit+Report.pdf | GenesisPoolFactory | own contract | GenesisPoolFactory (selected) `0xdeb50a...53260f` — deployed 2025-09-03 16:10:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | GenesisPoolManager | own contract | GenesisPoolManager (selected) `0x0eb1e1...4840dd` — deployed 2025-09-03 16:13:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | IBaseV1Pair | unmatched — not counted | — | — | no |
| Addendum+to+Code4rena+Audit+Report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe9260...8c265c` — deployed 2025-07-04 12:26:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Addendum+to+Code4rena+Audit+Report.pdf | RouterV2 | own contract | RouterV2 (selected) `0x9eed16...f3c111` — deployed 2026-05-07 13:51:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x580be5...294bfc` | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x01a8a0...77271a` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x512eb7...5e9e5f` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9df945...5be48e` | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x16766b...9c99ca` | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9b2441...8dba1e` | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdc0b5d...d079b3` | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5af551...1176ff` | BasePluginV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8c2207...b8888b` | BridgeFeeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0aff49...76efa2` | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x58b050...c56994` | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa47ad2...b3a449` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcecc64...f45541` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x233433...3adc02` | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x59aa17...76cbf6` | GaugeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x93c601...dc0b8f` | GaugeManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdd3589...f3f946` | GaugeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x469412...519e13` | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3fed01...252146` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfd1c72...329545` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x23b216...9a81e7` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa053ca...e09a22` | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa589c8...b2bd8d` | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xefc098...bde662` | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x7a88c4...48d214` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3e182b...9eb689` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd68b9c...9636e1` | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x275e24...d82cb5` | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xabfc48...19709d` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe66aae...4a822e` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb3629c...b35de9` | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
