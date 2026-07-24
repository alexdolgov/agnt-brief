# Agentic Audit Brief: USDD

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 4 audit(s)
- Eligible audit results: 6 (4 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: USDD (`usdd`)
- Website: [https://usdd.io/](https://usdd.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 192 unique implementations (192 raw deployments)
- Coverage basis: 9/21 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,296,039,914.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for USDD. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across bsc, ethereum. Structural roles: 19 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (19), supporting (2)
- Contract kinds: contract (21)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 39 contracts are derived from known codebases. 37 contracts have no detected origin.

### Forked Contracts

**DssProxyActions** (`0x777684f6425d095e9166f5f694f50e48a16bcb25`, chain 56)
Origin: kyberswap (`0x4bcad4...725ab0`)
Containment: 84.1% - 37 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- usddJoin_join(address,address,uint256)

Removals (removed from original):
- daiJoin_join(address,address,uint256)
- lockETHViaCdp(address,address,uint256)
- makeGemBag(address)
- openAndImportFromManager(address,address,uint256,bytes32)
- openLockETHAndGiveToProxy(address,address,address,bytes32,address)
- openLockGNTAndDraw(address,address,address,address,bytes32,uint256,uint256)
- shiftManager(address,address,uint256,uint256)

**Vat** (`0xff77f6209239deb2c076179499f2346b0032097f`, chain 1)
Origin: 3f-mutual (`0x35d1b3...a0492b`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3dba111255d3888c723242320595588754cf493e`, chain 1)
- UnnamedContract (`0x4f8e5de400de08b164e7421b3ee387f461becd1a`, chain 1)
- UnnamedContract (`0x8be6b814beb37e8028258777af0ec6648a2a908e`, chain 1)
- UnnamedContract (`0x9681604090395e835ff54187f638ded8dc983cbf`, chain 1)
- UnnamedContract (`0x983dfef6d71862d809e239845da5a959492f63b8`, chain 1)
- UnnamedContract (`0xa9f0cd86e0a011d41693d1a748a8127877c8b054`, chain 1)
- UnnamedContract (`0xb5b08e58e804e5937f56b1e633cf85abbd269127`, chain 1)
- UnnamedContract (`0xb80751ef88d07fa33ee4fc0c6f8b4b6c6c31e708`, chain 1)
- UnnamedContract (`0xca277750ecd2b0707a7ccef2a78ec2f33b5fc7f7`, chain 1)
- UnnamedContract (`0xdb218163fe160fedf0c702c37124e8c194e99329`, chain 1)
- UnnamedContract (`0xf085edd75c1ab4fda0c3bd49b264a4a113d06f3b`, chain 1)
- UnnamedContract (`0xf60cf7d4330f115f9e51ff0d56d23f95f0f10aee`, chain 1)
- UnnamedContract (`0xfb38af74eae1e315a45af5ae11a44ccd1da12bcb`, chain 1)
- UnnamedContract (`0x3f8656be9ef11192fb9ce270446976806fa121c5`, chain 56)
- UnnamedContract (`0x939d3fb56cd12d68caa1125cc57a8d2391f7ee29`, chain 56)
- UnnamedContract (`0xc1779812be28cd205e45098e079620a830b5ffce`, chain 56)
- UnnamedContract (`0xe229fda620b8a9b98ef184830ee3063f0f86b790`, chain 56)
- UnnamedContract (`0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6`, chain 56)
- AuthGemJoin5 (`0x9a7e1b324060db7342aea08c0dc56f55ced6f519`, chain 1)
- AuthGemJoin7 (`0x217e42ceb2eae9ecb788fdf0e31c806c531760a3`, chain 1)
- Dog (`0x6badab4336b17e8d0839fd0c046e21b41196280b`, chain 56)
- DSPause (`0xc081f712e217672374a9c3db708c6f6c183c172e`, chain 56)
- DSPauseProxy (`0xdd5f51dc0d31823db86df41d46d037bc94c732dc`, chain 56)
- DssCdpManager (`0xa4109496a660ebc8d74de991ac3b04c136c9ba09`, chain 56)
- End (`0x3366948fccf56152ad95d914072a80006b21f6f2`, chain 56)
- ESM (`0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55`, chain 1)
- Flapper (`0x0b4adb8d896520eb3fd4789b73463614dcf71b03`, chain 1)
- Flopper (`0xd6bd489dedf05dbccb680304b3af2df73d1d7de0`, chain 56)
- GovActionsProxy (`0x2662e860ea672e4d31df3438114c48511229e60f`, chain 56)
- Jug (`0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b`, chain 56)
- ProxyRegistry (`0x0144fcce201dc3957fcf75269c10c21cca41ba73`, chain 56)
- Spotter (`0x8c4c758152da3e04b95b5eaca75585d79013c6b0`, chain 1)
- Usdd (`0x45e51bc23d592eb2dba86da3985299f7895d66ba`, chain 56)
- UsddJoin (`0x6b00039d76795fd59baf17e0c9c6d87011e7edac`, chain 56)
- UsddPsm (`0x12d0351f68035a41d13fc8324562e2d51b7a3b93`, chain 1)
- UsddPsm7 (`0xce355440c00014a229bbec030a2b8f8eb45a2897`, chain 1)
- Vow (`0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/21 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 153 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 39 of 192 unique; 153 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/73
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 119
- Unique implementations: 192
- Raw deployments: 192
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 33.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 7 | 9.6% | 2025-10 |
| REP | Tier 2 | 4 | 5.5% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthGemJoin5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260095 | `0x9a7e1b324060db7342aea08c0dc56f55ced6f519` | ✅ Audited |
| AuthGemJoin7 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260088 | `0x217e42ceb2eae9ecb788fdf0e31c806c531760a3` | ✅ Audited |
| DSPause | unknown | project_anchor | own_supporting | 0 | bsc | unit-260119 | `0xc081f712e217672374a9c3db708c6f6c183c172e` | ✅ Audited |
| DSPauseProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-260122 | `0xdd5f51dc0d31823db86df41d46d037bc94c732dc` | ✅ Audited |
| DssCdpManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-260118 | `0xa4109496a660ebc8d74de991ac3b04c136c9ba09` | ✅ Audited |
| DssProxyActions | unknown | project_anchor | own_supporting | 0 | bsc | unit-260116 | `0x777684f6425d095e9166f5f694f50e48a16bcb25` | ✅ Audited |
| UsddPsm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260087 | `0x12d0351f68035a41d13fc8324562e2d51b7a3b93` | ✅ Audited |
| UsddPsm7 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260100 | `0xce355440c00014a229bbec030a2b8f8eb45a2897` | ✅ Audited |
| Vat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260106 | `0xff77f6209239deb2c076179499f2346b0032097f` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthGemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062a738465f30ebe6dd06cfad3256ba783edf000` | ⚠️ Unaudited |
| CalcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f8fe56fee5950698a888fe9b754e970b45445d` | ⚠️ Unaudited |
| ChainLog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2007a37dc25c58ae373de3b0d9e9ae231a2f17bd` | ⚠️ Unaudited |
| ClipFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48aba8ff7cba6f0140a259e405be1b0d643824c0` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74a12a0e8b1127f75372880b7c0aeb5fe045ac6f` | ⚠️ Unaudited |
| Dog | unknown | project_anchor | own_supporting | 0 | bsc | unit-260115 | `0x6badab4336b17e8d0839fd0c046e21b41196280b` | ⚠️ Unaudited |
| DogFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b03e0889522752f5cde1dc195c00eff01306c54` | ⚠️ Unaudited |
| DssDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8dc4aa04b77fd294f0eb3bef5a6b424733ceab` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa68ec89fc0eb83b2ade87bcdc02b9c32aa3e13` | ⚠️ Unaudited |
| DSValue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x477930bedb876066fc9a7e1e4ab4fea5ebff70c5` | ⚠️ Unaudited |
| End | unknown | project_anchor | own_supporting | 0 | bsc | unit-260111 | `0x3366948fccf56152ad95d914072a80006b21f6f2` | ⚠️ Unaudited |
| EndFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa328c1a1bd701c70cd1336bca932dda7eb312e13` | ⚠️ Unaudited |
| ESM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260102 | `0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55` | ⚠️ Unaudited |
| ESMFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84bda768907f07a37ccfae20b2818604afd8211` | ⚠️ Unaudited |
| ETHASpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3df89c4b1dde13ebab56b5bcec103a3036ee28e` | ⚠️ Unaudited |
| ETHBSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e57aef623e4d4751fac3c9a4481bd9d06a6be2` | ⚠️ Unaudited |
| ETHCSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4707e3aaf541d861532eaa20ed12616244e70a8` | ⚠️ Unaudited |
| FlapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7900dd920f64285c4078d5d28864a35fa4b7b7e9` | ⚠️ Unaudited |
| Flapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260086 | `0x0b4adb8d896520eb3fd4789b73463614dcf71b03` | ⚠️ Unaudited |
| FlopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6acd09f4a444bce4c20f59eba78cfe32a1200e8d` | ⚠️ Unaudited |
| Flopper | unknown | project_anchor | own_supporting | 0 | bsc | unit-260121 | `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` | ⚠️ Unaudited |
| GemJoin5Fab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b6df5ad16fb18acf4427b9c3480d38554cc523` | ⚠️ Unaudited |
| GemJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68387214e07b8d68ddee57b1839e3a63bbbb4b9c` | ⚠️ Unaudited |
| GetCdps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a0828e02ff12c2b1bc48f358b5474248c0ea201` | ⚠️ Unaudited |
| GovActionsProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-260110 | `0x2662e860ea672e4d31df3438114c48511229e60f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b179938ed878b59f714e63c430d012251abff0` | ⚠️ Unaudited |
| Jug | unknown | project_anchor | own_supporting | 0 | bsc | unit-260108 | `0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b` | ⚠️ Unaudited |
| JugFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc98369b520a03badbe9868f02820daeeab9845c6` | ⚠️ Unaudited |
| MedianFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e16a31eefbcc94665d6aaca3b7267c6cfc9dd21` | ⚠️ Unaudited |
| MedianWbtcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5224e53e7f37409a6d079244de563fb2dbcc20` | ⚠️ Unaudited |
| OracleFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75aafa8ba8c3026b93df5696e4adb5f9ba955e0` | ⚠️ Unaudited |
| OracleWbtcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad81b3c387278b7b1f9a62347df086a1bb07b0b` | ⚠️ Unaudited |
| OsmFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f19e8c55694bec4b1f62fdb3e718c53beb83626` | ⚠️ Unaudited |
| OsmMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095d691ac0eade4e3328dffbc1ea422fb6bdba75` | ⚠️ Unaudited |
| PauseFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f51939e71dd972a0ed441966cd8f8fad0f24113` | ⚠️ Unaudited |
| PotFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c17c524f67e6d080cd4df539486539181eb14d6` | ⚠️ Unaudited |
| ProxyRegistry | unknown | project_anchor | own_supporting | 0 | bsc | unit-260107 | `0x0144fcce201dc3957fcf75269c10c21cca41ba73` | ⚠️ Unaudited |
| ProxyRegistryFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c9d4a688789e64a4889a4bef143481999429467` | ⚠️ Unaudited |
| PsmQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42d451a84eea3dba29fae4a12ea52bfd187342c9` | ⚠️ Unaudited |
| ReplaceFlopSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0612e3ff0cfe865120ea8d071d41e1e858a0a0d6` | ⚠️ Unaudited |
| RwaEthSpellSA001 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaee4e628290a8c7cd1cea75705e943f40a4e8bfa` | ⚠️ Unaudited |
| RwaEthSpellSA002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f4b84e65b3528ae14d8881abdaed131f97a5d81` | ⚠️ Unaudited |
| RwaJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03503147b762017904b10d96f10e194550e5e0ad` | ⚠️ Unaudited |
| RwaLiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6061a3691c6f5051c9fca11b859d786e663a2984` | ⚠️ Unaudited |
| RwaSwapInputConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01563254ced149e63982fb8799757c314050bfc8` | ⚠️ Unaudited |
| RwaSwapOutputConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458b8fa44a868f87a4fa7b4c6efac3af4eb557a3` | ⚠️ Unaudited |
| RwaTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b76cf683c0a381bd6f591c982c7d28972df530d` | ⚠️ Unaudited |
| RwaUrn2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bf0c2de6ce7114efdb5a64e38fef3c43a481407` | ⚠️ Unaudited |
| RwaUrnCloseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6749b19e421486a725c2efc54c0220563d05ea7d` | ⚠️ Unaudited |
| SavingsUsdd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ba9da757d1d66c58b1ae7e2ed6c04087348a82d` | ⚠️ Unaudited |
| SpotFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ba61ab898c15c055751c6b4c79dbc652553599` | ⚠️ Unaudited |
| Spotter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260092 | `0x8c4c758152da3e04b95b5eaca75585d79013c6b0` | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1975fb5fdb0810972df1f22de329c9bafe0f6d02` | ⚠️ Unaudited |
| Usdd | unknown | project_anchor | own_supporting | 0 | bsc | unit-260113 | `0x45e51bc23d592eb2dba86da3985299f7895d66ba` | ⚠️ Unaudited |
| UsddFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x123530c33913f826ed178102d22c9cbaa3f057bc` | ⚠️ Unaudited |
| UsddJoin | unknown | project_anchor | own_supporting | 0 | bsc | unit-260114 | `0x6b00039d76795fd59baf17e0c9c6d87011e7edac` | ⚠️ Unaudited |
| UsddJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98e35ba98db37a3353165203a23859ed83de7201` | ⚠️ Unaudited |
| VatFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e32e1c0cea2af712255bafc14a539fa69cf1d22` | ⚠️ Unaudited |
| Vow | unknown | project_anchor | own_supporting | 0 | bsc | unit-260109 | `0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7` | ⚠️ Unaudited |
| VowFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3d7e13e05521a6b0d613cd9d3da22b38b9e140` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eef30749f8b982f5a8277b013114015460666c0` | ⚠️ Unaudited |
| WBTCASpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b7be518db7e7835c6f747f088208e4e2b50c7a` | ⚠️ Unaudited |
| WBTCBSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613683dc8236ac636809eede355144dc42d184d7` | ⚠️ Unaudited |
| WBTCCSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33c76ac74b3ec59220716c74fb2aca96be53953f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (119)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0144fcce201dc3957fcf75269c10c21cca41ba73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e52d28097a95e16c99ccc1357817395f331598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116668a670f3c4613e45b7f419cca61c117e50b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2338018ff69386b9851b625b5b08caf43ac83406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2662e860ea672e4d31df3438114c48511229e60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8d142e5131ab42aa2d0f873cb71de20b27e17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3366948fccf56152ad95d914072a80006b21f6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b041a17f017fb246fda23bcad124f78b1f0e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bcf5dc52a7ebe6426ac7aabb2600239b912c4fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260089 | `0x3dba111255d3888c723242320595588754cf493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df4bc21eabd865652377cd3ce98ee169aae7337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f8656be9ef11192fb9ce270446976806fa121c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4077edacc2ecce3c38cc2566ed9c5b336479cc50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45e51bc23d592eb2dba86da3985299f7895d66ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbb9539b1e9a4c9053585c459d2e28e47c73c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d246f4e160e9c05d5159c292bbb4a450b44057b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260090 | `0x4f8e5de400de08b164e7421b3ee387f461becd1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588598e710b504c5d2b53f58f9bbb301cec32db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6ea7018d00fd90a03d127247d29e4e0083db2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62a1c1aacc10c6ffa557922afe5e985d1fa219cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660959862e88c09a5ce026c8ea01cb20400efabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69065cca099549f8d21847ec461024bd5a6c210e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b00039d76795fd59baf17e0c9c6d87011e7edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6badab4336b17e8d0839fd0c046e21b41196280b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8658699dc4caf77645c5b5d0bb0746f3076d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7420dfd99744e5deceed7e7aeff6804350d0a674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777684f6425d095e9166f5f694f50e48a16bcb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7923d2198d7b43de0e026bfb29c65006833d6387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a69d5bfc49bc48af6a2ed4969d32752362793fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b333f409b3cdd0fb5ea200f44c7bd65dbe8b631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f5e2fb856278deda81fb8ff5d06de2706d34f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260091 | `0x8be6b814beb37e8028258777af0ec6648a2a908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c29178989feac6d542a3df6b132ece9e83a6eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939d3fb56cd12d68caa1125cc57a8d2391f7ee29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260093 | `0x9681604090395e835ff54187f638ded8dc983cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c3ebca677521499ff0384119b4b2eae334cec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260094 | `0x983dfef6d71862d809e239845da5a959492f63b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c919aae1c45267b91c26e7b0dd430fa03fe64df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efc104a09ca0c647007eb2f93eb8573ee525dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4109496a660ebc8d74de991ac3b04c136c9ba09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260096 | `0xa9f0cd86e0a011d41693d1a748a8127877c8b054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf27b678fa53e54d3d32495078c5635349dd7366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09e88e8d50c21c7d6f75a950b7d22a2b66c581e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35cc7361bc6fc44126da2007196ddaba842cb23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260097 | `0xb5b08e58e804e5937f56b1e633cf85abbd269127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb734587cb083b33bbc9f26155b8ceae952d38f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260098 | `0xb80751ef88d07fa33ee4fc0c6f8b4b6c6c31e708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a11516878d0f0b8aac1ba7b9a9a23816a6e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc8f22ba787279717ad7d8d4543d8678a4922c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1ff5d49a97b11155f45edf22236f71f77a68e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc081f712e217672374a9c3db708c6f6c183c172e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15a31f681951779da296e81561eddf714be6976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1779812be28cd205e45098e079620a830b5ffce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37cf3aff5bab5a4b933ad560d0f1c3a3062e729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d6a7b61d18afa11435a889557b068bb9f29930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260099 | `0xca277750ecd2b0707a7ccef2a78ec2f33b5fc7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8164906bb053121c28b63258fe1868c70c1504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc2f010911c6994e57c176d728db2a483043f881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf5238a229968db6cf6976e6ebf720961271437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260101 | `0xdb218163fe160fedf0c702c37124e8c194e99329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9369a84c31df508ddef8b9fa63411997c9a0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5f51dc0d31823db86df41d46d037bc94c732dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe229fda620b8a9b98ef184830ee3063f0f86b790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2831b719c271e6392c70e17c8ba4559642d3278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43b79ac7a8ca43365b6ad4757bc35c064249fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe48d0a1515c5f0057ff25d71bc5ca4860690dadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7177bb0d63c7d5fc58a854e13c6f086f3f6b9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2ca3f4e828400bc847cc21a83eb96144191abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb14c1c31168e5fb853db73b133973de1794d340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260103 | `0xf085edd75c1ab4fda0c3bd49b264a4a113d06f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37429e8612d76d3ca3ce93c14f14d714284b77f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260104 | `0xf60cf7d4330f115f9e51ff0d56d23f95f0f10aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260105 | `0xfb38af74eae1e315a45af5ae11a44ccd1da12bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2de6aa1c4a28728e2c9535115cea5251ae87dabd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260112 | `0x3f8656be9ef11192fb9ce270446976806fa121c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4787abbe0293c46aa6750ad86ddd581312539b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4846fcc31b3d6ce2a4726f482b848137a69b8e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cb30fb8bbc4ba52d18bcdff98d3fbcc9216de96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50cf55332865ee3f420cba0a0b820699c537cca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5549ba574ed04e21294f51367c9808eb764981e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57f7ef5f22c8db13e4f181fc218478a749d7ec4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b74340dd288d3a80665e60288a17a8651e98b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6218c1873968110e95c229621171ff69df5cfae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x664781ca89a786e66120cd98187d731850516cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6daa0312913f2cc04fcd2ee1343c3bc9052fd4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a9e213dd83ff9a12936dbf4ffc051dca8a299e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b621223b761fe85ada0f5311de342da888a20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83490f7695249bfcea9445e1a0ee3866d9c5007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e5e6b3ea6bf26a1be647302b02852c47b0e0092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92351d9783c5f80291f33d02821174e427145b55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260117 | `0x939d3fb56cd12d68caa1125cc57a8d2391f7ee29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x994fb646a45b3e4d2172d66ea02a2e24b94282ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99aebec660a0238a364fcacde5ba0492652fc459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9aa92bcbf322b441a411d885d4c8d8f49d55ec81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3a319873f4dbd67b154988c6d894cd76300ee4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3ed11cf1bebb67fc61f18db9b3323c0dad76bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa86f11ae77bba1dc03174f80c7d956f3c2444866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8fa697a161417ccfe73a99723a42c8869a9147f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1582adfe4a82cf160d7691b9a45984de4121d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb25d0e75b4e1729f0739518d6aa32e85507315f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb42c1650c34e75a92aaaa72f803e384ade5f56bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfa0d99b3adf2ee6796b3e3872202b645d4e20b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260120 | `0xc1779812be28cd205e45098e079620a830b5ffce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb7e2befd53b054956b9f812b5e592465cec9c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd051bfe7399a752cd4ce8def3be9cfa7f89297a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd514172454a64cf879c156ce823c7204a460f5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6c5c6e6468fa70aa1a0d0ec691ce2742f398b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3df05087ba01fbd1b32566b05c3c7b10f48d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0c82299596e268e94089ed7d55e93ec808a904e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1f373508c44665b15ce544bcf6d8f5132af35d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260123 | `0xe229fda620b8a9b98ef184830ee3063f0f86b790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef46150f7af210a46034a777b2c5e45d800283ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260124 | `0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4be80b89468313d543744651d9b602b23f96313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf74f6cac97bff65ea70b7e269c86f01d83484778` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 83
- Live contracts: 0
- Unknown liveness contracts: 83
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=83

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x04e52d28097a95e16c99ccc1357817395f331598` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x116668a670f3c4613e45b7f419cca61c117e50b2` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x2338018ff69386b9851b625b5b08caf43ac83406` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x2b8d142e5131ab42aa2d0f873cb71de20b27e17f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x33b041a17f017fb246fda23bcad124f78b1f0e54` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x3bcf5dc52a7ebe6426ac7aabb2600239b912c4fb` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x3df4bc21eabd865652377cd3ce98ee169aae7337` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x4077edacc2ecce3c38cc2566ed9c5b336479cc50` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x4bbb9539b1e9a4c9053585c459d2e28e47c73c26` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x4d246f4e160e9c05d5159c292bbb4a450b44057b` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x588598e710b504c5d2b53f58f9bbb301cec32db2` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x5f6ea7018d00fd90a03d127247d29e4e0083db2a` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x62a1c1aacc10c6ffa557922afe5e985d1fa219cd` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x660959862e88c09a5ce026c8ea01cb20400efabc` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x69065cca099549f8d21847ec461024bd5a6c210e` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x6c8658699dc4caf77645c5b5d0bb0746f3076d78` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x7420dfd99744e5deceed7e7aeff6804350d0a674` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x7923d2198d7b43de0e026bfb29c65006833d6387` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x7a69d5bfc49bc48af6a2ed4969d32752362793fc` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x7b333f409b3cdd0fb5ea200f44c7bd65dbe8b631` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x89f5e2fb856278deda81fb8ff5d06de2706d34f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x8c29178989feac6d542a3df6b132ece9e83a6eca` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x96c3ebca677521499ff0384119b4b2eae334cec3` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x9c919aae1c45267b91c26e7b0dd430fa03fe64df` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x9efc104a09ca0c647007eb2f93eb8573ee525dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xaf27b678fa53e54d3d32495078c5635349dd7366` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xb09e88e8d50c21c7d6f75a950b7d22a2b66c581e` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xb35cc7361bc6fc44126da2007196ddaba842cb23` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xb734587cb083b33bbc9f26155b8ceae952d38f67` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xb8a11516878d0f0b8aac1ba7b9a9a23816a6e5d0` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xbdc8f22ba787279717ad7d8d4543d8678a4922c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xbe1ff5d49a97b11155f45edf22236f71f77a68e3` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xc15a31f681951779da296e81561eddf714be6976` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xc37cf3aff5bab5a4b933ad560d0f1c3a3062e729` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xc5d6a7b61d18afa11435a889557b068bb9f29930` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xcb8164906bb053121c28b63258fe1868c70c1504` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xcc2f010911c6994e57c176d728db2a483043f881` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xcdf5238a229968db6cf6976e6ebf720961271437` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xdb9369a84c31df508ddef8b9fa63411997c9a0ed` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xe2831b719c271e6392c70e17c8ba4559642d3278` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xe43b79ac7a8ca43365b6ad4757bc35c064249fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xe48d0a1515c5f0057ff25d71bc5ca4860690dadf` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xe7177bb0d63c7d5fc58a854e13c6f086f3f6b9b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xea2ca3f4e828400bc847cc21a83eb96144191abc` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xeb14c1c31168e5fb853db73b133973de1794d340` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0xf37429e8612d76d3ca3ce93c14f14d714284b77f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c1a61a0740128f0a9f948b08995cdf3df58f1ee` |
| unverified unclassified | UnnamedContract<br>`0x2de6aa1c4a28728e2c9535115cea5251ae87dabd` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x4787abbe0293c46aa6750ad86ddd581312539b93` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x4846fcc31b3d6ce2a4726f482b848137a69b8e08` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x4cb30fb8bbc4ba52d18bcdff98d3fbcc9216de96` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x50cf55332865ee3f420cba0a0b820699c537cca7` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x5549ba574ed04e21294f51367c9808eb764981e0` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x57f7ef5f22c8db13e4f181fc218478a749d7ec4f` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x5b74340dd288d3a80665e60288a17a8651e98b69` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x6218c1873968110e95c229621171ff69df5cfae4` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x664781ca89a786e66120cd98187d731850516cb3` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x6daa0312913f2cc04fcd2ee1343c3bc9052fd4a2` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x7a9e213dd83ff9a12936dbf4ffc051dca8a299e5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x82b621223b761fe85ada0f5311de342da888a20d` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x83490f7695249bfcea9445e1a0ee3866d9c5007a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x8e5e6b3ea6bf26a1be647302b02852c47b0e0092` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x92351d9783c5f80291f33d02821174e427145b55` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x994fb646a45b3e4d2172d66ea02a2e24b94282ae` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x99aebec660a0238a364fcacde5ba0492652fc459` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0x9aa92bcbf322b441a411d885d4c8d8f49d55ec81` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xa3a319873f4dbd67b154988c6d894cd76300ee4c` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xa3ed11cf1bebb67fc61f18db9b3323c0dad76bb5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xa86f11ae77bba1dc03174f80c7d956f3c2444866` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xa8fa697a161417ccfe73a99723a42c8869a9147f` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xb1582adfe4a82cf160d7691b9a45984de4121d73` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xb25d0e75b4e1729f0739518d6aa32e85507315f8` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xb42c1650c34e75a92aaaa72f803e384ade5f56bb` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xbfa0d99b3adf2ee6796b3e3872202b645d4e20b5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xcb7e2befd53b054956b9f812b5e592465cec9c2a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xcd051bfe7399a752cd4ce8def3be9cfa7f89297a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xd514172454a64cf879c156ce823c7204a460f5fd` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xd6c5c6e6468fa70aa1a0d0ec691ce2742f398b09` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xdd3df05087ba01fbd1b32566b05c3c7b10f48d4b` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xe0c82299596e268e94089ed7d55e93ec808a904e` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xe1f373508c44665b15ce544bcf6d8f5132af35d4` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xef46150f7af210a46034a777b2c5e45d800283ff` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xf4be80b89468313d543744651d9b602b23f96313` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |
| unverified unclassified | UnnamedContract<br>`0xf74f6cac97bff65ea70b7e269c86f01d83484778` | non_address_book | unknown | unknown | unverified | n/a | `0x4cb7b7225d021000d7631ba9f1f9419e7609a4ac` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts](https://www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-5944c53b08b503266c499836474c7b475dc02093%2FChainSecurity_Decentralized_USD_USDD_V2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 33 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9%2FChainSecurity_Decentralized_USD_PSM_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf%2FChainSecurity_Decentralized_USD_Exchange_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2FU3HlFYyl6SxtZv0PZrQG%2FREP-final-20250902T100548Z.pdf) | REP | Audit | 2025-09 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 6 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2F1wmLxyUpjIpgT6a3IvJP%2FChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21193] www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts — no match: The report text does not contain a clear scope section or list of contract names. Only 'Smart Allocator' is mentioned as the subject, but no specific contract files or names are provided.
- [21194] spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf — matched: Extracted 38 contract names from the scope section file listing. Audit date from cover page.
- [21195] spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf — matched: Scope table lists four files: psm.sol, join-auth.sol, join-5-auth.sol, join-8-auth.sol. Contract names derived from file names and system overview.
- [21196] spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf — no match: Scope section explicitly lists three files: USDDExchange.sol, Address.sol, SafeTRC20.sol. Audit date from cover page: Jan 24, 2025.
- [21197] spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf — matched: Extracted 9 contracts from scope appendix and review notes, plus UsddPsm7 from finding alleviation. Audit date from cover page and header.
- [21198] spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf — matched: Extracted 10 contract names from the scope section (page 5) and file paths. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts | Smart Allocator | unmatched — not counted | — | mentioned in report title and summary as the subject of the audit | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | dog | ambiguous — not counted | Dog (alternative) `0x6badab4336b17e8d0839fd0c046e21b41196280b` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context)<br>0x968160… (alternative) `0x9681604090395e835ff54187f638ded8dc983cbf` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | jug | ambiguous — not counted | Jug (alternative) `0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xdb2181… (alternative) `0xdb218163fe160fedf0c702c37124e8c194e99329` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | flap | ambiguous — not counted | Flapper (alternative) `0x0b4adb8d896520eb3fd4789b73463614dcf71b03` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>0x3f8656… (alternative) `0x3f8656be9ef11192fb9ce270446976806fa121c5` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | abaci | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | spot | ambiguous — not counted | Spotter (alternative) `0x8c4c758152da3e04b95b5eaca75585d79013c6b0` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>0xc17798… (alternative) `0xc1779812be28cd205e45098e079620a830b5ffce` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | clip | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | vat | own contract | Vat (selected) `0xff77f6209239deb2c076179499f2346b0032097f` — deployed 2025-09-02 12:23:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | usdd | ambiguous — not counted | 0x4f8e5d… (alternative) `0x4f8e5de400de08b164e7421b3ee387f461becd1a` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>Usdd (alternative) `0x45e51bc23d592eb2dba86da3985299f7895d66ba` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | vow | ambiguous — not counted | Vow (alternative) `0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context)<br>0xf085ed… (alternative) `0xf085edd75c1ab4fda0c3bd49b264a4a113d06f3b` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af74eae1e315a45af5ae11a44ccd1da12bcb` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssDeploy | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | end | ambiguous — not counted | End (alternative) `0x3366948fccf56152ad95d914072a80006b21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd86e0a011d41693d1a748a8127877c8b054` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-6 | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-7 | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-trx | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSPause | own contract | DSPause (selected) `0xc081f712e217672374a9c3db708c6f6c183c172e` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSPauseProxy | own contract | DSPauseProxy (selected) `0xdd5f51dc0d31823db86df41d46d037bc94c732dc` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSRoles | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | GovActions | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | GovActionsProxy | ambiguous — not counted | GovActionsProxy (alternative) `0x2662e860ea672e4d31df3438114c48511229e60f` — deployed 2025-10-08 07:56:34+03 — liveness: live (current_address_book_code)<br>0x3dba11… (alternative) `0x3dba111255d3888c723242320595588754cf493e` — deployed 2025-09-02 12:23:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | auth | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssCdpManager | own contract | DssCdpManager (selected) `0xa4109496a660ebc8d74de991ac3b04c136c9ba09` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684f6425d095e9166f5f694f50e48a16bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | GetCdps | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | BaseValue | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | OracleValue | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | TrxOracleValue | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | OsmMom | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | median | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | medians | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | osm | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | value | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | values | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | proxy | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | ProxyRegistry | ambiguous — not counted | 0x8be6b8… (alternative) `0x8be6b814beb37e8028258777af0ec6648a2a908e` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>ProxyRegistry (alternative) `0x0144fcce201dc3957fcf75269c10c21cca41ba73` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | UsddPsm | own contract | UsddPsm (selected) `0x12d0351f68035a41d13fc8324562e2d51b7a3b93` — deployed 2025-09-02 12:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin5 | own contract | AuthGemJoin5 (selected) `0x9a7e1b324060db7342aea08c0dc56f55ced6f519` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin8 | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | USDDExchange | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | SafeTRC20 | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | SavingsUsdd | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Pot | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af74eae1e315a45af5ae11a44ccd1da12bcb` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | End | ambiguous — not counted | End (alternative) `0x3366948fccf56152ad95d914072a80006b21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd86e0a011d41693d1a748a8127877c8b054` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Proxy | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684f6425d095e9166f5f694f50e48a16bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | AuthGemJoin5 | own contract | AuthGemJoin5 (selected) `0x9a7e1b324060db7342aea08c0dc56f55ced6f519` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | AuthGemJoin7 | own contract | AuthGemJoin7 (selected) `0x217e42ceb2eae9ecb788fdf0e31c806c531760a3` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | UsddPsm7 | own contract | UsddPsm7 (selected) `0xce355440c00014a229bbec030a2b8f8eb45a2897` — deployed 2025-09-02 12:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-5-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-7-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684f6425d095e9166f5f694f50e48a16bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | proxy | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | pot | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | SavingsUsdd | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af74eae1e315a45af5ae11a44ccd1da12bcb` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | end | ambiguous — not counted | End (alternative) `0x3366948fccf56152ad95d914072a80006b21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd86e0a011d41693d1a748a8127877c8b054` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b596763afaa8e51f0cf6a7a9b4c743d3b1c6` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x6badab4336b17e8d0839fd0c046e21b41196280b` | Dog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3366948fccf56152ad95d914072a80006b21f6f2` | End | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55` | ESM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b4adb8d896520eb3fd4789b73463614dcf71b03` | Flapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd6bd489dedf05dbccb680304b3af2df73d1d7de0` | Flopper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2662e860ea672e4d31df3438114c48511229e60f` | GovActionsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b` | Jug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0144fcce201dc3957fcf75269c10c21cca41ba73` | ProxyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c4c758152da3e04b95b5eaca75585d79013c6b0` | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x45e51bc23d592eb2dba86da3985299f7895d66ba` | Usdd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6b00039d76795fd59baf17e0c9c6d87011e7edac` | UsddJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7` | Vow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 119 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 17 ambiguous, 37 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: unique_name=12

Zero-match audit list:

- [21193] www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts
- [21196] spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
