# Agentic Audit Brief: Zoo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, chain-80084, sei
- Contract surface: 100 unique implementations (163 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,950,714.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, base, berachain, bsc, chain-80084, sei. Structural roles: 8 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (8), supporting (5)
- Contract kinds: contract (13)
- Detected standards: erc20 (5), pausable (5), ownable (2)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BQuery (`0x6e6030...56d913`, chain 80094)
- InfraredBribeVault (`0x33c42e...f64e63`, chain 80094)
- InfraredBribeVault (`0x6686bd...f338c0`, chain 80094)
- InfraredBribeVaultV2 (`0x702b70...a02767`, chain 80094)
- InfraredBribeVaultV2 (`0x94822b...94fc67`, chain 80094)
- InfraredBribeVaultV2 (`0xe6d155...0d4083`, chain 80094)
- pHONEY-USDC (`0x70b851...abdd4b`, chain 80094)
- pHONEYBYUSD (`0x83f933...1b2ea5`, chain 80094)
- pHONEYBYUSD (`0xa58f5a...12fcaf`, chain 80094)
- ProtocolSettings (`0x7d3cec...19bac0`, chain 80094)
- pUSDCeHONEY (`0xc2c5ea...dbf7a7`, chain 80094)
- pWBERAWETH (`0x0da715...6728ea`, chain 80094)
- ZooProtocol (`0x4737c3...be9c81`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 13 of 100 unique; 87 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 100
- Raw deployments: 163
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgentTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff8104...8583d6` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x0d8ce2...9ae153`; bsc `0x101d82...f9766e`; bsc `0x88f1a5...c9142e`; bsc `0x9ac983...2e8404`; bsc `0xbf5140...2ce9b1` | ⚠️ Unaudited |
| BQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x0e1d50...0b9328`; berachain `0x3efafb...47ffa0`; berachain `0x736f51...1dfaa4`; berachain `0x878aac...c2ca22`; berachain `0x8bf32a...cf411a`; berachain `0xc78ae1...c4e976`; berachain `0xda407f...0fb4a9` | ⚠️ Unaudited |
| BQuery | unknown | project_anchor | own_supporting | 0 | berachain | unit-398273 | `0x6e6030...56d913` | ⚠️ Unaudited |
| BribesPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x008eee...fd281f`; berachain `0x056e53...909181`; berachain `0x2b9bd7...98b9fd`; berachain `0x2cbe93...c70078`; berachain `0x4979a1...1741db`; berachain `0x550b03...a97202`; berachain `0x793d33...cc74a6`; berachain `0xf74b2e...118b3b` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x13f34e...04370f`; arbitrum `0x73098d...4b9a22` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x179b3d...64dcdb`; arbitrum `0xf16fff...a2a130` | ⚠️ Unaudited |
| CheckerLicenseNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x349834...112d9a`; arbitrum `0x4395cb...747531`; arbitrum `0x9e6cd1...35f6b0` | ⚠️ Unaudited |
| CheckerLicenseNFTv2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc227e2...4972f1` | ⚠️ Unaudited |
| CheckerNFTClaim | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa4dfd...3f31da` | ⚠️ Unaudited |
| DragonswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x71f6b4...bca03d` | ⚠️ Unaudited |
| DragonswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa4cf2f...5712f2` | ⚠️ Unaudited |
| DragonswapStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x0d579d...89a896`; sei `0x2a2f66...66ea9c`; sei `0xcfea00...9e0a62`; sei `0xf1d159...a902cb` | ⚠️ Unaudited |
| DragonswapStakerBoosted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x69d40c...c708df`; sei `0xde04d3...122139` | ⚠️ Unaudited |
| DragonswapStakerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x349752...1d4e2d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x17a90e...b1eea1`; arbitrum `0xf74b2e...118b3b` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398270 | `0x33c42e...f64e63` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398272 | `0x6686bd...f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398274 | `0x702b70...a02767` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398278 | `0x94822b...94fc67` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0xa6c041...934826`; berachain `0xbc8015...884f55`; berachain `0xf579c0...3cdd9f` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398281 | `0xe6d155...0d4083` | ⚠️ Unaudited |
| InterchainToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc87b37...9d056c` | ⚠️ Unaudited |
| LntOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33c42e...f64e63` | ⚠️ Unaudited |
| LntVault0GArbUpg | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3010ab...dba454` | ⚠️ Unaudited |
| LntVault0GArbUpgV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x50bdb4...c3aaac`; arbitrum `0x9619fe...cdc6f0` | ⚠️ Unaudited |
| LntVaultAethirSigner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf32a...cf411a` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170265...4f3781` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71479c...27ab95` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x7b8a01...170613` | ⚠️ Unaudited |
| pHONEY-USDC | unknown | project_anchor | own_supporting | 0 | berachain | unit-398275 | `0x70b851...abdd4b` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398277 | `0x83f933...1b2ea5` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398279 | `0xa58f5a...12fcaf` | ⚠️ Unaudited |
| Protocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x170e0c...8470c8` | ⚠️ Unaudited |
| ProtocolSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x1c77a8...ee3644`; berachain `0x2f70e7...810fc9`; berachain `0x45a47e...3386ea`; berachain `0x50bdb4...c3aaac`; berachain `0x8c6e43...1d85eb`; berachain `0xe34e1c...dd778a`; berachain `0xf8dfaa...b84e8b` | ⚠️ Unaudited |
| ProtocolSettings | unknown | project_anchor | own_supporting | 0 | berachain | unit-398276 | `0x7d3cec...19bac0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x589b49...43ed8f`; bsc `0xc9a7f5...8b1c79` | ⚠️ Unaudited |
| pUSDCeHONEY | unknown | project_anchor | own_supporting | 0 | berachain | unit-398280 | `0xc2c5ea...dbf7a7` | ⚠️ Unaudited |
| pWBERAWETH | unknown | project_anchor | own_supporting | 0 | berachain | unit-398269 | `0x0da715...6728ea` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x78d78e...3eb077`; bsc `0xd00bd4...42db42` | ⚠️ Unaudited |
| RedeemPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x17a90e...b1eea1`; berachain `0x237868...ace0c7`; berachain `0x5d5958...fc9e20`; berachain `0x64ae2c...2d66d9`; berachain `0x9231e8...e69c72`; berachain `0xa341e9...8ea134`; berachain `0xf6f4a8...3b2db3`; berachain `0xf791de...b2155a` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64dd3...7e650f` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb971ef...dd85d2` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd92700...01a47c`; bsc `0xf5f449...85615a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0281e9...44c55c`; bsc `0xaec98e...97ee97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x704218...0b0d7c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4752ba...72ad24` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc30a05...8309dd` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x326818...9e760f`; bsc `0xb3abf5...5746fc` | ⚠️ Unaudited |
| VaultCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 8 deployments: berachain `0x38402a...728214`; berachain `0x38d913...2377fe`; berachain `0x831dc0...189c69`; berachain `0x856d8c...c0636d`; berachain `0x8d5057...f5761f`; berachain `0x9619fe...cdc6f0`; berachain `0xefb7ba...ffd0a6`; berachain `0xfbfaf4...6492ad` | ⚠️ Unaudited |
| VestingToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x24ef95...34ef46`; sei `0x92838c...50cc5f`; base `0x24ef95...34ef46` | ⚠️ Unaudited |
| VTSwapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf4b4a...637a88` | ⚠️ Unaudited |
| WSEI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe30fed...95e8c7` | ⚠️ Unaudited |
| ZooProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 7 deployments: berachain `0x170e0c...8470c8`; berachain `0x3010ab...dba454`; berachain `0x9cfd76...0ae4d2`; berachain `0x9f0956...562f87`; berachain `0xc0fa38...2c30dc`; berachain `0xd75dc0...6e4ff1`; berachain `0xebf103...17d031` | ⚠️ Unaudited |
| ZooProtocol | unknown | project_anchor | own_supporting | 0 | berachain | unit-398271 | `0x4737c3...be9c81` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x53a1f55283245a99e25004079f6228def7603d91) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf8dfaa...b84e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x831d93...995071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd4855...6c945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed202a...a23a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1434ae...100af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x17714e...0129f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3362cb...3a3a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4ceec8...38dca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4dc1ee...077aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x621239...917830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7b2c42...67d139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb34b27...3c785b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb6ba61...ee1012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xca9851...2d5266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xee5aee...027a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b7249...f07a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398282 | `0x4b9cef...156e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x056e53...909181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f70e7...810fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x550b03...a97202`; arbitrum `0x6e6030...56d913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x878aac...c2ca22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893509...14643a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c6e43...1d85eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d5057...f5761f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa341e9...8ea134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba3a59...e12fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0fa38...2c30dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc78ae1...c4e976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7fc9a...e48567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeaed7f...14a329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf103...17d031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefb7ba...ffd0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6f4a8...3b2db3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398260 | `0x02fede...4e0516` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398261 | `0x12f5f1...683adc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398262 | `0x256938...83bedf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398263 | `0x575287...b8feba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398264 | `0x77412b...e03eea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398265 | `0x8685ce...b5dc89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398266 | `0x9700fe...2125be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398267 | `0x97d82c...2a2a83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398268 | `0xdf1126...c34ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x893509...14643a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeaed7f...14a329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb4072...e44342` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-report.md](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3916] audit-report.md — no match: The provided text is a documentation page with a link to a PDF audit report. The actual audit report content is not included, so no contract names or audit date can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x6e6030...56d913` | BQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x33c42e...f64e63` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6686bd...f338c0` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x702b70...a02767` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x94822b...94fc67` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xe6d155...0d4083` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7d3cec...19bac0` | ProtocolSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4737c3...be9c81` | ZooProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3916] audit-report.md

Fork inheritance lineage and inherited audits are included when available.
