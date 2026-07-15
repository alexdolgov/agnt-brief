# Agentic Audit Brief: Extra Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Extra Finance (`extra-finance`)
- Website: [https://extrafi.io/](https://extrafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, optimism
- Contract surface: 276 unique implementations (290 raw deployments)
- Coverage basis: 4/8 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $28,376,806.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Extra Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, berachain, optimism. Structural roles: 5 core, 5 supporting, 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: core (5), supporting (5), unclassified (4)
- Contract kinds: contract (14)
- Detected standards: ownable (8), erc20 (2), erc165 (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EXTRA (`0x2dad3a...7938f8`, chain 10)
- EXTRAoft (`0x2dad3a...7938f8`, chain 8453)
- LendingPool (`0xbb505c...c71cbd`, chain 10)
- LendingPool (`0xbb505c...c71cbd`, chain 8453)
- RewardDistributor (`0xb7d861...1d322a`, chain 10)
- VeloPositionManager (`0xf9cfb8...957055`, chain 10)
- VeloPositionManager (`0xf9cfb8...957055`, chain 8453)
- VeToken (`0xe0bec4...e91466`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (8 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/8 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 264 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 8 of 276 unique; 268 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/28
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 248
- Unique implementations: 276
- Raw deployments: 290
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/extrafinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 14.3% | 2024-11 |
| BlockSec | Tier 2 | 1 | 3.6% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-239771 | `0xbb505c...c71cbd` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-239774 | `0xf9cfb8...957055` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239777 | `0xf9cfb8...957055` | ✅ Audited |
| VeToken | token | project_anchor | own_supporting | 0 | optimism | unit-239773 | `0xe0bec4...e91466` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x856031...3a01d2`; base `0x856031...3a01d2` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b4140...9556a8` | ⚠️ Unaudited |
| BeraFarmingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x155620...25729b`; berachain `0x6fbc69...5487b2` | ⚠️ Unaudited |
| BeraPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xf9cfb8...957055`; berachain `0xf9d40a...1dc9cc` | ⚠️ Unaudited |
| EXTRA | unknown | project_anchor | own_supporting | 0 | optimism | unit-239767 | `0x2dad3a...7938f8` | ⚠️ Unaudited |
| EXTRA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4db48b...53360b`; optimism `0xaea838...7716f0` | ⚠️ Unaudited |
| EXTRAoft | unknown | project_anchor | own_supporting | 0 | base | unit-239775 | `0x2dad3a...7938f8` | ⚠️ Unaudited |
| EXTRAoftProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c9d44...616ef4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | optimism | unit-239778 (3 proxies) | 3 deployments: optimism `0x4059e1...927a8c`; optimism `0x750f71...9bd40a`; optimism `0x89f088...715c83` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239768 | `0x48f12d...85f703` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239769 | `0x94440d...b2a38d` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239772 | `0xc918a6...07babf` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-239776 | `0xbb505c...c71cbd` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb505c...c71cbd` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x234792...753b5e`; base `0x5a3209...f87a8c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x777a16...21be10` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | optimism | unit-239770 | `0xb7d861...1d322a` | ⚠️ Unaudited |
| RewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x269270...6b77b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x263b6b...cab044`; optimism `0xc60e33...c38600` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x803800...445493`; optimism `0xcb7669...bc499e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xc1d418...2a7d01`; berachain `0xc99255...2ebd50` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x155620...25729b` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x8756d9...4fdb9c`; optimism `0x8774da...a35545`; optimism `0x8edfb6...a7f0f7`; optimism `0x94114a...7d4ec4`; optimism `0xa24c39...438ba2` | ⚠️ Unaudited |
| VeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x292a1f...5f5e66` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (248)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x052a8d...7f8804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e4e71...849109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc448...7b959b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x155620...25729b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x169133...2c4566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a97e8...1744dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dfdac...906c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e4273...0f1163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21dfd3...875aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x292545...0fc23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b5b65...d4707d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c58ec...1a1525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f879c...178511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x360b86...591b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37b25e...544cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3afcb1...ec01d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40059b...e0462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x400ce8...395057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47efc0...86dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48ccc1...ac13af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b677e...7010c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d8125...146cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e2b3e...2e447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4effe4...89c6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f4940...ee354c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x512c21...a07d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5620e8...8d92db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a583c...6fb7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5adf45...d5e99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c6bca...ef3ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67bb09...79313c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73c3c0...d2b5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73cf41...119199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x797de5...40f5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7fd13c...40766f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e625c...7939f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x901850...1c0ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9511d7...aebecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x987fe5...01ba57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ac8ad...70f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ace8a...9099cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f4c4f...ff99ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4b43b...05a75b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4dd7d...df7045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa69b52...5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6c33e...d312bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac9e42...00f2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb1bff5...fab895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbced1e...6e3ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbde053...a11e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbded0c...74bd06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbedfda...a807e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc54ea0...9a0916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc719a0...a0b932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd01e63...593566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0d899...824314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc1586...ffa417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdcf0f4...838943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe06c1b...27c6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe14a21...262a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe62667...00e7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe6a76d...dad71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9c3d9...ab8879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb9433...493d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee8175...12301f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf082e2...ed2433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1f46d...b3c3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf39f1a...76b87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9d40a...1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe9779...6cef66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06978c...acd2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c07d7...9809c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x101b48...3f33ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12b5fa...f6a5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24f8dc...548347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c58ec...1a1525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e0fd3...bb86a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x383a53...b6ceb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x387eea...330a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3afcb1...ec01d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47efc0...86dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ca5c4...5e3f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cbd1a...3bc0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f4940...ee354c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b5bf5...4b3308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x630b85...980bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6348a9...30364b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x670f4d...6ae5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7acd35...e99746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ec980...1649db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x839416...7e25f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84c0c6...4e398e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9059ec...f53599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90a06c...7e1e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x977814...67c7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x992e93...7fac59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fdcda...59ab29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e42...00f2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb45602...1b2043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7d861...1d322a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc22665...4601f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc45d44...557158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd12d93...046b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd55226...d62dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfb0e0...d078b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0bec4...e91466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3695a...e1f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6d980...f78e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2d3ce...e3eed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d40a...1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x02d99b...69e368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03554a...7332b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04575b...195eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x046d56...912c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x064356...da123d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b62f1...1a9e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0cd4c9...8f5928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e4e71...849109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e6d7e...ac91bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0eafb5...1b9859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x164783...7c5ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1a5da4...869faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1b93f7...12529d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1cad45...6f1ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1fa731...cec1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2089a3...14eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x20aa90...fc28db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2100c7...596c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x21c830...57686c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x232567...6fe17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x237f53...7b1fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x24638a...2f2184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x273609...4834f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x275ebe...39d5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x292a1f...5f5e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x294f5a...508432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29bb9f...a8015f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2aedc3...2e79de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b0441...8da727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2c1574...a2c1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2dad3a...7938f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x35b958...f849df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3c28da...0cfb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d0fe7...bc4fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3f5a13...c75f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x40059b...e0462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x46448e...1a5e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x480ffb...cd36ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4b677e...7010c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ecd43...b7a993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x50994a...3390eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x54a25a...465aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x562aac...c2b51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5672ad...f6d355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x591403...fe2a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5fb925...c22bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x62bf85...dee468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x64020e...d5f692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x65ef3b...842650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6a2e11...2892a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6d7fac...bf1cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x754429...653846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x75abbd...d546a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x760c19...e57a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x783f70...1e7215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78b62a...6125a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7961ed...7ed37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7acd35...e99746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c3c68...8111f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x831267...7280af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x83fd66...35f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8461c2...86905a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x84a163...b6a93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x856031...3a01d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x890104...474d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8946f9...1f04a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8ed6c0...75bd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fda30...af260d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fe3b5...b3c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91a950...6d9ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94e3dc...95a844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9633d6...4edf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x975b34...095218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99a8f0...4cf75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c33a1...beb5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c8225...3d964c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9ef496...1fc822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f2ec9...a241b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa1082b...4e1860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa30695...7e91ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa4dd7d...df7045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5246b...d207f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa69b52...5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xad0bb2...99d21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaea838...7716f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb104d3...32cdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb2d44e...0453da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3bbc3...4b23ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb489a7...fd8143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb4b22d...031ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb581dc...0708d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb7d861...1d322a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb85d46...36e41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb9cd83...a8db63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb8a50...dfeae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc1724...1bf67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc4580...0743d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc8816...84ee3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc0e5b3...b3adce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc333d2...c9b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc6739b...b4e40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc8fb71...b309e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd11bdc...869397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd38389...4c6df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd46565...bb42cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4a8db...0a10bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd50c41...bb36ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd61af2...09c2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd73400...3a0653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd95414...158a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdb261d...408507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdc598d...644daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdda769...d1ffd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xddad0a...cedd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde2f6a...7422b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdece17...944f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1289b...e816ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe2f8e0...a4d708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xea6bac...c1e0bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec7665...a2aa99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedf2d2...ce6c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xee7435...d2218c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf0523d...6c5b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf18432...8abab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf215f1...d3501c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf2c585...a27c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf548bf...4d8b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf61b0a...3abd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfd82aa...592c56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/extrafinance/information](https://immunefi.com/bug-bounty/extrafinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [2024.12.01 - Final - Extra Finance Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [blocksec_extrafinance_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [blocksec_extrafinance_v1.0-signed.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec_extrafinance_v1.0-signed.pdf) | BlockSec | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FcuHasqCbUeVSTz53smRl%2FPeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 9 | medium |
| [Extra Finance Audit Report.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2Fk1NX1zcl5i5vFn9IMMl9%2FExtra%20Finance%20Audit%20Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Source](https://sherlock-files.ams3.digitaloceanspaces.com/reports/extra-finance-audit-report-1734534935.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf](https://2858456557-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2K7L6qM6znh2wIGpWwOA%2Fuploads%2FQuw0sj6V9dRbzVmgh0si%2F2025.06.19%20-%20Final%20-%20Extra%20Finance%20Private%20Best%20Efforts%20Audit%20Contest%20Report%201750340468.pdf) | Extra Finance Private Best Efforts Audit Contest | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://2858456557-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2K7L6qM6znh2wIGpWwOA%2Fuploads%2FJQ2F8UoNa2bWm7GNUs3Q%2FPeckShield-Audit-Report-ExtraFi-v1.0%20(1).pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4255] immunefi.com/bug-bounty/extrafinance/information — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; only mentions 'Smart Contract' as a category. No audit date found.
- [4257] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — no match: No explicit scope table; contracts extracted from findings targets and mentions.
- [4258] 2024.12.01 - Final - Extra Finance Audit Report.pdf — no match: Scope section not explicitly provided; contracts inferred from findings and PoC file paths. Audit date from 'Date Audited: November20-December1,2024' using end date.
- [14629] blocksec_extrafinance_v1.0-signed.pdf — matched: No reason recorded
- [26842] blocksec_extrafinance_v1.0-signed.pdf — matched: Extracted contract names from the report's scope description and code snippets. The report mentions 'Leverage Farming' as the target protocol, but the specific contracts are listed in the findings and code references.
- [26843] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — matched: No explicit scope section; contract names extracted from findings targets and code references.
- [26844] Extra Finance Audit Report.pdf — no match: Scope section not explicitly listed; contracts inferred from findings and file paths.
- [26845] Source — no match: Scope section not explicitly provided; contracts inferred from findings and test file paths. Audit date from header: November20-December1,2024 -> end date used.
- [26846] 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf — no match: Extracted 51 contract names from the scope file listing. Audit date from 'Date Audited: May21-June4,2025' -> end date June 4, 2025.
- [26847] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — no match: No explicit scope section listing contracts; extracted contract names from findings targets and mentions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ConfiguratorLogic | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ATokenRewardsReDistributionManager | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ExtraXAccountFactory | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | PoolConfigurator | unmatched — not counted | — | Mentioned in finding PVE-005 as example | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | StakingRewards | unmatched — not counted | — | mentioned in PoC test file path: tests/lending-pool/StakingRewards.t.sol:StakingRewardsTest | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2: ReserveLogic._mintToTreasury | no |
| blocksec_extrafinance_v1.0-signed.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | Precision | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VaultFactory | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 33d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionValue | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloSwapPathManager | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultPositionLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultRewardsLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultV2 | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultPositionLogic | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultRewardsLogic | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultV2 | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VaultFactory | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | Precision | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | AddressRegistry | unmatched — not counted | — | Mentioned in centralization risks note | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloSwapPathManager | unmatched — not counted | — | Mentioned in centralization risks note | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 54d from audit; next candidate 141d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | Referenced in code snippet | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionValue | unmatched — not counted | — | Referenced in code snippet | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionValue | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StakingRewards | unmatched — not counted | — | Target in findings PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeToken | own contract | VeToken (selected) `0xe0bec4...e91466` — deployed 2023-05-22 13:42:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | LendingPool | own contract | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (selected) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionManager | own contract | VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VaultTypes | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StateAccessor | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | DebtLogic | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloVaultPremium | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVaultFactory | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVeloVault | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| Extra Finance Audit Report.pdf | StakingRewards | unmatched — not counted | — | mentioned in test file path and issue H-1 | no |
| Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2 | no |
| Source | StakingRewards | unmatched — not counted | — | mentioned in PoC test file path: tests/lending-pool/StakingRewards.t.sol:StakingRewardsTest | no |
| Source | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Source | ReserveLogic | unmatched — not counted | — | issue M-2: ReserveLogic._mintToTreasury | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanSimpleReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CLSynchronicityPriceAdapterPegToBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CalldataLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | IsolationModeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | L2Pool | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | EIP712Base | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ExtraXAccountFactory | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CoinbaseAccountCreator | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | SafeAccount130Creator | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ConfiguratorLogic | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ATokenRewardsReDistributionManager | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ExtraXAccountFactory | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | PoolConfigurator | unmatched — not counted | — | Mentioned in finding PVE-005 as example privileged functions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x2dad3a...7938f8` | EXTRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2dad3a...7938f8` | EXTRAoft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbb505c...c71cbd` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb7d861...1d322a` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 251 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 96 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=6
- Match method counts: temporal_name=4, unique_name=1

Zero-match audit list:

- [4257] PeckShield-Audit-Report-ExtraFi-v1.0.pdf
- [4258] 2024.12.01 - Final - Extra Finance Audit Report.pdf
- [26844] Extra Finance Audit Report.pdf
- [26845] Source
- [26846] 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf
- [26847] PeckShield-Audit-Report-ExtraFi-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
