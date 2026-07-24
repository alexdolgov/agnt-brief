# Agentic Audit Brief: Vest Markets

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Vest Markets (`vest-markets`)
- Website: [https://alpha.vestmarkets.com](https://alpha.vestmarkets.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, zksync-era
- Contract surface: 53 unique implementations (78 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $543,132.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Vest Markets. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, bsc, ethereum, optimism, polygon, zksync-era. Structural roles: 1 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 53
- Raw deployments: 78
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DevSrcBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x032aca08c1be8fa4d4902cf8db011769d9e55ca8`; arbitrum `0x0b3b31da21ca84068be498394c64ad8447495e14` | ⚠️ Unaudited |
| DevSrcBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x15a6da50cdf8afa78ebea9bda653d4c6c82051e5`; arbitrum `0x18b5b2706853cab26069970f75e6801a88a28bd6`; arbitrum `0x20816692943cf4b8dc13934d16b63c8a99aac75b`; arbitrum `0x5cb2d8112e9cc93f0c25bea0d2716e8c8cee2969`; arbitrum `0x6226cb9f194e26fe1c36b63aa736171041dadcfb`; arbitrum `0x648bcd32f540857e1100456434dde007843cab29`; arbitrum `0x6c0f4929e7bca32a8e96cd6baff34abd8ba9a1b2`; arbitrum `0x8092c5c45822a9861340e3a2e1c81146e89e1799`; arbitrum `0xa28b1b5814a811eab18b3ed33d1dd69131a46851`; arbitrum `0xab99af35aa09837d7287f169c81c86c3222f10d0`; arbitrum `0xb3df0644f6bce62e0f6914ea92380cc456ccfcf5`; arbitrum `0xbfe4c29a799865bfa5d0ef888a723d4a56b83dc8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: bsc `0xca0d26a9c82d0b6133e624ce26f7d7d50ebe71cb`; arbitrum `0x705aaffeccb370883531f09c64133d3abb6fa7f9` | ⚠️ Unaudited |
| SrcBridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-396341 | 2 deployments: bsc `0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974`; bsc `0xef14da66876476c1a75dc057343b97b6bd372c41` | ⚠️ Unaudited |
| SrcBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: bsc `0x42cd5231648fd412900e34d4deb14f602a958b7b`; bsc `0xb2f86eae1197032fa85389cc6c0f3b06b58dd1ea`; bsc `0xecd91c77b98d507e3c20bac86d2541ecbdc881e3`; arbitrum `0x33c48d0126f5bbcbf5fc37a814977e09df64cffc`; arbitrum `0x48624e74a7282ce09d2fb5cbe57d68d52d950a75`; arbitrum `0x4e63e30c34c162178a02a135eb94610f593ac2b7`; arbitrum `0x624556fc6955672d06afb1d197b0358ac9d04a77`; arbitrum `0x7b3e67687a99e608492a0ac460c88c56b43a4ad2`; arbitrum `0x8952c806da8fa2eccd408ee257647f2712209a97`; arbitrum `0x8f158704fc662684555f1e46de0950a38304cbd3`; arbitrum `0x9e55503859c886f415e938ef80d83d88854d2564`; arbitrum `0xf863a918073dff26a57cbb49037f98c2b22f78da` | ⚠️ Unaudited |
| SrcBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x80c526d1c2fddadb3cd39810cd7a79e07b0eda00` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725f61fd5c4d595bdf9c637b89d16fbda3043a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76962391e8435f70e20753c09d0ceef31e58229e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6d7e0a9c37e2c9b6b6f0d6143888365960d81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ee9572a4056c81cbfd208c48e2961427d03dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9cc9c8a8dbd06b0803cf42584b0d02bdf1dafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc91f74fcc39a053f540827506a59f651c2c31dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-396335 | `0xe80f92077131b9890599e418ae323de71ce1c35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85e7948d7bc2b5fd0af0728c3eff1eb503e3c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x725f61fd5c4d595bdf9c637b89d16fbda3043a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76962391e8435f70e20753c09d0ceef31e58229e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x80ee9572a4056c81cbfd208c48e2961427d03dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f9cc9c8a8dbd06b0803cf42584b0d02bdf1dafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0ebd426fdc4eefbb9e169429a27619a0ec04d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc91f74fcc39a053f540827506a59f651c2c31dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-396336 | `0xe80f92077131b9890599e418ae323de71ce1c35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe85e7948d7bc2b5fd0af0728c3eff1eb503e3c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b3b31da21ca84068be498394c64ad8447495e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21817542ee0dd9e125910bc77c159f84933eb56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x407720c48149a328edeedece430eb84aab1e27d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x508cb14825af8fe7e65b8e53ec91b69357e02399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76962391e8435f70e20753c09d0ceef31e58229e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0a8802d5a189cc45df18bac32e77c93161e7982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb15e8be19f97c7390fd026e5f0ab8feb31fddbfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-396337 | `0xe80f92077131b9890599e418ae323de71ce1c35a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-396338 | `0xf0bcf4ede69e5cb0eb1c9e35b4d408a5e7fda56b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c326f20feeb6ff15b4a0993d94200fd9285fe28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bef7bb1749f94311566b3249d8997e9cc0a29f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2076db86d9ebafc5602acabf0cee81a3df39f41d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-396339 | `0x32d95f243f9e2c1344e4baa91a8d32711527ef7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42cd5231648fd412900e34d4deb14f602a958b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x487ec6df5f1fb72093b6097413fa939ab09538fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a03291c17c81c623f9b33159bf1fda89ea00bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53ddb3055c391b8ccb077d15d41ba59d92048386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55133c825603e6a5b9e911abab23e75dc3bb07af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6859d2c4d0ac844c12530d73cada473d857e0bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7600192ec07444df13b041d23a598b885ff4018d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94512b759cace51b31cb252d112bf943a3fb36e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7410fab299cee4b16b207e4b42f293eff3cd42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa77b3c9d1d70c014f9ada3fa100e7fe0b503e64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca0d26a9c82d0b6133e624ce26f7d7d50ebe71cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0e149bd867aa4ebddaee139d20fc95b8b130bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeacad6f90d1bf519d6cb9a26ffe71e8c48620e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecd91c77b98d507e3c20bac86d2541ecbdc881e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef14da66876476c1a75dc057343b97b6bd372c41` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 71
- Live contracts: 0
- Unknown liveness contracts: 71
- Source-verified contracts: 29
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=3, source verified unclassified=26, unverified unclassified=42

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ProxyAdmin<br>`0xca0d26a9c82d0b6133e624ce26f7d7d50ebe71cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| candidate review | ProxyAdmin<br>`0x705aaffeccb370883531f09c64133d3abb6fa7f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| candidate review | TransparentUpgradeableProxy<br>`0x0b3b31da21ca84068be498394c64ad8447495e14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x42cd5231648fd412900e34d4deb14f602a958b7b` | non_address_book | unknown | unknown | verified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| source verified unclassified | SrcBridge<br>`0xb2f86eae1197032fa85389cc6c0f3b06b58dd1ea` | non_address_book | unknown | unknown | verified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| source verified unclassified | SrcBridge<br>`0xe54e9592c8292cb7d82cb8d3e4d0edc22e38a974` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| source verified unclassified | SrcBridge<br>`0xecd91c77b98d507e3c20bac86d2541ecbdc881e3` | non_address_book | unknown | unknown | verified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| source verified unclassified | DevSrcBridge<br>`0x032aca08c1be8fa4d4902cf8db011769d9e55ca8` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x15a6da50cdf8afa78ebea9bda653d4c6c82051e5` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x18b5b2706853cab26069970f75e6801a88a28bd6` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x20816692943cf4b8dc13934d16b63c8a99aac75b` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x5cb2d8112e9cc93f0c25bea0d2716e8c8cee2969` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x6226cb9f194e26fe1c36b63aa736171041dadcfb` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x648bcd32f540857e1100456434dde007843cab29` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x6c0f4929e7bca32a8e96cd6baff34abd8ba9a1b2` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0x8092c5c45822a9861340e3a2e1c81146e89e1799` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0xa28b1b5814a811eab18b3ed33d1dd69131a46851` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0xab99af35aa09837d7287f169c81c86c3222f10d0` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0xb3df0644f6bce62e0f6914ea92380cc456ccfcf5` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | DevSrcBridge<br>`0xbfe4c29a799865bfa5d0ef888a723d4a56b83dc8` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x33c48d0126f5bbcbf5fc37a814977e09df64cffc` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x48624e74a7282ce09d2fb5cbe57d68d52d950a75` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x4e63e30c34c162178a02a135eb94610f593ac2b7` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x624556fc6955672d06afb1d197b0358ac9d04a77` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x7b3e67687a99e608492a0ac460c88c56b43a4ad2` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x8952c806da8fa2eccd408ee257647f2712209a97` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x8f158704fc662684555f1e46de0950a38304cbd3` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0x9e55503859c886f415e938ef80d83d88854d2564` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| source verified unclassified | SrcBridge<br>`0xf863a918073dff26a57cbb49037f98c2b22f78da` | non_address_book | unknown | unknown | verified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x725f61fd5c4d595bdf9c637b89d16fbda3043a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x76962391e8435f70e20753c09d0ceef31e58229e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x7a6d7e0a9c37e2c9b6b6f0d6143888365960d81b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x80ee9572a4056c81cbfd208c48e2961427d03dc0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x9f9cc9c8a8dbd06b0803cf42584b0d02bdf1dafc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xcc91f74fcc39a053f540827506a59f651c2c31dc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xe85e7948d7bc2b5fd0af0728c3eff1eb503e3c10` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x725f61fd5c4d595bdf9c637b89d16fbda3043a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x76962391e8435f70e20753c09d0ceef31e58229e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x80ee9572a4056c81cbfd208c48e2961427d03dc0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x9f9cc9c8a8dbd06b0803cf42584b0d02bdf1dafc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xb0ebd426fdc4eefbb9e169429a27619a0ec04d80` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xcc91f74fcc39a053f540827506a59f651c2c31dc` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xe85e7948d7bc2b5fd0af0728c3eff1eb503e3c10` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x0b3b31da21ca84068be498394c64ad8447495e14` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x21817542ee0dd9e125910bc77c159f84933eb56d` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x407720c48149a328edeedece430eb84aab1e27d1` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x508cb14825af8fe7e65b8e53ec91b69357e02399` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x76962391e8435f70e20753c09d0ceef31e58229e` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xb0a8802d5a189cc45df18bac32e77c93161e7982` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xb15e8be19f97c7390fd026e5f0ab8feb31fddbfe` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0xcb0f6bde907bcd912f2fd265fb2a319d14ba42a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1a32e4b0086de0e83f9bac0c226e4af174aa3279` |
| unverified unclassified | UnnamedContract<br>`0x0c326f20feeb6ff15b4a0993d94200fd9285fe28` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x1bef7bb1749f94311566b3249d8997e9cc0a29f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x2076db86d9ebafc5602acabf0cee81a3df39f41d` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x42cd5231648fd412900e34d4deb14f602a958b7b` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x487ec6df5f1fb72093b6097413fa939ab09538fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x4a03291c17c81c623f9b33159bf1fda89ea00bf2` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x53ddb3055c391b8ccb077d15d41ba59d92048386` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x55133c825603e6a5b9e911abab23e75dc3bb07af` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x6859d2c4d0ac844c12530d73cada473d857e0bf3` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x7600192ec07444df13b041d23a598b885ff4018d` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0x94512b759cace51b31cb252d112bf943a3fb36e2` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xa7410fab299cee4b16b207e4b42f293eff3cd42a` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xa77b3c9d1d70c014f9ada3fa100e7fe0b503e64c` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xca0d26a9c82d0b6133e624ce26f7d7d50ebe71cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xe0e149bd867aa4ebddaee139d20fc95b8b130bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xeacad6f90d1bf519d6cb9a26ffe71e8c48620e16` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xecd91c77b98d507e3c20bac86d2541ecbdc881e3` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |
| unverified unclassified | UnnamedContract<br>`0xef14da66876476c1a75dc057343b97b6bd372c41` | non_address_book | unknown | unknown | unverified | n/a | `0xb669ce7136883c6160c2ca350f4483c9e08cf0af` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [vest_exchange_audit_final.pdf](https://2268699948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdHHKjQl5eoFn10pjvodI%2Fuploads%2FKr3ixHKtNsbIwACcYYUo%2Fvest_exchange_audit_final.pdf) | OtterSec | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24539] vest_exchange_audit_final.pdf — no match: Scope section describes risk-engine-v3 program but does not list individual contract files. Contract names extracted from findings referencing Exchange.sol and Router.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| vest_exchange_audit_final.pdf | Exchange | unmatched — not counted | — | mentioned in findings as Exchange.sol | no |
| vest_exchange_audit_final.pdf | Router | unmatched — not counted | — | mentioned in findings as Router.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 47 |

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

- [24539] vest_exchange_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
