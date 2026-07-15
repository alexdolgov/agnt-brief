# Agentic Audit Brief: EZManager

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EZManager (`ezmanager`)
- Website: [https://ezmanager.finance](https://ezmanager.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid
- Contract surface: 349 unique implementations (507 raw deployments)
- Coverage basis: 4/47 confirmed own live verified implementations (8.5%); conservative 8.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $340,173.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EZManager. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 47 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid. Structural roles: 22 supporting, 20 core, 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 47
- Structural roles: supporting (22), core (20), unclassified (5)
- Contract kinds: contract (47)
- Detected standards: ownable (41), pausable (31)
- Frameworks: openzeppelin (41), uniswap-v3 (26)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 47 contracts are derived from known codebases. 47 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AerodromeAdapter (`0x9efde1...a5fa28`, chain 8453)
- CLCore (`0xab2646...160312`, chain 1)
- CLCore (`0x10c6d3...a08eb2`, chain 56)
- CLCore (`0x6f8179...63ae11`, chain 999)
- CLCore (`0x61c36a...52770f`, chain 8453)
- CLCore (`0xd52170...86ae91`, chain 42161)
- CLManager (`0xcb9f75...87f3b3`, chain 1)
- CLManager (`0x4d5a83...4be153`, chain 56)
- CLManager (`0x84ff60...815fc2`, chain 999)
- CLManager (`0x52dcc4...bd48a2`, chain 8453)
- CLManager (`0x57f5b2...2bc2aa`, chain 42161)
- EZWrapper (`0x2e631a...db574f`, chain 1)
- EZWrapper (`0xfdbeb9...81d48d`, chain 56)
- EZWrapper (`0x5afebf...8ec338`, chain 999)
- EZWrapper (`0x180670...bf1921`, chain 8453)
- EZWrapper (`0x91d0ac...16c449`, chain 42161)
- ProjectXAdapter (`0xc5cf6b...00cc0d`, chain 999)
- ProtocolReserve (`0x7adce9...8659f2`, chain 1)
- ProtocolReserve (`0xf3af04...7b5889`, chain 56)
- ProtocolReserve (`0x43ea78...d49799`, chain 999)
- ProtocolReserve (`0x6c50a4...bfe973`, chain 8453)
- ProtocolReserve (`0x149a9a...0d8ee6`, chain 42161)
- RebalancePlanner (`0x9a1fce...e19b7b`, chain 1)
- RebalancePlanner (`0x61f3d9...7b0a45`, chain 56)
- RebalancePlanner (`0xc3687d...167804`, chain 999)
- RebalancePlanner (`0x84600d...88643a`, chain 8453)
- RebalancePlanner (`0xa7e6a3...ee09b4`, chain 42161)
- ReferralManager (`0x257555...dfebdc`, chain 1)
- ReferralManager (`0x1b5f42...ebfd35`, chain 56)
- ReferralManager (`0xa90b89...1031e0`, chain 999)
- ReferralManager (`0xab31a2...f6ff28`, chain 8453)
- ReferralManager (`0xf89bae...07bc3b`, chain 42161)
- TimelockController (`0x896389...eae985`, chain 1)
- TimelockController (`0x16e38a...a01c6b`, chain 56)
- TimelockController (`0x389170...50c398`, chain 999)
- TimelockController (`0x93e4a1...88c872`, chain 8453)
- TimelockController (`0xab9e67...6d5611`, chain 42161)
- UniswapAdapter (`0x0c10cb...900bd3`, chain 1)
- UniswapAdapter (`0xaebfc2...9cfd3f`, chain 56)
- UniswapAdapter (`0x0e5d5a...c5be3b`, chain 8453)
- UniswapAdapter (`0x6e08ca...b4f749`, chain 8453)
- UniswapAdapter (`0xc0fac5...f6fc1d`, chain 42161)
- Valuation (`0x43ea78...d49799`, chain 1)
- Valuation (`0xbcdd73...2edc10`, chain 56)
- Valuation (`0x5a049d...a04cc7`, chain 999)
- Valuation (`0xae79b3...71a548`, chain 8453)
- Valuation (`0xf6d5ce...3d7d6c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 47; live-surface rows included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/47 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/47 (8.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 302 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 118
- Confirmed-live implementations: 47 of 349 unique; 302 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/59
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 290
- Unique implementations: 349
- Raw deployments: 507
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 6.8% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385454 | `0x9efde1...a5fa28` | ✅ Audited |
| CLCore | unknown | project_anchor | own_supporting | 0 | base | unit-385445 | `0x61c36a...52770f` | ✅ Audited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | base | unit-385447 | `0x6c50a4...bfe973` | ✅ Audited |
| Valuation | unknown | project_anchor | own_supporting | 0 | base | unit-385458 | `0xae79b3...71a548` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66a4ac...fc0999` | ⚠️ Unaudited |
| CLCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3a5e78...a86e79`; bsc `0x78af86...e4b5b1`; bsc `0xc4aafe...30e05c` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385398 | `0xab2646...160312` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | bsc | unit-385420 | `0x10c6d3...a08eb2` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385467 | `0x6f8179...63ae11` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385415 | `0xd52170...86ae91` | ⚠️ Unaudited |
| CLManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x029495...a68a70`; ethereum `0x3b2cfb...e742b6`; bsc `0x43f44c...6a884d`; bsc `0xc5a634...6989b5`; hyperliquid `0xa33471...f9c96f`; base `0x15689e...670af5`; base `0x846fb8...791a7c`; base `0xb822f2...8fbd14`; arbitrum `0xbe682d...350269`; arbitrum `0xe9b946...c3ec0a` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-385400 | `0xcb9f75...87f3b3` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | bsc | unit-385426 | `0x4d5a83...4be153` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385469 | `0x84ff60...815fc2` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | base | unit-385443 | `0x52dcc4...bd48a2` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385404 | `0x57f5b2...2bc2aa` | ⚠️ Unaudited |
| DefiIRAAutoBuy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2e0c4f...9d0ab4`; base `0x871d3a...b925dd` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385388 | `0x2e631a...db574f` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-385436 | `0xfdbeb9...81d48d` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385465 | `0x5afebf...8ec338` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | base | unit-385441 | `0x180670...bf1921` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385407 | `0x91d0ac...16c449` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x1d741a...a64a69`; base `0x248d33...4ff395`; base `0x2aa8ca...c0c17f`; base `0x2dd39a...04d0ed`; base `0x6c133e...dc7fb4`; base `0x8ca465...42caee`; base `0xb55d11...e0f21c`; base `0xc9133c...410e73`; base `0xd41cc7...04ab2a`; base `0xf408ed...e81d82` | ⚠️ Unaudited |
| ProjectXAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-385475 | `0xc5cf6b...00cc0d` | ⚠️ Unaudited |
| ProtocolReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x38de5b...6f5323`; bsc `0x953b24...06b278`; bsc `0xa71df7...f08012`; bsc `0xf3e9dc...73f23d`; hyperliquid `0x7adce9...8659f2`; hyperliquid `0x898ec6...772650`; hyperliquid `0xbcab6c...9cbb27`; base `0xb55cb1...90edc8`; base `0xe24135...2e6811`; arbitrum `0xc3e111...e7014a` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385392 | `0x7adce9...8659f2` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | bsc | unit-385434 | `0xf3af04...7b5889` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385461 | `0x43ea78...d49799` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385402 | `0x149a9a...0d8ee6` | ⚠️ Unaudited |
| RebalancePlanner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x06dff4...ca2e6c`; ethereum `0xbcab6c...9cbb27`; base `0x06f655...9799be`; base `0x4e7855...1f2e24` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385396 | `0x9a1fce...e19b7b` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | bsc | unit-385428 | `0x61f3d9...7b0a45` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385473 | `0xc3687d...167804` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | base | unit-385451 | `0x84600d...88643a` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385409 | `0xa7e6a3...ee09b4` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-385385 | `0x257555...dfebdc` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | bsc | unit-385424 | `0x1b5f42...ebfd35` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385471 | `0xa90b89...1031e0` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | base | unit-385456 | `0xab31a2...f6ff28` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385418 | `0xf89bae...07bc3b` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-385394 | `0x896389...eae985` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x03421c...38d325`; bsc `0xc20e4b...3a71f2`; base `0x96b983...1a07c3`; base `0xdd6135...65b6dd` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | bsc | unit-385421 | `0x16e38a...a01c6b` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385460 | `0x389170...50c398` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | base | unit-385452 | `0x93e4a1...88c872` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385411 | `0xab9e67...6d5611` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x139196...70b083`; arbitrum `0x435371...ef6180` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3345d1...554be4`; arbitrum `0x979522...277d95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5f75c6...24d4cb`; arbitrum `0xe4a424...6616f7` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-385383 | `0x0c10cb...900bd3` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-385431 | `0xaebfc2...9cfd3f` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385439 | `0x0e5d5a...c5be3b` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385449 | `0x6e08ca...b4f749` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-385413 | `0xc0fac5...f6fc1d` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385390 | `0x43ea78...d49799` | ⚠️ Unaudited |
| Valuation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x738db7...6727e3`; bsc `0x52ee65...329c3c`; bsc `0xe4ad95...ecbc51`; base `0xb80b50...76035e`; arbitrum `0x54a02f...45de89` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | bsc | unit-385432 | `0xbcdd73...2edc10` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385463 | `0x5a049d...a04cc7` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385416 | `0xf6d5ce...3d7d6c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (290)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x195b6d264423e15e78b97e6cbdb5ae87df0ab3ad) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x1637b2...b5e770`; base `0x195b6d...0ab3ad`; base `0xa0e951...c8f5a0` | ❓ Unverified |
| Proxy (impl: 0x2f8b239bf22cb3cee3f635711166a58b7af3d446) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x084844...dfb340`; base `0x2f8b23...f3d446` | ❓ Unverified |
| Proxy (impl: 0x38ece7863f07b5fbc5db188b9ca6ad36ca5359df) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0e71a3...5cd6ef`; base `0x38ece7...5359df` | ❓ Unverified |
| Proxy (impl: 0x3c0113dd18bf2ccdc8f0b70e298d48a2f51f780f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2d9d90...10eda0`; base `0x3c0113...1f780f` | ❓ Unverified |
| Proxy (impl: 0x3eede7feba1338754508c373d0f63758aca5b38a) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x150b65...0b026f`; base `0x3eede7...a5b38a` | ❓ Unverified |
| Proxy (impl: 0x463643bd73d80c4b745186cea5374404106d12e9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x185d50...fcb786`; base `0x463643...6d12e9` | ❓ Unverified |
| Proxy (impl: 0x4ade4a390bbb5d216b4e024cd4426b600e8cb618) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x3e07f2...91b9a8`; base `0x4ade4a...8cb618`; base `0xd55b52...73a564` | ❓ Unverified |
| Proxy (impl: 0x56678c0872b40acd1c327694656b8d6998dec986) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1df3bd...1cd3fc`; base `0x56678c...dec986` | ❓ Unverified |
| Proxy (impl: 0x58fc8b5d4096224f2f768afd6c7465ee501b7819) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x02853d...12b9bb`; base `0x58fc8b...1b7819` | ❓ Unverified |
| Proxy (impl: 0x5d712af6ab8d67133e6cb8010b5d17cbb32fcd97) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00b778...c71db3`; base `0x5d712a...2fcd97` | ❓ Unverified |
| Proxy (impl: 0x63d177f4292d40afc11474de061142a3931ce1bc) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x52602d...994d66`; base `0x63d177...1ce1bc` | ❓ Unverified |
| Proxy (impl: 0x7f23824a1e4fc26f351a7cc3bb330937fb58d4d2) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a61a9...73c52d`; base `0x7f2382...58d4d2` | ❓ Unverified |
| Proxy (impl: 0x80745781dc7a364f2ae24e7c8629ac184fa220b9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4befa3...9acb9e`; base `0x807457...a220b9` | ❓ Unverified |
| Proxy (impl: 0x80eda70dab20d6d5db08b7e342810eee22c71b99) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x551e0f...f25ed7`; base `0x80eda7...c71b99` | ❓ Unverified |
| Proxy (impl: 0x8e9bfe6143246c12c097e208cf0b6f88e00ca874) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3c56c8...cca5f3`; base `0x8e9bfe...0ca874` | ❓ Unverified |
| Proxy (impl: 0x95eeddf3727c6799b777115aefb10c62c6b93223) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x094f7f...f28e4e`; base `0x468ed7...7feceb`; base `0x95eedd...b93223` | ❓ Unverified |
| Proxy (impl: 0x97cca6b265c2868229c3e46d32f7ed64d8075c71) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6b5251...2e3f96`; base `0x97cca6...075c71` | ❓ Unverified |
| Proxy (impl: 0x980e2bd25001c9d11659173cd9c87510bd03da4f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e01ef...c351bf`; base `0x980e2b...03da4f` | ❓ Unverified |
| Proxy (impl: 0x98ea5c83f05c0dd3f17e5597f965b28ccbd73432) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8f067d...9a7372`; base `0x98ea5c...d73432` | ❓ Unverified |
| Proxy (impl: 0x9a5289b88f3554e68d3a57df1a9747de4f2a3fcc) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x33a006...2de56d`; base `0x9a5289...2a3fcc` | ❓ Unverified |
| Proxy (impl: 0x9cbd8339df5f4a788e06fa9556235fb853f7ee89) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x259ec3...87c3a4`; base `0x9cbd83...f7ee89`; base `0xe0914b...249bb7` | ❓ Unverified |
| Proxy (impl: 0xa588854cc802fe98c6dee1f59d02654c96aa839f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x191aea...713348`; base `0xa58885...aa839f` | ❓ Unverified |
| Proxy (impl: 0xa5b793f95efb611ffb1dc53dab05dad8bbd2c959) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0ca312...5e5e77`; base `0xa5b793...d2c959` | ❓ Unverified |
| Proxy (impl: 0xa88f43bc51365aa5801463ed087bee3de1065c9f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4ca29f...8cd0d9`; base `0xa88f43...065c9f` | ❓ Unverified |
| Proxy (impl: 0xaceacc6af46732fb37df86c39777c2e796a490cc) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b1fdc...b5719c`; base `0xaceacc...a490cc` | ❓ Unverified |
| Proxy (impl: 0xb0e6d64f9bb8623089300f77a7b2f1f136c6b6f3) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x182c43...93c9cc`; base `0xb0e6d6...c6b6f3` | ❓ Unverified |
| Proxy (impl: 0xb1f7c646f9b952095b1fcd5f0540420db61ecd7f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x93c51d...892f91`; base `0xb1f7c6...1ecd7f` | ❓ Unverified |
| Proxy (impl: 0xb20fd1821e3b7a91902950304dfc68b6c7cf0247) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x52ee65...329c3c`; base `0xb20fd1...cf0247` | ❓ Unverified |
| Proxy (impl: 0xb417b25a18d165fc4c9e97cc19cd0335c7e4ade2) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x52fb7e...e2a1a9`; base `0xb417b2...e4ade2` | ❓ Unverified |
| Proxy (impl: 0xb70896a6437d3888ef28b12081f50c89af498ca4) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88ed58...079ef0`; base `0xb70896...498ca4` | ❓ Unverified |
| Proxy (impl: 0xb767d4f4de2ea5fa35fb42230a9dec7e0cc32f37) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x517eb9...e21f34`; base `0xb767d4...c32f37` | ❓ Unverified |
| Proxy (impl: 0xbac00ab336982a2129d4d10cf1e01292a3970a53) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb545c1...55f172`; base `0xbac00a...970a53` | ❓ Unverified |
| Proxy (impl: 0xbf74c6b3f5633182da9e7687c8caaf774159eed7) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2a3b87...784590`; base `0xbf74c6...59eed7` | ❓ Unverified |
| Proxy (impl: 0xbfbb3c814f276e9c35f22784ab3d24b8dcfcaaa0) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6fd882...f7a025`; base `0xbfbb3c...fcaaa0` | ❓ Unverified |
| Proxy (impl: 0xc20e4b932de069ca20307f46de43dbeee23a71f2) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8ae8a5...b10847`; base `0xc20e4b...3a71f2` | ❓ Unverified |
| Proxy (impl: 0xc2f9183d19caa6e8c2c88a1908449cb2f9fc477b) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0b92f8...384a71`; base `0xc2f918...fc477b` | ❓ Unverified |
| Proxy (impl: 0xc32a4cb892d773131f88d3dda00cf181873c1a5a) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5538ac...6f39bb`; base `0xc32a4c...3c1a5a` | ❓ Unverified |
| Proxy (impl: 0xcc23e29a1c4a8b83ee5d0c961394698e15db1f62) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c6a6d...88a528`; base `0xcc23e2...db1f62` | ❓ Unverified |
| Proxy (impl: 0xced03d02d7311100e9ffc337d5fd5a42cd28e998) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb8a949...97397a`; base `0xced03d...28e998` | ❓ Unverified |
| Proxy (impl: 0xd24a0cf01853eb91148629ddf5d88ce93e357f18) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x3112f6...56fa28`; base `0xac1e53...a5a678`; base `0xd24a0c...357f18` | ❓ Unverified |
| Proxy (impl: 0xd308debf4654b51ee0f86eb125d0478b0e4429d2) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb20c66...1403cb`; base `0xd308de...4429d2` | ❓ Unverified |
| Proxy (impl: 0xd3f5f4c601e3db0addfa81486df20ac8d6a4a247) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3c2e4c...142581`; base `0xd3f5f4...a4a247` | ❓ Unverified |
| Proxy (impl: 0xd4d15e5407b40c977f9f0b1316a5ea051fdc0cff) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x4fc01f...05067e`; base `0xd4d15e...dc0cff`; base `0xe4f54f...381b5f` | ❓ Unverified |
| Proxy (impl: 0xe07f6b8d67179bcc496b77642466cf934dfae603) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9d0661...a8c168`; base `0xe07f6b...fae603` | ❓ Unverified |
| Proxy (impl: 0xe08ed179891d5869483c81b35123ec29ef192434) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb04e06...f35ab1`; base `0xe08ed1...192434` | ❓ Unverified |
| Proxy (impl: 0xe360336a76a183a14f509dc87f4984b8db494cee) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2f00a2...1521c6`; base `0xe36033...494cee` | ❓ Unverified |
| Proxy (impl: 0xe6793b1b6c004ec8630673e77c178f79749537e8) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0aee35...afac78`; base `0xe6793b...9537e8` | ❓ Unverified |
| Proxy (impl: 0xeaf4a3636b2102b72b1b6036f09820399b47643a) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbda868...7084b7`; base `0xeaf4a3...47643a` | ❓ Unverified |
| Proxy (impl: 0xf0fcf9f777f842024bb60a6439595b3b10a1e929) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9631b3...70c998`; base `0xf0fcf9...a1e929` | ❓ Unverified |
| Proxy (impl: 0xfcfb918dff6a66be1491c0551cd4fb3e653ae533) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xdfd673...1eed4c`; base `0xfcfb91...3ae533` | ❓ Unverified |
| Proxy (impl: 0xfe16935c4fb04741ca76933fbf01e70970d1d770) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb12877...84d6d8`; base `0xfe1693...d1d770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c22e5...3b8658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10178b...a9e15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e1318...839a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad5b7e...b5c413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb36d9f...75f307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x293230...cfcf64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x332edd...4ae0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x44ab6d...1468ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x971e07...002a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc319cf...b6a1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc3edd9...7ff3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xec6a12...166098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x03421c...38d325`; base `0x953b24...06b278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03dcf3...e00782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04599b...e95a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0518ea...439e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x056e2e...045ba6`; base `0xa8e4ca...479d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x058d52...0f77cb`; base `0x6f40f4...f24d4f`; base `0x96c092...3ec264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05c74d...d6f9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x070108...ac1775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x07b5f9...4b77b7`; base `0x4c4bca...e0fe13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c7523...57ba30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x10178b...a9e15f`; base `0xa4d86b...c5d666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10cc4e...6e2f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x118d94...d89c89`; base `0x2c75d4...11f191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x125903...a8025d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1553cc...70f984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x15f1fc...9bb2d9`; base `0xbd86ef...39e6f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x16187f...2744c1`; base `0xcd2e42...6928bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x170188...e4a940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18411a...e18f30`; base `0x8da57b...6fdbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18d348...e41d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x197e5a...3e72ef`; base `0xd20c74...aeff70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19b15b...9a2d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a3cd4...098b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b508a...73584a`; base `0xc8eaad...d30801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b6c0d...99fe5a`; base `0x364eea...ead173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c85ed...47944f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x1cf619...b26002`; base `0x949329...afa0ef`; base `0xfda508...ff5274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20ef14...f9451d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21448e...e1fc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x256c2e...bd19c2`; base `0x915708...9eee17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2734bb...798368`; base `0xee65f2...c11b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27b4d7...083685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28b139...1b6fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2a7764...e7b837`; base `0x72021d...a26c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2b29cc...ff83be`; base `0xd90e5b...523c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2c56af...5103ce`; base `0xba4b5a...531ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d00fa...77b904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32d234...a6ffd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x337e56...a87525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x365d61...0fccba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x373143...b4f085`; base `0xdca771...7f5316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x380200...4c037e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38de5b...6f5323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x3986ae...e49022`; base `0x45591a...b08b24`; base `0xfd8de9...b99e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x39fc17...2d73d9`; base `0xcd6d3a...c1919f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3afb0b...754702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b878b...a5d4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e1de6...9e9f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e7f74...74342a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ec3c8...f7df4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f1055...e904c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x411747...b0b9c5`; base `0xfae04c...e3a471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x432a0d...fb7dd1`; base `0xa72bda...e54f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x433dba...642e25`; base `0x7bdb65...37ffe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x43f901...1d15ff`; base `0xeef8cf...e265ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x456399...04233e`; base `0x8cb1c0...3e0f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47052c...e27b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x47b609...23a1e1`; base `0x95b5f3...b0c753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x489e4e...f45fa9`; base `0xc076fb...7cee8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48ebf6...d3aec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x49a550...22f35c`; base `0xf59f7c...b7bf80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4df2e7...aeee62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x500bf5...0b9714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x50edf4...e3ae28`; base `0x661435...a6b4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x510627...e3317e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x524c02...a72998`; base `0x576aec...f1925c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x537b67...a789fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5652ac...d06423`; base `0xc90776...1e0594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x573af9...71d060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579021...a9a842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5920c1...14596d`; base `0xb59ccd...8ef51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a8d50...3d6735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5bb604...2c3410`; base `0xad2ef6...0e9c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c4b53...835bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5e5b34...1ad640`; base `0xdc685d...a40fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ea8fb...8985e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5f5b32...4e96d9`; base `0x96615e...84cc30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f75c6...24d4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x633cf9...a88aad`; base `0x704153...f81b76`; base `0x773382...75cecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x634ff0...773d97`; base `0x9a60e8...ed918e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x641239...e453c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x64704e...754cbd`; base `0xa94c51...f93da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6477be...fc74c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x659566...28274a`; base `0xdd0f34...43685d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65e64b...0cde09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x65fd48...fd590f`; base `0x788407...501f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x665d86...ab17dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67a515...94e46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67aa03...ce088e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x685fcc...c48519`; base `0xa075ae...7d060c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x719029...2b0af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73bd64...a61ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73fa94...d2fb4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x744347...b01b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x74b5b0...2f2cab`; base `0x914ebf...4bb762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x758278...adeb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76fda9...d1dd89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78533c...cc4186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x786349...1d9a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79cf8e...89935e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7bf704...06b820`; base `0x948609...fcc46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7da54c...825713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7dc80b...297d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7f205e...2bd425`; base `0xad5b7e...b5c413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x807fe5...a9cb07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x81bdff...f8de0e`; base `0xd7f777...604f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82acfd...4f0e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84ff60...815fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8af7a3...7f7262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d45e1...6f180a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8fefff...e2eb03`; base `0xc4aafe...30e05c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9074fe...92c445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x915389...71c21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91a768...1ed525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91b69a...a13df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9230b0...c285be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93a346...b79dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x944b75...8db80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96145c...bc555a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x968cf2...1e17c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x96e524...f3f192`; base `0xdf845e...f3ba1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x999539...376a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bc4b2...b9c802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9bd5f5...3282e4`; base `0xb2ae39...49bb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e784d...31790b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f2613...36dd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa09063...03bed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0f65c...f5b075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2ca3e...615a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa32357...a43160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa44ae0...d2a208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4c89f...0489b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5cd7a...86f4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa638b4...e57a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac2ac0...f1cf79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xadbd17...40983e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeb642...b59a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb11d4f...8a893c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb66b85...537d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb7d6a5...64beae`; base `0xf79163...f4dbcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbcb7bb...9df7af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf81f6...346ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0c658...8399fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc41a99...b6ed08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc44675...a2b94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc55347...14610f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5cf6b...00cc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7f1a1...4b81f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc98e75...ee9da1`; base `0xee36f9...918986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca5bf1...f3bf82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca9749...a175d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad830...46cce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbf562...9dda27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd4163...a87ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf83f7...048585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd07173...b229b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd3781d...3052a3`; base `0xe24835...d93d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd512bf...a7551e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd62610...0a90cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd8e561...1561ea`; base `0xf31466...ca672f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdae75f...ceacbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc205e...bfc885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf35e8...a26aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe13bbc...52d1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe53a48...a40cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe71e46...59acfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe76d3b...a1a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8d795...ed4683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe933a8...d560f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed0538...ac4f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee3810...6aada8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeecf67...d4f879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef6b45...f60c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf026b1...40c42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf04330...195bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2352f...9857b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3c3f2...4b02d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf40f57...6059ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf502e9...2d72d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5b5dd...20c54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7978c...25bd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7b3fb...04f22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7baba...47b205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb305b...d09574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbbd2c...441187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd9028...d9ff2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xfe0215...625078`; base `0xff3909...2eff1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe4d3c...10ebf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x144b7e...021b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1546a5...319574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2281b6...ebc023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23f700...bdeba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa64b...3f48e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x426a88...d6433b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43f901...1d15ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49e4d4...1c7a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56d142...d0b00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5811b5...0274b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5afebf...8ec338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f8468...4f5c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60190c...6b345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60e719...313a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x738db7...6727e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84ff60...815fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x898ec6...772650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c6512...f09564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x936f77...f2dfae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x976ce6...683721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98b378...9c965a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dc30a...8b500a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa33471...f9c96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa6093...3598df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb58834...7cd55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9e0ff...459111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4b5a...531ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3f045...baebc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8022f...025d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca0bfe...97976c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbabba...c2440f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfb720...7ebd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd62610...0a90cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd62c1f...5eaf23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0bf5d...32a02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3c3f2...4b02d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9e4f7...0f9a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9f2ad...f872e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe4d3c...10ebf5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ezmanager/audit.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 20 | high |
| [Valves_v1_5.pdf](https://github.com/EZManagerCL/EZManagerContracts/blob/master/audits/Valves_v1_5.pdf) | Valves | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13103] audit.pdf — matched: Extracted 6 main contracts from Source Files table and additional interfaces/contracts from Functions Analysis. Audit date from 'Corrected Phase 3 13 Feb 2026'.
- [13104] Valves_v1_5.pdf — no match: Scope table lists 4 files: src/CLManager, src/ReferralManager, src/EZWrapper, libraries/CLManagerUtils. Contract names extracted from file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | CLCore | own contract | CLCore (alternative) `0xd52170...86ae91` — deployed 2026-04-14 21:36:47+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0xab2646...160312` — deployed 2026-03-16 02:38:23+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0x6f8179...63ae11` — deployed 2026-04-26 22:47:00+03 — liveness: live (code_present_context)<br>CLCore (selected) `0x61c36a...52770f` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0x10c6d3...a08eb2` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | Valuation | own contract | Valuation (selected) `0xae79b3...71a548` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0xf6d5ce...3d7d6c` — deployed 2026-04-14 21:36:43+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0x43ea78...d49799` — deployed 2026-03-16 02:38:23+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0x5a049d...a04cc7` — deployed 2026-04-26 22:45:00+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0xbcdd73...2edc10` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | CLManager | ambiguous — not counted | CLManager (alternative) `0x4d5a83...4be153` — deployed 2026-05-31 05:27:22+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0xcb9f75...87f3b3` — deployed 2026-05-31 05:30:59+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x52dcc4...bd48a2` — deployed 2026-05-31 05:13:33+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x84ff60...815fc2` — deployed 2026-05-31 04:56:00+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x57f5b2...2bc2aa` — deployed 2026-05-31 05:22:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapAdapter | ambiguous — not counted | UniswapAdapter (alternative) `0x0c10cb...900bd3` — deployed 2026-03-16 02:38:23+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0x0e5d5a...c5be3b` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0x6e08ca...b4f749` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0xc0fac5...f6fc1d` — deployed 2026-04-14 21:36:42+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0xaebfc2...9cfd3f` — deployed 2026-04-17 01:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | AerodromeAdapter | own contract | AerodromeAdapter (selected) `0x9efde1...a5fa28` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | RebalancePlanner | ambiguous — not counted | RebalancePlanner (alternative) `0x9a1fce...e19b7b` — deployed 2026-05-26 01:22:11+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0x84600d...88643a` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0x61f3d9...7b0a45` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0xa7e6a3...ee09b4` — deployed 2026-05-26 01:04:25+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0xc3687d...167804` — deployed 2026-05-26 01:30:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | ProtocolReserve | own contract | ProtocolReserve (alternative) `0x149a9a...0d8ee6` — deployed 2026-04-14 21:36:39+03 — liveness: live (code_present_context)<br>ProtocolReserve (selected) `0x6c50a4...bfe973` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0xf3af04...7b5889` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0x7adce9...8659f2` — deployed 2026-03-16 02:37:11+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0x43ea78...d49799` — deployed 2026-04-26 22:42:00+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | ICLDexAdapter | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLCore | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IValuation | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IRebalancePlanner | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | INonfungiblePositionManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamNonfungiblePositionManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IAerodromeFactory | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLPool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamPool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISwapRouterV3 | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamSwapRouter | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapQuoterV2Like | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamQuoterV2Like | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamPoolState | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| Valves_v1_5.pdf | CLManager | ambiguous — not counted | CLManager (alternative) `0x4d5a83...4be153` — deployed 2026-05-31 05:27:22+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0xcb9f75...87f3b3` — deployed 2026-05-31 05:30:59+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x52dcc4...bd48a2` — deployed 2026-05-31 05:13:33+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x84ff60...815fc2` — deployed 2026-05-31 04:56:00+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x57f5b2...2bc2aa` — deployed 2026-05-31 05:22:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | ReferralManager | ambiguous — not counted | ReferralManager (alternative) `0x257555...dfebdc` — deployed 2026-05-26 01:22:23+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xa90b89...1031e0` — deployed 2026-05-26 01:33:00+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xf89bae...07bc3b` — deployed 2026-05-26 01:04:28+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xab31a2...f6ff28` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0x1b5f42...ebfd35` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | EZWrapper | ambiguous — not counted | EZWrapper (alternative) `0x5afebf...8ec338` — deployed 2026-05-26 01:37:00+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x91d0ac...16c449` — deployed 2026-05-26 01:04:31+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x2e631a...db574f` — deployed 2026-05-26 01:22:23+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x180670...bf1921` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0xfdbeb9...81d48d` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | CLManagerUtils | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xab2646...160312` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10c6d3...a08eb2` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6f8179...63ae11` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd52170...86ae91` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb9f75...87f3b3` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d5a83...4be153` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x84ff60...815fc2` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52dcc4...bd48a2` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x57f5b2...2bc2aa` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e631a...db574f` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfdbeb9...81d48d` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5afebf...8ec338` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x180670...bf1921` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x91d0ac...16c449` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc5cf6b...00cc0d` | ProjectXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7adce9...8659f2` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf3af04...7b5889` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x43ea78...d49799` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x149a9a...0d8ee6` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a1fce...e19b7b` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x61f3d9...7b0a45` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc3687d...167804` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x84600d...88643a` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa7e6a3...ee09b4` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x257555...dfebdc` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b5f42...ebfd35` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa90b89...1031e0` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xab31a2...f6ff28` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf89bae...07bc3b` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c10cb...900bd3` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaebfc2...9cfd3f` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0e5d5a...c5be3b` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e08ca...b4f749` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc0fac5...f6fc1d` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43ea78...d49799` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbcdd73...2edc10` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5a049d...a04cc7` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf6d5ce...3d7d6c` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 291 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 18 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: temporal_name=3, unique_name=1

Zero-match audit list:

- [13104] Valves_v1_5.pdf

Fork inheritance lineage and inherited audits are included when available.
