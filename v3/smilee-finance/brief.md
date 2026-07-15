# Agentic Audit Brief: Smilee Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Smilee Finance (`smilee-finance`)
- Website: [https://smilee.finance/](https://smilee.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, berachain
- Contract surface: 207 unique implementations (231 raw deployments)
- Coverage basis: 5/23 confirmed own live verified implementations (21.7%); conservative 21.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $932,956.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Smilee Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across arbitrum, berachain. Structural roles: 12 supporting, 11 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (12), core (11)
- Contract kinds: contract (23)
- Detected standards: accesscontrol (17), erc165 (17), pausable (8), erc20 (5), erc1967proxy (3), erc721 (3), erc4626 (1)
- Frameworks: openzeppelin (22), prb-math (6), solmate (4), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfdfd95...5b0774`, chain 42161)
- UnnamedContract (`0x3f7755...f2ebce`, chain 80094)
- UnnamedContract (`0xb76ae8...25693f`, chain 80094)
- UnnamedContract (`0xf2133a...df88f2`, chain 80094)
- AddressProvider (`0x110a3b...062cf1`, chain 42161)
- ChainlinkPriceOracle (`0x60b482...cfe0bc`, chain 42161)
- ERC1967Proxy (`0x3b3dd2...0668e2`, chain 80094)
- ERC1967Proxy (`0x5dbffc...102137`, chain 80094)
- ERC1967Proxy (`0xab7075...f0c4f1`, chain 80094)
- FeeManager (`0xff7699...700d75`, chain 42161)
- IG (`0x1e0aa0...c5c016`, chain 42161)
- IG (`0x1ee870...9f003f`, chain 42161)
- IG (`0x521e16...7b7153`, chain 42161)
- IG (`0x550f20...3361b8`, chain 42161)
- IGAccessNFT (`0x3d4d50...f6dceb`, chain 42161)
- MarketOracle (`0x130648...7cd0d5`, chain 42161)
- NodeWithdrawalVault (`0x333bd3...6e9ffe`, chain 80094)
- PositionManager (`0x49a07a...34056a`, chain 42161)
- Registry (`0x8682ea...26732e`, chain 42161)
- SwapAdapterRouter (`0x991069...b09de5`, chain 42161)
- Vault (`0x6b028c...0da4f0`, chain 42161)
- Vault (`0xc1894f...e569f4`, chain 42161)
- Vault (`0xcbe9db...2a8a14`, chain 42161)
- Vault (`0xd3468b...f68831`, chain 42161)
- VaultAccessNFT (`0xc47166...8b9e1f`, chain 42161)
- VaultProxy (`0x732c5e...40fddf`, chain 42161)
- WGBera (`0xd77552...f4f912`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/23 (21.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 180 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 27 of 207 unique; 180 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/41
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 166
- Unique implementations: 207
- Raw deployments: 231
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 21.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 12.2% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GBera | unknown | project_anchor | own_supporting | 1 | berachain | unit-392614 | `0x3b3dd2...0668e2` | ✅ Audited |
| NodeRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-392613 | `0x5dbffc...102137` | ✅ Audited |
| NodeWithdrawalVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-392607 | `0x333bd3...6e9ffe` | ✅ Audited |
| WGBera | unknown | project_anchor | own_supporting | 0 | berachain | unit-392610 | `0xd77552...f4f912` | ✅ Audited |
| WithdrawalQueue | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-392612 | `0xab7075...f0c4f1` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressProvider | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392588 | `0x110a3b...062cf1` | ⚠️ Unaudited |
| AddressProvider | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e5af7...80546e` | ⚠️ Unaudited |
| AmountHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1b1a2...35979c` | ⚠️ Unaudited |
| AmountsMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x123dbf...5a4e09`; arbitrum `0x91869f...417b70`; arbitrum `0xa231a8...242b4f`; arbitrum `0xaa1ebd...61b536`; arbitrum `0xf0162a...af20ca` | ⚠️ Unaudited |
| ChainlinkPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392596 | `0x60b482...cfe0bc` | ⚠️ Unaudited |
| EpochFrequency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xf141e7...bff4a3`; arbitrum `0xfbf712...554792` | ⚠️ Unaudited |
| FeeManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392606 | `0xff7699...700d75` | ⚠️ Unaudited |
| Finance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e5132...7517e5` | ⚠️ Unaudited |
| FinanceIGPayoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x07c970...c7467c`; arbitrum `0x4c0418...757f97`; arbitrum `0x6b8b6d...8ce95a`; arbitrum `0x7b2eaf...c53be7`; arbitrum `0xb68271...70d284` | ⚠️ Unaudited |
| FinanceIGVega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb13170...5b9738` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392590 | `0x1e0aa0...c5c016` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392591 | `0x1ee870...9f003f` | ⚠️ Unaudited |
| IG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x4e5121...00c933`; arbitrum `0x70def9...0548ae`; arbitrum `0x9650a8...e86f77`; arbitrum `0xc5cd71...fc4fac`; arbitrum `0xc9293c...fed768` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392594 | `0x521e16...7b7153` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392595 | `0x550f20...3361b8` | ⚠️ Unaudited |
| IGAccessNFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-392592 | `0x3d4d50...f6dceb` | ⚠️ Unaudited |
| MarketOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121e69...ec70f6` | ⚠️ Unaudited |
| MarketOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392589 | `0x130648...7cd0d5` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa452e8...6a02bf` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392593 | `0x49a07a...34056a` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x838370...05fee6`; arbitrum `0xabb4e0...fa10cb` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392599 | `0x8682ea...26732e` | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-392600 | `0x991069...b09de5` | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2ca8b...eac009` | ⚠️ Unaudited |
| TimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8b57...95ae80` | ⚠️ Unaudited |
| TokensPair | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x082e02...6ac6bf`; arbitrum `0xd92d3c...40ffea`; arbitrum `0xfb84f1...11a5ad` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x45c0c7...0d7924`; arbitrum `0x55c950...0f201f`; arbitrum `0x7f2c0f...64b0e9`; arbitrum `0xbd80e2...251182`; arbitrum `0xc948d7...31221b` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392597 | `0x6b028c...0da4f0` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392601 | `0xc1894f...e569f4` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392603 | `0xcbe9db...2a8a14` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392604 | `0xd3468b...f68831` | ⚠️ Unaudited |
| VaultAccessNFT | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392602 | `0xc47166...8b9e1f` | ⚠️ Unaudited |
| VaultLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x593843...62629b`; arbitrum `0x6ee8ae...f25724`; arbitrum `0xb7c607...e26739` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x544f53...b3fbf8` | ⚠️ Unaudited |
| VaultProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392598 | `0x732c5e...40fddf` | ⚠️ Unaudited |
| WadTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01a0ce...6eefd8`; arbitrum `0x9f57d3...b95310`; arbitrum `0xed09db...8cdf5d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x038093...1ec40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05dcaf...237449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07afae...eaeb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c464c...58a3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10ac50...8bcdad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1107a7...af23ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b09f...01b2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12c43a...62813f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x131385...926d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1366e9...4d431e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145569...b10243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x157fae...c96e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x166133...3dab43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b346...40d185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x188632...af1eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aaec0...31ccef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b2903...ccb83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bcf06...458cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bcf1a...71f947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bfac5...115b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d053f...f88f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2235c5...b60edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x228ac9...f986f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249026...bbe2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26b23e...b0e281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aaa29...cb7ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2da726...912062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f87dd...c3164f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30a961...69d22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31fdab...0049a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35fd8d...3a4d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3831e6...1d84e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a2ea6...bde38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a3de6...0795ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ea810...92d0e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x408e88...70e3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x425b3b...4435f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x433f2c...52e86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44bab0...a1b844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x460c03...1ff9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x470aac...275822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471a26...5bac30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48f35c...bc9221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x495fdc...a05f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a1352...25fdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d7fb9...963707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505a37...a4068a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50adcb...66cf9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x535fb0...f8e2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x546dbf...8d3315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57e3f8...784b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58f7e9...e1c8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58f984...c105ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a54f6...f150e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c9546...7aebdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cb17b...807abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d281a...6f1f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d429d...a02b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d6b0e...c8e547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd95c...bb8171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60178a...1639c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x603b66...edb5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60e60b...359a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6145ce...63758d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6427bc...21ea81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6488f9...b9f05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64f9ae...98c8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d554...1a41af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x685d40...0c9ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a495...e96c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69b7cb...15e7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c5261...fd7e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f8ae9...5da048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7068a0...4e077e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70a6dc...e8bc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70cba9...8f3637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7489a4...b62f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7574c8...7d03e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7617f6...cac9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7677db...93f8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76d0f4...ec0d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78dbce...fe2a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb67a...20989e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f6764...e902f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81f86d...68bd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82326a...ccaa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b55a...5544a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x876574...f87af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88e76f...954424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a27d5...fea867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a5498...946d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a655c...576886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aadce...dfe846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d698c...d1f8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f3039...146fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9101b8...06910a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x917aa3...ee8846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92911b...1c0236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x938ecb...d54ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b1a7...21dbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94b679...7b6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98bbf2...8b6bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99ebf8...da3a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dc2df...a475f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9eecb2...833b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ef67d...244a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6e9e0...2ae9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7fc33...9b9373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa2692...b03a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa53ba...de3e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc15c...4299c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2914...9b0686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5ef28...a431cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5fcab...bb523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb63db0...7baec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6fc1b...57938e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb72397...8cb364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb79b29...293595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7c54b...37a97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb98a71...c63b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba8e57...1de78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc5c69...2796ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdb9df...5a5756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe0aa6...6b72d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbff437...6cd4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4039a...17de46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4c901...fcfb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc58a60...fba8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc61678...ccb3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc66dc3...fe297e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6d597...eef7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb35c0...9e3d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb55d2...60c784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcba65c...15d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb110...29ce9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdd6db...8b2c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf4d8a...a82c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd10dc7...2c4560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd12e74...7451d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1c577...5ef847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4a198...5daad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd72337...8ad4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7c8ee...a31ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7dc54...3e35c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbce43...7d4154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddb9d4...a74f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe96770...93a1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed3e4a...92d405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0c898...d5fb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf19263...cdc93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2e173...e55764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf35dad...7cb55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4b78f...361087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4f015...d2c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf50a00...f84879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf53199...436725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf66d8e...055cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9afcd...fddb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfae000...0b7e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392605 | `0xfdfd95...5b0774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfedaa8...5bd117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff12b3...9e54df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffd8f9...61ef53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392608 | `0x3f7755...f2ebce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392609 | `0xb76ae8...25693f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392611 | `0xf2133a...df88f2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FK3W9Hj6sr2y8j6Zdkgub%2FGuardefy_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | matched | 7 | 3 | 0 | 2 | high |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FyKq7K1kTTAd57CnP2ask%2FCantina_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 8 | 3 | 0 | 0 | n/a |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FvhApBDZa65vO2FueUH9y%2FGuardefy_Audit_gBERA%20Update_Smilee%20Finance.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | matched | 3 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11664] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf — matched: All 9 contracts listed in scope section on page 2. Audit date is January 16, 2025 (fix review date).
- [11665] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf — matched: No reason recorded
- [11666] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | BeraContractsLocator | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffc...102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3...6e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab7075...f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffc...102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3...6e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab7075...f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x110a3b...062cf1` | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff7699...700d75` | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e0aa0...c5c016` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee870...9f003f` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x521e16...7b7153` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x550f20...3361b8` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3d4d50...f6dceb` | IGAccessNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x130648...7cd0d5` | MarketOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x49a07a...34056a` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8682ea...26732e` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x991069...b09de5` | SwapAdapterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6b028c...0da4f0` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc1894f...e569f4` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcbe9db...2a8a14` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd3468b...f68831` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc47166...8b9e1f` | VaultAccessNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732c5e...40fddf` | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 166 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=17

Fork inheritance lineage and inherited audits are included when available.
