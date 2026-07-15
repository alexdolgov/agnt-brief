# Agentic Audit Brief: VVS Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: VVS Finance (`vvs-finance`)
- Website: [https://vvs.finance](https://vvs.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: cronos, ethereum
- Contract surface: 121 unique implementations (121 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,607,152.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VVS Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across cronos, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: multicall (1)
- Frameworks: openzeppelin (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2e5dba...1b8554`, chain 1)
- UnnamedContract (`0x44d6ba...65c93c`, chain 1)
- UnnamedContract (`0x54ff50...333254`, chain 1)
- UnnamedContract (`0x839e71...b0dde3`, chain 1)
- UnnamedContract (`0xf15133...eecc92`, chain 1)
- UnnamedContract (`0x025322...25c1ea`, chain 25)
- UnnamedContract (`0x145863...b1b2ae`, chain 25)
- UnnamedContract (`0x2d03be...d11e03`, chain 25)
- UnnamedContract (`0x3b44b2...42fc15`, chain 25)
- UnnamedContract (`0x3bc415...67b115`, chain 25)
- UnnamedContract (`0x40ab11...e14c35`, chain 25)
- UnnamedContract (`0x5c7f8a...e1ae23`, chain 25)
- UnnamedContract (`0x5e954f...30345f`, chain 25)
- UnnamedContract (`0x66c089...a49566`, chain 25)
- UnnamedContract (`0x6a2d17...637284`, chain 25)
- UnnamedContract (`0x7fe4db...2c143a`, chain 25)
- UnnamedContract (`0x88d675...938780`, chain 25)
- UnnamedContract (`0x8d1398...fc4c19`, chain 25)
- UnnamedContract (`0x96bee0...377612`, chain 25)
- UnnamedContract (`0x990e96...dad84c`, chain 25)
- UnnamedContract (`0xa6ff77...1a2dcd`, chain 25)
- UnnamedContract (`0xdccd64...9564bc`, chain 25)
- SwapRouter (`0xe3df4f...41b8cc`, chain 1)
- VVSV3Factory (`0x5e12f3...8c6e2e`, chain 1)
- VVSV3Pool (`0x0ec182...622b55`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 95 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 25 of 121 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 121
- Raw deployments: 121
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CraftsmanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0102e9...b81871` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b347b...e7d851` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc320d6...c9bb9e` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1399ea...34d106` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002212...960bc9` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x544c8e...fb5d3c` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261777 | `0xe3df4f...41b8cc` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bbfa...dfcf88` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb51e...fdd21f` | ⚠️ Unaudited |
| VVSV3Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261775 | `0x5e12f3...8c6e2e` | ⚠️ Unaudited |
| VVSV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b61e...a075a4` | ⚠️ Unaudited |
| VVSV3Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261771 | `0x0ec182...622b55` | ⚠️ Unaudited |
| VVSV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c1afe...5cde8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261772 | `0x2e5dba...1b8554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261773 | `0x44d6ba...65c93c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261774 | `0x54ff50...333254` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261776 | `0x839e71...b0dde3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261778 | `0xf15133...eecc92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261780 | `0x025322...25c1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0438a7...2b2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x079ab8...bf3aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x08d819...880e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0ec182...622b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0fbab8...22c25d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261783 | `0x145863...b1b2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x1803e3...076b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x189291...eb5f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x1f5578...752cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x23e61d...aef917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x28cc28...e53b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2a560f...b62075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2bb6ff...44a910` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261784 | `0x2d03be...d11e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2e5dba...1b8554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2ea920...735dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2f12d4...7f15c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x34d185...2967be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x359ee6...b1f451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3b3ae4...97d829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261785 | `0x3b44b2...42fc15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261786 | `0x3bc415...67b115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3da5b8...476f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3daff9...e85a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261787 | `0x40ab11...e14c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x44d6ba...65c93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x46d57e...e81fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x47526a...c52016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x495e44...d80a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x4b3771...7c2bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x510788...0844b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x523ad5...3c5cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x542b3b...109b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x54ff50...333254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5725cd...50956e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x57b975...ab0e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x58bd24...821de6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261788 | `0x5c7f8a...e1ae23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5e0925...cabea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5e12f3...8c6e2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261789 | `0x5e954f...30345f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x612cce...5275db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261790 | `0x66c089...a49566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x67255a...a2b625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x686c7a...4aed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x689e7b...c93462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x69fa83...c2efe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261791 | `0x6a2d17...637284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6ae624...2a759f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6c5e02...d5c05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6f72a3...4b1fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6fd3af...d37bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x71686f...ec3077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x72efd4...80b54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x736e7d...f8bb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x78082d...31f7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x7901f7...f134ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x792df6...2af4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x7aaf2e...9384ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261792 | `0x7fe4db...2c143a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x839e71...b0dde3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x870e81...914314` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261794 | `0x88d675...938780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x89b330...15f7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x8a513a...9d04b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261795 | `0x8d1398...fc4c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x8f9bac...006f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x928413...3a7ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x94fd83...c3f557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261798 | `0x96bee0...377612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261799 | `0x990e96...dad84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9b5a55...12761b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9d9670...a85acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9e5bd7...e25de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261800 | `0xa6ff77...1a2dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xa92253...ed1eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xafa848...d8d93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xafde8d...f0152e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb27807...d8ce1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb7b49d...d13157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb90d6e...f0ff6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xba5cc1...9f6f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xbc10be...9f84e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc09611...5dd547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc137b2...0b4602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc43e32...fffb29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc4d864...48c2fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc9dff4...5fd94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xd13ae9...40100c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xd85762...815e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xdb89a9...acf31e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261802 | `0xdccd64...9564bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe3df4f...41b8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe66691...9e1fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe83ffa...1784d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xeb554d...d87603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xec2124...b5ca70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf10af2...63609b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf15133...eecc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf7cec2...493321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xfc07bf...f68842` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - VVS_launch.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2F2sne8oEBgTEVLt9xBjwA%2FSlowMist%20Audit%20Report%20-%20VVS_launch.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 11 | high |
| [SlowMist Audit Report - VVS Multi Reward Farming.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FcXEpjCBiuwdUNplkROLh%2FSlowMist%20Audit%20Report%20-%20VVS%20Multi%20Reward%20Farming.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SlowMist Audit Report - VVSBar.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FhZvyQzqrTf3cnj6MNX5j%2FSlowMist%20Audit%20Report%20-%20VVSBar.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - VVSMaker.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FGJLQ4h5dYugdpGDHCWHe%2FSlowMist%20Audit%20Report%20-%20VVSMaker.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [SlowMist Audit Report - VVSBoost_Mar9_2022.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2Fze9s8pd0wPBzcthlwR2i%2FSlowMist%20Audit%20Report%20-%20VVSBoost_Mar9_2022.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28395] SlowMist Audit Report - VVS_launch.pdf — matched: Contracts extracted from visibility tables and vulnerability code locations. Audit date from audit result section: 2021.09.24 - 2021.11.05, using end date.
- [28396] SlowMist Audit Report - VVS Multi Reward Farming.pdf — no match: Two contracts in scope: CraftsmanV2 and Rewarder, with file paths and hashes provided. Audit date from section 5: 2022.02.15 - 2022.02.17, using end date.
- [28398] SlowMist Audit Report - VVSBar.pdf — no match: Only one contract VVSBar is in scope, as per the audit report title and source code.
- [28399] SlowMist Audit Report - VVSMaker.pdf — matched: Only one contract, VVSMaker, is in scope. The audit report is for the VVSMaker contract. The date is explicitly given as Audit Date: 2022.03.22.
- [28400] SlowMist Audit Report - VVSBoost_Mar9_2022.pdf — matched: Audit report for VVSBoost project. Contracts in scope: VVSBoost and DepositToken. Audit date from audit result table: 2022.03.07 - 2022.03.08, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - VVS_launch.pdf | Craftsman | own contract | 0xdccd64… (selected) `0xdccd64...9564bc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSToken | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSInitMintable | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Workbench | own contract | 0x6a2d17… (selected) `0x6a2d17...637284` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | IGO | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Timelock | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSVault | own contract | 0xa6ff77… (selected) `0xa6ff77...1a2dcd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | WCRO | own contract | 0x5c7f8a… (selected) `0x5c7f8a...e1ae23` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSVesting | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Migrations | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSERC20 | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSFactory | own contract | 0x3b44b2… (selected) `0x3b44b2...42fc15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSPair | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSMigrator | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSRouter | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSRouter01 | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS Multi Reward Farming.pdf | CraftsmanV2 | unmatched — not counted | — | listed in scope section 3.1 | no |
| SlowMist Audit Report - VVS Multi Reward Farming.pdf | Rewarder | unmatched — not counted | — | listed in scope section 3.1 | no |
| SlowMist Audit Report - VVSBar.pdf | VVSBar | unmatched — not counted | — | listed in scope as VVSBar contract | no |
| SlowMist Audit Report - VVSMaker.pdf | VVSMaker | own contract | 0x3bc415… (selected) `0x3bc415...67b115` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVSBoost_Mar9_2022.pdf | VVSBoost | own contract | 0x990e96… (selected) `0x990e96...dad84c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVSBoost_Mar9_2022.pdf | DepositToken | unmatched — not counted | — | mentioned in code overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xe3df4f...41b8cc` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e12f3...8c6e2e` | VVSV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ec182...622b55` | VVSV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=7

Zero-match audit list:

- [28396] SlowMist Audit Report - VVS Multi Reward Farming.pdf
- [28398] SlowMist Audit Report - VVSBar.pdf

Fork inheritance lineage and inherited audits are included when available.
