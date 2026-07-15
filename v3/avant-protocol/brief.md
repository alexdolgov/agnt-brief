# Agentic Audit Brief: Avant Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 8 (4 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Avant Protocol (`avant-protocol`)
- Website: [https://app.avantprotocol.com/rewards?ref=defillama](https://app.avantprotocol.com/rewards?ref=defillama)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, berachain, bsc, ethereum, linea, plasma, sei
- Contract surface: 91 unique implementations (91 raw deployments)
- Coverage basis: 3/11 confirmed own live verified implementations (27.3%); conservative 27.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $129,030,459.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Avant Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across avalanche, base, berachain, bsc, ethereum, linea, plasma, sei. Structural roles: 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (11), supporting (1)
- Contract kinds: contract (12)
- Detected standards: erc165 (7), ownable (7), erc20 (5), accesscontrol (4), erc20permit (4), ownable2step (3), erc4626 (2), pausable (1)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (2), layerzero (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 84 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dd1b7...5ba99e`, chain 1)
- UnnamedContract (`0x2e8b71...24b865`, chain 1)
- UnnamedContract (`0x43f47a...49fa54`, chain 1)
- UnnamedContract (`0x63bd4c...5a93d2`, chain 1)
- UnnamedContract (`0x6d3b65...a9737b`, chain 1)
- UnnamedContract (`0x78991c...c25c57`, chain 1)
- UnnamedContract (`0x81b721...3a6af8`, chain 1)
- UnnamedContract (`0x84d797...3ec17e`, chain 1)
- UnnamedContract (`0x92181c...924bf5`, chain 1)
- UnnamedContract (`0x985b5e...2f6f23`, chain 1)
- UnnamedContract (`0x9bc15d...d23dca`, chain 1)
- UnnamedContract (`0xb8ce3a...7f413a`, chain 1)
- UnnamedContract (`0xb8d896...8a46a4`, chain 1)
- UnnamedContract (`0xbd09e8...dd50ee`, chain 1)
- UnnamedContract (`0xd08f81...9864b7`, chain 1)
- UnnamedContract (`0xda06ee...d7e341`, chain 1)
- UnnamedContract (`0xf424a6...fca25d`, chain 1)
- UnnamedContract (`0xf4c13d...891dc4`, chain 1)
- UnnamedContract (`0x140637...d00335`, chain 56)
- UnnamedContract (`0x19452d...f1790a`, chain 56)
- UnnamedContract (`0x79a42a...c5bceb`, chain 56)
- UnnamedContract (`0x8e4ec5...e8a4bd`, chain 56)
- UnnamedContract (`0x25fa35...4d3598`, chain 1329)
- UnnamedContract (`0xd84a49...9eae75`, chain 1329)
- UnnamedContract (`0x3af90f...3cfa00`, chain 8453)
- UnnamedContract (`0xabecc2...4c1a3a`, chain 8453)
- UnnamedContract (`0xa29420...bd74d4`, chain 9745)
- UnnamedContract (`0xfccfa8...679fef`, chain 9745)
- UnnamedContract (`0x223767...d3a2b4`, chain 43114)
- UnnamedContract (`0x260c0c...0738f3`, chain 43114)
- UnnamedContract (`0x40b418...6f2166`, chain 43114)
- UnnamedContract (`0x5684b0...935e32`, chain 43114)
- UnnamedContract (`0x58c32c...76cc04`, chain 43114)
- UnnamedContract (`0x5f0aef...9e2972`, chain 43114)
- UnnamedContract (`0x74d2df...0cd1ae`, chain 43114)
- UnnamedContract (`0x7b4e81...ba9777`, chain 43114)
- UnnamedContract (`0x8764d4...91867b`, chain 43114)
- UnnamedContract (`0x89245a...6bed7b`, chain 43114)
- UnnamedContract (`0x89541c...75dff5`, chain 43114)
- UnnamedContract (`0x8fcc42...0c999d`, chain 43114)
- UnnamedContract (`0x99f183...af1d0f`, chain 43114)
- UnnamedContract (`0x9e3021...116e7c`, chain 43114)
- UnnamedContract (`0xa7c10c...dc760c`, chain 43114)
- UnnamedContract (`0xbb8a25...08bada`, chain 43114)
- UnnamedContract (`0xbec991...d33db6`, chain 43114)
- UnnamedContract (`0xc178a9...9e3db5`, chain 43114)
- UnnamedContract (`0xcb4313...62a49c`, chain 43114)
- UnnamedContract (`0xd039ac...e27fa0`, chain 43114)
- UnnamedContract (`0xd4fe41...3bccbe`, chain 43114)
- UnnamedContract (`0xda6363...547f98`, chain 43114)
- UnnamedContract (`0xdd1cdf...b6b3b9`, chain 43114)
- UnnamedContract (`0xf2af72...47bcbd`, chain 43114)
- UnnamedContract (`0xfd2c2a...289053`, chain 43114)
- UnnamedContract (`0x2c1231...fe8766`, chain 59144)
- UnnamedContract (`0x2d4c0d...e341b6`, chain 59144)
- UnnamedContract (`0x3449a9...03aac4`, chain 59144)
- UnnamedContract (`0x37912a...d6771f`, chain 59144)
- UnnamedContract (`0x37c44f...ce1576`, chain 59144)
- UnnamedContract (`0x45cf31...fff563`, chain 59144)
- UnnamedContract (`0x5b0b44...e58b17`, chain 59144)
- UnnamedContract (`0x5c2479...af1127`, chain 59144)
- UnnamedContract (`0x73fa08...ea0d2e`, chain 59144)
- UnnamedContract (`0x788002...272eb7`, chain 59144)
- UnnamedContract (`0x9b52ab...f5ab6f`, chain 59144)
- UnnamedContract (`0x9f299f...95018f`, chain 59144)
- UnnamedContract (`0xa0fbf8...329770`, chain 59144)
- UnnamedContract (`0xc37d32...b7d903`, chain 59144)
- UnnamedContract (`0xce7eb8...0808c6`, chain 59144)
- UnnamedContract (`0xdd1044...79ee63`, chain 59144)
- UnnamedContract (`0x59e2a1...1c37d2`, chain 80094)
- UnnamedContract (`0xa744fe...946a1e`, chain 80094)
- UnnamedContract (`0xbca138...c3f252`, chain 80094)
- UnnamedContract (`0xc4093e...603817`, chain 80094)
- AddressesWhitelist (`0x570c0e...cc1c4d`, chain 1)
- AvantCoin (`0x946947...56f7ee`, chain 1)
- AvantCoinSilo (`0x1a3e69...d238e8`, chain 1)
- AvantMintingV2 (`0x09becf...4532d7`, chain 1)
- AvantOFTAdapter (`0x352460...a1bd85`, chain 43114)
- AvUSD (`0x24de87...a0e346`, chain 43114)
- BurnMintTokenPool (`0x10cbde...528ff0`, chain 59144)
- FactoryBurnMintERC20 (`0x01c9ab...8f722a`, chain 59144)
- LockReleaseTokenPool (`0x18d3eb...0b6ec1`, chain 1)
- StakedAvantCoinV2 (`0x649342...deba84`, chain 43114)
- StakedAvUSDV2 (`0x06d47f...72219e`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 84/135 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/11 (27.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 84 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 84 of 91 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 73
- Unique implementations: 91
- Raw deployments: 91
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 9.1% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 2 | 18.2% | 2024-06 |
| yAudit | Tier 2 | 2 | 18.2% | 2025-04 |
| Cyfrin | Tier 1 | 1 | 9.1% | 2026-06 |
| Riley | Tier 2 | 1 | 9.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228329 | `0x570c0e...cc1c4d` | ✅ Audited |
| AvUSD | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228389 | `0x24de87...a0e346` | ✅ Audited |
| StakedAvUSDV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228387 | `0x06d47f...72219e` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AvantCoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228349 | `0x946947...56f7ee` | ⚠️ Unaudited |
| AvantCoinSilo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228316 | `0x1a3e69...d238e8` | ⚠️ Unaudited |
| AvantMintingV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228313 | `0x09becf...4532d7` | ⚠️ Unaudited |
| AvantOFTAdapter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228391 | `0x352460...a1bd85` | ⚠️ Unaudited |
| AvUSDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1499cb...e0ed51` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | project_anchor | own_supporting | 0 | linea | unit-228422 | `0x10cbde...528ff0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4d4dac...d4d29d` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | unknown | project_anchor | own_supporting | 0 | linea | unit-228421 | `0x01c9ab...8f722a` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228315 | `0x18d3eb...0b6ec1` | ⚠️ Unaudited |
| OFTUpgradeableWithCCIP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02755e...fdea2b` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c66fc...9272af` | ⚠️ Unaudited |
| RequestsManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-228393 | `0x4c129d...6fc887` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1411f6...dbdbe1` | ⚠️ Unaudited |
| StakedAvantCoinV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228397 | `0x649342...deba84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0caefe...aed61b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (73)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228318 | `0x1dd1b7...5ba99e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228322 | `0x2e8b71...24b865` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228326 | `0x43f47a...49fa54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228332 | `0x63bd4c...5a93d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228334 | `0x6d3b65...a9737b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228336 | `0x78991c...c25c57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228339 | `0x81b721...3a6af8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228342 | `0x84d797...3ec17e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228348 | `0x92181c...924bf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228352 | `0x985b5e...2f6f23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228353 | `0x9bc15d...d23dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228360 | `0xb8ce3a...7f413a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228361 | `0xb8d896...8a46a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228362 | `0xbd09e8...dd50ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228369 | `0xd08f81...9864b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228374 | `0xda06ee...d7e341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228380 | `0xf424a6...fca25d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228381 | `0xf4c13d...891dc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-228417 | `0x140637...d00335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-228418 | `0x19452d...f1790a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-228419 | `0x79a42a...c5bceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-228420 | `0x8e4ec5...e8a4bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-228385 | `0x25fa35...4d3598` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-228386 | `0xd84a49...9eae75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228443 | `0x3af90f...3cfa00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228444 | `0xabecc2...4c1a3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228445 | `0xa29420...bd74d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228446 | `0xfccfa8...679fef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228388 | `0x223767...d3a2b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228390 | `0x260c0c...0738f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228392 | `0x40b418...6f2166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228394 | `0x5684b0...935e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228395 | `0x58c32c...76cc04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228396 | `0x5f0aef...9e2972` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228398 | `0x74d2df...0cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228399 | `0x7b4e81...ba9777` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228400 | `0x8764d4...91867b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228401 | `0x89245a...6bed7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228402 | `0x89541c...75dff5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228403 | `0x8fcc42...0c999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228404 | `0x99f183...af1d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228405 | `0x9e3021...116e7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228406 | `0xa7c10c...dc760c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228407 | `0xbb8a25...08bada` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228408 | `0xbec991...d33db6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228409 | `0xc178a9...9e3db5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228410 | `0xcb4313...62a49c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228411 | `0xd039ac...e27fa0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228412 | `0xd4fe41...3bccbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228413 | `0xda6363...547f98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228414 | `0xdd1cdf...b6b3b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228415 | `0xf2af72...47bcbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-228416 | `0xfd2c2a...289053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228423 | `0x2c1231...fe8766` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228424 | `0x2d4c0d...e341b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228425 | `0x3449a9...03aac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228426 | `0x37912a...d6771f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228427 | `0x37c44f...ce1576` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228428 | `0x45cf31...fff563` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228429 | `0x5b0b44...e58b17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228430 | `0x5c2479...af1127` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228431 | `0x73fa08...ea0d2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228432 | `0x788002...272eb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228433 | `0x9b52ab...f5ab6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228434 | `0x9f299f...95018f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228435 | `0xa0fbf8...329770` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228436 | `0xc37d32...b7d903` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228437 | `0xce7eb8...0808c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228438 | `0xdd1044...79ee63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-228439 | `0x59e2a1...1c37d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-228440 | `0xa744fe...946a1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-228441 | `0xbca138...c3f252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-228442 | `0xc4093e...603817` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FGtOr3Rn7KQk2mvuQzdd1%2FDedaub-Avant-USD-Report-2024-06-06.pdf) | Dedaub | Audit | 2024-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FJRa5k4HyfKmlCmc5OEF8%2FRiley-Avant-Contracts-Max-Report-2025-08-26.pdf) | Riley | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FmVn7SMlUpSDQgkeDdfpf%2FCyfrin-Avant-Contracts-Max-Report-2025-08-27..pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FFOfLp5biW5vzBzq7n7HK%2FCyfrin-Avant-RequestManagerV2-FV-Report-2026-06-24.pdf) | Cyfrin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Rendered PDF capture](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FCcsm6eERNkzKwXOTE4QI%2FCyfrin-Avant-RequestManagerV2-Report-2026-06-24.pdf) | Cyfrin | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [July 2024 - Omniscia - avUSD System Security Audit.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FZxJC7e2hD0rgDb8RaWrt%2FOmniscia-Avant-avUSD-System-Report-2024-07-13.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [March 2025 - Omniscia - avUSD Minting v2 Report.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2FyxLfLGfwlU7PWu0VBswY%2FOmniscia-Avant-AvUSD-Minting-v2-Report-2025-03-31.pdf) | Omniscia | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf](https://3192817152-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbHGCy9ZAt2CTConSzjAq%2Fuploads%2F6gFfA5Y25KNKNS8N93ZC%2FOmniscia-Avant-Cross%3DChain-ERC20-Token-Bridge-Report-2025-04-01.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16775] Rendered PDF capture — matched: All contracts listed in the scope section of the audit report.
- [16776] Rendered PDF capture — matched: All contracts listed in scope section of audit report.
- [16777] Rendered PDF capture — matched: Extracted 5 contracts from the Audit Scope section. The audit date is from the cover page: August 27, 2025.
- [16778] Rendered PDF capture — no match: Scope section explicitly lists 6 contracts with file paths. Audit date is June 2026, mapped to last day of month.
- [16779] Rendered PDF capture — no match: Audit scope explicitly lists 6 files. Audit date is June 24, 2026 from the cover page.
- [16781] July 2024 - Omniscia - avUSD System Security Audit.pdf — matched: Extracted 6 contracts from the scope table and audit date from the report header.
- [16782] March 2025 - Omniscia - avUSD Minting v2 Report.pdf — no match: Only one contract (AvUSDMintingV2) is explicitly listed in the scope section. The report mentions 'AvUSD Minting' and 'AvUSD Minting V2' as implementations but only AvUSDMintingV2.sol is listed as a target contract.
- [16783] April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf — no match: Three contracts explicitly listed in scope table. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | AvUSDMinting | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AvUSDSilo | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AvUSD | own contract | AvUSD (selected) `0x24de87...a0e346` — deployed 2024-11-15 23:17:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StakedAvUSD | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StakedAvUSDV2 | own contract | StakedAvUSDV2 (selected) `0x06d47f...72219e` — deployed 2024-11-15 23:17:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | TransferHelper | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AddressesWhitelist | own contract | AddressesWhitelist (selected) `0x570c0e...cc1c4d` — deployed 2025-08-12 15:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | PriceStorage | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | RequestsManager | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAddressesWhitelist | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IPriceStorage | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IRequestsManager | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ISimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Deployment | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Deployment | unmatched — not counted | — | listed in Audit Scope section | no |
| Rendered PDF capture | AddressesWhitelist | own contract | AddressesWhitelist (selected) `0x570c0e...cc1c4d` — deployed 2025-08-12 15:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | PriceStorage | unmatched — not counted | — | listed in Audit Scope section | no |
| Rendered PDF capture | RequestsManager | unmatched — not counted | — | listed in Audit Scope section | no |
| Rendered PDF capture | SimpleToken | unmatched — not counted | — | listed in Audit Scope section | no |
| Rendered PDF capture | RequestsManagerV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IRequestsManagerV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PriceStorage | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ISimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IPriceStorage | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | RequestsManagerV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IRequestsManagerV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PriceStorage | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ISimpleToken | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IPriceStorage | unmatched — not counted | — | listed in scope | no |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | AvUSD | own contract | AvUSD (selected) `0x24de87...a0e346` — deployed 2024-11-15 23:17:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | AvUSDSilo | unmatched — not counted | — | listed in scope table | no |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | AvUSDMinting | unmatched — not counted | — | listed in scope table | no |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | StakedAvUSD | unmatched — not counted | — | listed in scope table | no |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | StakedAvUSDV2 | own contract | StakedAvUSDV2 (selected) `0x06d47f...72219e` — deployed 2024-11-15 23:17:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| July 2024 - Omniscia - avUSD System Security Audit.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in scope table | no |
| March 2025 - Omniscia - avUSD Minting v2 Report.pdf | AvUSDMintingV2 | unmatched — not counted | — | listed in scope table as 'Target Contracts Assessed' | no |
| April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf | AbstractCCIPMessagingUpgradeable | unmatched — not counted | — | listed in scope table | no |
| April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf | OFTUpgradeableWithCCIP | unmatched — not counted | — | listed in scope table | no |
| April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf | OFTAdapterUpgradeableWithCCIP | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x946947...56f7ee` | AvantCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a3e69...d238e8` | AvantCoinSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09becf...4532d7` | AvantMintingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x352460...a1bd85` | AvantOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10cbde...528ff0` | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x01c9ab...8f722a` | FactoryBurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18d3eb...0b6ec1` | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x649342...deba84` | StakedAvantCoinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=6

Zero-match audit list:

- [16778] Rendered PDF capture
- [16779] Rendered PDF capture
- [16782] March 2025 - Omniscia - avUSD Minting v2 Report.pdf
- [16783] April 2025 - Omniscia - Cross Chain ERC20 Token Bridge Security Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
