# Agentic Audit Brief: Sperax

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 5 audit(s)
- Eligible audit results: 9 (5 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 144 unique implementations (155 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,765,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sperax. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 6 core, 2 supporting, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: ownable (6), erc20 (3), erc1967proxy (2), pausable (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbf82a3...e7f403`, chain 1)
- UnnamedContract (`0x1a9fd6...a379b1`, chain 56)
- UnnamedContract (`0x14d994...6e8e50`, chain 42161)
- UnnamedContract (`0x212208...8226b8`, chain 42161)
- UnnamedContract (`0x297331...37beec`, chain 42161)
- UnnamedContract (`0x45bc6b...e222e0`, chain 42161)
- UnnamedContract (`0x6bbc47...6f74ca`, chain 42161)
- UnnamedContract (`0x926477...e1bdd3`, chain 42161)
- UnnamedContract (`0x974993...9f3388`, chain 42161)
- UnnamedContract (`0xb9c910...daa136`, chain 42161)
- UnnamedContract (`0xbceb48...a82442`, chain 42161)
- UnnamedContract (`0xd12284...558afc`, chain 42161)
- UnnamedContract (`0xd50193...a044c1`, chain 42161)
- UnnamedContract (`0xda423b...faedf0`, chain 42161)
- UnnamedContract (`0xfbc0d3...77afe3`, chain 42161)
- SperaxToken (`0xb4a3b0...d59008`, chain 1)
- SperaxTokenL1 (`0x2a95fe...f770cb`, chain 1)
- SperaxTokenL2 (`0x557555...40ad4b`, chain 42161)
- TransparentUpgradeableProxy (`0x2e2071...5f6a17`, chain 42161)
- TUP (`0x0966e7...b9ccc3`, chain 42161)
- veSPA_v1 (`0xa3f874...b8ff8d`, chain 1)
- veSPA_v1 (`0xd16f53...69d165`, chain 42161)
- YieldReserve (`0xfd14c8...29d861`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 120 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 24 of 144 unique; 120 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/30
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 114
- Unique implementations: 144
- Raw deployments: 155
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 11.1% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 6.7% | 2023-12 |
| unknown | Tier 2 | 2 | 6.7% | 2024-06 |
| SlowMist | Tier 1 | 1 | 3.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SperaxTokenL2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-256338 | `0x557555...40ad4b` | ✅ Audited |
| USDs | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256350 | `0xd74f52...2d5748` | ✅ Audited |
| YieldReserve | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256348 | `0xfd14c8...29d861` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropBlockHeight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e6cf...ba3747` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb560c0...ef3429` | ⚠️ Unaudited |
| Demeter_UniV3FarmDeployer_v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b680a...7dc4d2` | ⚠️ Unaudited |
| Dynamic_APR_Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7775cd...5ef2be` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39eb38...a4d8ea` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x5b12d9...3b1bf1`; arbitrum `0x6d5240...d51b62` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x00f2a6...96a825`; arbitrum `0x3e4992...1ddf25` | ⚠️ Unaudited |
| RewardDistributor_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa61dd4...b36040`; arbitrum `0x2c07bc...8d9e16` | ⚠️ Unaudited |
| RewardDistributor_v2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x080f26...3411db`; arbitrum `0x01bfd5...0a0c2e`; arbitrum `0xc9869e...4ae512` | ⚠️ Unaudited |
| SPA_USDs_Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84f7f3...b97174` | ⚠️ Unaudited |
| SperaxToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x963148...215bc3`; ethereum `0xfb931d...ac4f93` | ⚠️ Unaudited |
| SperaxToken | token | project_anchor | own_supporting | 0 | ethereum | unit-256332 | `0xb4a3b0...d59008` | ⚠️ Unaudited |
| SperaxTokenL1 | token | project_anchor | own_supporting | 0 | ethereum | unit-256330 | `0x2a95fe...f770cb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc150cb...7039fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0390c6...60f473` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x457fa7...9c215b`; arbitrum `0xf3f980...86bbcd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9b8b92...9850a4`; arbitrum `0xc93f8a...e4ac42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xbf82a3...e7f403` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xdc118f...9d1eb4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xf783dd...340e3f` | ⚠️ Unaudited |
| USDsL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2d715a...fa55dc`; arbitrum `0xa78d7b...232f8c` | ⚠️ Unaudited |
| USDTswapStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe45af3...0095c8` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0a1f2...5e0b55` | ⚠️ Unaudited |
| veSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256352 | `0x2e2071...5f6a17` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256331 | `0xa3f874...b8ff8d` | ⚠️ Unaudited |
| veSPA_v1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256345 | `0xd16f53...69d165` | ⚠️ Unaudited |
| xSPA | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256353 | `0x0966e7...b9ccc3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (114)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3703a01804f05a3cf84be69627ce32f8c2b84151) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x886f2d...198444` | ❓ Unverified |
| Proxy (impl: 0xb172d61f8682b977cf0888ce9337c41b50f94910) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbc683d...d75c09` | ❓ Unverified |
| Proxy (impl: 0xed0544dea3300cebc5dff25cd9a189abde1862be) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x61dec2...692fd5`; arbitrum `0xed0544...1862be` | ❓ Unverified |
| SPABuyback | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-256351 | `0xfbc0d3...77afe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256333 | `0xbf82a3...e7f403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81574...888ea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256349 | `0x1a9fd6...a379b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00b309...a2894d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0247d4...da924b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b354...cbc663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06910b...506b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06bba0...8677ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09983f...09bbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fcea...5be5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0addfb...2868d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fb294...87e7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x116291...38a3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x128527...51251e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145ac7...b58e4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256334 | `0x14d994...6e8e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x176dcf...c5a57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1820c0...a61af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a6131...c4ecc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f6803...6aba26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256335 | `0x212208...8226b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x240db7...adf2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x295246...1142c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256336 | `0x297331...37beec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b00ef...2aaa10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4b8a...27c275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x305026...8760a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x322057...8e72a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3333a1...9ecd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x356d79...236ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x374219...64bd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x386a29...f83ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43dccb...291be1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256337 | `0x45bc6b...e222e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46728c...0071b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bc6be...8e138a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c5884...660cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fcbfc...dc1da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x511c1b...d14172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x524b11...af8899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x544350...cd4cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x584643...aef487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58735e...804c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a96b1...764848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b2da0...6a8a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d2a5d...869fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f6ac8...31185b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x638d76...933a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x645ebe...eae1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67a798...982ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ada84...6f039d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256339 | `0x6bbc47...6f74ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x754db8...44da9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75ab2d...3b203d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77b6e3...159714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78b2a3...33d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b952a...d66047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c8599...9635d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81fb64...3a6d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83db29...a10224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83fa5f...9c354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dbfa1...edebed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5562...3e7d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fa1e5...bbba6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256340 | `0x926477...e1bdd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9741d4...30aed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256341 | `0x974993...9f3388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x974bf7...1de4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97a7e6...962307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97b3e3...9dc7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x983fcc...eba210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x992bcb...8babe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b9080...fc3b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d8979...6828e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2255e...3fd92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa4d10...44367e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa7487...be05b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae3232...9eb5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1056a...df9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3647b...24eff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb38629...b68944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4a3b0...d59008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4f9a8...ee3bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6b989...cb0b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb74401...b9b4a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256342 | `0xb9c910...daa136` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256343 | `0xbceb48...a82442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe51b6...50307d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0f048...afe0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc92acb...c3633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb9b91...9e688c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbac4b...627d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc12be...e99fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf9761...1e8004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0497f...61c370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd06eca...4e650c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256344 | `0xd12284...558afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4e33a...492cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256346 | `0xd50193...a044c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256347 | `0xda423b...faedf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb46bf...6fa9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe64ced...5f45ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7b284...d423a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8f757...e75c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe91b6d...9169a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecc7fc...79f81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf1565d...ab82b2`; arbitrum `0xf2badb...34a898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf30db0...162bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf403a6...527e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc074b...d791a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 10 | n/a |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | matched | 10 | 2 | 0 | 8 | n/a |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2888] Demeter_PeckShield_1.pdf — no match: Only one contract name 'Farm' is explicitly mentioned as a target in findings. No scope table or file listing provided.
- [2889] Sperax - USDs - Report (1).pdf — matched: No reason recorded
- [2890] Demeter Audit Final Report.pdf — matched: Extracted 15 contract names from the Scope Files Included section. Audit date from timeline: 2024-06-05 through 2024-06-12, using end date.
- [2891] LM_Certik_1.pdf — no match: Only one contract file is listed in the scope table: farm_SPA_USDs.sol. The report also mentions LPVesting and LPStaking as contracts but they are not in the scope table; they are referenced in findings. The audit date is from the delivery date.
- [2892] SPA_Certik_2.pdf — no match: Only one contract file is in scope: SPA_ERC20_new.sol. The audit date is explicitly stated as 'Delivery Date Nov 18, 2021'.
- [2893] USDs_Quantstamp.pdf — matched: No reason recorded
- [2894] USDs_Slowmist_1.pdf — matched: No reason recorded
- [2895] USDs_Slowmist_2.pdf — matched: No reason recorded
- [2896] veSPA_PeckShield_1.pdf — no match: Contracts identified from findings targets; no explicit scope section found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Demeter_PeckShield_1.pdf | Farm | unmatched — not counted | — | Target of findings PVE-001 and PVE-002 | no |
| Sperax - USDs - Report (1).pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993...9f3388` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423b...faedf0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48...a82442` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193...a044c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd12284...558afc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | Helpers | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331...37beec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3...77afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | SPAOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StableMath | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c910...daa136` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f52...2d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sperax - USDs - Report (1).pdf | USDsOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VSTOracle | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | VaultCore | unmatched — not counted | — | — | no |
| Sperax - USDs - Report (1).pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8...29d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmStorage | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmDeployer | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | FarmRegistry | own contract | 0x45bc6b… (selected) `0x45bc6b...e222e0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | ExpirableFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | OperableDeposit | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | Rewarder | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | RewarderFactory | own contract | 0x926477… (selected) `0x926477...e1bdd3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Demeter Audit Final Report.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E20Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | E721Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV2Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | CamelotV3Farm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3ActiveLiquidityFarm | unmatched — not counted | — | listed in scope | no |
| Demeter Audit Final Report.pdf | UniV3Farm | unmatched — not counted | — | listed in scope | no |
| LM_Certik_1.pdf | farm_SPA_USDs | unmatched — not counted | — | listed in Audit Scope table | no |
| SPA_Certik_2.pdf | SPA_ERC20_new | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| USDs_Quantstamp.pdf | AaveStrategy | own contract | 0x974993… (selected) `0x974993...9f3388` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | BaseUniOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | CollateralManager | own contract | 0xda423b… (selected) `0xda423b...faedf0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | CompoundStrategy | own contract | 0xbceb48… (selected) `0xbceb48...a82442` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | Dripper | own contract | 0xd50193… (selected) `0xd50193...a044c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | FeeCalculator | own contract | 0xd12284… (selected) `0xd12284...558afc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | MasterPriceOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | RebaseManager | own contract | 0x297331… (selected) `0x297331...37beec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPABuyback | own proxy deployment | SPABuyback (proxy) (selected) `0xfbc0d3...77afe3` — deployed 2022-10-04 16:32:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | SPAOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | StargateStrategy | own contract | 0xb9c910… (selected) `0xb9c910...daa136` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDs | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd74f52...2d5748` — deployed 2021-12-23 05:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Quantstamp.pdf | USDsOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VSTOracle | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Quantstamp.pdf | YieldReserve | own contract | YieldReserve (selected) `0xfd14c8...29d861` — deployed 2024-01-11 16:25:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x557555...40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_1.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_1.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BancorFormula | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackMultihop | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | BuybackSingle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | InitializableAbstractStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | Oracle | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | SperaxTokenL2 | own contract | SperaxTokenL2 (selected) `0x557555...40ad4b` — deployed 2021-12-18 09:18:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDs_Slowmist_2.pdf | ThreePoolStrategy | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL1 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | USDsL2 | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCore | unmatched — not counted | — | — | no |
| USDs_Slowmist_2.pdf | VaultCoreTools | unmatched — not counted | — | — | no |
| veSPA_PeckShield_1.pdf | veSPA_v1 | ambiguous — not counted | veSPA_v1 (alternative) `0xa3f874...b8ff8d` — deployed 2022-04-05 19:37:51+03 — liveness: live (current_address_book_code)<br>veSPA_v1 (alternative) `0xd16f53...69d165` — deployed 2022-04-05 18:45:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| veSPA_PeckShield_1.pdf | RewardDistributor | unmatched — not counted | — | Target in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb4a3b0...d59008` | SperaxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a95fe...f770cb` | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e2071...5f6a17` | veSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3f874...b8ff8d` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd16f53...69d165` | veSPA_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0966e7...b9ccc3` | xSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 115 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 55 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [2888] Demeter_PeckShield_1.pdf
- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf
- [2896] veSPA_PeckShield_1.pdf

Fork inheritance lineage and inherited audits are included when available.
