# Agentic Audit Brief: ACryptoS

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 0.1% over 90 days

## Project Overview

- Project: ACryptoS (`acryptos`)
- Website: [https://www.acryptos.com/](https://www.acryptos.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 117 unique implementations (160 raw deployments)
- Coverage basis: 6/18 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,548,947.90
- On-chain TVL (included contracts): $3,834,875.29
- TVL by chain: Bsc $3,834,875.29

## Project Description

This brief describes the observed EVM deployment and audit surface for ACryptoS. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across bsc, ethereum, polygon. Structural roles: 53 core, 8 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (53), unclassified (8)
- Contract kinds: contract (53), unclassified (8)
- Detected standards: erc20 (43), ownable (1)
- Frameworks: openzeppelin (51)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 140 contracts are derived from known codebases. 140 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x006062...38f955`, chain 56)
- UnnamedContract (`0x060b86...0b46db`, chain 56)
- UnnamedContract (`0x06271d...107c1d`, chain 56)
- UnnamedContract (`0x0c3b60...06671c`, chain 56)
- UnnamedContract (`0x12b05c...efb2ed`, chain 56)
- UnnamedContract (`0x1b0837...119b8a`, chain 56)
- UnnamedContract (`0x1e5ea5...3da59a`, chain 56)
- UnnamedContract (`0x2d00c5...ac2d63`, chain 56)
- UnnamedContract (`0x316f64...0d0f92`, chain 56)
- UnnamedContract (`0x3468bc...35d0c6`, chain 56)
- UnnamedContract (`0x3595d9...fec1bc`, chain 56)
- UnnamedContract (`0x3aa07f...fbf9a0`, chain 56)
- UnnamedContract (`0x4651a5...3d7210`, chain 56)
- UnnamedContract (`0x48b02d...96c4da`, chain 56)
- UnnamedContract (`0x4951c3...9add67`, chain 56)
- UnnamedContract (`0x4deb90...600216`, chain 56)
- UnnamedContract (`0x4e754c...a86ce2`, chain 56)
- UnnamedContract (`0x5260d8...1db4f0`, chain 56)
- UnnamedContract (`0x5aaa5a...8f7a22`, chain 56)
- UnnamedContract (`0x5c8c58...b5ccab`, chain 56)
- UnnamedContract (`0x5ff576...801010`, chain 56)
- UnnamedContract (`0x651fab...315abd`, chain 56)
- UnnamedContract (`0x6c8eee...18ad08`, chain 56)
- UnnamedContract (`0x6f58a7...f78a73`, chain 56)
- UnnamedContract (`0x74c901...d72dd9`, chain 56)
- UnnamedContract (`0x7635c6...d1403e`, chain 56)
- UnnamedContract (`0x796b87...3663eb`, chain 56)
- UnnamedContract (`0x7abc58...c8cdda`, chain 56)
- UnnamedContract (`0x7f1bce...2d5e14`, chain 56)
- UnnamedContract (`0x7f66f5...210b9f`, chain 56)
- UnnamedContract (`0x86363a...db44d9`, chain 56)
- UnnamedContract (`0x8835d7...e4ff31`, chain 56)
- UnnamedContract (`0x888888...54d2ca`, chain 56)
- UnnamedContract (`0x8996a3...982852`, chain 56)
- UnnamedContract (`0x8b1a33...be0e24`, chain 56)
- UnnamedContract (`0x8ba0eb...9fc837`, chain 56)
- UnnamedContract (`0x94c9bf...24aa71`, chain 56)
- UnnamedContract (`0x96c839...c408b7`, chain 56)
- UnnamedContract (`0x97add6...448d77`, chain 56)
- UnnamedContract (`0x99c927...3c4b77`, chain 56)
- UnnamedContract (`0x9ab252...07cc71`, chain 56)
- UnnamedContract (`0x9b55e2...0ed3d1`, chain 56)
- UnnamedContract (`0xa18fdb...55d4d0`, chain 56)
- UnnamedContract (`0xa4752c...0b4add`, chain 56)
- UnnamedContract (`0xa54fcd...90156c`, chain 56)
- UnnamedContract (`0xacc5b6...fdf660`, chain 56)
- UnnamedContract (`0xae4a00...521bb5`, chain 56)
- UnnamedContract (`0xb1fa5d...4b474e`, chain 56)
- UnnamedContract (`0xb87a7c...a238ff`, chain 56)
- UnnamedContract (`0xbbf560...552835`, chain 56)
- UnnamedContract (`0xbe35a4...6b935a`, chain 56)
- UnnamedContract (`0xbe7caa...b5ca81`, chain 56)
- UnnamedContract (`0xc40475...c09958`, chain 56)
- UnnamedContract (`0xc61639...aecbf0`, chain 56)
- UnnamedContract (`0xc64d25...c5b529`, chain 56)
- UnnamedContract (`0xc8036d...087960`, chain 56)
- UnnamedContract (`0xc807d3...d560cd`, chain 56)
- UnnamedContract (`0xcad070...f897b4`, chain 56)
- UnnamedContract (`0xd016df...416507`, chain 56)
- UnnamedContract (`0xd172ab...0aae5d`, chain 56)
- UnnamedContract (`0xd180ab...913fbb`, chain 56)
- UnnamedContract (`0xd25ec3...cda438`, chain 56)
- UnnamedContract (`0xd487c8...3939b7`, chain 56)
- UnnamedContract (`0xd95b9c...9ce129`, chain 56)
- UnnamedContract (`0xd9ab25...2aa824`, chain 56)
- UnnamedContract (`0xde14f2...78db21`, chain 56)
- UnnamedContract (`0xe1895d...11c467`, chain 56)
- UnnamedContract (`0xe47848...9baf39`, chain 56)
- UnnamedContract (`0xe4d2ed...7f13b7`, chain 56)
- UnnamedContract (`0xe53cdd...ee386f`, chain 56)
- UnnamedContract (`0xe6d84b...a431ec`, chain 56)
- UnnamedContract (`0xe720af...a196cc`, chain 56)
- UnnamedContract (`0xeb8f15...6e5e55`, chain 56)
- UnnamedContract (`0xec8375...4a16c7`, chain 56)
- UnnamedContract (`0xed062e...3b59bb`, chain 56)
- UnnamedContract (`0xefbfc0...1e5147`, chain 56)
- UnnamedContract (`0xfa4858...372eb8`, chain 56)
- UnnamedContract (`0xfd6e99...1217b7`, chain 56)
- UnnamedContract (`0xfdecec...676f69`, chain 56)
- ACryptoSVault (`0x027b51...baac78`, chain 56)
- ACryptoSVault (`0x0395fc...5e3eef`, chain 56)
- ACryptoSVault (`0x03e0df...4233c1`, chain 56)
- ACryptoSVault (`0x03e904...2f5c39`, chain 56)
- ACryptoSVault (`0x14b197...c7dcec`, chain 56)
- ACryptoSVault (`0x161afe...78d33f`, chain 56)
- ACryptoSVault (`0x2875a5...b3ef2c`, chain 56)
- ACryptoSVault (`0x32fe1b...a31943`, chain 56)
- ACryptoSVault (`0x35cadd...8d863e`, chain 56)
- ACryptoSVault (`0x40a7dd...dcdfed`, chain 56)
- ACryptoSVault (`0x471696...ec1f8d`, chain 56)
- ACryptoSVault (`0x4e58b6...dca14f`, chain 56)
- ACryptoSVault (`0x532d57...a9baa5`, chain 56)
- ACryptoSVault (`0x58d35b...3a360b`, chain 56)
- ACryptoSVault (`0x5c2b38...478684`, chain 56)
- ACryptoSVault (`0x5c8c85...10e5a8`, chain 56)
- ACryptoSVault (`0x5e4993...563690`, chain 56)
- ACryptoSVault (`0x5f9aab...aedf55`, chain 56)
- ACryptoSVault (`0x6c8a59...a30d8d`, chain 56)
- ACryptoSVault (`0x6cc0ef...314a9c`, chain 56)
- ACryptoSVault (`0x7a2fb0...7f6624`, chain 56)
- ACryptoSVault (`0x7abbcf...34a58e`, chain 56)
- ACryptoSVault (`0x82b4c3...04bced`, chain 56)
- ACryptoSVault (`0x883a0d...016811`, chain 56)
- ACryptoSVault (`0x8dc707...f1d766`, chain 56)
- ACryptoSVault (`0x90f277...6cba16`, chain 56)
- ACryptoSVault (`0xa49642...804126`, chain 56)
- ACryptoSVault (`0xab8191...31a2d1`, chain 56)
- ACryptoSVault (`0xab8195...c8b24a`, chain 56)
- ACryptoSVault (`0xac0452...ecbde2`, chain 56)
- ACryptoSVault (`0xbb08f8...92cc1b`, chain 56)
- ACryptoSVault (`0xbba267...04bea5`, chain 56)
- ACryptoSVault (`0xda6e3b...36033f`, chain 56)
- ACryptoSVault (`0xe0303c...c02f95`, chain 56)
- ACryptoSVault (`0xf54d43...f6c73a`, chain 56)
- ACryptoSVault (`0xf690ae...720494`, chain 56)
- ACryptoSVault (`0xf7ffa2...7af16b`, chain 56)
- ACryptoSVault (`0xfc698d...17e5e2`, chain 56)
- ACryptoSVault (`0xfcf924...6d5a48`, chain 56)
- ACryptoSVault0 (`0x767938...3a4fc3`, chain 56)
- ACryptoSVault0V2_ACSI (`0x2b6639...ae929a`, chain 56)
- ACryptoSVaultBnb (`0x10137a...373104`, chain 56)
- ACryptoSVaultBnb (`0x6fe676...35a628`, chain 56)
- ACS (`0x4197c6...aa1d29`, chain 56)
- ACSI (`0x5b17b4...cba389`, chain 56)
- MasterChef (`0xeae142...9d0bed`, chain 56)
- StrategyACryptoS0V6_ACSI (`0x8045db...1bdf51`, chain 56)
- StrategyACryptoSBsw (`0x2aa23d...9354c5`, chain 56)
- StrategyACryptoSBsw (`0x577b47...a29d51`, chain 56)
- StrategyACryptoSDsg (`0x02bd61...51e6f9`, chain 56)
- StrategyACryptoSMdxV3 (`0x24a87b...ada317`, chain 56)
- StrategyACryptoSMdxV3 (`0xe8b2e9...7d2a96`, chain 56)
- StrategyACryptoSVenusVaiV2 (`0x20d1d3...8a6f78`, chain 56)
- Vyper_contract (`0x191409...8a191e`, chain 56)
- Vyper_contract (`0x391987...a4f958`, chain 56)
- Vyper_contract (`0x494403...f02b28`, chain 56)
- Vyper_contract (`0x83d69e...71f29b`, chain 56)
- Vyper_contract (`0x9e31f4...606b98`, chain 56)
- Vyper_contract (`0xb3f0c9...59b0ac`, chain 56)
- Vyper_contract (`0xd3debe...23301b`, chain 56)
- Vyper_contract (`0xeb7dc7...1ea5ad`, chain 56)

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 140/140 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/18 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 97 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 97 of 117 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/18
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 117
- Raw deployments: 160
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,783,483.03
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,783,483.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 6 | 33.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVaultBnb | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378474 | `0x10137a...373104` | ✅ Audited |
| ACryptoSVault0V2_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378485 | `0x2b6639...ae929a` | ✅ Audited |
| ACryptoSVault0 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378540 | `0x767938...3a4fc3` | ✅ Audited |
| ACS | unknown | project_anchor | own_supporting | 0 | bsc | unit-378495 | `0x4197c6...aa1d29` | ✅ Audited |
| ACSI | unknown | project_anchor | own_supporting | 0 | bsc | unit-378512 | `0x5b17b4...cba389` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-378622 | `0xeae142...9d0bed` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378468 | 14 deployments: bsc `0x0395fc...5e3eef`; bsc `0x03e904...2f5c39`; bsc `0x161afe...78d33f`; bsc `0x32fe1b...a31943`; bsc `0x35cadd...8d863e`; bsc `0x4e58b6...dca14f`; bsc `0x532d57...a9baa5`; bsc `0x7abbcf...34a58e`; bsc `0x883a0d...016811`; bsc `0x90f277...6cba16`; bsc `0xa49642...804126`; bsc `0xbb08f8...92cc1b`; bsc `0xe0303c...c02f95`; bsc `0xfc698d...17e5e2` | ⚠️ Unaudited |
| ACryptoSVaultBnb | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378535 | `0x6fe676...35a628` | ⚠️ Unaudited |
| StrategyACryptoS0V6_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378553 | `0x8045db...1bdf51` | ⚠️ Unaudited |
| ACryptoSVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378466 | 25 deployments: bsc `0x027b51...baac78`; bsc `0x03e0df...4233c1`; bsc `0x14b197...c7dcec`; bsc `0x2875a5...b3ef2c`; bsc `0x40a7dd...dcdfed`; bsc `0x471696...ec1f8d`; bsc `0x58d35b...3a360b`; bsc `0x5c2b38...478684`; bsc `0x5c8c85...10e5a8`; bsc `0x5e4993...563690`; bsc `0x5f9aab...aedf55`; bsc `0x6c8a59...a30d8d`; bsc `0x6cc0ef...314a9c`; bsc `0x7a2fb0...7f6624`; bsc `0x82b4c3...04bced`; bsc `0x8dc707...f1d766`; bsc `0xab8191...31a2d1`; bsc `0xab8195...c8b24a`; bsc `0xac0452...ecbde2`; bsc `0xbba267...04bea5`; bsc `0xda6e3b...36033f`; bsc `0xf54d43...f6c73a`; bsc `0xf690ae...720494`; bsc `0xf7ffa2...7af16b`; bsc `0xfcf924...6d5a48` | ⚠️ Unaudited |
| StrategyACryptoSBsw | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378484 | 2 deployments: bsc `0x2aa23d...9354c5`; bsc `0x577b47...a29d51` | ⚠️ Unaudited |
| StrategyACryptoSMdxV3 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378482 | 2 deployments: bsc `0x24a87b...ada317`; bsc `0xe8b2e9...7d2a96` | ⚠️ Unaudited |
| StrategyACryptoSDsg | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378467 | `0x02bd61...51e6f9` | ⚠️ Unaudited |
| StrategyACryptoSVenusVaiV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378481 | `0x20d1d3...8a6f78` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378478 | 2 deployments: bsc `0x191409...8a191e`; bsc `0x391987...a4f958` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378499 | 3 deployments: bsc `0x494403...f02b28`; bsc `0x83d69e...71f29b`; bsc `0xeb7dc7...1ea5ad` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378580 | 2 deployments: bsc `0x9e31f4...606b98`; bsc `0xd3debe...23301b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378591 | `0xb3f0c9...59b0ac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e904...2f5c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b197...c7dcec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cadd...8d863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9aab...aedf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8eee...18ad08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7635c6...d1403e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97add6...448d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde14f2...78db21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe720af...a196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8375...4a16c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378465 | `0x006062...38f955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378471 | `0x060b86...0b46db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378472 | `0x06271d...107c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378473 | `0x0c3b60...06671c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378475 | `0x12b05c...efb2ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378479 | `0x1b0837...119b8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378480 | `0x1e5ea5...3da59a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378486 | `0x2d00c5...ac2d63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378487 | `0x316f64...0d0f92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378489 | `0x3468bc...35d0c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378490 | `0x3595d9...fec1bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378493 | `0x3aa07f...fbf9a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378496 | `0x4651a5...3d7210` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378498 | `0x48b02d...96c4da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378500 | `0x4951c3...9add67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378501 | `0x4deb90...600216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378503 | `0x4e754c...a86ce2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378504 | `0x5260d8...1db4f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378510 | `0x5aaa5a...8f7a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378515 | `0x5c8c58...b5ccab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378523 | `0x5ff576...801010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378525 | `0x651fab...315abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378529 | `0x6c8eee...18ad08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378533 | `0x6f58a7...f78a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378537 | `0x74c901...d72dd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378538 | `0x7635c6...d1403e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378541 | `0x796b87...3663eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378546 | `0x7abc58...c8cdda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378548 | `0x7f1bce...2d5e14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378551 | `0x7f66f5...210b9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378559 | `0x86363a...db44d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378561 | `0x8835d7...e4ff31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378564 | `0x888888...54d2ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378566 | `0x8996a3...982852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378568 | `0x8b1a33...be0e24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378570 | `0x8ba0eb...9fc837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378574 | `0x94c9bf...24aa71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378575 | `0x96c839...c408b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378576 | `0x97add6...448d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378577 | `0x99c927...3c4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378578 | `0x9ab252...07cc71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378579 | `0x9b55e2...0ed3d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378581 | `0xa18fdb...55d4d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378582 | `0xa4752c...0b4add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378584 | `0xa54fcd...90156c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378588 | `0xacc5b6...fdf660` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378589 | `0xae4a00...521bb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378590 | `0xb1fa5d...4b474e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378592 | `0xb87a7c...a238ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378595 | `0xbbf560...552835` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378596 | `0xbe35a4...6b935a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378597 | `0xbe7caa...b5ca81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378598 | `0xc40475...c09958` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378599 | `0xc61639...aecbf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378600 | `0xc64d25...c5b529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378601 | `0xc8036d...087960` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378602 | `0xc807d3...d560cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378603 | `0xcad070...f897b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378604 | `0xd016df...416507` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378605 | `0xd172ab...0aae5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378606 | `0xd180ab...913fbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378607 | `0xd25ec3...cda438` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378609 | `0xd487c8...3939b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378610 | `0xd95b9c...9ce129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378611 | `0xd9ab25...2aa824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378613 | `0xde14f2...78db21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378615 | `0xe1895d...11c467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378616 | `0xe47848...9baf39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378617 | `0xe4d2ed...7f13b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378618 | `0xe53cdd...ee386f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378619 | `0xe6d84b...a431ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378620 | `0xe720af...a196cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378624 | `0xeb8f15...6e5e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378625 | `0xec8375...4a16c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378626 | `0xed062e...3b59bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378627 | `0xefbfc0...1e5147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378631 | `0xfa4858...372eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378634 | `0xfd6e99...1217b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378635 | `0xfdecec...676f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x191409...8a191e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c8c85...10e5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x651fab...315abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f58a7...f78a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba0eb...9fc837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8036d...087960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe720af...a196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb7dc7...1ea5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7ffa2...7af16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdecec...676f69` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [README.md](https://github.com/acryptos/docs.acryptos.com/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [20210128-defiyield.info.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210128-defiyield.info.pdf) | Hacken | Audit | 2021-01 | stale | Direct | n/a | matched | 4 | 0 | 0 | 8 | n/a |
| [20210218-Hacken-ACryptoSFarmV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210218-Hacken-ACryptoSFarmV2.pdf) | Hacken | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20210331-Hacken-Complete.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20210331-Hacken-Complete.pdf) | Hacken | Audit | 2021-03 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 16 | high |
| [20211105-Hacken-AcsiFinance-BalancerV2.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211105-Hacken-AcsiFinance-BalancerV2.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [20211116-Hacken-Review.pdf](https://github.com/acryptos/acryptos-protocol/blob/main/audits/20211116-Hacken-Review.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 17 | high |
| [skynet.certik.com/projects/acryptos](https://skynet.certik.com/projects/acryptos) | CertiK | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9664] README.md — no match: The provided text is a product introduction/marketing page for ACryptoS, not an audit report. No contracts, scope section, or audit date were found.
- [9665] 20210128-defiyield.info.pdf — matched: No reason recorded
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf — no match: Only one contract in scope: ACryptoSFarmV2.sol
- [9667] 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf — no match: Only one contract in scope: StrategyACryptoSCakeTokenTokenV2.sol
- [9668] 20210331-Hacken-Complete.pdf — matched: Extracted 20 contract names from the scope section listing file paths. Audit date found on cover page and in timeline.
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf — no match: The provided text is a certificate snippet stating that Acryptos project source code is identical to Balancer's, but no specific contract names or scope section are mentioned.
- [9670] 20211116-Hacken-Review.pdf — matched: Extracted contract names from the Scope section listing files and from the 'Check the updates' section mentioning new files. The audit date is November 16, 2021, as stated on the cover page and in the timeline.
- [15288] skynet.certik.com/projects/acryptos — no match: The document is a CertiK Skynet project insight page, not a full audit report. No contracts in scope are listed. The audit date is inferred from 'Revised on 3/23/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20210128-defiyield.info.pdf | ACS | own contract | ACS (selected) `0x4197c6...aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | ACS MasterChef | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACSI | own contract | ACSI (selected) `0x5b17b4...cba389` — deployed 2020-11-23 04:58:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | ACSI MasterChefV2 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACryptoS: Deployer | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x767938...3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | Controller | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | MasterChef | own contract | MasterChef (selected) `0xeae142...9d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210128-defiyield.info.pdf | MasterChefV2 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | StrategyACryptoS0V4_ACSI | unmatched — not counted | — | — | no |
| 20210128-defiyield.info.pdf | Timelock6H | unmatched — not counted | — | — | no |
| 20210218-Hacken-ACryptoSFarmV2.pdf | ACryptoSFarmV2 | unmatched — not counted | — | listed in scope | no |
| 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf | StrategyACryptoSCakeTokenTokenV2 | unmatched — not counted | — | listed in scope section | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageV2 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageBnb | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusLeverageXvs | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeBnbToken | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeBnbCake | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSCakeV2b | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | StrategyACryptoSVenusVAI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | MasterChef | own contract | MasterChef (selected) `0xeae142...9d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | MasterChefV2 | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | acsACS | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | acsACSI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | Timelock6H | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | ACS | own contract | ACS (selected) `0x4197c6...aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | ACS_ACSI | unmatched — not counted | — | listed in scope | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVaultBnb | ambiguous — not counted | ACryptoSVaultBnb (alternative) `0x10137a...373104` — deployed 2021-09-11 16:04:22+03 — liveness: live (current_address_book_code)<br>ACryptoSVaultBnb (alternative) `0x6fe676...35a628` — deployed 2020-11-27 11:18:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVault0V2_ACSI | own contract | ACryptoSVault0V2_ACSI (selected) `0x2b6639...ae929a` — deployed 2020-11-24 08:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20210331-Hacken-Complete.pdf | ACryptoSVault | ambiguous — not counted | ACryptoSVault (alternative) `0xab8191...31a2d1` — deployed 2021-05-07 16:16:30+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7abbcf...34a58e` — deployed 2021-02-08 05:47:53+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xe0303c...c02f95` — deployed 2021-03-01 11:52:45+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x32fe1b...a31943` — deployed 2020-11-28 05:54:47+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xab8195...c8b24a` — deployed 2021-09-21 11:36:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5f9aab...aedf55` — deployed 2021-09-08 11:49:08+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xda6e3b...36033f` — deployed 2021-06-19 11:21:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x2875a5...b3ef2c` — deployed 2021-07-02 09:42:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e0df...4233c1` — deployed 2022-02-06 13:18:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfc698d...17e5e2` — deployed 2020-11-28 05:53:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf690ae...720494` — deployed 2021-11-08 07:22:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xa49642...804126` — deployed 2021-01-07 06:09:20+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x14b197...c7dcec` — deployed 2021-09-14 08:22:05+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7a2fb0...7f6624` — deployed 2021-10-26 07:14:18+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e904...2f5c39` — deployed 2021-02-18 12:21:32+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x4e58b6...dca14f` — deployed 2020-11-28 05:55:41+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbb08f8...92cc1b` — deployed 2021-03-01 04:51:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x883a0d...016811` — deployed 2020-12-29 06:29:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5e4993...563690` — deployed 2021-05-01 14:38:10+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x0395fc...5e3eef` — deployed 2020-12-07 13:37:09+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c2b38...478684` — deployed 2021-10-28 11:19:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x532d57...a9baa5` — deployed 2020-11-27 02:07:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x471696...ec1f8d` — deployed 2021-11-08 07:40:58+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbba267...04bea5` — deployed 2021-10-28 09:41:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x161afe...78d33f` — deployed 2021-03-02 09:23:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6c8a59...a30d8d` — deployed 2021-10-28 12:46:13+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf54d43...f6c73a` — deployed 2021-10-25 07:13:56+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x027b51...baac78` — deployed 2021-05-12 15:13:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x40a7dd...dcdfed` — deployed 2021-06-30 16:26:52+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6cc0ef...314a9c` — deployed 2021-10-28 11:50:44+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfcf924...6d5a48` — deployed 2021-09-09 10:52:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c8c85...10e5a8` — deployed 2021-07-19 06:20:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf7ffa2...7af16b` — deployed 2021-09-08 10:29:21+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x90f277...6cba16` — deployed 2021-03-02 06:52:33+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xac0452...ecbde2` — deployed 2021-06-19 10:59:37+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x35cadd...8d863e` — deployed 2020-12-07 13:37:36+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x8dc707...f1d766` — deployed 2021-06-16 08:58:03+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x58d35b...3a360b` — deployed 2021-05-14 04:56:35+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x82b4c3...04bced` — deployed 2021-09-15 09:00:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20210331-Hacken-Complete.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x767938...3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageV2 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageBnb | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageXvs | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoS0V3 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeBnbToken | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeBnbCake | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSCakeV2b | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusVAI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | MasterChef | own contract | MasterChef (selected) `0xeae142...9d0bed` — deployed 2020-10-28 11:06:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | MasterChefV2 | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | Timelock6H | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | acsACS | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | acsACSI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | ACS | own contract | ACS (selected) `0x4197c6...aa1d29` — deployed 2020-10-26 08:01:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACS_ACSI | unmatched — not counted | — | listed in scope | no |
| 20211116-Hacken-Review.pdf | ACryptoSVaultBnb | own contract | ACryptoSVaultBnb (selected) `0x10137a...373104` — deployed 2021-09-11 16:04:22+03 — liveness: live (current_address_book_code)<br>ACryptoSVaultBnb (alternative) `0x6fe676...35a628` — deployed 2020-11-27 11:18:20+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-09-11 was 66d from audit; next candidate 354d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSVault0V2_ACSI | own contract | ACryptoSVault0V2_ACSI (selected) `0x2b6639...ae929a` — deployed 2020-11-24 08:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSVault | ambiguous — not counted | ACryptoSVault (alternative) `0xab8191...31a2d1` — deployed 2021-05-07 16:16:30+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7abbcf...34a58e` — deployed 2021-02-08 05:47:53+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xe0303c...c02f95` — deployed 2021-03-01 11:52:45+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x32fe1b...a31943` — deployed 2020-11-28 05:54:47+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xab8195...c8b24a` — deployed 2021-09-21 11:36:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5f9aab...aedf55` — deployed 2021-09-08 11:49:08+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xda6e3b...36033f` — deployed 2021-06-19 11:21:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x2875a5...b3ef2c` — deployed 2021-07-02 09:42:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e0df...4233c1` — deployed 2022-02-06 13:18:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfc698d...17e5e2` — deployed 2020-11-28 05:53:59+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf690ae...720494` — deployed 2021-11-08 07:22:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xa49642...804126` — deployed 2021-01-07 06:09:20+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x14b197...c7dcec` — deployed 2021-09-14 08:22:05+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x7a2fb0...7f6624` — deployed 2021-10-26 07:14:18+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x03e904...2f5c39` — deployed 2021-02-18 12:21:32+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x4e58b6...dca14f` — deployed 2020-11-28 05:55:41+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbb08f8...92cc1b` — deployed 2021-03-01 04:51:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x883a0d...016811` — deployed 2020-12-29 06:29:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5e4993...563690` — deployed 2021-05-01 14:38:10+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x0395fc...5e3eef` — deployed 2020-12-07 13:37:09+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c2b38...478684` — deployed 2021-10-28 11:19:16+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x532d57...a9baa5` — deployed 2020-11-27 02:07:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x471696...ec1f8d` — deployed 2021-11-08 07:40:58+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xbba267...04bea5` — deployed 2021-10-28 09:41:34+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x161afe...78d33f` — deployed 2021-03-02 09:23:19+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6c8a59...a30d8d` — deployed 2021-10-28 12:46:13+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf54d43...f6c73a` — deployed 2021-10-25 07:13:56+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x027b51...baac78` — deployed 2021-05-12 15:13:15+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x40a7dd...dcdfed` — deployed 2021-06-30 16:26:52+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x6cc0ef...314a9c` — deployed 2021-10-28 11:50:44+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xfcf924...6d5a48` — deployed 2021-09-09 10:52:28+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x5c8c85...10e5a8` — deployed 2021-07-19 06:20:00+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xf7ffa2...7af16b` — deployed 2021-09-08 10:29:21+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x90f277...6cba16` — deployed 2021-03-02 06:52:33+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0xac0452...ecbde2` — deployed 2021-06-19 10:59:37+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x35cadd...8d863e` — deployed 2020-12-07 13:37:36+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x8dc707...f1d766` — deployed 2021-06-16 08:58:03+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x58d35b...3a360b` — deployed 2021-05-14 04:56:35+03 — liveness: live (current_address_book_code)<br>ACryptoSVault (alternative) `0x82b4c3...04bced` — deployed 2021-09-15 09:00:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20211116-Hacken-Review.pdf | ACryptoSVault0 | own contract | ACryptoSVault0 (selected) `0x767938...3a4fc3` — deployed 2020-10-30 02:52:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20211116-Hacken-Review.pdf | ACryptoSFarmV3 | unmatched — not counted | — | listed as new file in scope | no |
| 20211116-Hacken-Review.pdf | StrategyACryptoSVenusLeverageUGV6 | unmatched — not counted | — | listed as new file in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0395fc...5e3eef` | ACryptoSVault | core_logic | $3,384,518.54 | Verified native implementation with $3,384,518.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6fe676...35a628` | ACryptoSVaultBnb | core_logic | $234,455.08 | Verified native implementation with $234,455.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8045db...1bdf51` | StrategyACryptoS0V6_ACSI | core_logic | $85,625.86 | Verified native implementation with $85,625.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x027b51...baac78` | ACryptoSVault | core_logic | $78,883.47 | Verified native implementation with $78,883.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2aa23d...9354c5` | StrategyACryptoSBsw | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x24a87b...ada317` | StrategyACryptoSMdxV3 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x02bd61...51e6f9` | StrategyACryptoSDsg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x20d1d3...8a6f78` | StrategyACryptoSVenusVaiV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x191409...8a191e` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x494403...f02b28` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 40 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: temporal_name=1, unique_name=12

Zero-match audit list:

- [9664] README.md
- [9666] 20210218-Hacken-ACryptoSFarmV2.pdf
- [9667] 20210324-Certik-StrategyACryptoSCakeTokenTokenV2.pdf
- [9669] 20211105-Hacken-AcsiFinance-BalancerV2.pdf
- [15288] skynet.certik.com/projects/acryptos

Fork inheritance lineage and inherited audits are included when available.
