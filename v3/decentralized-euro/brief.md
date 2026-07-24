# Agentic Audit Brief: Decentralized Euro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 16 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 134 unique implementations (144 raw deployments)
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

**DecentralizedEURO** (`0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea`, chain 1)
Origin: decentralized-euro (`0xb58e61...0921cb`)
Containment: 87.5% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- distributeProfits(address,uint256)
- mintWithReserve(address,uint256,uint32)

Removals (removed from original):
- burnWithReserve(uint256,uint32)
- mintWithReserve(address,uint256,uint32,uint32)

**Savings** (`0x760233b90e45d186a9a98e911b115f7f4b90d3d9`, chain 1)
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

- UnnamedContract (`0x167144d66ac1d02eaafca3649ef3305ea31ee5a8`, chain 1)
- UnnamedContract (`0x2353d16869f717bfcd22dabc0adbf4dca62c609f`, chain 1)
- UnnamedContract (`0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3`, chain 1)
- UnnamedContract (`0x888883b5f5d21fb10dfeb70e8f9722b9fb0e5e51`, chain 1)
- UnnamedContract (`0x9d1a7a3191102e9f900faa10540837ba84dcbae7`, chain 1)
- AdminUpgradeabilityProxy (`0xc581b735a1688071a1746c968e0798d642ede491`, chain 1)
- CoinLendingGateway (`0x1da37d613fb590eed37520b72e9c6f0f6eee89d2`, chain 1)
- DEPSWrapper (`0x103747924e74708139a9400e4ab4bea79fffa380`, chain 1)
- Equity (`0xc71104001a3ccda1bef1177d765831bd1bfe8ee6`, chain 1)
- EUR (`0x3231cb76718cdef2155fc47b5286d82e6eda273f`, chain 1)
- EURSToken (`0xdb25f211ab05b1c97d595516f45794528a807ad8`, chain 1)
- FiatTokenProxy (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- FrontendGateway (`0x5c49c00f897bd970d964bfb8c3065ae65a180994`, chain 1)
- MintingHub (`0x66acc54a0c64255137b8993cb4972b0901684f7b`, chain 1)
- MintingHubGateway (`0x8b3c41c649b9c7085c171cbb82337889b3604618`, chain 1)
- PositionFactory (`0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81`, chain 1)
- PositionRoller (`0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79`, chain 1)
- PositionRoller (`0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd`, chain 1)
- SavingsGateway (`0x073493d73258c4beb6542e8dd3e1b2891c972303`, chain 1)
- SavingsVaultDEURO (`0x1e9f008b1c538be32f190516735bf1c634b4fa40`, chain 1)
- SavingsVaultDEURO (`0x75beb37a3c86ee4c38931e2a9319e078da612979`, chain 1)
- StablecoinBridge (`0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702`, chain 1)
- StablecoinBridge (`0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7`, chain 1)
- StablecoinBridge (`0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341`, chain 1)
- StablecoinBridge (`0x4dfd460d54854087af195906a2f260aa483a13b1`, chain 1)
- StablecoinBridge (`0x73f38ca06b27eaefb1612d062d885f58924f5897`, chain 1)
- StablecoinBridge (`0x76d8f514554a4a8e5d6103875f2dd7a67543692b`, chain 1)
- StablecoinBridge (`0xb4ff7412f08c22d7381885e8bda9ee9825092fd1`, chain 1)
- StablecoinBridge (`0xb66a40934a996373fa7602de9820c6bf3e8c9afe`, chain 1)
- TransparentUpgradeableProxy (`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8`, chain 1)
- TransparentUpgradeableProxy (`0x50753cfaf86c094925bf976f218d043f8791e408`, chain 1)

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
- Outside the address book: 101 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 33 of 134 unique; 101 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/50
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 134
- Raw deployments: 144
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
| DecentralizedEURO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383680 | `0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea` | ✅ Audited |
| DEPSWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383656 | `0x103747924e74708139a9400e4ab4bea79fffa380` | ✅ Audited |
| Equity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383681 | `0xc71104001a3ccda1bef1177d765831bd1bfe8ee6` | ✅ Audited |
| FrontendGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383668 | `0x5c49c00f897bd970d964bfb8c3065ae65a180994` | ✅ Audited |
| MintingHub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383669 | `0x66acc54a0c64255137b8993cb4972b0901684f7b` | ✅ Audited |
| MintingHubGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383676 | `0x8b3c41c649b9c7085c171cbb82337889b3604618` | ✅ Audited |
| PositionFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-383663 | `0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81` | ✅ Audited |
| PositionRoller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383665 | `0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79` | ✅ Audited |
| Savings | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383673 | `0x760233b90e45d186a9a98e911b115f7f4b90d3d9` | ✅ Audited |
| SavingsGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383655 | `0x073493d73258c4beb6542e8dd3e1b2891c972303` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgEURNameable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383685 | `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b5f7fa46ed0f487f049c42f374ca4827d65a264` | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f674bf6d559229bdd29d642d2e0978f1e282722` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa` | ⚠️ Unaudited |
| ChildERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`; polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e85faf503621830ca857a5f38b982e0cc57d537` | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383658 | `0x1da37d613fb590eed37520b72e9c6f0f6eee89d2` | ⚠️ Unaudited |
| Equity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba26788dfde592fec8bcb0eaff472a42be341b2` | ⚠️ Unaudited |
| EUR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383662 | `0x3231cb76718cdef2155fc47b5286d82e6eda273f` | ⚠️ Unaudited |
| EURSToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383682 | `0xdb25f211ab05b1c97d595516f45794528a807ad8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-383683 | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | ⚠️ Unaudited |
| FPSWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5052d3cc819f53116641e89b96ff4cd1ee80b182` | ⚠️ Unaudited |
| Frankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58e61c3098d85632df34eecfb899a1ed80921cb` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| HadronToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383684 | `0x50753cfaf86c094925bf976f218d043f8791e408` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02398771fd1db790ef2b656ca3bcb3075f27a72c` | ⚠️ Unaudited |
| MaticWETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MintingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7546762fdb1a6d9146b33960545c3f6394265219` | ⚠️ Unaudited |
| PositionRoller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383667 | `0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79a5db79be2d7692a686af8b7dd51b3bafd75b12`; ethereum `0xb50a671396e2d6460d46d634474cd40f766b3eb5` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383659 | `0x1e9f008b1c538be32f190516735bf1c634b4fa40` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-383672 | `0x75beb37a3c86ee4c38931e2a9319e078da612979` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0423f419de1c44151b6b000e2daa51859c1d5d2a`; ethereum `0x3ed40fa0e5c803e807ebd51355e388006f9e1fee`; ethereum `0x7f5173b8743e466bb7e52162be7768cf984f2e11`; ethereum `0xd03cd3ea55e67bc61b78a0d70ee93018e2182dbe`; ethereum `0xdc6450e91f49048fbff5f424046985fa03be0130` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383654 | `0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383660 | `0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383664 | `0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383666 | `0x4dfd460d54854087af195906a2f260aa483a13b1` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383671 | `0x73f38ca06b27eaefb1612d062d885f58924f5897` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383674 | `0x76d8f514554a4a8e5d6103875f2dd7a67543692b` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383678 | `0xb4ff7412f08c22d7381885e8bda9ee9825092fd1` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-383679 | `0xb66a40934a996373fa7602de9820c6bf3e8c9afe` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383686 | `0xc581b735a1688071a1746c968e0798d642ede491` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42243231fb4a64a5bcfc7f4b7a9ad92576804046` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2ff25dd99e467d2589b2c26edd270f220f14e47` | ⚠️ Unaudited |
| UChildERC20Proxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x313d009888329c9d1cf4f75ca3f32566335bd604`; polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19`; polygon `0x9d74de101e2a54ad42198f37bdcce0a0160acacb` | ⚠️ Unaudited |
| UChildUSDT0 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| VNXManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb3867935247049e87c38ea270edd305d84c9ae` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042b24bb81660cf6b3db649aa0596e69e5174a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071b13ab779fae6ac1d1beceeccaf7369a251036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cde500e6940931ed190ded77bb48640c9486392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d43c529aab2a3c1bca65827eb5136c3276f0820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e2a300c7075815b2d3a88e7581c9e493d2c923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e6574730e4ae1b425967db30e9d5dd5bcdde06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383657 | `0x167144d66ac1d02eaafca3649ef3305ea31ee5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183e337c473d18550257aefe371f74dc523eb09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a885ff670c831c88ba47c129c24ffb4b5d6b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17d67706423735b8bbf5b234d63b872bd584c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1faa6f84d5cf021a9c3d12d05fad2c31645f02cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2155877da05c52368b830bfd56e96405a2668d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x233db75eae26359b406e327504b6be4ad77cbfe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383661 | `0x2353d16869f717bfcd22dabc0adbf4dca62c609f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7e62e0bea9f9e0d5957550d147bf1dd4580880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff32972bdd637f90f73fbfd0b91d4904dd295e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c9c643becd939c950bb9f141e35777559817cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f72854df481662365494b5241e0376937e16a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea4e0542ab3220b3c514d041ecea51ca93baa9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4125cd1f826099a4dead6b7746f7f28b30d8402b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422d17ccc1442501d039595ffcaaa71b4686bf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4539b08a1f2f9efc8c3f66876eb8d8c1920a4e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496d5aa262f9f044769caf1a5303c89fb36adeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4badcaa7493099eccc07ccd15faf11dc9828ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e55618ce94738689914036b98fac8b10e0fa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54eb7ed5f98b7f498e3b59de9f2d3774394f42a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57724f65b3f914de7820c6f76b2099fa3a90f509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6015bf147bcc9ae8515df6c571e58a4fa8afbf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6196d618d97d01645c1fd03a0748800da16efbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cf7c82460c5d84d10be2219d80f746d8706b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651be1476cc3eb2f2fb3667d7f2e483544f15265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65faa41bd59cfd13f82efe8dc42ead720aa8a03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d8053acf50147d852a9602c77fc438c1fd2c77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383670 | `0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c91954e794f17ae65a3b9a9102c1d39b3b9e6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca959306afd548f3e2aee8afac8c9c146d8115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d57b2e05f26c26b549231c866bdd39779e4a488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9e62eacad75e4b130db84f3bcba390dac47944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x748ffedd23d72c971787d5acb652e49d37d30fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x774681a648125d46f35017cf6cec43a41857254e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7811fe7e1d5e19dee33350498e937e9acfcc15f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c1b506b0c2520d2ccec6c05dacb33626d52938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d4f0232a66c4c91b89c76362016a1707cfbf4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a787023f6e18f979b143c79885323a24709b0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a83d84801fe56570e942f6fef6657f2ae3ebdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba92741bf2a568abc6f1d3413c58c6e0244f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbe8f18040af0032f4c2435e7a76db6f1e346df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e03cd583a42344b4028d77046ee1c4555f51566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d59b83b00475e009e913a6e470aea1e2dcc451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885ed9b4241fb3e5a905fb1fc8a5ba328416b287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383675 | `0x888883b5f5d21fb10dfeb70e8f9722b9fb0e5e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a026c94501ca12e431cddd5203c1a38575e6f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8b5d8bd3fb93327747148edd036265be0fa020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8fd8fcfaa2438d11e7ed77d5afb6c2e1044b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c39f027c9d67d6ddea9337ce8665e2ae06581f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383677 | `0x9d1a7a3191102e9f900faa10540837ba84dcbae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa881be95479a669544d44de648562eca10b8762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac493a8460ec3488a0c8cdc4069f30d5b9ca5370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8d2df1a86ce9ce9d2fddfcf62e112b12dabb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb661bc8d0b7def1620e916740b7882910edbb4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba2262f4f1b6fe052644416763de6ce17d04fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc5142e0cc5eb16b47c63b0f033d4c2480853a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc279257f8c899b31d523450f12d163f8b9e81584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc642549743a93674cf38d6431f75d6443f88e3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd142bc58c689791a34861b5b0e1c5dffab22453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7b1032cba6cc855411bc65c1e969043fda7762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9ab617ac0abca20ee54a9145236cbeef551135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa9b55ed2b0d97ac4f04f168b6670dd1bbe2080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1976973e99b6e0e345a930270ad09dce6bcaa23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d7193ce1aa7808d577058f48ef8289fc2f81fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd674ed80eb323e9258b0842f9d98326c22ebaf1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffbaf3ac08f265dc17c2b31a5824374b4bea65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fadbbf24f118b1e63d65f1aac2a825a07f7619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8b5eb45955e9ce610245ab5c0dd140a0f11c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38a10ee8b591e09208ff3d9b033abfbf5a6bf9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72ee0d3a252ea41845ec1185d8495e2246e6ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7958b010226ae8791debfee6df3f20f7a13b623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93cb1a85db47fbd2e4b09ef7bdb3928eccddc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa792ef15455552422c73aad53ef476102f87e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbdaf9745da69f927bc14bd73860ffdba82cff43` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 81
- Live contracts: 3
- Unknown liveness contracts: 78
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=3, unverified unclassified=78

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x167144d66ac1d02eaafca3649ef3305ea31ee5a8` | project_anchor | unknown | live | unverified | n/a | `0x01ae4c18c2677f97bab536c48d6c36858f5c86d7` |
| exact address book overlap | UnnamedContract<br>`0x2353d16869f717bfcd22dabc0adbf4dca62c609f` | project_anchor | unknown | live | unverified | n/a | `0x01ae4c18c2677f97bab536c48d6c36858f5c86d7` |
| exact address book overlap | UnnamedContract<br>`0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3` | project_anchor | unknown | live | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x042b24bb81660cf6b3db649aa0596e69e5174a81` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x071b13ab779fae6ac1d1beceeccaf7369a251036` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x0cde500e6940931ed190ded77bb48640c9486392` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x0d43c529aab2a3c1bca65827eb5136c3276f0820` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x11e2a300c7075815b2d3a88e7581c9e493d2c923` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x13e6574730e4ae1b425967db30e9d5dd5bcdde06` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x183e337c473d18550257aefe371f74dc523eb09e` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x18a885ff670c831c88ba47c129c24ffb4b5d6b7d` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x1c17d67706423735b8bbf5b234d63b872bd584c4` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x1faa6f84d5cf021a9c3d12d05fad2c31645f02cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x233db75eae26359b406e327504b6be4ad77cbfe3` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x2e7e62e0bea9f9e0d5957550d147bf1dd4580880` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x2ff32972bdd637f90f73fbfd0b91d4904dd295e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x34c9c643becd939c950bb9f141e35777559817cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x35f72854df481662365494b5241e0376937e16a5` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x3ea4e0542ab3220b3c514d041ecea51ca93baa9b` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x4125cd1f826099a4dead6b7746f7f28b30d8402b` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x422d17ccc1442501d039595ffcaaa71b4686bf4e` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x4539b08a1f2f9efc8c3f66876eb8d8c1920a4e7a` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x496d5aa262f9f044769caf1a5303c89fb36adeef` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x4d4badcaa7493099eccc07ccd15faf11dc9828ee` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x54e55618ce94738689914036b98fac8b10e0fa16` | non_address_book | unknown | unknown | unverified | n/a | `0x9aada0f3dbf8390ba0b5f22ff0b5aa814554bbcc` |
| unverified unclassified | UnnamedContract<br>`0x54eb7ed5f98b7f498e3b59de9f2d3774394f42a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x57724f65b3f914de7820c6f76b2099fa3a90f509` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x6015bf147bcc9ae8515df6c571e58a4fa8afbf89` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x6196d618d97d01645c1fd03a0748800da16efbf3` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x63cf7c82460c5d84d10be2219d80f746d8706b7e` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x651be1476cc3eb2f2fb3667d7f2e483544f15265` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x65faa41bd59cfd13f82efe8dc42ead720aa8a03b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x66d8053acf50147d852a9602c77fc438c1fd2c77` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0x6c91954e794f17ae65a3b9a9102c1d39b3b9e6be` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x6ca959306afd548f3e2aee8afac8c9c146d8115c` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x6d57b2e05f26c26b549231c866bdd39779e4a488` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x6e9e62eacad75e4b130db84f3bcba390dac47944` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x748ffedd23d72c971787d5acb652e49d37d30fb8` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0x774681a648125d46f35017cf6cec43a41857254e` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x7811fe7e1d5e19dee33350498e937e9acfcc15f4` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0x78c1b506b0c2520d2ccec6c05dacb33626d52938` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x79d4f0232a66c4c91b89c76362016a1707cfbf4f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0x7a787023f6e18f979b143c79885323a24709b0d8` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x7a83d84801fe56570e942f6fef6657f2ae3ebdd6` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x7ba92741bf2a568abc6f1d3413c58c6e0244f8fd` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x7bbe8f18040af0032f4c2435e7a76db6f1e346df` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x7e03cd583a42344b4028d77046ee1c4555f51566` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x82d59b83b00475e009e913a6e470aea1e2dcc451` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x885ed9b4241fb3e5a905fb1fc8a5ba328416b287` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0x8a026c94501ca12e431cddd5203c1a38575e6f59` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0x8d8b5d8bd3fb93327747148edd036265be0fa020` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0x9b8fd8fcfaa2438d11e7ed77d5afb6c2e1044b37` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0x9c39f027c9d67d6ddea9337ce8665e2ae06581f5` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xaa881be95479a669544d44de648562eca10b8762` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xac493a8460ec3488a0c8cdc4069f30d5b9ca5370` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xac8d2df1a86ce9ce9d2fddfcf62e112b12dabb67` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xb661bc8d0b7def1620e916740b7882910edbb4a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xba2262f4f1b6fe052644416763de6ce17d04fa1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xbc5142e0cc5eb16b47c63b0f033d4c2480853a52` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xc279257f8c899b31d523450f12d163f8b9e81584` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xc642549743a93674cf38d6431f75d6443f88e3e2` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xcd142bc58c689791a34861b5b0e1c5dffab22453` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xcd7b1032cba6cc855411bc65c1e969043fda7762` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0xcd9ab617ac0abca20ee54a9145236cbeef551135` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0xcfa9b55ed2b0d97ac4f04f168b6670dd1bbe2080` | non_address_book | unknown | unknown | unverified | n/a | `0x58f13e67e465d302a733285488f868e917d99629` |
| unverified unclassified | UnnamedContract<br>`0xd1976973e99b6e0e345a930270ad09dce6bcaa23` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xd1d7193ce1aa7808d577058f48ef8289fc2f81fc` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xd674ed80eb323e9258b0842f9d98326c22ebaf1d` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |
| unverified unclassified | UnnamedContract<br>`0xdffbaf3ac08f265dc17c2b31a5824374b4bea65e` | non_address_book | unknown | unknown | unverified | n/a | `0x5873421bcc7086fb0072e7fca29ae9fa9ba75de6` |
| unverified unclassified | UnnamedContract<br>`0xe4fadbbf24f118b1e63d65f1aac2a825a07f7619` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xeb8b5eb45955e9ce610245ab5c0dd140a0f11c53` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xf38a10ee8b591e09208ff3d9b033abfbf5a6bf9c` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xf72ee0d3a252ea41845ec1185d8495e2246e6ba6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xf7958b010226ae8791debfee6df3f20f7a13b623` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xf93cb1a85db47fbd2e4b09ef7bdb3928eccddc54` | non_address_book | unknown | unknown | unverified | n/a | `0xe90319cbacc28aa19c12a7225322ce64e5701d56` |
| unverified unclassified | UnnamedContract<br>`0xfa792ef15455552422c73aad53ef476102f87e65` | non_address_book | unknown | unknown | unverified | n/a | `0x7b0c15f39cd987a7d3f5d8d10b57ac6d633e9403` |
| unverified unclassified | UnnamedContract<br>`0xfbdaf9745da69f927bc14bd73860ffdba82cff43` | non_address_book | unknown | unknown | unverified | n/a | `0xe3997860dc9d52abed7455535dc6e2f1925bd3c9` |

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
| deuro_audit_report.pdf | DecentralizedEURO | own contract | DecentralizedEURO (selected) `0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | Equity | own contract | Equity (selected) `0xc71104001a3ccda1bef1177d765831bd1bfe8ee6` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | Leadrate | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | Savings | own contract | Savings (selected) `0x760233b90e45d186a9a98e911b115f7f4b90d3d9` — deployed 2026-03-23 18:50:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | StablecoinBridge | ambiguous — not counted | StablecoinBridge (alternative) `0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341` — deployed 2025-04-23 01:21:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x73f38ca06b27eaefb1612d062d885f58924f5897` — deployed 2025-11-20 02:29:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x4dfd460d54854087af195906a2f260aa483a13b1` — deployed 2025-11-20 02:44:11+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x76d8f514554a4a8e5d6103875f2dd7a67543692b` — deployed 2025-11-20 03:06:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702` — deployed 2025-07-17 18:05:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb4ff7412f08c22d7381885e8bda9ee9825092fd1` — deployed 2025-09-20 16:54:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7` — deployed 2025-04-23 01:35:23+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb66a40934a996373fa7602de9820c6bf3e8c9afe` — deployed 2025-04-23 01:47:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deuro_audit_report.pdf | ERC3009 | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | MintingHub | own contract | MintingHub (selected) `0x66acc54a0c64255137b8993cb4972b0901684f7b` — deployed 2026-03-23 19:05:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | PositionFactory | own contract | PositionFactory (selected) `0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81` — deployed 2026-03-23 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | PositionRoller | ambiguous — not counted | PositionRoller (alternative) `0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd` — deployed 2026-03-23 18:35:35+03 — liveness: live (code_present_context)<br>PositionRoller (alternative) `0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deuro_audit_report.pdf | Position | unmatched — not counted | — | listed in scope section 2.2 | no |
| deuro_audit_report.pdf | DEPSWrapper | own contract | DEPSWrapper (selected) `0x103747924e74708139a9400e4ab4bea79fffa380` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deuro_audit_report.pdf | MathUtil | unmatched — not counted | — | listed in scope section 2.2 | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | FrontendGateway | own contract | FrontendGateway (selected) `0x5c49c00f897bd970d964bfb8c3065ae65a180994` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | MintingHubGateway | own contract | MintingHubGateway (selected) `0x8b3c41c649b9c7085c171cbb82337889b3604618` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | SavingsGateway | own contract | SavingsGateway (selected) `0x073493d73258c4beb6542e8dd3e1b2891c972303` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | ERC3009 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | MintingHub | own contract | MintingHub (selected) `0x66acc54a0c64255137b8993cb4972b0901684f7b` — deployed 2026-03-23 19:05:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | PositionFactory | own contract | PositionFactory (selected) `0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81` — deployed 2026-03-23 18:11:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | PositionRoller | own contract | PositionRoller (alternative) `0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd` — deployed 2026-03-23 18:35:35+03 — liveness: live (code_present_context)<br>PositionRoller (selected) `0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-20 was 14d from audit; next candidate 354d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | DEPSWrapper | own contract | DEPSWrapper (selected) `0x103747924e74708139a9400e4ab4bea79fffa380` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | MathUtil | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | DecentralizedEURO | own contract | DecentralizedEURO (selected) `0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | Equity | own contract | Equity (selected) `0xc71104001a3ccda1bef1177d765831bd1bfe8ee6` — deployed 2025-03-20 16:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | LeadRate | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_dEURO_dEURO_audit.pdf | Savings | own contract | Savings (selected) `0x760233b90e45d186a9a98e911b115f7f4b90d3d9` — deployed 2026-03-23 18:50:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_dEURO_dEURO_audit.pdf | StablecoinBridge | ambiguous — not counted | StablecoinBridge (alternative) `0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341` — deployed 2025-04-23 01:21:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x73f38ca06b27eaefb1612d062d885f58924f5897` — deployed 2025-11-20 02:29:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x4dfd460d54854087af195906a2f260aa483a13b1` — deployed 2025-11-20 02:44:11+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x76d8f514554a4a8e5d6103875f2dd7a67543692b` — deployed 2025-11-20 03:06:47+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702` — deployed 2025-07-17 18:05:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb4ff7412f08c22d7381885e8bda9ee9825092fd1` — deployed 2025-09-20 16:54:35+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7` — deployed 2025-04-23 01:35:23+03 — liveness: live (current_address_book_code)<br>StablecoinBridge (alternative) `0xb66a40934a996373fa7602de9820c6bf3e8c9afe` — deployed 2025-04-23 01:47:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a7e4e63778b4f12a199c062f3efdd288afcbce8` | AgEURNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1da37d613fb590eed37520b72e9c6f0f6eee89d2` | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3231cb76718cdef2155fc47b5286d82e6eda273f` | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb25f211ab05b1c97d595516f45794528a807ad8` | EURSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50753cfaf86c094925bf976f218d043f8791e408` | HadronToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd` | PositionRoller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e9f008b1c538be32f190516735bf1c634b4fa40` | SavingsVaultDEURO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75beb37a3c86ee4c38931e2a9319e078da612979` | SavingsVaultDEURO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dfd460d54854087af195906a2f260aa483a13b1` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73f38ca06b27eaefb1612d062d885f58924f5897` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76d8f514554a4a8e5d6103875f2dd7a67543692b` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4ff7412f08c22d7381885e8bda9ee9825092fd1` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb66a40934a996373fa7602de9820c6bf3e8c9afe` | StablecoinBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc581b735a1688071a1746c968e0798d642ede491` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

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
