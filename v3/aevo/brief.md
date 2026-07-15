# Agentic Audit Brief: Aevo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 17 (7 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.1% over 90 days

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: unknown (Tier 0, 84.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 330 unique implementations (751 raw deployments)
- Coverage basis: 2/9 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,155,501.00
- On-chain TVL (included contracts): $48,794,084.84
- TVL by chain: Ethereum $39,003,115.77 | Arbitrum $9,657,032.31 | Optimism $133,936.76

## Project Description

This brief describes the observed EVM deployment and audit surface for Aevo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 5 unclassified, 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (5), core (3), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (2), ownable2step (2), accesscontrol (1), erc165 (1), erc20permit (1)
- Frameworks: solmate (4), openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AevoToken (`0xb528ed...13b997`, chain 1)
- L1SocketDepositHelper (`0x6ea58e...744e56`, chain 8453)
- Vault (`0x780962...3a28ef`, chain 10)
- Vault (`0x80d40e...4d137c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/9 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 321 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 9 of 330 unique; 321 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/154
- Verified + Unaudited implementations: 151
- Verified by bytecode match: 1
- Unverified implementations: 176
- Unique implementations: 330
- Raw deployments: 751
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $8,083.97
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $8,083.97 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ribbon | Tier 2 | 2 | 1.3% | 2024-01 |
| VAR | Tier 2 | 1 | 0.6% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AevoToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378654 | `0xb528ed...13b997` | ✅ Audited |
| L1SocketDepositHelper | periphery | project_anchor | own_supporting | 0 | base | unit-378661 | `0x6ea58e...744e56` | ✅ Audited |

### ⚠️ Verified + Unaudited (151)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RibbonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d11e0...efe64f`; ethereum `0x5f7160...9737d2`; ethereum `0x6123b0...21fa6b` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 40 deployments: optimism `0x2bbc2e...625626`; optimism `0x31a7ab...4ab9e4`; optimism `0x3ab7b9...7a4ec2`; optimism `0x3bb3b7...f35984`; optimism `0x44343a...241b02`; optimism `0x4436ba...576e72`; optimism `0x61ce66...65ff34`; optimism `0x88ce86...8a6965`; optimism `0x923960...3590b6`; optimism `0xad7bdd...2c1bae`; optimism `0xb15f96...bb83fc`; optimism `0xbb9cf2...8fbd8c`; optimism `0xcbecd6...19b608`; optimism `0xd7b091...1d20e8`; optimism `0xdd4c71...eab86d`; optimism `0xdef0bf...7aa98e`; optimism `0xe59678...edcec9`; optimism `0xe8fea3...3dfa99`; optimism `0xe9f2ed...9e0415`; base `0x5d6689...64e198`; base `0x6ee390...27fb48`; base `0xa8bd0e...779e8b`; arbitrum `0x082526...1acee9`; arbitrum `0x087607...4082c3`; arbitrum `0x11b3a7...8524a8`; arbitrum `0x3d20c6...60896f`; arbitrum `0x3faf49...69d990`; arbitrum `0x492baf...e9da07`; arbitrum `0x4ed9ed...743553`; arbitrum `0x5e027a...e32882`; arbitrum `0x8e9f58...dfc922`; arbitrum `0x9d3e02...b4df67`; arbitrum `0xa0e9b6...0fde77`; arbitrum `0xb2cb9a...1a60a6`; arbitrum `0xb37130...c68901`; arbitrum `0xd7bbe2...d13047`; arbitrum `0xd7e13d...76165d`; arbitrum `0xed9021...df7bc3`; arbitrum `0xf476d9...1a4b5a`; arbitrum `0xfb7b06...076e0b` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x257518...89644b`; ethereum `0x65a833...b13b2f` | ⚠️ Unaudited |
| RibbonThetaYearnVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcc3235...cc9624` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-378656 | `0x780962...3a28ef` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-378659 | `0x80d40e...4d137c` | ⚠️ Unaudited |
| AcrossImplL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ddf16...b41fc0` | ⚠️ Unaudited |
| AcrossImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0xa7f7e4...d7de47`; arbitrum `0x0c0858...0c5db6` | ⚠️ Unaudited |
| AddressAssemble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4513f5...cfc24c`; optimism `0xf5cada...19d5e8` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7a616b...28ecc1`; ethereum `0xbbb4a5...bb02d9`; ethereum `0xeace26...3b3d2e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c86c2...9e2b0c`; ethereum `0xa5b117...e1c23d` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e238a...4e6f5e`; ethereum `0x70924e...334f1e` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x389130...46ad81`; ethereum `0xffc3fa...735d1c` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x665f89...dfeec0`; ethereum `0xec4f5c...d8fa69` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a3567...9f6d3b`; ethereum `0x8ac509...8f72ad` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8f9c5d...3551cd`; ethereum `0xdf4061...a25261` | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x6a4715...94a8d0`; arbitrum `0xab2f8c...5770d3`; arbitrum `0xd9f45c...88a8e8`; arbitrum `0xdff78a...2a75f7`; arbitrum `0xf9a512...1400d5` | ⚠️ Unaudited |
| BlockHashChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x792b49...17e90d` | ⚠️ Unaudited |
| BugSubmission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5ee146...0a021f`; optimism `0x6c7a28...06d9ae` | ⚠️ Unaudited |
| CapacitorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x866829...8ee7d0`; arbitrum `0xbce4cd...67136a` | ⚠️ Unaudited |
| CaptureTheFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x49c79e...38fa82`; optimism `0xc87dbb...e06e39` | ⚠️ Unaudited |
| CelerImplL1L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x0c0858...0c5db6`; optimism `0x11695f...40a2d8`; optimism `0xb584d4...204599`; optimism `0xb8c328...efd76d`; arbitrum `0x0aa26a...b32fb9`; arbitrum `0x3f367b...15531a` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x5df06c...426fb4`; optimism `0xf5b588...6ea2fd`; arbitrum `0xcea535...fed1aa` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x6a8be0...bc1e46`; optimism `0x9d245f...9545d0` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4611a4...21919c`; arbitrum `0x765cfb...9690fb` | ⚠️ Unaudited |
| ConnectIt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18358f...0b3a5f` | ⚠️ Unaudited |
| ConnectorPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 45 deployments: optimism `0x082526...1acee9`; optimism `0x0fd785...f1d970`; optimism `0x1812ff...9b16a8`; optimism `0x242b28...064aa5`; optimism `0x27f4b2...658f64`; optimism `0x32bf26...88174c`; optimism `0x499239...b75833`; optimism `0x4bd04a...9e24c7`; optimism `0x52ee36...45e493`; optimism `0x55fa08...5d7671`; optimism `0x5b64ce...7aeb6f`; optimism `0x619085...083736`; optimism `0x716206...c210d4`; optimism `0x906a44...1109b4`; optimism `0xbc31ec...153a25`; optimism `0xc0acbb...91546c`; optimism `0xeab499...602572`; optimism `0xecaa24...9700c0`; optimism `0xf0a0b2...139793`; optimism `0xfd76d8...096c13`; base `0x1d56e8...74aafe`; base `0x20bdd8...626624`; base `0xbaf4a2...5cb08c`; arbitrum `0x070fea...8bce43`; arbitrum `0x0a2064...c93b12`; arbitrum `0x17fc4c...6f8b21`; arbitrum `0x2e63d6...cf4571`; arbitrum `0x31dbda...583c86`; arbitrum `0x380915...7c3c67`; arbitrum `0x42c846...234afc`; arbitrum `0x5ea117...e1ff41`; arbitrum `0x6284b3...034516`; arbitrum `0x63d893...577c0f`; arbitrum `0x69adf4...f944d3`; arbitrum `0x7deb24...a672ca`; arbitrum `0x8752c7...f0a5f7`; arbitrum `0xa451cc...bc4ad9`; arbitrum `0xa8eaae...72151d`; arbitrum `0xadec92...8702eb`; arbitrum `0xb0d573...e9be83`; arbitrum `0xdc5650...763288`; arbitrum `0xe02c75...90047e`; arbitrum `0xe0a298...c0b55c`; arbitrum `0xf9715b...10d9b2`; arbitrum `0xff17d3...d7ff54` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x5e648e...55a6aa`; optimism `0x6dc5f8...6b470c`; arbitrum `0x9cf6f3...a1bc56` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x1c2ec0...0bd6b7`; optimism `0x29829a...dd6033`; optimism `0x2f6b39...11538e`; optimism `0x36c4b7...0a8bb7`; optimism `0x7e54f4...c32622`; arbitrum `0x25ffcb...3e7e59`; arbitrum `0x360363...33eb55`; arbitrum `0x44513d...a257e3`; arbitrum `0x4fb274...c7260b`; arbitrum `0xd0bb14...1af15c` | ⚠️ Unaudited |
| Easter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92c7a5...c2bb4d` | ⚠️ Unaudited |
| ExecutionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: optimism `0x16c2d3...2e88df`; optimism `0x4229dd...67e528`; optimism `0x66e75b...a22cb2`; optimism `0x6867ff...af3c2f`; optimism `0x922bf6...9f7d24`; optimism `0xbaec9e...3468be`; optimism `0xf18726...15f56f`; arbitrum `0x063ce1...c380b6`; arbitrum `0x246860...564fed`; arbitrum `0x34f869...743109`; arbitrum `0x811f69...5886f9`; arbitrum `0xa9d0c0...7025e8`; arbitrum `0xbca7e7...77b315`; arbitrum `0xc8b6d7...5c4706`; arbitrum `0xdaadd2...bda2c8` | ⚠️ Unaudited |
| ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x052b82...bb98ef`; optimism `0x105677...03bfec`; optimism `0x1b74ac...6ff35e`; optimism `0xf50ed3...2a4f6c`; optimism `0xfd1256...c7e47f`; arbitrum `0x0a1040...c2d381`; arbitrum `0x7a6edd...bd426d`; arbitrum `0xfb9329...163d57` | ⚠️ Unaudited |
| ExecutionManagerDF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31b111...83273c`; base `0xbf2492...12cd2f` | ⚠️ Unaudited |
| FastSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x09a6e7...2a8b97`; optimism `0x1cab02...67cc26`; optimism `0x60f0cc...4739d1`; optimism `0x835531...a981b3`; optimism `0xa989d2...9a7220`; optimism `0xccd5a9...316c6e`; arbitrum `0x1d3695...5eaa49`; arbitrum `0x2d7660...71c2d4`; arbitrum `0x388b07...7ff45e`; arbitrum `0x6216c9...b984dd`; arbitrum `0xd5e829...b42f2f`; arbitrum `0xfff4a3...e80584` | ⚠️ Unaudited |
| FindTheSign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x767ce2...b26041` | ⚠️ Unaudited |
| GasMovr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x580024...f814d8`; arbitrum `0xbdf50e...432410`; arbitrum `0xc0e02a...681a00` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x09b471...526b65`; optimism `0xd9a317...aeedf3`; optimism `0xf84890...3632af`; arbitrum `0xcff802...b9f568`; arbitrum `0xd5a83a...45f5cd` | ⚠️ Unaudited |
| GatedCount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf873a0...032775` | ⚠️ Unaudited |
| GimmeMonies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f4ee8...ae4322` | ⚠️ Unaudited |
| Hasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: optimism `0x3e89c0...580dc5`; optimism `0x4f04f8...220d00`; optimism `0x64b314...50d957`; optimism `0x80b516...c729f8`; optimism `0x8ac0a7...b6724b`; optimism `0xae7ab9...0ee139`; optimism `0xb11c04...e0c8af`; optimism `0xdd975f...4ae3c4`; optimism `0xdf4ff0...55bab5`; arbitrum `0x0266a4...9929bc`; arbitrum `0x5af497...b3e325`; arbitrum `0xac4019...c97808`; arbitrum `0xcda819...004b4e`; arbitrum `0xe59562...3a9a5e`; arbitrum `0xebc6fc...782781` | ⚠️ Unaudited |
| HopImplL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x0fd9f1...3c2204`; optimism `0x853730...efff41`; optimism `0xaa3d9f...4d750e`; arbitrum `0x040993...6d56bb`; arbitrum `0x2b42af...72ccd3`; arbitrum `0xa358d6...572f3d` | ⚠️ Unaudited |
| HyphenImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xeb0344...f59f86`; arbitrum `0xf45ec1...c25c81` | ⚠️ Unaudited |
| Imbalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2eb0e1...3564c9` | ⚠️ Unaudited |
| King | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5eb0f5...58c5d3` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x71ac62...a879ed`; ethereum `0x9fa287...1c88a7` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11dd2d...4e12b0` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xc6fd4e...2e0565`; ethereum `0xeddff4...9c68d5`; ethereum `0xfa6acd...6d526c` | ⚠️ Unaudited |
| L1DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09f62d...0a8e60`; ethereum `0x2c6dc1...5eda05`; ethereum `0xc3bb52...7c4c7f`; ethereum `0xd037a2...b5e4f4` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e7d7b...d676f0` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66cee1...30a748`; ethereum `0x93314c...d66630` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x69ce76...155821`; ethereum `0xe7935c...30c639` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fc17...62381d` | ⚠️ Unaudited |
| L1SocketDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x51e29a...9f472d`; base `0x711c65...03b0c2`; base `0x73659f...8e6b73`; base `0xc54520...1af6d9`; base `0xf6d1c9...4d6fa8`; base `0xfcce85...8491b8` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x066771...04a8a0`; ethereum `0x3e647d...62f4cb`; ethereum `0xedc4fb...553a9a` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378662 | `0x4082c9...59c574` | ⚠️ Unaudited |
| L1SwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x426d1f...aecbe6`; ethereum `0x60453f...74aefc` | ⚠️ Unaudited |
| L1SwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728113...b92a3a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efa0d...83a722` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e5209...2f5b14`; ethereum `0x9f82b5...2eb376` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x909e51...ae3770` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x94c0d6...08e4f1`; ethereum `0xf482aa...fba567` | ⚠️ Unaudited |
| LimitExecutionHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 16 deployments: optimism `0x063ce1...c380b6`; optimism `0x26fde5...4c9a5f`; optimism `0x40a1b2...abc1a3`; optimism `0x5f6f4b...2caed4`; optimism `0x765222...3fbb80`; optimism `0xaf2036...ea2509`; optimism `0xe19dd1...53d600`; optimism `0xf4eea9...8cd014`; arbitrum `0x3e3e6f...13f807`; arbitrum `0x65f258...9b8132`; arbitrum `0x716206...c210d4`; arbitrum `0x854281...8d3d2a`; arbitrum `0xb39f91...468c98`; arbitrum `0xd34308...fb9d3f`; arbitrum `0xed24b1...407e66`; arbitrum `0xf570f6...84cdd8` | ⚠️ Unaudited |
| LimitHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x6f9234...4cf8f7`; base `0x1a0dfd...9e8c25`; arbitrum `0xe4593e...6fa37a` | ⚠️ Unaudited |
| Loot3D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x08cea8...08121c`; optimism `0x1bea4f...313740`; optimism `0x259dda...ddfefd`; optimism `0x341903...863459`; arbitrum `0x45e877...da33f4`; arbitrum `0x8091cb...24731b`; arbitrum `0x8df624...b29b86`; arbitrum `0xdf5b1d...334b07` | ⚠️ Unaudited |
| LootDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x053178...60c76d`; optimism `0x8f5e37...7159d1`; optimism `0xadf215...d5282a`; optimism `0xc6962f...c176a4`; optimism `0xc893bd...5cec55`; arbitrum `0x488b62...d80093`; arbitrum `0x4a77fb...0bc5d4`; arbitrum `0x9b9875...bce6a8`; arbitrum `0xce7c4d...fda626`; arbitrum `0xfaee8c...253ecf` | ⚠️ Unaudited |
| LootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x85e9f9...bb9363`; optimism `0x87afc9...9a63a7`; optimism `0x97c783...a12765`; optimism `0x97fad2...5139a4`; optimism `0x9b76a2...5b6fcd`; arbitrum `0x1f7e83...af2a7c`; arbitrum `0x6426ca...5ae16f`; arbitrum `0x93783b...305e3b`; arbitrum `0x97c31d...cd8d62`; arbitrum `0xacd33c...a1ec8a` | ⚠️ Unaudited |
| MakeItRain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60e04b...b5f8fb` | ⚠️ Unaudited |
| ManualStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3c8114...d7036c`; ethereum `0x8a0967...c26fe3`; ethereum `0x9246cb...be8b8e`; ethereum `0xab4051...be1573`; ethereum `0xfd48f3...51b451` | ⚠️ Unaudited |
| ManualVolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x14416c...03b709`; ethereum `0x7c0bfa...116399`; ethereum `0xe24854...81ecc4` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ea2f2...07cf90`; ethereum `0x7902e4...8cc1bf` | ⚠️ Unaudited |
| MerkleDistributorAdjustable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04b47c...9ceeed`; ethereum `0x5c648b...184d76`; ethereum `0x778046...f21591`; ethereum `0x80c86b...5de404`; ethereum `0x9946a1...b76769` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f197c...7d9381`; ethereum `0xd4b812...2a2483` | ⚠️ Unaudited |
| MerkleDistributorWithStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce90d5...3223e6` | ⚠️ Unaudited |
| MessageSearch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x10bcd3...5755de`; optimism `0x28ac26...364fd9` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcebb7...e6ac6c` | ⚠️ Unaudited |
| Miner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6ec499...6d343c`; optimism `0x956693...f51180` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb4b08...21d1c8` | ⚠️ Unaudited |
| OneInchRefuelSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x1d4307...38fc76`; arbitrum `0xdcabb6...f2a44b` | ⚠️ Unaudited |
| OneInchSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x565810...686339`; optimism `0xbdf50e...432410`; arbitrum `0x565810...686339`; arbitrum `0xaa3d9f...4d750e` | ⚠️ Unaudited |
| OpenExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x4aa89e...d297db`; optimism `0xb44258...34a57c`; arbitrum `0xb864fb...10db22`; arbitrum `0xca1618...45c31e` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3d46c8...a8e246`; ethereum `0xbfec86...dd5af4` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e549c...9ce51c`; ethereum `0x4e80ed...dfe02d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ff07...76cef9` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dbba1...81cc6a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x787a0a...01e320` | ⚠️ Unaudited |
| OptimismSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x717fac...bc2199`; optimism `0x7e6da8...3bfe4d`; optimism `0x9cf744...aa716c`; optimism `0xadbc2c...9dd66a`; optimism `0xb6c103...fcf8c2` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x665288...9288a7`; optimism `0x929625...823d90`; optimism `0x9ba3ff...c7d922`; optimism `0xb113d7...f1e3f4`; optimism `0xcb473d...335ccf`; arbitrum `0x1812ff...9b16a8`; arbitrum `0x213be4...8d1413`; arbitrum `0x450d35...7ae36c`; arbitrum `0x626674...1af17c`; arbitrum `0xfe5de8...a6346d` | ⚠️ Unaudited |
| OptionsPremiumPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0a1b63...0975db`; ethereum `0x7c2441...af67a8`; ethereum `0xcf38c1...194e8c`; ethereum `0xd8bb66...65dacc`; ethereum `0xec58c1...525cbc` | ⚠️ Unaudited |
| OrderCheck2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb7287...af50a2` | ⚠️ Unaudited |
| PacketSearch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x300e53...331ae1`; optimism `0x73f4c9...e0f5a5`; optimism `0xdcef08...5b2cc9` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6221b5...b29eac` | ⚠️ Unaudited |
| PlayTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x657a9b...3702bc`; optimism `0x72c948...f88dfe` | ⚠️ Unaudited |
| PoisonPill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x992e0b...c40424` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x393f4c...963b59`; ethereum `0x3e801f...c33f20`; ethereum `0x78a4ca...a56a2d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x032b35...f843ca`; ethereum `0x72cc6e...ac3ab4` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ace6b...f41011` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2dd0b6...be58c6` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37ca01...d0c1c5`; ethereum `0x6bba90...3ce841` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x399bd2...be8bb3`; ethereum `0x8daaf9...b3bcc9` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x495d44...f0500f`; ethereum `0xc7b404...543a3e` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9a89fe...551735`; ethereum `0x9e0b8c...315553` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x27ff92...7c5019`; ethereum `0x9bd8c9...890f09`; ethereum `0xb145c0...dd0f39` | ⚠️ Unaudited |
| RefuelBridgeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x47e136...1be60e`; arbitrum `0x734079...344f5c` | ⚠️ Unaudited |
| RefuelImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x0f933f...dc1b51`; arbitrum `0x23ddd3...598b89` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e6f3f...c281f7`; ethereum `0x63cb35...15b3a9` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fb118...ba0850`; ethereum `0xf10348...fe6f8b` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1c2ee9...6352c2`; ethereum `0xa1457f...b7486f`; ethereum `0xeef3d6...be196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e8026...928a9a`; ethereum `0x8e28f2...c08d6a` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01f1d8...9365e7`; ethereum `0x1bc5ee...1dcffa`; ethereum `0x21438c...af6c72`; ethereum `0x51a5a8...041f8b`; ethereum `0x5d4c0a...ea1b51`; ethereum `0x8a0eff...c36ca5`; ethereum `0xbcf89a...8147ad`; ethereum `0xeb74e0...37c733`; ethereum `0xef3c69...ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20abe9...cfabcc`; ethereum `0xc5f2cf...a55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x24ab80...7e24c6`; ethereum `0x8756ea...05f1f7`; ethereum `0xfc0d9e...016502` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53773e...b78e8c` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x09bd08...efb030`; ethereum `0x0ff7c2...141a5a`; ethereum `0x1939f8...a08682`; ethereum `0x23b42c...f1ff87`; ethereum `0x2a0b88...e8b5b5`; ethereum `0x34107a...2eb167`; ethereum `0x43cfea...ccd423`; ethereum `0x65112b...227ae0`; ethereum `0x94c842...98431a`; ethereum `0xae517e...78c7f0`; ethereum `0xbeba74...49e4ad`; ethereum `0xd3fe14...68592a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ebea9...1a89c0`; ethereum `0xa0db6c...52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ea9e7...eb80df`; ethereum `0x6779da...0f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6ec571...8031f8`; ethereum `0x9d1d31...d5014a`; ethereum `0xcfcf97...1fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0a54c...278eb0`; ethereum `0xc4d100...f027c5` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x247a93...0e0690`; ethereum `0xe63151...abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3fb82f...0f1f44`; ethereum `0x6fc853...453a8e`; ethereum `0x74e524...fbd421` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2077...7d95f4` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04e8a...89cdc3` | ⚠️ Unaudited |
| SigMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x03709c...ababe8`; optimism `0xb02113...95aeb7` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 17 deployments: optimism `0x80e513...86ca5c`; optimism `0x8b57c3...43ff00`; optimism `0x976973...486fa7`; optimism `0xaa2f2b...450f35`; optimism `0xb56843...00c12b`; optimism `0xbb1f20...5a3925`; optimism `0xc94bf9...1e5d15`; optimism `0xde007c...76757f`; optimism `0xf096fd...d219f0`; arbitrum `0x053407...5e62cd`; arbitrum `0x2b59d4...f5079a`; arbitrum `0x378a89...854b29`; arbitrum `0x4d6b52...eab169`; arbitrum `0x9879a2...aa74b8`; arbitrum `0xe63347...956d4c`; arbitrum `0xe88f6b...a19537`; arbitrum `0xeaa15f...e83790` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb84...6e6094` | ⚠️ Unaudited |
| SimilarDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e304e...6eb0de` | ⚠️ Unaudited |
| SimulatorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba9c93...da4f97` | ⚠️ Unaudited |
| Socket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x1eb392...2d8166`; optimism `0x234462...3ad4b6`; optimism `0x301bd2...a1c0a4`; optimism `0x91ce46...2428f7`; optimism `0xd10cb2...6bf573`; arbitrum `0x16e4a6...0a4ee8`; arbitrum `0x37cc67...55f6ba`; arbitrum `0x9e3e47...13a9d1`; arbitrum `0xbc080a...8306a7`; arbitrum `0xfb6daf...634066` | ⚠️ Unaudited |
| SocketBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: optimism `0x208cb8...c54408`; optimism `0x2b351e...86fb7b`; optimism `0x2c76df...920b7e`; optimism `0x321767...707b59`; optimism `0x5afa7d...5d2d9b`; optimism `0xffb098...0c8fce`; arbitrum `0x107e18...d468a8`; arbitrum `0x1808ca...c0113b`; arbitrum `0x2ea720...1f4b8e`; arbitrum `0x96fef4...ae3b0b`; arbitrum `0xd7b2e3...0255f7`; arbitrum `0xfbb3a5...7a8bd7` | ⚠️ Unaudited |
| STETHDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f36c...9f5411` | ⚠️ Unaudited |
| StrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x001d77...1d0db1`; ethereum `0x05dc96...94c4cf`; ethereum `0x2d8c02...24ef1c`; ethereum `0x39d379...475000`; ethereum `0x4e2d42...c0498d`; ethereum `0x5e68b6...7fc641`; ethereum `0x896e4d...6482fa`; ethereum `0x9371f3...4513a5`; ethereum `0xc2b10e...753563`; ethereum `0xf6e785...105911` | ⚠️ Unaudited |
| SurgePass | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35479b...75f937` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37e33...b44b08` | ⚠️ Unaudited |
| SwitchBeyond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x52a71b...c72daf`; optimism `0x91e4c4...75c76b`; optimism `0xd075c9...8172dd` | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd69f4...b86056` | ⚠️ Unaudited |
| SyncPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0x74af6d...7081df`; arbitrum `0x50d1f0...803319` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf761cc...0cd9ca` | ⚠️ Unaudited |
| ThreeMessageCounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a369b...d821bc` | ⚠️ Unaudited |
| TransmitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x0a523d...ae6163`; optimism `0x48261a...b752c1`; optimism `0x6fedde...68dce5`; optimism `0x7398da...cb1470`; optimism `0xd3f391...66fa3e`; arbitrum `0x43a9b2...9755ca`; arbitrum `0x63c10c...2a0416`; arbitrum `0x6fc8d9...f8b4b6`; arbitrum `0xbf0572...cbb5d4`; arbitrum `0xd648a4...0d7f2e` | ⚠️ Unaudited |
| Traveller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xb81de2...849000`; optimism `0xd6ff17...ed7b22` | ⚠️ Unaudited |
| TwoMessageCounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafbe4b...4eccf2` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378655 | `0x5c7dd6...10ae7e` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378657 | `0xfff4a3...e80584` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378658 | `0x7711c9...3e9ddb` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378660 | `0x90bfb3...30e161` | ⚠️ Unaudited |
| VaultLifecycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x14cc2c...865511`; ethereum `0x1c3774...bd41f8`; ethereum `0x25af99...f67b40`; ethereum `0x35a3e0...69ecc0`; ethereum `0x4994c9...7d10ee`; ethereum `0x58228f...056d82`; ethereum `0x5ee5db...5caa53`; ethereum `0x93c48f...f1f522`; ethereum `0x9c24f8...cb9ccf`; ethereum `0xb917ee...07dde3`; ethereum `0xc1e51b...8181df`; ethereum `0xda6387...6be115`; ethereum `0xe248f6...57d6c7`; ethereum `0xe64524...994f36` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21f0ff...4bd6b0`; ethereum `0x2c5dd8...089bf1`; ethereum `0x5cbb58...18f3db`; ethereum `0x84ff09...c08928`; ethereum `0x92c47e...f42836`; ethereum `0xb48c17...ad38ee`; ethereum `0xcf7dd5...8c8932` | ⚠️ Unaudited |
| VaultLifecycleTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d00f...90afe2` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x63b971...83357f`; ethereum `0xc06944...169377`; ethereum `0xc7654f...9a5e5e` | ⚠️ Unaudited |
| Window | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6f0df1...d119a1` | ⚠️ Unaudited |
| ZeroXRefuelImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x029057...9d88d0` | ⚠️ Unaudited |
| ZeroXSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d7f2b...9071fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiSigWrapper | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x0c98cb...3b6540`; base `0x1fc216...b40633`; base `0x2db2d1...c15522`; base `0x4bd265...046306`; base `0x65df4c...a623b5`; base `0x6ec8cc...db5827`; base `0x7f3163...40f8eb`; base `0xa3a855...fd0a6b`; base `0xb6f2ac...70c37d`; base `0xc3213d...66b1ec`; base `0xc47d1c...2ee3fe` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (176)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d79f7...c81889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336045...537fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a287...1b1844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552ffb...436394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fccb...af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea8fa...2f034d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb22a...7b4a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f729...13b0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d727...40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9305e...9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb7f3...44d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8c31...ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2203...990503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd602e0...8f5397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a528...181563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08d6a...6d19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d30e...af7f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf513bd...0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04196c...83c2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x045c90...71450f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x064509...37efa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a1040...c2d381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a3451...e58f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ccfb6...8979b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d50d4...96ace1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18b237...a72a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18e365...764ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dd545...ef12bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20ebdc...d32540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23d5c2...4386cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25aaef...c76262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29fd3a...bae6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2dff1c...b1f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x326bbb...15b77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x331d17...dbf46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3379f1...507a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37cc67...55f6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c7516...7f69d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x404e93...adf43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x450aa5...c01ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4793c3...3076b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48b4f0...9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49fd46...c8dc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b4d63...e418ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bf6e4...848375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c0623...e1f746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fe1ad...d42abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5035d9...7032d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x533398...0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a21d4...0893f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c1ea2...b4c44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dfdff...92ca1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66a127...fb3107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66ad32...97ce18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6712ce...904498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x749f09...a98e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ab75a...1f4d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b2f65...d11161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86a0a4...06ce6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x880997...894106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x898aef...78d7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e9e34...64fe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90b4d9...81e8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91f48c...88a4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9879a2...aa74b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a9567...b45115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e51cd...259a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3f9a7...a31f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad8cde...7fc81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2dc05...cc364d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb48b74...b6787f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5c4e1...3a7b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb61701...2ad38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb7a6db...f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbce4cd...67136a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd57fa...8c88dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbec174...0e05cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf47f1...38c8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc457f7...f56747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc972ab...9d5256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcda819...004b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd23678...2a05c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd40213...09d024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd5087c...228df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd550ce...d8f77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd648a4...0d7f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7bbe2...d13047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde2994...f3cd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfd12c...194cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8bfe5...a6c70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8da13...9375a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xece91f...f9150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf004c4...99eabd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf19516...b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf68eaa...f8570b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb0eab...34781c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffcbd4...23b4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10c700...091221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11bf39...692cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x188b69...061f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1de492...cf1135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3304c4...8aa9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38d1ff...f83ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43f3dd...68d063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2bab...1bda26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dc25d...947ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52b143...f182ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57ca48...01262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a0e01...d4483c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ab138...db9421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x687c51...8ec5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eae8a...eb7de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8c0d22...719286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ce48d...03ec82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x965749...996bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0be70...af6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab46c3...3ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ec11...fb2bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc56972...7040a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7f534...b30da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6a81...e64d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd134ea...81e840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2663f...220c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe5909...816908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01de29...49a0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11a418...151fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b74ac...6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ae629...1bdb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b3a8a...1e0497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31a7ab...4ab9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f8f21...c3a26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49eddb...9416f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bd2a4...5c0594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cae61...b00753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f04f8...220d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530654...d10366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fc8a6...9b70ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63ef7d...89574b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66dfb9...67599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69ea64...2c42c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fedde...68dce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703f88...c3a039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x717fac...bc2199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x732f7d...186afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x762d5f...8820d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7de493...2d7c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81b955...92c2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x858f61...146251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x921625...d1ff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b5885...73a76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ba3ff...c7d922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaaeb4b...e08c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad0fa5...7d23b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb49dde...9f8e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbec622...ba6489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc40a22...6d72f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccd5a9...316c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd10cb2...6bf573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4fd62...d0fb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd95c52...5cf5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde007c...76757f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdee306...e552ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf5f7d...319cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe00321...8861cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe11bcf...8d7ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed037a...730341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed4f75...884c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf454ad...aaa9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf84890...3632af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc63fa...7a5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcebb7...e6ac6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffc2d8...28d147` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ribbon-report.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [VAR-Ribbon230918.pdf](https://github.com/aevoxyz/audit/blob/main/VAR-Ribbon230918.pdf) | Ribbon | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon.pdf) | Ribbon | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_230604.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_230604.pdf) | Ribbon | Audit | 2023-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [VAR_Ribbon_240116_aevo_governance_2-V1.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_240116_aevo_governance_2-V1.pdf) | Ribbon | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1895] Ribbon-report.pdf — matched: Extracted contract names from findings context; no explicit scope section found. Audit date from report cover page.
- [1896] VAR-AEVO230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All contracts in src/ are in scope. Audit date from cover page: October 18, 2023.
- [1897] VAR_Ribbon.pdf — matched: Extracted contract names from scope section and vulnerability file references. Audit date from cover page.
- [1898] VAR_Ribbon_OTC.pdf — no match: Scope section explicitly lists 5 files: OTCWrapper.sol, MarginRequirements.sol, SupportsNonCompliantERC20.sol, AddressBook.sol, Controller.sol. Audit date is March 27, 2023 from cover page.
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line.
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: The audit report explicitly states the target is 'RVOL' smart contract, and findings reference specific contracts/libraries: Math, OptionsPremiumPricer, VolOracle, DSMath. The audit date is clearly stated as July 4, 2021 on the cover page and in the report details.
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contract names extracted from findings targets and mentions.
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract, Swap.sol, is in scope. The report mentions Ribbon Finance and Theta Vault but they are not audited contracts.
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [1905] Quantstamp Theta Vault.pdf — no match: No reason recorded
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is inferred from the cover page 'July 2021'.
- [1907] RibbonThetaYearn-18june.pdf — no match: Scope explicitly states 2 contracts: RibbonThetaVaultYearn (with parts of GammaAdapter) and YearnPricer. GammaAdapter is included as part of the review. Date is June 2021, interpreted as end of month.
- [14929] VAR-Ribbon230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All .sol files in src/ are in scope. Contracts explicitly mentioned in findings are included.
- [14930] VAR_Ribbon.pdf — matched: Extracted contract names from scope description and vulnerability file paths. Audit date from cover page.
- [14931] VAR_Ribbon_230604.pdf — matched: No reason recorded
- [14932] VAR_Ribbon_240116_aevo_governance_2-V1.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ribbon-report.pdf | Exchange | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Instruments | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Accounts | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | WithdrawProxy | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ribbon-report.pdf | Executor | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Orders | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Options | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Signing | unmatched — not counted | — | mentioned in findings context | no |
| VAR-AEVO230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-AEVO230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing mapping expiryPrice. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_OTC.pdf | OTCWrapper | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | MarginRequirements | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | AddressBook | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target of finding PVE-001: Incorrect Calculation in Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract that calls Math library | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target of finding PVE-002: Improved Corner Case Handling in getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target of finding PVE-003: Inconsistency Between Document and Implementation | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Listed as target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | — | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xfff4a3...e80584` — deployed 2023-08-18 17:10:13+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x7711c9...3e9ddb` — deployed 2023-12-18 16:29:35+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x5c7dd6...10ae7e` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x90bfb3...30e161` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x780962...3a28ef` — deployed 2023-12-18 16:25:11+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x80d40e...4d137c` — deployed 2023-08-18 17:10:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | unmatched — not counted | — | mentioned in line-by-line review (3.39-3.67) | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | unmatched — not counted | — | listed in scope | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | mentioned as part of RibbonThetaVaultYearn review | no |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | listed in scope | no |
| VAR-Ribbon230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-Ribbon230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing expiryPrice mapping. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e...744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | AevoToken | own contract | AevoToken (selected) `0xb528ed...13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | Migrator | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoStaking | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoToken | own contract | AevoToken (selected) `0xb528ed...13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x780962...3a28ef` | Vault | core_logic | $6,840.88 | Verified native implementation with $6,840.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x80d40e...4d137c` | Vault | core_logic | $1,243.09 | Verified native implementation with $1,243.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4082c9...59c574` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5c7dd6...10ae7e` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfff4a3...e80584` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7711c9...3e9ddb` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x90bfb3...30e161` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 151 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 174 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 105 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=7

Zero-match audit list:

- [1898] VAR_Ribbon_OTC.pdf
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [1905] Quantstamp Theta Vault.pdf
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [1907] RibbonThetaYearn-18june.pdf

Fork inheritance lineage and inherited audits are included when available.
