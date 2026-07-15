# Agentic Audit Brief: Decentralized Euro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 16 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 126 unique implementations (136 raw deployments)
- Coverage basis: 10/28 confirmed own live verified implementations (35.7%); conservative 35.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,776,571.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Decentralized Euro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across arbitrum, base, ethereum, polygon. Structural roles: 18 core, 9 supporting, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (18), supporting (9), infra (1)
- Contract kinds: contract (28)
- Detected standards: erc20 (7), erc165 (4), erc1967proxy (4), erc20permit (3), erc4626 (2), ownable (2), pausable (1)
- Frameworks: openzeppelin (28), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

2 of 33 contracts are derived from known codebases. 31 contracts have no detected origin.

### Forked Contracts

**DecentralizedEURO** (`0xba3f53...e0a3ea`, chain 1)
Origin: decentralized-euro (`0xb58e61...0921cb`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- distributeProfits(address,uint256)
- mintWithReserve(address,uint256,uint32)

Removals (removed from original):
- burnWithReserve(uint256,uint32)
- mintWithReserve(address,uint256,uint32,uint32)

**Savings** (`0x760233...90d3d9`, chain 1)
Origin: frankencoin (`0x27d9ad...a17b38`)
Containment: 76.5% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- claimInterest(address)
- save(uint192,bool)

Removals (removed from original):
- adjust(uint192,address,uint24)
- dropReferrer()
- save(uint192,address,uint24)
- withdraw(uint192,address,uint24)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x167144...1ee5a8`, chain 1)
- UnnamedContract (`0x2353d1...2c609f`, chain 1)
- UnnamedContract (`0x6ba75d...89b5d3`, chain 1)
- UnnamedContract (`0x888883...0e5e51`, chain 1)
- UnnamedContract (`0x9d1a7a...dcbae7`, chain 1)
- AdminUpgradeabilityProxy (`0xc581b7...ede491`, chain 1)
- CoinLendingGateway (`0x1da37d...ee89d2`, chain 1)
- DEPSWrapper (`0x103747...ffa380`, chain 1)
- Equity (`0xc71104...fe8ee6`, chain 1)
- EUR (`0x3231cb...da273f`, chain 1)
- EURSToken (`0xdb25f2...807ad8`, chain 1)
- FiatTokenProxy (`0x1abaea...1bc33c`, chain 1)
- FrontendGateway (`0x5c49c0...180994`, chain 1)
- MintingHub (`0x66acc5...684f7b`, chain 1)
- MintingHubGateway (`0x8b3c41...604618`, chain 1)
- PositionFactory (`0x3a3985...defe81`, chain 1)
- PositionRoller (`0x4ce0ab...57dc79`, chain 1)
- PositionRoller (`0x5c22d5...f7c5cd`, chain 1)
- SavingsGateway (`0x073493...972303`, chain 1)
- SavingsVaultDEURO (`0x1e9f00...b4fa40`, chain 1)
- SavingsVaultDEURO (`0x75beb3...612979`, chain 1)
- StablecoinBridge (`0x05620f...771702`, chain 1)
- StablecoinBridge (`0x20b0a1...19f1a7`, chain 1)
- StablecoinBridge (`0x3ef3d0...630341`, chain 1)
- StablecoinBridge (`0x4dfd46...3a13b1`, chain 1)
- StablecoinBridge (`0x73f38c...4f5897`, chain 1)
- StablecoinBridge (`0x76d8f5...43692b`, chain 1)
- StablecoinBridge (`0xb4ff74...092fd1`, chain 1)
- StablecoinBridge (`0xb66a40...8c9afe`, chain 1)
- TransparentUpgradeableProxy (`0x1a7e4e...fcbce8`, chain 1)
- TransparentUpgradeableProxy (`0x50753c...91e408`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/28 (35.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 93 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 33 of 126 unique; 93 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/50
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 76
- Unique implementations: 126
- Raw deployments: 136
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 35.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 10 | 20.0% | 2025-04 |
| unknown | Tier 2 | 6 | 12.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DecentralizedEURO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383680 | `0xba3f53...e0a3ea` | ✅ Audited |
| DEPSWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383656 | `0x103747...ffa380` | ✅ Audited |
| Equity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383681 | `0xc71104...fe8ee6` | ✅ Audited |
| FrontendGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383668 | `0x5c49c0...180994` | ✅ Audited |
| MintingHub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383669 | `0x66acc5...684f7b` | ✅ Audited |
| MintingHubGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383676 | `0x8b3c41...604618` | ✅ Audited |
| PositionFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-383663 | `0x3a3985...defe81` | ✅ Audited |
| PositionRoller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383665 | `0x4ce0ab...57dc79` | ✅ Audited |
| Savings | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383673 | `0x760233...90d3d9` | ✅ Audited |
| SavingsGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383655 | `0x073493...972303` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgEURNameable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383685 | `0x1a7e4e...fcbce8` | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b5f7f...65a264` | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f674b...282722` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa6fa4f...d1c0aa` | ⚠️ Unaudited |
| ChildERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e85fa...57d537` | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383658 | `0x1da37d...ee89d2` | ⚠️ Unaudited |
| Equity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba267...e341b2` | ⚠️ Unaudited |
| EUR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383662 | `0x3231cb...da273f` | ⚠️ Unaudited |
| EURSToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383682 | `0xdb25f2...807ad8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-383683 | `0x1abaea...1bc33c` | ⚠️ Unaudited |
| FPSWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5052d3...80b182` | ⚠️ Unaudited |
| Frankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58e61...0921cb` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| HadronToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383684 | `0x50753c...91e408` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023987...27a72c` | ⚠️ Unaudited |
| MaticWETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| MintingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x754676...265219` | ⚠️ Unaudited |
| PositionRoller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383667 | `0x5c22d5...f7c5cd` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79a5db...d75b12`; ethereum `0xb50a67...6b3eb5` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383659 | `0x1e9f00...b4fa40` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383672 | `0x75beb3...612979` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0423f4...1d5d2a`; ethereum `0x3ed40f...9e1fee`; ethereum `0x7f5173...4f2e11`; ethereum `0xd03cd3...182dbe`; ethereum `0xdc6450...be0130` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383654 | `0x05620f...771702` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383660 | `0x20b0a1...19f1a7` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383664 | `0x3ef3d0...630341` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383666 | `0x4dfd46...3a13b1` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383671 | `0x73f38c...4f5897` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383674 | `0x76d8f5...43692b` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383678 | `0xb4ff74...092fd1` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383679 | `0xb66a40...8c9afe` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383686 | `0xc581b7...ede491` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x422432...804046` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2ff25...f14e47` | ⚠️ Unaudited |
| UChildERC20Proxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x313d00...5bd604`; polygon `0x5a2fdf...908d19`; polygon `0x9d74de...0acacb` | ⚠️ Unaudited |
| UChildUSDT0 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| VNXManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb386...84c9ae` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8bb8e...400400` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (76)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042b24...174a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071b13...251036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cde50...486392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d43c5...6f0820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5dfe...fcb9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e2a3...d2c923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e657...cdde06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383657 | `0x167144...1ee5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183e33...3eb09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a885...5d6b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17d6...d584c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1faa6f...5f02cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215587...668d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x233db7...7cbfe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383661 | `0x2353d1...2c609f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7e62...580880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff329...d295e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c9c6...9817cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f728...7e16a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea4e0...3baa9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd2c5...69d53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4125cd...d8402b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422d17...86bf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4539b0...0a4e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496d5a...6adeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be1f1...2faf4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4bad...9828ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e556...e0fa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54eb7e...4f42a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57724f...90f509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6015bf...afbf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6196d6...6efbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cf7c...706b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651be1...f15265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65faa4...a8a03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383670 | `0x6ba75d...89b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c9195...b9e6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca959...d8115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d57b2...e4a488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9e62...c47944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x774681...57254e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c1b5...d52938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d4f0...cfbf4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7870...09b0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a83d8...3ebdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba927...44f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbe8f...e346df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e03cd...f51566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0a5b...6df70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d59b...dcc451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383675 | `0x888883...0e5e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a026c...5e6f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8b5d...0fa020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8fd8...044b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c39f0...6581f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383677 | `0x9d1a7a...dcbae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa881b...0b8762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac493a...ca5370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8d2d...dabb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb661bc...dbb4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba2262...04fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5142...853a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc27925...e81584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc64254...88e3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd142b...b22453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa9b5...be2080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd19769...bcaa23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d719...2f81fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffbaf...bea65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fadb...7f7619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8b5e...f11c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38a10...a6bf9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72ee0...6e6ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7958b...13b623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93cb1...cddc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa792e...f87e65` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 6 | high |
| [ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | matched | 10 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2927] www.chainsecurity.com/security-audit/deuro-smart-contracts — no match: The report text does not list specific contract names, file paths, or a scope section. It only mentions the protocol name 'dEURO' and references the forked 'Frankencoin' codebase.
- [2928] deuro_audit_report.pdf — matched: Audit scope explicitly lists 12 smart contract source files. Audit date inferred from 'December 2024 and January 2025' engagement period, using end of January 2025.
- [2929] ChainSecurity_dEURO_dEURO_audit.pdf — matched: All contracts listed in the scope table on page 5 are extracted. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| deuro_audit_report.pdf | DecentralizedEURO | own contract | DecentralizedEURO (selected) `0xba3f53...e0a3ea` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | Equity | own contract | Equity (selected) `0xc71104...fe8ee6` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | Leadrate | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | Savings | own contract | Savings (selected) `0x760233...90d3d9` — deployed 2026-03-23 18:50:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | StablecoinBridge | ambiguous — not counted | StablecoinBridge (alternative) `0x3ef3d0...630341` — deployed 2025-04-23 01:21:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x73f38c...4f5897` — deployed 2025-11-20 02:29:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x4dfd46...3a13b1` — deployed 2025-11-20 02:44:11+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x76d8f5...43692b` — deployed 2025-11-20 03:06:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x05620f...771702` — deployed 2025-07-17 18:05:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb4ff74...092fd1` — deployed 2025-09-20 16:54:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x20b0a1...19f1a7` — deployed 2025-04-23 01:35:23+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb66a40...8c9afe` — deployed 2025-04-23 01:47:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deuro_audit_report.pdf | ERC3009 | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | MintingHub | own contract | MintingHub (selected) `0x66acc5...684f7b` — deployed 2026-03-23 19:05:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | PositionFactory | own contract | PositionFactory (selected) `0x3a3985...defe81` — deployed 2026-03-23 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | PositionRoller | ambiguous — not counted | PositionRoller (alternative) `0x5c22d5...f7c5cd` — deployed 2026-03-23 18:35:35+03 — liveness: live (code_present_context)<br>PositionRoller (alternative) `0x4ce0ab...57dc79` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deuro_audit_report.pdf | Position | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | DEPSWrapper | own contract | DEPSWrapper (selected) `0x103747...ffa380` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | MathUtil | unmatched — not counted | — | listed in scope section 2.2 | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | FrontendGateway | own contract | FrontendGateway (selected) `0x5c49c0...180994` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | MintingHubGateway | own contract | MintingHubGateway (selected) `0x8b3c41...604618` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | SavingsGateway | own contract | SavingsGateway (selected) `0x073493...972303` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | ERC3009 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | MintingHub | own contract | MintingHub (selected) `0x66acc5...684f7b` — deployed 2026-03-23 19:05:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | PositionFactory | own contract | PositionFactory (selected) `0x3a3985...defe81` — deployed 2026-03-23 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | PositionRoller | own contract | PositionRoller (alternative) `0x5c22d5...f7c5cd` — deployed 2026-03-23 18:35:35+03 — liveness: live (code_present_context)<br>PositionRoller (selected) `0x4ce0ab...57dc79` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-20 was 14d from audit; next candidate 354d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | DEPSWrapper | own contract | DEPSWrapper (selected) `0x103747...ffa380` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | MathUtil | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | DecentralizedEURO | own contract | DecentralizedEURO (selected) `0xba3f53...e0a3ea` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | Equity | own contract | Equity (selected) `0xc71104...fe8ee6` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | LeadRate | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | Savings | own contract | Savings (selected) `0x760233...90d3d9` — deployed 2026-03-23 18:50:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | StablecoinBridge | ambiguous — not counted | StablecoinBridge (alternative) `0x3ef3d0...630341` — deployed 2025-04-23 01:21:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x73f38c...4f5897` — deployed 2025-11-20 02:29:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x4dfd46...3a13b1` — deployed 2025-11-20 02:44:11+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x76d8f5...43692b` — deployed 2025-11-20 03:06:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x05620f...771702` — deployed 2025-07-17 18:05:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb4ff74...092fd1` — deployed 2025-09-20 16:54:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x20b0a1...19f1a7` — deployed 2025-04-23 01:35:23+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb66a40...8c9afe` — deployed 2025-04-23 01:47:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a7e4e...fcbce8` | AgEURNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1da37d...ee89d2` | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3231cb...da273f` | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb25f2...807ad8` | EURSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abaea...1bc33c` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50753c...91e408` | HadronToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c22d5...f7c5cd` | PositionRoller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e9f00...b4fa40` | SavingsVaultDEURO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75beb3...612979` | SavingsVaultDEURO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05620f...771702` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20b0a1...19f1a7` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ef3d0...630341` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dfd46...3a13b1` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73f38c...4f5897` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76d8f5...43692b` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4ff74...092fd1` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb66a40...8c9afe` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc581b7...ede491` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 16 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 8 unmatched
- Matched-own operational status: 16 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: temporal_name=1, unique_name=15

Zero-match audit list:

- [2927] www.chainsecurity.com/security-audit/deuro-smart-contracts

Fork inheritance lineage and inherited audits are included when available.
