# Agentic Audit Brief: WePiggy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: WePiggy (`wepiggy`)
- Website: [https://www.wepiggy.com/](https://www.wepiggy.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, harmony, heco, moonriver, optimism, polygon
- Contract surface: 143 unique implementations (143 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,916,490.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WePiggy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, bsc, ethereum, harmony, heco, moonriver, optimism, polygon, x-layer. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 121 contracts are derived from known codebases. 121 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0c8c1a...190f0b`, chain 1)
- UnnamedContract (`0x27a948...d7987c`, chain 1)
- UnnamedContract (`0x3e5496...b0b9b0`, chain 1)
- UnnamedContract (`0x5cfad7...ace32a`, chain 1)
- UnnamedContract (`0x678c86...28a87d`, chain 1)
- UnnamedContract (`0x690aa2...5e1c95`, chain 1)
- UnnamedContract (`0x8158b3...d5554b`, chain 1)
- UnnamedContract (`0x82413f...e04f29`, chain 1)
- UnnamedContract (`0x82de39...b555ee`, chain 1)
- UnnamedContract (`0x85166b...28a179`, chain 1)
- UnnamedContract (`0x959f30...c238e2`, chain 1)
- UnnamedContract (`0x97f376...72feda`, chain 1)
- UnnamedContract (`0x99c3d8...280c62`, chain 1)
- UnnamedContract (`0xa0a758...510075`, chain 1)
- UnnamedContract (`0xc12b9d...33b46f`, chain 1)
- UnnamedContract (`0xe21282...c6d088`, chain 1)
- UnnamedContract (`0xef8638...2fcdc7`, chain 1)
- UnnamedContract (`0xf8e5b9...8d8c1f`, chain 1)
- UnnamedContract (`0x2b7f68...936b3f`, chain 10)
- UnnamedContract (`0x3157e0...ff19ee`, chain 10)
- UnnamedContract (`0x48a532...2c7efc`, chain 10)
- UnnamedContract (`0x5ea232...dc865b`, chain 10)
- UnnamedContract (`0x690aa2...5e1c95`, chain 10)
- UnnamedContract (`0x811cd5...82aec2`, chain 10)
- UnnamedContract (`0x8158b3...d5554b`, chain 10)
- UnnamedContract (`0x896aec...e511cb`, chain 10)
- UnnamedContract (`0x8e1e58...f499a5`, chain 10)
- UnnamedContract (`0x8f00a5...00b0ee`, chain 10)
- UnnamedContract (`0xb205d0...4444e6`, chain 10)
- UnnamedContract (`0xc12b9d...33b46f`, chain 10)
- UnnamedContract (`0xd58fb1...c00a34`, chain 10)
- UnnamedContract (`0xffceac...787948`, chain 10)
- UnnamedContract (`0x00ff07...67561a`, chain 56)
- UnnamedContract (`0x12d803...937c8b`, chain 56)
- UnnamedContract (`0x179331...d43159`, chain 56)
- UnnamedContract (`0x22789e...c2eae6`, chain 56)
- UnnamedContract (`0x23cf81...c26c85`, chain 56)
- UnnamedContract (`0x2a8cd7...6e0d7f`, chain 56)
- UnnamedContract (`0x2b7f68...936b3f`, chain 56)
- UnnamedContract (`0x2dd8ff...4ea3be`, chain 56)
- UnnamedContract (`0x311aea...f32554`, chain 56)
- UnnamedContract (`0x33a32f...1622a7`, chain 56)
- UnnamedContract (`0x33d295...be294e`, chain 56)
- UnnamedContract (`0x417fdf...0c2c1d`, chain 56)
- UnnamedContract (`0x4c7801...3794ea`, chain 56)
- UnnamedContract (`0x621ce6...029bec`, chain 56)
- UnnamedContract (`0x6a05bd...0e471c`, chain 56)
- UnnamedContract (`0x811cd5...82aec2`, chain 56)
- UnnamedContract (`0x849c37...7c6293`, chain 56)
- UnnamedContract (`0x8c9256...f716e0`, chain 56)
- UnnamedContract (`0xbc52bc...9ead0d`, chain 56)
- UnnamedContract (`0xc1b02e...fb4399`, chain 56)
- UnnamedContract (`0xd1121a...4d668d`, chain 56)
- UnnamedContract (`0xdf21d4...277f32`, chain 56)
- UnnamedContract (`0xe21282...c6d088`, chain 56)
- UnnamedContract (`0xe63204...3fc9c9`, chain 56)
- UnnamedContract (`0x0c8c1a...190f0b`, chain 137)
- UnnamedContract (`0x12d803...937c8b`, chain 137)
- UnnamedContract (`0x16b321...8c3e71`, chain 137)
- UnnamedContract (`0x1b1cd0...e94a7c`, chain 137)
- UnnamedContract (`0x3a9cad...efac8c`, chain 137)
- UnnamedContract (`0x3ae453...da5464`, chain 137)
- UnnamedContract (`0x451032...165454`, chain 137)
- UnnamedContract (`0x4c7801...3794ea`, chain 137)
- UnnamedContract (`0x5cfad7...ace32a`, chain 137)
- UnnamedContract (`0xa43bf6...98f9f1`, chain 137)
- UnnamedContract (`0xa5874c...61bde3`, chain 137)
- UnnamedContract (`0xc1b02e...fb4399`, chain 137)
- UnnamedContract (`0xc28e11...ea92e3`, chain 137)
- UnnamedContract (`0xd0199b...23ae04`, chain 137)
- UnnamedContract (`0xd1121a...4d668d`, chain 137)
- UnnamedContract (`0xd58fb1...c00a34`, chain 137)
- UnnamedContract (`0xf19200...936729`, chain 137)
- UnnamedContract (`0xf4b6d5...fd1f72`, chain 137)
- UnnamedContract (`0xffceac...787948`, chain 137)
- UnnamedContract (`0x12d803...937c8b`, chain 1285)
- UnnamedContract (`0x2a8cd7...6e0d7f`, chain 1285)
- UnnamedContract (`0x2b7f68...936b3f`, chain 1285)
- UnnamedContract (`0x2dd8ff...4ea3be`, chain 1285)
- UnnamedContract (`0x311aea...f32554`, chain 1285)
- UnnamedContract (`0x33a32f...1622a7`, chain 1285)
- UnnamedContract (`0x3401d0...9b9dd5`, chain 1285)
- UnnamedContract (`0x389844...d72405`, chain 1285)
- UnnamedContract (`0x621ce6...029bec`, chain 1285)
- UnnamedContract (`0x75dcd2...dc8c79`, chain 1285)
- UnnamedContract (`0x849c37...7c6293`, chain 1285)
- UnnamedContract (`0x8c9256...f716e0`, chain 1285)
- UnnamedContract (`0x9a9b2b...81116d`, chain 1285)
- UnnamedContract (`0xb205d0...4444e6`, chain 1285)
- UnnamedContract (`0xc1b02e...fb4399`, chain 1285)
- UnnamedContract (`0xf0558a...5d67fd`, chain 1285)
- UnnamedContract (`0x04d294...ec8a5c`, chain 42161)
- UnnamedContract (`0x0944eb...261d2c`, chain 42161)
- UnnamedContract (`0x179331...d43159`, chain 42161)
- UnnamedContract (`0x2bf852...17786b`, chain 42161)
- UnnamedContract (`0x324dab...19a190`, chain 42161)
- UnnamedContract (`0x3393cd...ca48a1`, chain 42161)
- UnnamedContract (`0x417fdf...0c2c1d`, chain 42161)
- UnnamedContract (`0x5676eb...9a6cac`, chain 42161)
- UnnamedContract (`0x6d4d85...c56104`, chain 42161)
- UnnamedContract (`0x77401f...82c12a`, chain 42161)
- UnnamedContract (`0x8f87c9...90ccc7`, chain 42161)
- UnnamedContract (`0xaa8771...88390b`, chain 42161)
- UnnamedContract (`0xb65ab7...6f007c`, chain 42161)
- UnnamedContract (`0xde39ad...5f1905`, chain 42161)
- UnnamedContract (`0x12d803...937c8b`, chain 1666600000)
- UnnamedContract (`0x1cda09...9885c9`, chain 1666600000)
- UnnamedContract (`0x2a8cd7...6e0d7f`, chain 1666600000)
- UnnamedContract (`0x303b3b...564d5d`, chain 1666600000)
- UnnamedContract (`0x311aea...f32554`, chain 1666600000)
- UnnamedContract (`0x33a32f...1622a7`, chain 1666600000)
- UnnamedContract (`0x3401d0...9b9dd5`, chain 1666600000)
- UnnamedContract (`0x75dcd2...dc8c79`, chain 1666600000)
- UnnamedContract (`0x77401f...82c12a`, chain 1666600000)
- UnnamedContract (`0x849c37...7c6293`, chain 1666600000)
- UnnamedContract (`0x8c9256...f716e0`, chain 1666600000)
- UnnamedContract (`0x8e1e58...f499a5`, chain 1666600000)
- UnnamedContract (`0xaa8771...88390b`, chain 1666600000)
- UnnamedContract (`0xb205d0...4444e6`, chain 1666600000)
- UnnamedContract (`0xd1121a...4d668d`, chain 1666600000)
- WePiggyToken (`0x6f620e...566746`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 121/166 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 121 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 121 of 143 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 143
- Raw deployments: 143
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/wepiggy/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WePiggyToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397144 | `0x6f620e...566746` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (142)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397138 | `0x0c8c1a...190f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397139 | `0x27a948...d7987c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397140 | `0x3e5496...b0b9b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397141 | `0x5cfad7...ace32a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397142 | `0x678c86...28a87d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397143 | `0x690aa2...5e1c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397145 | `0x8158b3...d5554b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397146 | `0x82413f...e04f29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397147 | `0x82de39...b555ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397148 | `0x85166b...28a179` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397149 | `0x959f30...c238e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397150 | `0x97f376...72feda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397151 | `0x99c3d8...280c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397152 | `0xa0a758...510075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397153 | `0xc12b9d...33b46f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397154 | `0xe21282...c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397155 | `0xef8638...2fcdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397156 | `0xf8e5b9...8d8c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397157 | `0x2b7f68...936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397158 | `0x3157e0...ff19ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397159 | `0x48a532...2c7efc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397160 | `0x5ea232...dc865b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397161 | `0x690aa2...5e1c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397162 | `0x811cd5...82aec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397163 | `0x8158b3...d5554b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397164 | `0x896aec...e511cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397165 | `0x8e1e58...f499a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397166 | `0x8f00a5...00b0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397167 | `0xb205d0...4444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397168 | `0xc12b9d...33b46f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397169 | `0xd58fb1...c00a34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397170 | `0xffceac...787948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397280 | `0x00ff07...67561a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397281 | `0x12d803...937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397282 | `0x179331...d43159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397283 | `0x22789e...c2eae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397284 | `0x23cf81...c26c85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397285 | `0x2a8cd7...6e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397286 | `0x2b7f68...936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397287 | `0x2dd8ff...4ea3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397288 | `0x311aea...f32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397289 | `0x33a32f...1622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397290 | `0x33d295...be294e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397291 | `0x417fdf...0c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397292 | `0x4c7801...3794ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397293 | `0x621ce6...029bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397294 | `0x6a05bd...0e471c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397295 | `0x811cd5...82aec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397296 | `0x849c37...7c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397297 | `0x8c9256...f716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397298 | `0xbc52bc...9ead0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397299 | `0xc1b02e...fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397300 | `0xd1121a...4d668d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397301 | `0xdf21d4...277f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397302 | `0xe21282...c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397303 | `0xe63204...3fc9c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397171 | `0x0c8c1a...190f0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397172 | `0x12d803...937c8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397173 | `0x179331...d43159` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397174 | `0x2a8cd7...6e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397175 | `0x2b7f68...936b3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397176 | `0x2dd8ff...4ea3be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397177 | `0x30ac79...a742a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397178 | `0x311aea...f32554` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397179 | `0x3401d0...9b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397180 | `0x3c9d17...f3b345` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397181 | `0x417fdf...0c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397182 | `0x4c7801...3794ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397183 | `0x621ce6...029bec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397184 | `0x75dcd2...dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397185 | `0x811cd5...82aec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397186 | `0x8158b3...d5554b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397187 | `0x8b4397...81224c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397188 | `0x8e1e58...f499a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397189 | `0xc24230...66460a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397190 | `0xd1121a...4d668d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397191 | `0xd828f7...11bc65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397192 | `0xe21282...c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397209 | `0x0c8c1a...190f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397210 | `0x12d803...937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397211 | `0x16b321...8c3e71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397212 | `0x1b1cd0...e94a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397213 | `0x3a9cad...efac8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397214 | `0x3ae453...da5464` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397215 | `0x451032...165454` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397216 | `0x4c7801...3794ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397217 | `0x5cfad7...ace32a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397218 | `0xa43bf6...98f9f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397219 | `0xa5874c...61bde3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397220 | `0xc1b02e...fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397221 | `0xc28e11...ea92e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397222 | `0xd0199b...23ae04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397223 | `0xd1121a...4d668d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397224 | `0xd58fb1...c00a34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397225 | `0xf19200...936729` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397226 | `0xf4b6d5...fd1f72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397227 | `0xffceac...787948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397193 | `0x12d803...937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397194 | `0x2a8cd7...6e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397195 | `0x2b7f68...936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397196 | `0x2dd8ff...4ea3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397197 | `0x311aea...f32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397198 | `0x33a32f...1622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397199 | `0x3401d0...9b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397200 | `0x389844...d72405` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397201 | `0x621ce6...029bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397202 | `0x75dcd2...dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397203 | `0x849c37...7c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397204 | `0x8c9256...f716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397205 | `0x9a9b2b...81116d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397206 | `0xb205d0...4444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397207 | `0xc1b02e...fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397208 | `0xf0558a...5d67fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397266 | `0x04d294...ec8a5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397267 | `0x0944eb...261d2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397268 | `0x179331...d43159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397269 | `0x2bf852...17786b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397270 | `0x324dab...19a190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397271 | `0x3393cd...ca48a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397272 | `0x417fdf...0c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397273 | `0x5676eb...9a6cac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397274 | `0x6d4d85...c56104` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397275 | `0x77401f...82c12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397276 | `0x8f87c9...90ccc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397277 | `0xaa8771...88390b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397278 | `0xb65ab7...6f007c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397279 | `0xde39ad...5f1905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397228 | `0x12d803...937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397229 | `0x1cda09...9885c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397230 | `0x2a8cd7...6e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397231 | `0x303b3b...564d5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397232 | `0x311aea...f32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397233 | `0x33a32f...1622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397234 | `0x3401d0...9b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397235 | `0x75dcd2...dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397236 | `0x77401f...82c12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397237 | `0x849c37...7c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397238 | `0x8c9256...f716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397239 | `0x8e1e58...f499a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397240 | `0xaa8771...88390b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397241 | `0xb205d0...4444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397242 | `0xd1121a...4d668d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/wepiggy/information](https://immunefi.com/bug-bounty/wepiggy/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21065] immunefi.com/bug-bounty/wepiggy/information — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only general categories like 'smart contracts' and 'app' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6f620e...566746` | WePiggyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
