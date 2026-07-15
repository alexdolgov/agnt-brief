# Agentic Audit Brief: Railgun

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 101 unique implementations (202 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $232,664,353.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Railgun. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, bsc, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RailToken (`0xe76c6c...a7a33d`, chain 1)
- RailTokenFixedSupply (`0x3f847b...cd737f`, chain 56)
- RailTokenFixedSupply (`0x92a9c9...1a714f`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 3 of 101 unique; 98 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 101
- Raw deployments: 202
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 1 | 2.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RailToken | token | project_anchor | own_supporting | 0 | ethereum | unit-391271 | `0xe76c6c...a7a33d` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x280e41...6d4c95`; arbitrum `0xc480f6...1da3cc`; arbitrum `0xce5673...ea045a` | ⚠️ Unaudited |
| ArbitrumSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x20fa11...393bd5`; ethereum `0x8c2bac...0b8482`; ethereum `0xf62748...16345a` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xb6d513...3fb53b`; bsc `0x4a7532...98bae7`; bsc `0x92a9c9...1a714f`; bsc `0xc20871...9079cd`; bsc `0xfc4b58...660cf9`; polygon `0x5f6744...3e83a7`; arbitrum `0x92a9c9...1a714f`; arbitrum `0xbb7d93...74ccfa` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f847b...cd737f` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x3bb38c...81c5d2`; bsc `0x025e99...182793`; bsc `0xa353bc...e34686`; polygon `0x3b3744...37bfc8` | ⚠️ Unaudited |
| Getters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbef5f5...ab020f`; ethereum `0xe90275...7beb0e`; bsc `0xc7ffa5...486968`; bsc `0xd0fe83...bbebc8`; polygon `0x08196b...216400`; polygon `0x979772...defa4f` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa02782...75c86f`; ethereum `0xaf51cd...8ec42b` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x27d30e...63c9d8`; ethereum `0x7d1c12...73c179`; ethereum `0x842da7...59e665`; ethereum `0x9cfa13...08f465`; bsc `0x046e87...47a682`; polygon `0xb8af88...efd3a9`; polygon `0xd0fe83...bbebc8` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7d9ef6...7e35a1`; bsc `0xd0198d...e8f59b` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa7a958...2fb1f8`; bsc `0xae4b2d...13af16` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x25f795...83bf52`; polygon `0x2e01c6...83e32d` | ⚠️ Unaudited |
| GovernorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7d9ef6...7e35a1`; polygon `0xd0198d...e8f59b` | ⚠️ Unaudited |
| Multisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a9c9...1a714f` | ⚠️ Unaudited |
| OnlyAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3f9297...7aaac5`; ethereum `0xd071ed...545da7`; bsc `0x7d0488...7986d2`; bsc `0xaf51cd...8ec42b`; polygon `0x8a0138...819064`; polygon `0xbf1cc6...264c15`; arbitrum `0xfbfa61...740f49` | ⚠️ Unaudited |
| PausableUpgradableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x39f3df...b080c1`; ethereum `0x4890ea...ff11ac`; ethereum `0x4d9332...cc5c98`; ethereum `0xf94325...6197af`; bsc `0x7a8657...6dc12a`; bsc `0x7c956d...afd333`; bsc `0xc851fb...e74d6c`; bsc `0xce5673...ea045a`; polygon `0x4a7532...98bae7`; polygon `0x5eb61f...fd5877`; polygon `0xa214d4...74a067` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: ethereum `0x4f8e20...ac65c8`; ethereum `0xed0e97...f07a08`; bsc `0x3bb38c...81c5d2`; bsc `0x5184cd...bf6877`; bsc `0x707c42...1efb61`; bsc `0xc6368d...6e6d09`; polygon `0x3c53c1...885c3a`; arbitrum `0x5f6744...3e83a7`; arbitrum `0xb00a75...a4d527` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf0af5...9da48e`; ethereum `0xc6368d...6e6d09` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xbcfa4d...7c541a`; bsc `0xb8af88...efd3a9`; bsc `0xbcfa4d...7c541a`; polygon `0x280e41...6d4c95` | ⚠️ Unaudited |
| RailgunLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x61ca7a...61ad76`; polygon `0xc6368d...6e6d09` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfa7093...1fa4b9` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x321617...78e13b`; ethereum `0xc0bef2...f209cc`; bsc `0x2c4fb0...4fa293`; bsc `0x3352c7...582c24`; polygon `0x7a33ed...d0d559`; polygon `0xa375b9...c0e9f7`; arbitrum `0x5eb61f...fd5877`; arbitrum `0xed378e...9e87bf` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x590162...178a10` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x19b620...ef8c71` | ⚠️ Unaudited |
| RailgunSmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xfa7093...1fa4b9` | ⚠️ Unaudited |
| RailgunSmartWalletStub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c53c1...885c3a`; arbitrum `0x7c956d...afd333` | ⚠️ Unaudited |
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | bsc | unit-391273 | `0x3f847b...cd737f` | ⚠️ Unaudited |
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | polygon | unit-391272 | `0x92a9c9...1a714f` | ⚠️ Unaudited |
| RelayAdapt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xc3f2c8...11ac88`; bsc `0x25f795...83bf52`; polygon `0x969ee9...62ff86`; arbitrum `0x3bb38c...81c5d2`; arbitrum `0x5ad95c...1497aa` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xee6a64...b2ee20`; bsc `0x753f0f...e441dc`; polygon `0x9ac2ba...71ddc1` | ⚠️ Unaudited |
| Sweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2ea76a...3eaf1a`; ethereum `0x2eca05...ff119b` | ⚠️ Unaudited |
| Sweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9b1310...6c8ee2`; ethereum `0xa353bc...e34686` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1a73e8...eec757`; bsc `0xdca051...fb4094` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xc851fb...e74d6c`; bsc `0x120c07...fea2c5`; bsc `0x19b620...ef8c71`; bsc `0x5f6744...3e83a7`; bsc `0xbf0af5...9da48e`; polygon `0x025e99...182793`; polygon `0x7c956d...afd333`; polygon `0xfa7093...1fa4b9` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1a73e8...eec757`; polygon `0xdca051...fb4094` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x39f3df...b080c1`; arbitrum `0x3b3744...37bfc8` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x707c42...1efb61`; arbitrum `0x9ac2ba...71ddc1` | ⚠️ Unaudited |
| TreasuryMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x710fe3...f3cbfc`; polygon `0x1a4544...0abbf8`; polygon `0x710fe3...f3cbfc` | ⚠️ Unaudited |
| VestLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x19b620...ef8c71`; bsc `0x27d30e...63c9d8`; bsc `0xf94325...6197af`; polygon `0xb00a75...a4d527` | ⚠️ Unaudited |
| VKeySetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x9086af...903b46`; bsc `0xed0e97...f07a08`; polygon `0x4025ee...f6be8a`; arbitrum `0x7d9ef6...7e35a1` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xc480f6...1da3cc`; ethereum `0xf27131...9d77fb`; ethereum `0xfc4b58...660cf9`; bsc `0x569c15...3608c9`; bsc `0xc3f2c8...11ac88`; polygon `0x707c42...1efb61`; polygon `0xa353bc...e34686`; polygon `0xc3f2c8...11ac88` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfad2...17c639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232c41...c73fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3352c7...582c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3744...37bfc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db1c5...ab56a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4025ee...f6be8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb61f...fd5877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7022be...98c3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8657...6dc12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c956d...afd333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d9ef6...7e35a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5689...a68ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00a75...a4d527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb7d93...74ccfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20871...9079cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0198d...e8f59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf035ce...42ca2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a4544...0abbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cfad2...17c639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1016...19fbdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f8e20...ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5eb61f...fd5877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e1338...4da1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x741936...8d9e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a0138...819064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ab41b...3c41f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ac2ba...71ddc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa214d4...74a067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa375b9...c0e9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa7093...1fa4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20fa11...393bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ea76a...3eaf1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eca05...ff119b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x353ce4...d4f9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ad1fc...3297a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bb38c...81c5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x435a48...030853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8e20...ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x569c15...3608c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56e456...2d9b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x684545...4f3f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x807a97...5e3006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9086af...903b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9429fd...151de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa20baf...88de5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3b66d...84b270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf0af5...9da48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc35b36...5d50cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7ffa5...486968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce5673...ea045a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcea1f0...8fe8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd10929...a7bc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4a57a...f81547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa4e67...24a3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234841...7053f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f847b...cd737f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d9332...cc5c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x753f0f...e441dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b0f34...cf39e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7a958...2fb1f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-02-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022-12-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022-09-14 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [2022-08-29 Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2022-04-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [2022-04-20 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2021-11-23 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2021-11-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [2021-11-02 Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2021-04-01 ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13741] 2023-02-03 Zokyo.pdf — no match: Two contracts explicitly listed in scope: Sender.sol and Executor.sol. Audit date from cover page: 'February 3rd 2023'.
- [13742] 2022-12-21 Zokyo.pdf — no match: No reason recorded
- [13743] 2022-09-14 Zokyo.pdf — no match: No reason recorded
- [13744] 2022-08-29 Hashcloak.pdf — no match: No reason recorded
- [13745] 2022-04-21 Zokyo.pdf — matched: Only one contract, Rail.sol, is explicitly mentioned in scope.
- [13746] 2022-04-20 Zokyo.pdf — no match: No reason recorded
- [13747] 2021-11-23 Zokyo.pdf — no match: No reason recorded
- [13748] 2021-11-03 Zokyo.pdf — no match: No reason recorded
- [13749] 2021-11-02 Hacken.pdf — no match: No reason recorded
- [13750] 2021-04-01 ABDK.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-02-03 Zokyo.pdf | Sender | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2023-02-03 Zokyo.pdf | Executor | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2022-12-21 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunSmartWallet | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | GovernorRewards.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | PublicInputHash.circom | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Treasury.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Voting.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | joinsplit.circom | unmatched — not counted | — | — | no |
| 2022-04-21 Zokyo.pdf | Rail | own contract | RailToken (selected) `0xe76c6c...a7a33d` — deployed 2021-07-03 16:16:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-04-20 Zokyo.pdf | Commitments.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Globals.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Poseidon.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | RailgunLogic.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Snark.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | TokenBlacklist.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Verifier.sol | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | CommitmentsStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Getter | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | GovernanceTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | StakingStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenStubs | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelistStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | HashInputs | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | JoinSplit | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Large | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | MerkleTree | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Small | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Types | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Verifier | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3f847b...cd737f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x92a9c9...1a714f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13741] 2023-02-03 Zokyo.pdf
- [13742] 2022-12-21 Zokyo.pdf
- [13743] 2022-09-14 Zokyo.pdf
- [13744] 2022-08-29 Hashcloak.pdf
- [13746] 2022-04-20 Zokyo.pdf
- [13747] 2021-11-23 Zokyo.pdf
- [13748] 2021-11-03 Zokyo.pdf
- [13749] 2021-11-02 Hacken.pdf
- [13750] 2021-04-01 ABDK.pdf

Fork inheritance lineage and inherited audits are included when available.
