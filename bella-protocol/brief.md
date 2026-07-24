# Agentic Audit Brief: Bella Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DEAD - TVL dropped 11.3% over 90 days

## Project Overview

- Project: Bella Protocol (`bella-protocol`)
- Website: [https://www.bella.fi/en-US](https://www.bella.fi/en-US)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, manta-pacific, mantle, zksync-era
- Contract surface: 43 unique implementations (63 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $153,481.87
- On-chain TVL (included contracts): $272,623.47
- TVL by chain: Ethereum $272,623.47

## Project Description

This brief describes the observed EVM deployment and audit surface for Bella Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, manta-pacific, mantle, zksync-era. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2c9bfca337bac7cbda3b80d1b2d10ed6482d7c0f`, chain 169)
- UnnamedContract (`0x9fb6ca27d20e569e5c8fec359c9d33d468d2803c`, chain 324)
- UnnamedContract (`0xb83cfb285fc8d936e8647fa9b1cc641dbaae92d9`, chain 324)
- UnnamedContract (`0x3390108e913824b8ead638444cc52b9abdf63798`, chain 5000)
- UnnamedContract (`0xbf2b951ae6af066a03dbfa52b1329704d923980c`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 43 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 43
- Raw deployments: 63
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| bVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2c23276107b45e64c8c59482f4a24f4f2e568ea6`; ethereum `0x378388aa69f3032fa46150221210c7fa70a35153`; ethereum `0x3fb6b07d77dace1ba6b5f6ab1d8668643d15a2cc`; ethereum `0x750d30a8259e63ed72a075f5b6630f08ce7996d0`; ethereum `0x8016907d54ed8bcf5da100c4d0eb434c0185dc0e`; ethereum `0x8d9a39706d3b66446a298f1ae735730257ec6108` | ⚠️ Unaudited |
| StrategyArpa | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3063cf3a934068cbe8f55212577a1ffbe63095e` | ⚠️ Unaudited |
| Bella | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91ac63d040deb1b7a5e4d4134ad23eb0ba07e14` | ⚠️ Unaudited |
| BellaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb6ff550ea4473ed462f8bda38ae3226c04649d` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c5344e331d5f4161f03726870ce9da8b504d2a` | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 16 deployments: manta-pacific `0x01d27580c464d5b3b26f78bee12e684901dbc02a`; manta-pacific `0x078f712f038a95beea94f036cadb49188a90604b`; manta-pacific `0x0917459e8ca2c01e49b1a83ae8acc6bd6f627442`; manta-pacific `0x0f52a51287f9b3894d73df05164d0ee2533ccbb4`; manta-pacific `0x207d76b287a566aba975700f103017fd568a2181`; manta-pacific `0x4220e94f507dc9e14169cfa0f2912463ace8c8ff`; manta-pacific `0x6025f893f192ccf4073665fc288ae5256e06cfb0`; manta-pacific `0x8d7090ddda057f48fdbbb2abcea22d1113ab566a`; manta-pacific `0x90e95735378a31bfad2dcd87128fbb80ffeb6917`; manta-pacific `0x91647632245cabf3d66121f86c387ae0ad295f9a`; manta-pacific `0x9758962a46ffbe3ae02dc5a850b0e5a3a985eadd`; manta-pacific `0xab8653fe4eaab3bcbab35ea84ecd600d5efa5605`; manta-pacific `0xb01e11b28a88ded4e5f467364455a757a47c5aa9`; manta-pacific `0xbab1c57ec0bb0ae81d948503e51d90166459d154`; manta-pacific `0xd212377f71f15a1b962c9265dc44fbceaf0bc46d`; manta-pacific `0xe22e3d44ea9fb0a87ea3f7a8f41d869c677f0020` | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-229303 | `0xb385e52903c802b3bdca7c4d0c78460a8988e1ce` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbdad407f77f44f7da6684b416b1951eca461fb07` | ⚠️ Unaudited |
| StrategyBusd | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc00cccbce9d798c412f568436901ff46a362d5` | ⚠️ Unaudited |
| StrategyHbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f9c789852025862cc160f464d42ca18fc68c0b` | ⚠️ Unaudited |
| StrategyUsdc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a` | ⚠️ Unaudited |
| StrategyUsdt | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695` | ⚠️ Unaudited |
| StrategyWbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964a640e90fa759c1de9951ebddba730c872bc36` | ⚠️ Unaudited |
| TokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc935285b0d88069305431dace0c3c01d7e793d84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f624b25991b99d7b14d6740a9d581dd77980808` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f35ce3c3875c120ab602386c8d6a59e88e493e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-229302 | `0x2c9bfca337bac7cbda3b80d1b2d10ed6482d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x6731a6a2586a0d555dcff7eb4d8fb7444bdfde2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x994be2994471d5ef93c600cf78c2752c5e96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9e98deac1a416c9ce3c892bd8eef586f1291ca35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa91ac63d040deb1b7a5e4d4134ad23eb0ba07e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbe138ad5d41fdc392ae0b61b09421987c1966cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbf2b951ae6af066a03dbfa52b1329704d923980c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc865dd3421a6dd706688955fe727c802a98c1df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf0d1109e723cb06e400e2e57d0b6c7c32bedf61a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-229305 | `0x9fb6ca27d20e569e5c8fec359c9d33d468d2803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xa91ac63d040deb1b7a5e4d4134ad23eb0ba07e14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-229306 | `0xb83cfb285fc8d936e8647fa9b1cc641dbaae92d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x24cf986d754d7e5b1207711897f972f74c36e900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x31406859b696d122d4b30f1f617226886793bd7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-229308 | `0x3390108e913824b8ead638444cc52b9abdf63798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3bd7a1d8c760d8be1bc57a3205cbffbadfb74d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3c61742c5b8b8c25e8d57b9f8115050463faf690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x40c0bf7954f00de7ab85a163c07c74b64e4faba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x414e38cf17a1cccac33599d2d88daf6dbb680b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x45b534b329d1410f37026e50014c37bd140b055d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9f58193b717449d00c7dcaf5d9f6f5af48a09894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9fb6ca27d20e569e5c8fec359c9d33d468d2803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa2337f50091dbfc8e802f811ead575162fa104e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbe138ad5d41fdc392ae0b61b09421987c1966cc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-229309 | `0xbf2b951ae6af066a03dbfa52b1329704d923980c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc0f4838625430a9c1d2d6d4ae9e834af1dba1d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2380f4cc37027b4bf23bbb3b6c092470db4975f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 37
- Live contracts: 1
- Unknown liveness contracts: 36
- Source-verified contracts: 25
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=18, source verified unclassified=7, unverified unclassified=12

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | StrategyArpa<br>`0xa3063cf3a934068cbe8f55212577a1ffbe63095e` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | candidate review | WhiteList<br>`0x19f35ce3c3875c120ab602386c8d6a59e88e493e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | BellaStaking<br>`0x6cb6ff550ea4473ed462f8bda38ae3226c04649d` | non_address_book | unknown | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | Controller<br>`0xd8c5344e331d5f4161f03726870ce9da8b504d2a` | non_address_book | governance | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | StrategyBusd<br>`0xcbc00cccbce9d798c412f568436901ff46a362d5` | non_address_book | core_logic | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | StrategyHbtc<br>`0xf7f9c789852025862cc160f464d42ca18fc68c0b` | non_address_book | core_logic | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | StrategyUsdc<br>`0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a` | non_address_book | core_logic | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | StrategyUsdt<br>`0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695` | non_address_book | core_logic | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| ethereum | source verified unclassified | StrategyWbtc<br>`0x964a640e90fa759c1de9951ebddba730c872bc36` | non_address_book | core_logic | unknown | verified | n/a | `0x10f919f874db00239a1f891d96279ff999514b82` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xbe138ad5d41fdc392ae0b61b09421987c1966cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x01d27580c464d5b3b26f78bee12e684901dbc02a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x078f712f038a95beea94f036cadb49188a90604b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x0917459e8ca2c01e49b1a83ae8acc6bd6f627442` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x0f52a51287f9b3894d73df05164d0ee2533ccbb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x207d76b287a566aba975700f103017fd568a2181` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x4220e94f507dc9e14169cfa0f2912463ace8c8ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x6025f893f192ccf4073665fc288ae5256e06cfb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x8d7090ddda057f48fdbbb2abcea22d1113ab566a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x90e95735378a31bfad2dcd87128fbb80ffeb6917` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0x9758962a46ffbe3ae02dc5a850b0e5a3a985eadd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xab8653fe4eaab3bcbab35ea84ecd600d5efa5605` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xb01e11b28a88ded4e5f467364455a757a47c5aa9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xb385e52903c802b3bdca7c4d0c78460a8988e1ce` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xbab1c57ec0bb0ae81d948503e51d90166459d154` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xd212377f71f15a1b962c9265dc44fbceaf0bc46d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| manta-pacific | candidate review | MantaMintableERC20<br>`0xe22e3d44ea9fb0a87ea3f7a8f41d869c677f0020` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc9070fb1ef16f704dfb60d205ad33b27b2cdac0a` |
| mantle | unverified unclassified | UnnamedContract<br>`0x24cf986d754d7e5b1207711897f972f74c36e900` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x31406859b696d122d4b30f1f617226886793bd7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3c61742c5b8b8c25e8d57b9f8115050463faf690` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x40c0bf7954f00de7ab85a163c07c74b64e4faba7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x414e38cf17a1cccac33599d2d88daf6dbb680b1f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x45b534b329d1410f37026e50014c37bd140b055d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0x9f58193b717449d00c7dcaf5d9f6f5af48a09894` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0xa2337f50091dbfc8e802f811ead575162fa104e6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0xbe138ad5d41fdc392ae0b61b09421987c1966cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0xc0f4838625430a9c1d2d6d4ae9e834af1dba1d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe2380f4cc37027b4bf23bbb3b6c092470db4975f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e8ae53d96006bd4c8462edafb4fb8364007e744` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [bella_audit_report_2020_48_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/bella_audit_report_2020_48_en_1_0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12756] bella_audit_report_2020_48_en_1_0.pdf — no match: The report clearly states the target is YCurveStaking.sol and also references Ownable.sol in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bella_audit_report_2020_48_en_1_0.pdf | YCurveStaking | unmatched — not counted | — | Listed in scope table and throughout report as target contract. | no |
| bella_audit_report_2020_48_en_1_0.pdf | Ownable | unmatched — not counted | — | Mentioned in finding PVE-003 as target file. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta-pacific | `0xb385e52903c802b3bdca7c4d0c78460a8988e1ce` | MantaMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12756] bella_audit_report_2020_48_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
