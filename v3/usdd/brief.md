# Agentic Audit Brief: USDD

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 4 audit(s)
- Eligible audit results: 6 (4 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: USDD (`usdd`)
- Website: [https://usdd.io/](https://usdd.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 109 unique implementations (109 raw deployments)
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

**DssProxyActions** (`0x777684...6bcb25`, chain 56)
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

**Vat** (`0xff77f6...32097f`, chain 1)
Origin: 3f-mutual (`0x35d1b3...a0492b`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3dba11...cf493e`, chain 1)
- UnnamedContract (`0x4f8e5d...becd1a`, chain 1)
- UnnamedContract (`0x8be6b8...2a908e`, chain 1)
- UnnamedContract (`0x968160...983cbf`, chain 1)
- UnnamedContract (`0x983dfe...2f63b8`, chain 1)
- UnnamedContract (`0xa9f0cd...c8b054`, chain 1)
- UnnamedContract (`0xb5b08e...269127`, chain 1)
- UnnamedContract (`0xb80751...31e708`, chain 1)
- UnnamedContract (`0xca2777...5fc7f7`, chain 1)
- UnnamedContract (`0xdb2181...e99329`, chain 1)
- UnnamedContract (`0xf085ed...d06f3b`, chain 1)
- UnnamedContract (`0xf60cf7...f10aee`, chain 1)
- UnnamedContract (`0xfb38af...a12bcb`, chain 1)
- UnnamedContract (`0x3f8656...a121c5`, chain 56)
- UnnamedContract (`0x939d3f...f7ee29`, chain 56)
- UnnamedContract (`0xc17798...b5ffce`, chain 56)
- UnnamedContract (`0xe229fd...86b790`, chain 56)
- UnnamedContract (`0xf1a7b5...d3b1c6`, chain 56)
- AuthGemJoin5 (`0x9a7e1b...d6f519`, chain 1)
- AuthGemJoin7 (`0x217e42...1760a3`, chain 1)
- Dog (`0x6badab...96280b`, chain 56)
- DSPause (`0xc081f7...3c172e`, chain 56)
- DSPauseProxy (`0xdd5f51...c732dc`, chain 56)
- DssCdpManager (`0xa41094...c9ba09`, chain 56)
- End (`0x336694...21f6f2`, chain 56)
- ESM (`0xe4089b...698f55`, chain 1)
- Flapper (`0x0b4adb...f71b03`, chain 1)
- Flopper (`0xd6bd48...1d7de0`, chain 56)
- GovActionsProxy (`0x2662e8...29e60f`, chain 56)
- Jug (`0x12a2a2...618e0b`, chain 56)
- ProxyRegistry (`0x0144fc...41ba73`, chain 56)
- Spotter (`0x8c4c75...13c6b0`, chain 1)
- Usdd (`0x45e51b...5d66ba`, chain 56)
- UsddJoin (`0x6b0003...e7edac`, chain 56)
- UsddPsm (`0x12d035...7a3b93`, chain 1)
- UsddPsm7 (`0xce3554...5a2897`, chain 1)
- Vow (`0x1c9a9d...11c5b7`, chain 56)

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/21 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 39 of 109 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 9/21
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 109
- Raw deployments: 109
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
| ChainSecurity | Tier 1 | 7 | 33.3% | 2025-10 |
| REP | Tier 2 | 4 | 19.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthGemJoin5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260095 | `0x9a7e1b...d6f519` | ✅ Audited |
| AuthGemJoin7 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260088 | `0x217e42...1760a3` | ✅ Audited |
| DSPause | unknown | project_anchor | own_supporting | 0 | bsc | unit-260119 | `0xc081f7...3c172e` | ✅ Audited |
| DSPauseProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-260122 | `0xdd5f51...c732dc` | ✅ Audited |
| DssCdpManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-260118 | `0xa41094...c9ba09` | ✅ Audited |
| DssProxyActions | unknown | project_anchor | own_supporting | 0 | bsc | unit-260116 | `0x777684...6bcb25` | ✅ Audited |
| UsddPsm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260087 | `0x12d035...7a3b93` | ✅ Audited |
| UsddPsm7 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260100 | `0xce3554...5a2897` | ✅ Audited |
| Vat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260106 | `0xff77f6...32097f` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthGemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062a73...edf000` | ⚠️ Unaudited |
| CalcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29f8fe...45445d` | ⚠️ Unaudited |
| ChainLog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2007a3...2f17bd` | ⚠️ Unaudited |
| ClipFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48aba8...3824c0` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74a12a...45ac6f` | ⚠️ Unaudited |
| Dog | unknown | project_anchor | own_supporting | 0 | bsc | unit-260115 | `0x6badab...96280b` | ⚠️ Unaudited |
| DogFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b03e0...306c54` | ⚠️ Unaudited |
| DssDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8dc4...33ceab` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa68e...aa3e13` | ⚠️ Unaudited |
| DSValue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x477930...ff70c5` | ⚠️ Unaudited |
| End | unknown | project_anchor | own_supporting | 0 | bsc | unit-260111 | `0x336694...21f6f2` | ⚠️ Unaudited |
| EndFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa328c1...312e13` | ⚠️ Unaudited |
| ESM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260102 | `0xe4089b...698f55` | ⚠️ Unaudited |
| ESMFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84bda...fd8211` | ⚠️ Unaudited |
| ETHASpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3df89...6ee28e` | ⚠️ Unaudited |
| ETHBSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e57a...6a6be2` | ⚠️ Unaudited |
| ETHCSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4707e...4e70a8` | ⚠️ Unaudited |
| FlapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7900dd...b7b7e9` | ⚠️ Unaudited |
| Flapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260086 | `0x0b4adb...f71b03` | ⚠️ Unaudited |
| FlopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6acd09...200e8d` | ⚠️ Unaudited |
| Flopper | unknown | project_anchor | own_supporting | 0 | bsc | unit-260121 | `0xd6bd48...1d7de0` | ⚠️ Unaudited |
| GemJoin5Fab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b6df...4cc523` | ⚠️ Unaudited |
| GemJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683872...bb4b9c` | ⚠️ Unaudited |
| GetCdps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a0828...0ea201` | ⚠️ Unaudited |
| GovActionsProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-260110 | `0x2662e8...29e60f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b179...1abff0` | ⚠️ Unaudited |
| Jug | unknown | project_anchor | own_supporting | 0 | bsc | unit-260108 | `0x12a2a2...618e0b` | ⚠️ Unaudited |
| JugFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc98369...9845c6` | ⚠️ Unaudited |
| MedianFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e16a3...c9dd21` | ⚠️ Unaudited |
| MedianWbtcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5224...dbcc20` | ⚠️ Unaudited |
| OracleFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75aaf...a955e0` | ⚠️ Unaudited |
| OracleWbtcFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad81b...b07b0b` | ⚠️ Unaudited |
| OsmFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f19e8...b83626` | ⚠️ Unaudited |
| OsmMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095d69...bdba75` | ⚠️ Unaudited |
| PauseFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f5193...f24113` | ⚠️ Unaudited |
| PotFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c17c5...eb14d6` | ⚠️ Unaudited |
| ProxyRegistry | unknown | project_anchor | own_supporting | 0 | bsc | unit-260107 | `0x0144fc...41ba73` | ⚠️ Unaudited |
| ProxyRegistryFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c9d4a...429467` | ⚠️ Unaudited |
| PsmQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42d451...7342c9` | ⚠️ Unaudited |
| ReplaceFlopSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0612e3...a0a0d6` | ⚠️ Unaudited |
| RwaEthSpellSA001 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaee4e6...4e8bfa` | ⚠️ Unaudited |
| RwaEthSpellSA002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f4b84...7a5d81` | ⚠️ Unaudited |
| RwaJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x035031...e5e0ad` | ⚠️ Unaudited |
| RwaLiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6061a3...3a2984` | ⚠️ Unaudited |
| RwaSwapInputConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015632...50bfc8` | ⚠️ Unaudited |
| RwaSwapOutputConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458b8f...b557a3` | ⚠️ Unaudited |
| RwaTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b76cf...df530d` | ⚠️ Unaudited |
| RwaUrn2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bf0c2...481407` | ⚠️ Unaudited |
| RwaUrnCloseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6749b1...05ea7d` | ⚠️ Unaudited |
| SavingsUsdd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ba9da...48a82d` | ⚠️ Unaudited |
| SpotFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19ba61...553599` | ⚠️ Unaudited |
| Spotter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260092 | `0x8c4c75...13c6b0` | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1975fb...0f6d02` | ⚠️ Unaudited |
| Usdd | unknown | project_anchor | own_supporting | 0 | bsc | unit-260113 | `0x45e51b...5d66ba` | ⚠️ Unaudited |
| UsddFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x123530...f057bc` | ⚠️ Unaudited |
| UsddJoin | unknown | project_anchor | own_supporting | 0 | bsc | unit-260114 | `0x6b0003...e7edac` | ⚠️ Unaudited |
| UsddJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98e35b...de7201` | ⚠️ Unaudited |
| VatFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e32e1...cf1d22` | ⚠️ Unaudited |
| Vow | unknown | project_anchor | own_supporting | 0 | bsc | unit-260109 | `0x1c9a9d...11c5b7` | ⚠️ Unaudited |
| VowFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3d7e...b9e140` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eef30...0666c0` | ⚠️ Unaudited |
| WBTCASpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95b7be...b50c7a` | ⚠️ Unaudited |
| WBTCBSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613683...d184d7` | ⚠️ Unaudited |
| WBTCCSpellBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33c76a...53953f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0144fc...41ba73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a2a2...618e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9a9d...11c5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2662e8...29e60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336694...21f6f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260089 | `0x3dba11...cf493e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f8656...a121c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45e51b...5d66ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260090 | `0x4f8e5d...becd1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0003...e7edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6badab...96280b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777684...6bcb25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260091 | `0x8be6b8...2a908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939d3f...f7ee29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260093 | `0x968160...983cbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260094 | `0x983dfe...2f63b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41094...c9ba09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260096 | `0xa9f0cd...c8b054` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260097 | `0xb5b08e...269127` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260098 | `0xb80751...31e708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc081f7...3c172e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17798...b5ffce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260099 | `0xca2777...5fc7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6bd48...1d7de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260101 | `0xdb2181...e99329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5f51...c732dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe229fd...86b790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260103 | `0xf085ed...d06f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1a7b5...d3b1c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260104 | `0xf60cf7...f10aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260105 | `0xfb38af...a12bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260112 | `0x3f8656...a121c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260117 | `0x939d3f...f7ee29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260120 | `0xc17798...b5ffce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260123 | `0xe229fd...86b790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260124 | `0xf1a7b5...d3b1c6` | ❓ Unverified |

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
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | dog | ambiguous — not counted | Dog (alternative) `0x6badab...96280b` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context)<br>0x968160… (alternative) `0x968160...983cbf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | jug | ambiguous — not counted | Jug (alternative) `0x12a2a2...618e0b` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xdb2181… (alternative) `0xdb2181...e99329` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | flap | ambiguous — not counted | Flapper (alternative) `0x0b4adb...f71b03` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>0x3f8656… (alternative) `0x3f8656...a121c5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | abaci | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | spot | ambiguous — not counted | Spotter (alternative) `0x8c4c75...13c6b0` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code)<br>0xc17798… (alternative) `0xc17798...b5ffce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | clip | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | vat | own contract | Vat (selected) `0xff77f6...32097f` — deployed 2025-09-02 12:23:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | usdd | ambiguous — not counted | 0x4f8e5d… (alternative) `0x4f8e5d...becd1a` — liveness: live (current_address_book_code)<br>Usdd (alternative) `0x45e51b...5d66ba` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | vow | ambiguous — not counted | Vow (alternative) `0x1c9a9d...11c5b7` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context)<br>0xf085ed… (alternative) `0xf085ed...d06f3b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af...a12bcb` — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd48...1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssDeploy | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b5...d3b1c6` — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b...698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | end | ambiguous — not counted | End (alternative) `0x336694...21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd...c8b054` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-6 | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-7 | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | join-trx | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSPause | own contract | DSPause (selected) `0xc081f7...3c172e` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSPauseProxy | own contract | DSPauseProxy (selected) `0xdd5f51...c732dc` — deployed 2025-10-08 07:56:36+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DSRoles | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | GovActions | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | GovActionsProxy | ambiguous — not counted | GovActionsProxy (alternative) `0x2662e8...29e60f` — deployed 2025-10-08 07:56:34+03 — liveness: live (current_address_book_code)<br>0x3dba11… (alternative) `0x3dba11...cf493e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | auth | unmatched — not counted | — | listed in scope | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssCdpManager | own contract | DssCdpManager (selected) `0xa41094...c9ba09` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684...6bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf | ProxyRegistry | ambiguous — not counted | 0x8be6b8… (alternative) `0x8be6b8...2a908e` — liveness: live (current_address_book_code)<br>ProxyRegistry (alternative) `0x0144fc...41ba73` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | UsddPsm | own contract | UsddPsm (selected) `0x12d035...7a3b93` — deployed 2025-09-02 12:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin5 | own contract | AuthGemJoin5 (selected) `0x9a7e1b...d6f519` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf | AuthGemJoin8 | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | USDDExchange | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf | SafeTRC20 | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | SavingsUsdd | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Pot | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af...a12bcb` — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd48...1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b5...d3b1c6` — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b...698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | End | ambiguous — not counted | End (alternative) `0x336694...21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd...c8b054` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | Proxy | unmatched — not counted | — | listed in scope appendix and review notes | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684...6bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | AuthGemJoin5 | own contract | AuthGemJoin5 (selected) `0x9a7e1b...d6f519` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | AuthGemJoin7 | own contract | AuthGemJoin7 (selected) `0x217e42...1760a3` — deployed 2025-09-02 12:49:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf | UsddPsm7 | own contract | UsddPsm7 (selected) `0xce3554...5a2897` — deployed 2025-09-02 12:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-5-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-7-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | join-auth | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | DssProxyActions | own contract | DssProxyActions (selected) `0x777684...6bcb25` — deployed 2025-10-08 07:56:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | proxy | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | pot | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | SavingsUsdd | unmatched — not counted | — | listed in scope table | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | flop | ambiguous — not counted | 0xfb38af… (alternative) `0xfb38af...a12bcb` — liveness: live (current_address_book_code)<br>Flopper (alternative) `0xd6bd48...1d7de0` — deployed 2025-10-09 06:58:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | end | ambiguous — not counted | End (alternative) `0x336694...21f6f2` — deployed 2025-10-08 07:56:36+03 — liveness: live (current_address_book_code)<br>0xa9f0cd… (alternative) `0xa9f0cd...c8b054` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf | ESM | ambiguous — not counted | 0xf1a7b5… (alternative) `0xf1a7b5...d3b1c6` — liveness: live (current_address_book_code)<br>ESM (alternative) `0xe4089b...698f55` — deployed 2025-09-02 12:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x6badab...96280b` | Dog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x336694...21f6f2` | End | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4089b...698f55` | ESM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b4adb...f71b03` | Flapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd6bd48...1d7de0` | Flopper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2662e8...29e60f` | GovActionsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x12a2a2...618e0b` | Jug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0144fc...41ba73` | ProxyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c4c75...13c6b0` | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x45e51b...5d66ba` | Usdd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6b0003...e7edac` | UsddJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1c9a9d...11c5b7` | Vow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 36 |

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
