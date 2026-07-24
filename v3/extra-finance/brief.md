# Agentic Audit Brief: Extra Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Extra Finance (`extra-finance`)
- Website: [https://extrafi.io/](https://extrafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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

- EXTRA (`0x2dad3a13ef0c6366220f989157009e501e7938f8`, chain 10)
- EXTRAoft (`0x2dad3a13ef0c6366220f989157009e501e7938f8`, chain 8453)
- LendingPool (`0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd`, chain 10)
- LendingPool (`0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd`, chain 8453)
- RewardDistributor (`0xb7d8613728efcfbb18bcd63deec06f64441d322a`, chain 10)
- VeloPositionManager (`0xf9cfb8a62f50e10adde5aa888b44cf01c5957055`, chain 10)
- VeloPositionManager (`0xf9cfb8a62f50e10adde5aa888b44cf01c5957055`, chain 8453)
- VeToken (`0xe0bec4f45aef64cec9dcb9010d4beffb13e91466`, chain 10)

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
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-239771 | `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-239774 | `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239777 | `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` | ✅ Audited |
| VeToken | token | project_anchor | own_supporting | 0 | optimism | unit-239773 | `0xe0bec4f45aef64cec9dcb9010d4beffb13e91466` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x85603119c938750dfb5904f8a501b64f3f3a01d2`; base `0x85603119c938750dfb5904f8a501b64f3f3a01d2` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b414093362a7c768273d5f0405744b8c09556a8` | ⚠️ Unaudited |
| BeraFarmingVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x155620a2e6a9392c754b73296d9655061525729b`; berachain `0x6fbc6914c3f263b236c2ba82458c9d98c35487b2` | ⚠️ Unaudited |
| BeraPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055`; berachain `0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | ⚠️ Unaudited |
| EXTRA | unknown | project_anchor | own_supporting | 0 | optimism | unit-239767 | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | ⚠️ Unaudited |
| EXTRA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4db48b2e9cb0f203eb0a8579b274f5ac3d53360b`; optimism `0xaea8384088eb1a98e555d8b5c8aaa953087716f0` | ⚠️ Unaudited |
| EXTRAoft | unknown | project_anchor | own_supporting | 0 | base | unit-239775 | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | ⚠️ Unaudited |
| EXTRAoftProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c9d44f5a573f6cfc9e8264a5ca72a1184616ef4` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | optimism | unit-239778 (3 proxies) | 3 deployments: optimism `0x4059e170d325163e2ec96cf8ca489c40b6927a8c`; optimism `0x750f7153e6c92a24089a34ec6afe65740c9bd40a`; optimism `0x89f0885da2553232aeef201692f8c97e24715c83` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239768 | `0x48f12df639322e43ce83bb6e12bba46c8e85f703` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239769 | `0x94440d355877696753597e2d90d54bbc51b2a38d` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239772 | `0xc918a60e4d40d15959a85fa8b35f6db96907babf` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-239776 | `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x23479229e52ab6aad312d0b03df9f33b46753b5e`; base `0x5a32099837d89e3a794a44fb131cbbad41f87a8c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x777a1665e66218fb020fb15b0b1f0ee66621be10` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | optimism | unit-239770 | `0xb7d8613728efcfbb18bcd63deec06f64441d322a` | ⚠️ Unaudited |
| RewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2692709313de4dc1ca15fe77a385c9eb2b6b77b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x263b6b2ad32e9cda196f4555658a81d8c3cab044`; optimism `0xc60e33b114131e9dd577bc6bebf29c44c8c38600` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x803800a6944b000fc946979b7b4c221c20445493`; optimism `0xcb766988d4209d0278b891c9d4242fd6c4bc499e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0xc1d4180c230d8dc9752381f7327ff654db2a7d01`; berachain `0xc99255128f85543801f7a01360e1e994422ebd50` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x155620a2e6a9392c754b73296d9655061525729b` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x8756d971a8fcede86763a67980fa161ff54fdb9c`; optimism `0x8774da8cc2d4af76e0abb2a46909d614a0a35545`; optimism `0x8edfb627b1ab66e574d90fee04b81eb4eea7f0f7`; optimism `0x94114a6494f6b8b87170fcdfc41159ab8e7d4ec4`; optimism `0xa24c39d7dd35923f4b2c9eb35d73c0c757438ba2` | ⚠️ Unaudited |
| VeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x292a1f318b1ab0c7701f30f42603adc7f95f5e66` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x052a8d32901739646bae1850da37105af47f8804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e4e714fedbd81d0266ec486cf7c165129849109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc448f9c53653006e6f7f3d39d7786ac97b959b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x155620a2e6a9392c754b73296d9655061525729b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1691333fc6d1abccf3081f7f9f98afda312c4566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a97e89572fc303e4bfd4fa49d02cd94161744dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dfdaca98774489748f6c372fb1dcd159f906c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e42739587bc929a823b1da099c6742b5c0f1163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21dfd382c71029aa7ce43d5232475710a7875aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x292545834a63b137ff1838b0b439e63c1f0fc23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b5b656e3684f84340943292a2d4632db3d4707d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c58ece45ac754b80fd39f5e7e67a4b0e91a1525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f879c47f4a89a89d69c21fa61d6705e26178511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x360b864a59240eebda0f1a9b2534ea96ed591b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37b25ef89a21049b66edc50a59678ef784544cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3afcb1ab1a78ecdd075647566258561acbec01d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40059b04f08900d51868da27e30f497453e0462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x400ce8b1c4f96257dde88c66b4688c583a395057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47efc0fe6a096c98d7e022daed2309aa9286dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48ccc133ce1524e2e4d3378857782808adac13af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b677e52be607c8f7b81e8dec0d9711a5c7010c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d81253472c40722622d1909a6489f3800146cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e2b3e8fb31cf8aa0705196817552a911f2e447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4effe4a250ea522c2aa5647de36055c52489c6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f4940a87d63a290d43b6550911896ff7aee354c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x512c21d420a5841a3c06636d5ee194a565a07d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5620e8a24534be69e8ceb6c6bf0fb90c598d92db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a583ccb69402d60bc360d691eedb8efda6fb7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5adf4597272394fe3edfe68961d8dc5876d5e99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c6bcad42cb0476e71a3b5886cd7472e07ef3ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67bb0914db71a37bb442ab3a8a17594d5879313c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73c3c06a2e1e5eb3d24f2ae021a1af8e0dd2b5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73cf4132f6759aca258c86ed9952b8a9e7119199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x797de59d04d43261a402cf3b85ed76c4af40f5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7fd13c20eeba7a3776ebc422cef7c8752d40766f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e625c93264b8a5f8d6915491f07bbc7dd7939f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x901850951df792103e1aef6b52a68453941c0ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9511d7b9ba1eaa5ba58c716977b0fa32e2aebecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x987fe5880fc175de42a2c9c6ca6c5addcb01ba57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ac8ad0536c1a1d471b4c6aadc2c1191ed70f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ace8a056b0d87ed099876cefca7e234ad9099cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f4c4fadb66b19b687952fe20f7659ce23ff99ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4b43b3d33f4e583194d05485c5691c0b205a75b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4dd7df0a13743508217941d2b155b5b32df7045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa69b526924f9403ff410591cbb8281146a5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6c33eea9a3f78dea8e3b56da3f35f277bd312bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac9e42209038bca0b2b026906de97a032400f2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb1bff5c14dfd303da016500a87e8c23a8ffab895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbced1ee549dd723bebf8e6f784150858e56e3ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbde053531b2dbb35ec2a2eec7c2a1bacd8a11e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbded0cd33172e8004b82de098ba0fc6e1f74bd06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbedfda828475005dc8e4a09aaa34bd0b8ca807e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc54ea096c37de98baa7e008e69dff667ab9a0916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc719a01e39553e3d06d77ecab604c3ec3ca0b932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcefa665165281b7a9807bdcd4d7ac54a54ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd01e63c531732fdb182aa0c76b1a3f21fc593566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0d8994fb8f9e453dcdc732b688c4b2848824314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc15865785a57c13a4753c8318caf4d775ffa417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdcf0f4a0fc44f33de35d8c80ad5d248dbf838943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe06c1bda58079236a5bd599c1209289e1827c6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe14a211117cdeaa167c5b0e90f04239dc2262a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe62667ca4bb3215cba459ad24d55f1c43800e7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe6a76d034f943d8b41075a559aa92d92f1dad71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9c3d95b11f2f6ac45787b3b1bcfdc7579ab8879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb94331e71f7e0431de9e61c87ee91ffd5493d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xec120bc6e12cea127553b1f53445947b1f73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecce0f5e758d01c142ebd5ed2565038e4c0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee8175c1199a3addf6e268d7f22abbbbd712301f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf082e2d5e1adae33135e9948bf6ca37a74ed2433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1f46ddb3e828f22032197f8e92af9db76b3c3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf39f1a30f0daff751421e595d423a9593476b87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe9779d23e9906927544477d06b73564646cef66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06978c3d3e0ac3816134b40f97c53c105aacd2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c07d70b6241a7c183485865202e8d3c4c9809c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x101b48f450920891ed104f34b4a51c43743f33ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12b5fa7b780b9128012a0061e0363afad4f6a5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24f8dc8fe53cdb4b98d730dd8256c1b47b548347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c58ece45ac754b80fd39f5e7e67a4b0e91a1525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e0fd37b6e268c0cbc1728c5363a067f85bb86a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x383a53dff9096ad920fcdaf17cec40db43b6ceb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x387eeaeb0febf5c916c3941493f9570101330a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3afcb1ab1a78ecdd075647566258561acbec01d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47efc0fe6a096c98d7e022daed2309aa9286dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ca5c43828e0161050749e2900f383a80b5e3f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cbd1af1db7960db8b4962d9a0389d912c3bc0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f4940a87d63a290d43b6550911896ff7aee354c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b5bf5a296ad2c98567b1950cc4bc32bfa4b3308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x630b85e583ab3bd6c2e868eb50f221446a980bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6348a94ba191d91ed42193e47f5763100b30364b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x670f4d5ec6df2dc7b17aed5224a39f3def6ae5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7acd35f7eaf1a6516718a82cebedd33f9de99746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ec9802b15959556d23d61db3cbe3793e11649db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x839416e91b5d39ca40dff3acd2eb7263eb7e25f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84c0c64c2608ec04fdfdd15fc8ee5df77f4e398e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9059ec06c53cdd8abf41c3f04032bb7eaff53599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90a06c8ea0f201646656122b50fa8c29047e1e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9778147680934e5c52735d6ba56f8e5c9d67c7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x992e93d231915a25920bdb2e07229e5fff7fac59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fdcdaee17064b8159d98ad7181a1f870059ab29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e42209038bca0b2b026906de97a032400f2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb45602b4f247aaced38f59c73804e44ea41b2043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7d8613728efcfbb18bcd63deec06f64441d322a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc226650e14f3ef306be90a2aea23400bc14601f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc45d448a430c8df35419da3513bbea46b6557158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcefa665165281b7a9807bdcd4d7ac54a54ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd12d930edb56edcba54f9e812b450615e9046b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd552265bc8e84cc6b0e0d6bd18aff3c73dd62dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfb0e08963982eb2ea9bbfac920f0fdf6ad078b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0bec4f45aef64cec9dcb9010d4beffb13e91466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3695a2943131bc3026cc4348b76e25636e1f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6d9807ea164dff955a47905a71bacbab8f78e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec120bc6e12cea127553b1f53445947b1f73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecce0f5e758d01c142ebd5ed2565038e4c0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2d3ce34ab03a644fbb6633a80cd958648e3eed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x02d99bee3f8717cd73c476fd000437060369e368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03554afb3b5fa00669a19010786fe9c5617332b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04575b91fa0c35b25a8d9e7533535bd4d0195eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x046d56d8247e9dc2aafb1fce51f5f85054912c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x064356e83d2b8d07767f33bf07ba6fa30cda123d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b62f1306da76e442310271d9cf927ff931a9e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0cd4c923b5b77e1c9797651e903d21da4b8f5928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e4e714fedbd81d0266ec486cf7c165129849109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e6d7e0c429041beed5ec71d607ffb2896ac91bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0eafb5e3b3fc448adeccff59be63e35ad41b9859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1647831a3e52fbd3f80ec714971f26ba367c5ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1a5da4e1f18836109133389a1b808787de869faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1b93f7e807d9aed1caf4295705b89c4ee612529d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1cad45aa1e5f920bc6d626d07ba64512a26f1ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1fa731a02da43f04d39fffeb86f0aa45ffcec1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2089a3a3e45d4f4740d9cb3f61a5790f6114eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x20aa90085d589895556270ecec36e5e21afc28db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2100c7a8d647b860e5ebdb063c484efa82596c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x21c83009359baa974e3ba9d91f92d7de2657686c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x232567d3a75982b662b67174282edc387d6fe17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x237f537f8b7ae2f04fff8107f304665df57b1fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x24638a45f69ba8aac9ce65bfc88953dfb02f2184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2736099b9340c22dcf6bb2bb3d1f0735544834f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x275ebe23ce2d7fd81c5d0c65f8644fa95439d5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x292a1f318b1ab0c7701f30f42603adc7f95f5e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x294f5a9779bb58abacabe6d3422745196c508432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29bb9fd2d99abfd983a786608ef2c56e08a8015f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2aedc3de55b4d8168c2c3f3e5fcebb1e312e79de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2b0441b4ca03dfc98f3ee565e82c97d9ea8da727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2c1574f67610388a4c9b179202e493a857a2c1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x35b95819660b2791bcb9169c798d9e76acf849df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3c28da069c2d2701f7d05fa14ca171e8870cfb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d0fe7a2bcaa989c4d6a2094b788723190bc4fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3f5a136687aa3d4a66dea10aab4e0d7466c75f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x40059b04f08900d51868da27e30f497453e0462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x46448ef0a6db56117671cd0a018c58cc781a5e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x480ffb4b6198c9d836936d436b07d6cab7cd36ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4b677e52be607c8f7b81e8dec0d9711a5c7010c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4ecd43741f6479ab22f25a1ad42f86246fb7a993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x50994abc56f4f8a3bc80d97c7e206d698c3390eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x54a25ada5248596bd62a63957b864d0b14465aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x562aace615649cda12e9f8ef3282e21f89c2b51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5672adc006271831757e5ed67e94560b92f6d355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5914036325f24aaa3f8533e052b17d70cefe2a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5fb925a7d0939cda4cb245a14dacc7162ac22bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x62bf856a96989b6cd84769b198d7db5d76dee468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x64020ebf771beb645947ed88c0751fe8bad5f692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x65ef3b9469cfd0c62e44874b064ea88a24842650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6a2e11c0684e6bcee4713aee93ee5898902892a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6d7fac8fe8e50d28c0832e6e19162e78cebf1cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7544297d5fd224abb561c449de8fbca352653846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x75abbd31a660cf6fa62c6d1694e4fc0d8ed546a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x760c19c88f8c632c0a33dcea70607ae33be57a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x783f701ed241c3f72ae3d6729fa9718a371e7215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78b62a3f16f8353e1fef78a8b996ea59c46125a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7961ed443ded1d18342bce1cd624dade407ed37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7acd35f7eaf1a6516718a82cebedd33f9de99746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c3c6845f1a0c1340d2c497048bd24a38f8111f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x831267938dbc3962963bfd284ac00ef58d7280af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x83fd66bcc42b3b11e44e5379a84a37555235f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8461c2269c806c1786c2146ddaeee5c99886905a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x84a1631d100f634bf09026d3f0655d7983b6a93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x85603119c938750dfb5904f8a501b64f3f3a01d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8901041d6e7de67b7fd91d42b9a83bd932474d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8946f96e2e5c104249aeaaec7a0a6dcbbe1f04a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8ed6c020d3734fad994bb9e83da21d9f5c75bd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fda306e8fefeb6cec388ad3c9bfa74e31af260d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fe3b53e0c3b4b8bfef026a2ddf4c76675b3c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91a95033753ca84790a3301daaf58c1ad76d9ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94e3dc3ad29e4ad627dcfc583c4f166c7295a844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9633d69d8ecf9804e7a67bd07fa75afafa4edf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x975b34a1b1b5f38b393f77aa8d7b38db75095218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x99a8f02d224c1bc8889e03b309c25847a54cf75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c33a194ae56c9e21d3ef4667188e131ffbeb5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9c822555fa79db732abda3ce76d5fc76063d964c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9ef4969377c495b1d05830f50da88dd0bd1fc822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9f2ec94f070e5f49e97f4ba6cee883225fa241b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa1082b223ac6b9a74000de389ab609035c4e1860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa3069536221c938a48c4cff73f202acaf77e91ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa4dd7df0a13743508217941d2b155b5b32df7045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5246b709a2526444369d300327df968f9d207f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa69b526924f9403ff410591cbb8281146a5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xad0bb2286da69a03a53e80f8c6943549b899d21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaea8384088eb1a98e555d8b5c8aaa953087716f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb104d320efd6ea96ae80599ac3553e7f0632cdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb2d44e38f80eed2a01724da6f6a30f03370453da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3bbc383f346b502370100f327206859f34b23ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb489a70a529e321bd16f53fed38a99c106fd8143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb4b22d5620e39478c4cdf46758950cdb3b031ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb581dc0c04ef6ed5298d65baa2a4dea7900708d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb7d8613728efcfbb18bcd63deec06f64441d322a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb85d46de7b842ff1b9fa29c56b31f595e136e41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb9cd83a5f493cd17485bc9041d8dbe11f0a8db63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbb8a506ea521f63580cd818e6b4f4fc104dfeae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc17246d7597c0fdab919cda4ba66a02881bf67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc4580d3aa8a2ce6fc56a38fb0ff60e2670743d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbc8816a9829305e68ca523d2aa972927c784ee3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc0e5b3af8aecfcd88f813546aab9c4ac78b3adce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc333d27146a550428dc882473ef979cdadc9b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc6739b3122341a76fc5a60ccf54718ad90b4e40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc8fb715323774f91dae625d5d12e55eb38b309e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcefa665165281b7a9807bdcd4d7ac54a54ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd11bdc93eb88261c25f7fcb86b57c25095869397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd38389a99992996b74663bf73937670e9d4c6df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd46565ea2b0251678f502933eb701112ebbb42cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4a8dbc80b169017a9c7b3365a98b209970a10bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd50c413d51300c335235e3d841746a60e1bb36ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd61af26c19ef42b31ff24f7efe833e50ad09c2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd7340098a693d118f804707927eb8c44b23a0653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd9541479797c99c5904970e45b1b7610b2158a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdb261dced9eb1fa0c91560c85794c67037408507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdc598d44364bcc89b9a993535b00b156f1644daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdda76940d0c300a7cb93c2163e84b939bbd1ffd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xddad0a2d4359d6f4e9bfa3b7c25990eee8cedd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde2f6aa19c55557a183989ee0e9ffe7ff77422b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdece17cf3e17b122f791f8dedabc3b7f7f944f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1289b8b9002bcae591e3d98634e3e4454e816ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe2f8e0d72021561b90696d6e28488671fea4d708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xea6bac623f14ee09363f193c247738ecccc1e0bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec120bc6e12cea127553b1f53445947b1f73a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xec7665d833b7bb3598c14e7e3dd494c941a2aa99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xecce0f5e758d01c142ebd5ed2565038e4c0edd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedf2d2bfc15fc33880dd061959a79a1cd8ce6c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xee74356b83cda6672f741b089a3269c958d2218c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf0523d5205ab78e12c170d18b06c543a026c5b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf18432df2c2540000f65306df2acc34d7b8abab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf215f1a49eefb0e96986711a7fc695559ad3501c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf2c58577becd98374e294aed597805ef3da27c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf548bf38885d87e0a7729bf67392c0aecb4d8b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf61b0ab991f4116c504b7421be660259fb3abd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfd82aac7a0e1d18dfa24257e0fd7a1db1d592c56` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 268
- Live contracts: 1
- Unknown liveness contracts: 267
- Source-verified contracts: 22
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=2, exact address book overlap=1, source verified unclassified=19, unverified unclassified=246

Showing first 200 of 268 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AddressRegistry<br>`0x85603119c938750dfb5904f8a501b64f3f3a01d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| candidate review | AddressRegistry<br>`0x85603119c938750dfb5904f8a501b64f3f3a01d2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| exact address book overlap | RewardDistributor<br>`0xb7d8613728efcfbb18bcd63deec06f64441d322a` | project_anchor | unknown | live | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | Airdrop<br>`0x5b414093362a7c768273d5f0405744b8c09556a8` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | EXTRA<br>`0x4db48b2e9cb0f203eb0a8579b274f5ac3d53360b` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | EXTRA<br>`0xaea8384088eb1a98e555d8b5c8aaa953087716f0` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | ProxyAdmin<br>`0x777a1665e66218fb020fb15b0b1f0ee66621be10` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | RewardsDistributorV2<br>`0x2692709313de4dc1ca15fe77a385c9eb2b6b77b8` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc60e33b114131e9dd577bc6bebf29c44c8c38600` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcb766988d4209d0278b891c9d4242fd6c4bc499e` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VestingWallet<br>`0x8756d971a8fcede86763a67980fa161ff54fdb9c` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VestingWallet<br>`0x8774da8cc2d4af76e0abb2a46909d614a0a35545` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VestingWallet<br>`0x8edfb627b1ab66e574d90fee04b81eb4eea7f0f7` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VestingWallet<br>`0x94114a6494f6b8b87170fcdfc41159ab8e7d4ec4` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VestingWallet<br>`0xa24c39d7dd35923f4b2c9eb35d73c0c757438ba2` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VeToken<br>`0x292a1f318b1ab0c7701f30f42603adc7f95f5e66` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | VaultFactory<br>`0x155620a2e6a9392c754b73296d9655061525729b` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | BeraFarmingVaultFactory<br>`0x6fbc6914c3f263b236c2ba82458c9d98c35487b2` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | BeraPositionManager<br>`0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x155620a2e6a9392c754b73296d9655061525729b` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc99255128f85543801f7a01360e1e994422ebd50` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` | non_address_book | unknown | unknown | verified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x052a8d32901739646bae1850da37105af47f8804` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0e4e714fedbd81d0266ec486cf7c165129849109` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0fc448f9c53653006e6f7f3d39d7786ac97b959b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x155620a2e6a9392c754b73296d9655061525729b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1691333fc6d1abccf3081f7f9f98afda312c4566` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1a97e89572fc303e4bfd4fa49d02cd94161744dd` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1dfdaca98774489748f6c372fb1dcd159f906c98` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1e42739587bc929a823b1da099c6742b5c0f1163` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x21dfd382c71029aa7ce43d5232475710a7875aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x263b6b2ad32e9cda196f4555658a81d8c3cab044` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x292545834a63b137ff1838b0b439e63c1f0fc23b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2b5b656e3684f84340943292a2d4632db3d4707d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2c58ece45ac754b80fd39f5e7e67a4b0e91a1525` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2f879c47f4a89a89d69c21fa61d6705e26178511` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x360b864a59240eebda0f1a9b2534ea96ed591b53` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x37b25ef89a21049b66edc50a59678ef784544cab` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x3afcb1ab1a78ecdd075647566258561acbec01d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x40059b04f08900d51868da27e30f497453e0462d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x400ce8b1c4f96257dde88c66b4688c583a395057` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x47efc0fe6a096c98d7e022daed2309aa9286dfef` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x48ccc133ce1524e2e4d3378857782808adac13af` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4b677e52be607c8f7b81e8dec0d9711a5c7010c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4d81253472c40722622d1909a6489f3800146cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4e2b3e8fb31cf8aa0705196817552a911f2e447c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4effe4a250ea522c2aa5647de36055c52489c6ff` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4f4940a87d63a290d43b6550911896ff7aee354c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x512c21d420a5841a3c06636d5ee194a565a07d5c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5620e8a24534be69e8ceb6c6bf0fb90c598d92db` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5a583ccb69402d60bc360d691eedb8efda6fb7e5` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5adf4597272394fe3edfe68961d8dc5876d5e99d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5c6bcad42cb0476e71a3b5886cd7472e07ef3ad9` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x67bb0914db71a37bb442ab3a8a17594d5879313c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x73c3c06a2e1e5eb3d24f2ae021a1af8e0dd2b5bd` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x73cf4132f6759aca258c86ed9952b8a9e7119199` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x797de59d04d43261a402cf3b85ed76c4af40f5a3` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7fd13c20eeba7a3776ebc422cef7c8752d40766f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x803800a6944b000fc946979b7b4c221c20445493` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x8e625c93264b8a5f8d6915491f07bbc7dd7939f8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x901850951df792103e1aef6b52a68453941c0ac8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9511d7b9ba1eaa5ba58c716977b0fa32e2aebecd` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x987fe5880fc175de42a2c9c6ca6c5addcb01ba57` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9ace8a056b0d87ed099876cefca7e234ad9099cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9f4c4fadb66b19b687952fe20f7659ce23ff99ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xa4b43b3d33f4e583194d05485c5691c0b205a75b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xa4dd7df0a13743508217941d2b155b5b32df7045` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xa69b526924f9403ff410591cbb8281146a5c0d3f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xa6c33eea9a3f78dea8e3b56da3f35f277bd312bb` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xac9e42209038bca0b2b026906de97a032400f2b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xb1bff5c14dfd303da016500a87e8c23a8ffab895` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xbced1ee549dd723bebf8e6f784150858e56e3ee0` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xbde053531b2dbb35ec2a2eec7c2a1bacd8a11e86` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xbded0cd33172e8004b82de098ba0fc6e1f74bd06` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xbedfda828475005dc8e4a09aaa34bd0b8ca807e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xc54ea096c37de98baa7e008e69dff667ab9a0916` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xc719a01e39553e3d06d77ecab604c3ec3ca0b932` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xcefa665165281b7a9807bdcd4d7ac54a54ca1e13` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xd01e63c531732fdb182aa0c76b1a3f21fc593566` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xd0d8994fb8f9e453dcdc732b688c4b2848824314` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xdc15865785a57c13a4753c8318caf4d775ffa417` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xdcf0f4a0fc44f33de35d8c80ad5d248dbf838943` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe06c1bda58079236a5bd599c1209289e1827c6d0` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe14a211117cdeaa167c5b0e90f04239dc2262a43` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe62667ca4bb3215cba459ad24d55f1c43800e7a8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe6a76d034f943d8b41075a559aa92d92f1dad71c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe9c3d95b11f2f6ac45787b3b1bcfdc7579ab8879` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xeb94331e71f7e0431de9e61c87ee91ffd5493d90` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xec120bc6e12cea127553b1f53445947b1f73a132` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xecce0f5e758d01c142ebd5ed2565038e4c0edd80` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xee8175c1199a3addf6e268d7f22abbbbd712301f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xf082e2d5e1adae33135e9948bf6ca37a74ed2433` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xf1f46ddb3e828f22032197f8e92af9db76b3c3fe` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xfe9779d23e9906927544477d06b73564646cef66` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x06978c3d3e0ac3816134b40f97c53c105aacd2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0c07d70b6241a7c183485865202e8d3c4c9809c9` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x12b5fa7b780b9128012a0061e0363afad4f6a5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x24f8dc8fe53cdb4b98d730dd8256c1b47b548347` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2c58ece45ac754b80fd39f5e7e67a4b0e91a1525` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2e0fd37b6e268c0cbc1728c5363a067f85bb86a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x383a53dff9096ad920fcdaf17cec40db43b6ceb8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x387eeaeb0febf5c916c3941493f9570101330a38` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x3afcb1ab1a78ecdd075647566258561acbec01d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x47efc0fe6a096c98d7e022daed2309aa9286dfef` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4cbd1af1db7960db8b4962d9a0389d912c3bc0b0` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4f4940a87d63a290d43b6550911896ff7aee354c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5b5bf5a296ad2c98567b1950cc4bc32bfa4b3308` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x630b85e583ab3bd6c2e868eb50f221446a980bfc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x6348a94ba191d91ed42193e47f5763100b30364b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x670f4d5ec6df2dc7b17aed5224a39f3def6ae5c9` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7acd35f7eaf1a6516718a82cebedd33f9de99746` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7ec9802b15959556d23d61db3cbe3793e11649db` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x839416e91b5d39ca40dff3acd2eb7263eb7e25f7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x84c0c64c2608ec04fdfdd15fc8ee5df77f4e398e` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9059ec06c53cdd8abf41c3f04032bb7eaff53599` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x90a06c8ea0f201646656122b50fa8c29047e1e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9778147680934e5c52735d6ba56f8e5c9d67c7ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x992e93d231915a25920bdb2e07229e5fff7fac59` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x9fdcdaee17064b8159d98ad7181a1f870059ab29` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xac9e42209038bca0b2b026906de97a032400f2b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xb45602b4f247aaced38f59c73804e44ea41b2043` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xb7d8613728efcfbb18bcd63deec06f64441d322a` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xc226650e14f3ef306be90a2aea23400bc14601f5` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xc45d448a430c8df35419da3513bbea46b6557158` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xcefa665165281b7a9807bdcd4d7ac54a54ca1e13` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xd12d930edb56edcba54f9e812b450615e9046b73` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xd552265bc8e84cc6b0e0d6bd18aff3c73dd62dfb` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xdfb0e08963982eb2ea9bbfac920f0fdf6ad078b8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe0bec4f45aef64cec9dcb9010d4beffb13e91466` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe3695a2943131bc3026cc4348b76e25636e1f112` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xe6d9807ea164dff955a47905a71bacbab8f78e8f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xec120bc6e12cea127553b1f53445947b1f73a132` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xecce0f5e758d01c142ebd5ed2565038e4c0edd80` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xf2d3ce34ab03a644fbb6633a80cd958648e3eed7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0xf9d40a60fd6bdc866daf0918264a30acce1dc9cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x02d99bee3f8717cd73c476fd000437060369e368` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x03554afb3b5fa00669a19010786fe9c5617332b8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x04575b91fa0c35b25a8d9e7533535bd4d0195eb3` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x046d56d8247e9dc2aafb1fce51f5f85054912c7c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x064356e83d2b8d07767f33bf07ba6fa30cda123d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0b62f1306da76e442310271d9cf927ff931a9e43` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0cd4c923b5b77e1c9797651e903d21da4b8f5928` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0e4e714fedbd81d0266ec486cf7c165129849109` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0e6d7e0c429041beed5ec71d607ffb2896ac91bc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x0eafb5e3b3fc448adeccff59be63e35ad41b9859` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1647831a3e52fbd3f80ec714971f26ba367c5ea8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1a5da4e1f18836109133389a1b808787de869faa` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1b93f7e807d9aed1caf4295705b89c4ee612529d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1cad45aa1e5f920bc6d626d07ba64512a26f1ded` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x1fa731a02da43f04d39fffeb86f0aa45ffcec1a0` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2089a3a3e45d4f4740d9cb3f61a5790f6114eb69` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x20aa90085d589895556270ecec36e5e21afc28db` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2100c7a8d647b860e5ebdb063c484efa82596c1c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x21c83009359baa974e3ba9d91f92d7de2657686c` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x232567d3a75982b662b67174282edc387d6fe17d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x237f537f8b7ae2f04fff8107f304665df57b1fd7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x24638a45f69ba8aac9ce65bfc88953dfb02f2184` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2736099b9340c22dcf6bb2bb3d1f0735544834f8` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x275ebe23ce2d7fd81c5d0c65f8644fa95439d5b7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x292a1f318b1ab0c7701f30f42603adc7f95f5e66` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x294f5a9779bb58abacabe6d3422745196c508432` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x29bb9fd2d99abfd983a786608ef2c56e08a8015f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2aedc3de55b4d8168c2c3f3e5fcebb1e312e79de` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2b0441b4ca03dfc98f3ee565e82c97d9ea8da727` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x2c1574f67610388a4c9b179202e493a857a2c1a9` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x35b95819660b2791bcb9169c798d9e76acf849df` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x3c28da069c2d2701f7d05fa14ca171e8870cfb6e` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x3d0fe7a2bcaa989c4d6a2094b788723190bc4fc6` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x3f5a136687aa3d4a66dea10aab4e0d7466c75f61` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x40059b04f08900d51868da27e30f497453e0462d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x46448ef0a6db56117671cd0a018c58cc781a5e14` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x480ffb4b6198c9d836936d436b07d6cab7cd36ad` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4b677e52be607c8f7b81e8dec0d9711a5c7010c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x4ecd43741f6479ab22f25a1ad42f86246fb7a993` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x50994abc56f4f8a3bc80d97c7e206d698c3390eb` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x54a25ada5248596bd62a63957b864d0b14465aaa` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x562aace615649cda12e9f8ef3282e21f89c2b51e` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5672adc006271831757e5ed67e94560b92f6d355` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5914036325f24aaa3f8533e052b17d70cefe2a70` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x5fb925a7d0939cda4cb245a14dacc7162ac22bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x62bf856a96989b6cd84769b198d7db5d76dee468` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x64020ebf771beb645947ed88c0751fe8bad5f692` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x65ef3b9469cfd0c62e44874b064ea88a24842650` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x6a2e11c0684e6bcee4713aee93ee5898902892a7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x6d7fac8fe8e50d28c0832e6e19162e78cebf1cc7` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7544297d5fd224abb561c449de8fbca352653846` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x75abbd31a660cf6fa62c6d1694e4fc0d8ed546a6` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x760c19c88f8c632c0a33dcea70607ae33be57a1f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x783f701ed241c3f72ae3d6729fa9718a371e7215` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x78b62a3f16f8353e1fef78a8b996ea59c46125a2` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7961ed443ded1d18342bce1cd624dade407ed37d` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7acd35f7eaf1a6516718a82cebedd33f9de99746` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x7c3c6845f1a0c1340d2c497048bd24a38f8111f2` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x831267938dbc3962963bfd284ac00ef58d7280af` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x83fd66bcc42b3b11e44e5379a84a37555235f287` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x8461c2269c806c1786c2146ddaeee5c99886905a` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x84a1631d100f634bf09026d3f0655d7983b6a93f` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x85603119c938750dfb5904f8a501b64f3f3a01d2` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |
| unverified unclassified | UnnamedContract<br>`0x8901041d6e7de67b7fd91d42b9a83bd932474d88` | non_address_book | unknown | unknown | unverified | n/a | `0x9088b976e9542d0a27f4f9ddc7a716c7714806ea` |

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
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2: ReserveLogic._mintToTreasury | no |
| blocksec_extrafinance_v1.0-signed.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | Precision | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VaultFactory | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 33d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 54d from audit; next candidate 141d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | Referenced in code snippet | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionValue | unmatched — not counted | — | Referenced in code snippet | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionValue | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StakingRewards | unmatched — not counted | — | Target in findings PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeToken | own contract | VeToken (selected) `0xe0bec4f45aef64cec9dcb9010d4beffb13e91466` — deployed 2023-05-22 13:42:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | LendingPool | own contract | LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (selected) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionManager | own contract | VeloPositionManager (alternative) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (selected) `0xf9cfb8a62f50e10adde5aa888b44cf01c5957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VaultTypes | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StateAccessor | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | DebtLogic | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloVaultPremium | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVaultFactory | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVeloVault | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| Extra Finance Audit Report.pdf | StakingRewards | unmatched — not counted | — | mentioned in test file path and issue H-1 | no |
| Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2 | no |
| Source | StakingRewards | unmatched — not counted | — | mentioned in PoC test file path: tests/lending-pool/StakingRewards.t.sol:StakingRewardsTest | no |
| Source | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| optimism | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | EXTRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2dad3a13ef0c6366220f989157009e501e7938f8` | EXTRAoft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb7d8613728efcfbb18bcd63deec06f64441d322a` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
