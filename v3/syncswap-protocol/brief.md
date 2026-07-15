# Agentic Audit Brief: SyncSwap Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea, scroll, zksync-era
- Contract surface: 163 unique implementations (196 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $7,912,329.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SyncSwap Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across linea, scroll, zksync-era. Structural roles: 7 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (6)
- Contract kinds: contract (13)
- Detected standards: ownable (9), ownable2step (5), multicall (3), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (8), permit2 (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 13; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 119 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 125
- Unique implementations: 163
- Raw deployments: 196
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CryptoView_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1f74b4...153a68` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x019f6f...dc5785`; linea `0x2a1417...b20fe6`; linea `0x4100b8...5d8e17`; linea `0x49d982...e110a2`; linea `0xa4bc20...1bd8a1` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8cdf4e...b3ec60` | ⚠️ Unaudited |
| FeeRegistryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x396a9a...c3a02b` | ⚠️ Unaudited |
| ForwarderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x35f714...5d1670`; linea `0x86c3e1...42f59e` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x19bbe6...d9a09d`; linea `0xcc00f9...9e4d75` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x575443...fc6783`; linea `0x6c3930...0c2994`; linea `0xe35730...353431`; linea `0xf96d83...f76e41` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x0d23e8...c1e044`; linea `0x1e662e...6c0b10`; linea `0x20e82b...66cdf9`; linea `0x78ebfe...04ba5a`; linea `0xeb0fab...3057a7`; linea `0xee424e...efa57f` | ⚠️ Unaudited |
| SwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f469d...e2d571` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e9...776eb4` | ⚠️ Unaudited |
| SyncSwapClassicPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ec5b1...7bb308` | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | 4 deployments: linea `0x957399...1fbaa2`; linea `0xb8abae...5fe32b`; linea `0xf9fa71...891183`; scroll `0x76f549...8fb54c` | ⚠️ Unaudited |
| SyncSwapClassicPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257922 | `0x37bac7...a0ac2d` | ⚠️ Unaudited |
| SyncSwapClassicPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x37bac7...a0ac2d` | ⚠️ Unaudited |
| SyncSwapCryptoBurn_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf69d31...c5b1f0` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257920 | `0x1080ee...a6d1ea` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257917 | `0x87aeb5...937018` | ⚠️ Unaudited |
| SyncSwapCryptoPoolLibrary_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb2b37...83449d` | ⚠️ Unaudited |
| SyncSwapFeeManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257921 | `0x12af3e...6c586d` | ⚠️ Unaudited |
| SyncSwapFeeRecipient | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257927 | `0xa2a09f...410bd8` | ⚠️ Unaudited |
| SyncSwapPoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x13afc8...10aad0`; linea `0x16743b...630cc0`; linea `0x5725d2...630c2b`; linea `0x619499...0e70aa`; linea `0xa56e84...c85d29`; linea `0xbc632b...5963db` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257924 | `0x608cb7...64b4a3` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257931 | `0xee8790...55b3a0` | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257915 | `0x4318a7...07657c` | ⚠️ Unaudited |
| SyncSwapRangePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3f9732...aaba27` | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x1ada4a...d907ea`; linea `0x35deaf...5e3c6e`; linea `0xc5916f...ee6690`; linea `0xd17cb6...1ae4f1` | ⚠️ Unaudited |
| SyncSwapRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257926 | `0x80e382...bd5c69` | ⚠️ Unaudited |
| SyncSwapRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x60f9b3...98cf3f` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257928 | `0xc2a194...3e8a1e` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257919 | `0xfd541d...dc9115` | ⚠️ Unaudited |
| SyncSwapRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x0b64ba...b07c55`; linea `0x363277...61fd9d`; linea `0x41706c...8c1cf7`; linea `0x60210a...c059e5`; linea `0x62f9d1...16f89f`; linea `0x729680...4755f0` | ⚠️ Unaudited |
| SyncSwapStablePoolDelegatedFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x024a09...18ad86`; linea `0x576374...10f9a9`; linea `0x61abf7...8e9101`; scroll `0xa2aca6...f38d00` | ⚠️ Unaudited |
| SyncSwapVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257925 | `0x716057...1ab61b` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284...3b4604` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a...241c91` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c...707c34` | ⚠️ Unaudited |
| WETH9 | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-257930 | `0xe5d7c2...5cf34f` | ⚠️ Unaudited |
| WrappedEther | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-257916 | `0x530000...000004` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (125)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257888 | `0x075487...0f327d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257889 | `0x0a34fb...906193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x0e595b...ab48a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257890 | `0x1b887a...3a084c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257891 | `0x1fc09a...0e3791` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257892 | `0x20b28b...b90c5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257893 | `0x2da10a...1c0295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257894 | `0x31a2c9...303978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257895 | `0x432bcc...681e6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257896 | `0x582ad7...2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257897 | `0x593f66...8c5c55` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-257898 | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257899 | `0x5b9f21...356ea3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257900 | `0x621425...f8d091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257901 | `0x63ad09...906ebb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257902 | `0x7581a8...946502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x80115c...47c05c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257903 | `0x812515...5c317f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257904 | `0x877b04...6991e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257905 | `0x9b5def...26b059` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257906 | `0x9d63d3...4e6f13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257907 | `0xa757ed...5a4131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257908 | `0xbb0591...909ffb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257909 | `0xc6dac3...722601` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257910 | `0xc8a3d1...cb472e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257911 | `0xecdd1c...af58b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257912 | `0xf2dad8...aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257913 | `0xfd43b4...12811c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257914 | `0xfdfe03...5783d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01ca20...756f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01d5e4...a00305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d43e...5d4721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0a78ca...03decd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ba530...a4e017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1262c2...560098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x155fe0...334bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16c34b...9c896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16ce95...d9cfd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c86b5...290172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1cf802...c6248c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x222aa0...6a3a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x249124...247e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x289670...6640be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2977e5...49e22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b610a...0e8239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x326919...5d706c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32b8ac...4ea895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3307f2...fe8079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a46e9...78b5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3bf15c...7ef55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d7b58...d88462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4459b1...8dc4d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257923 | `0x45b320...681301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4750ba...a03dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4ebeaf...fa9d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50577c...f12238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50ddda...289595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x533d11...4638ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x53c6e6...f4e5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59ce60...1570f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59eed3...24a412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5a8c16...bcf854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5baacb...cf9103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ff877...678ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x626a86...964420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c78b8...a241b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c979a...09ce61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6d5318...2afc32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e5509...74970b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a3106...864fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c0a3a...4f9bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c42a1...652029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f47fe...be9098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x853483...3d1af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x85dfbe...903015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8a5ae4...3bc8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8c6551...e97649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8f5970...3bf292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x91e3d3...32d4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x948702...f72b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x95e017...4b17b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98cd97...41b6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa211df...a1d4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa3e16b...910960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa4bbe8...dce4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa5541d...45bfa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xab40ea...9a3890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xab6994...073926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb45365...5d6029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb53b8a...60531f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb69cda...dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba7535...1bf072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbae656...dcd356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbe87d2...d45bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc062b4...be86c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc11d55...f87a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24ce2...5f2dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3a531...7eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5f3d4...82e562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc70a32...28d8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xccad86...b2b8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xceef58...f5f330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf12b1...ecfee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf18a4...e91656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd31603...008784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd6422b...d3621e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd96c37...f0530d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd2171...a97261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd9635...beb58c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257929 | `0xe4cf80...dd3727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe963e1...923c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xedbeca...152169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xee589e...e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf14a2d...3a90f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf274e2...693889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf3999c...edbe1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf56588...fea980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf72f6f...07b87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7df79...a9c475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf8ad6a...8b8d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc107a...0af398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfcc130...71c578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfed898...8cacd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfede7b...4d802a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257918 | `0xdfb26a...132611` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [reports (GitHub directory)](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf — no match: Scope explicitly lists 5 contracts from file paths; ERC20Permit2 is a contract mentioned as a target in a finding but not in scope list; included as it is audited.
- [2072] SyncSwap - Zellic Audit Report.pdf — no match: No reason recorded
- [2073] MetaScan_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf — no match: The report mentions 'contracts' as the project name and codebase path, but no specific contract names are listed in scope. The date is extracted from the header: 'April 4, 2023'.
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf — no match: The report mentions 'core-contracts' as the project name but does not list specific contract names or files in scope. No contracts are explicitly identified.
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf — no match: No scope section or contract names found in the report text.
- [2078] 202304231022.pdf — no match: No explicit scope section; contracts inferred from findings lines references. Audit date from cover page.
- [14423] reports (GitHub directory) — no match: The provided text is a GitHub repository listing with file names but no actual audit report content. No contracts in scope or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapVoter | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapGauge | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapBribe | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexDividends | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | ERC20Permit2 | unmatched — not counted | — | mentioned as target in finding PVE-002 | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Math | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| 202304231022.pdf | SyncSwapPadToken | unmatched — not counted | — | mentioned in finding SYNCSWAP-1 lines reference | no |
| 202304231022.pdf | SyncSwapLunchPool | unmatched — not counted | — | mentioned in finding SYNCSWAP-2 lines reference | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 126 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2072] SyncSwap - Zellic Audit Report.pdf
- [2073] MetaScan_Report_core-contracts_202303161916.pdf
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
