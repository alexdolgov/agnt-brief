# Agentic Audit Brief: ACryptoS

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 0.1% over 90 days

## Project Overview

- Project: ACryptoS (`acryptos`)
- Website: [https://www.acryptos.com/](https://www.acryptos.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, canto, cronos, ethereum, fantom, gnosis, harmony, kava, linea, moonbeam, moonriver, optimism, polygon
- Contract surface: 605 unique implementations (702 raw deployments)
- Coverage basis: 6/17 confirmed own live verified implementations (35.3%); conservative 33.3% with 1 needs-review implementation(s)
- DeFi Llama TVL: $10,548,947.90
- On-chain TVL (included contracts): $4,304,897.09
- TVL by chain: Bsc $4,304,897.09

## Project Description

This brief describes the observed EVM deployment and audit surface for ACryptoS. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 53 core, 8 unclassified. No upgradeable pattern was identified in these rows.

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

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 140/140 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/17 (35.3%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 96 own, 0 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 508 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 97 of 605 unique; 508 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/21
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 584
- Unique implementations: 605
- Raw deployments: 702
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $4,106,441.22
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,106,441.22 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 6 | 28.6% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVaultBnb | core_logic | project_anchor | own_core | 0 | bsc | unit-378474 | 2 deployments: bsc `0x10137a...373104`; bsc `0x997899...7cfbde` | ✅ Audited |
| ACryptoSVault0V2_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378485 | `0x2b6639...ae929a` | ✅ Audited |
| ACryptoSVault0 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378540 | `0x767938...3a4fc3` | ✅ Audited |
| ACS | unknown | project_anchor | own_supporting | 0 | bsc | unit-378495 | `0x4197c6...aa1d29` | ✅ Audited |
| ACSI | unknown | project_anchor | own_supporting | 0 | bsc | unit-378512 | `0x5b17b4...cba389` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-378622 | `0xeae142...9d0bed` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACryptoSVault | core_logic | project_anchor | own_supporting | 0 | bsc | n/a | 61 deployments: bsc `0x02aabf...919d0e`; bsc `0x0395fc...5e3eef`; bsc `0x03e904...2f5c39`; bsc `0x0551ea...29fd31`; bsc `0x08234f...b0ee6f`; bsc `0x0e3e97...a6de62`; bsc `0x123108...fedbbe`; bsc `0x161afe...78d33f`; bsc `0x17c9bb...15e0d6`; bsc `0x1ba8b2...27406b`; bsc `0x1da371...02c1a3`; bsc `0x1db2f2...1dc655`; bsc `0x28b4b0...314af9`; bsc `0x2d8483...041137`; bsc `0x32d5b8...35f3a0`; bsc `0x32fe1b...a31943`; bsc `0x35cadd...8d863e`; bsc `0x38e3e6...8962b0`; bsc `0x3a30e2...ab0a06`; bsc `0x4e58b6...dca14f`; bsc `0x51d6b8...dcbb73`; bsc `0x52525a...55c006`; bsc `0x532d57...a9baa5`; bsc `0x5a330d...59620c`; bsc `0x5d15d6...60eae2`; bsc `0x6200f2...384941`; bsc `0x675361...ab1ed9`; bsc `0x68fdcd...9bfc3c`; bsc `0x713da0...38d8de`; bsc `0x7abbcf...34a58e`; bsc `0x7d34cd...3d996a`; bsc `0x838366...c7d5af`; bsc `0x87d5fd...64a230`; bsc `0x883a0d...016811`; bsc `0x90f277...6cba16`; bsc `0x9ce0e8...99ce04`; bsc `0xa0753c...03e5cd`; bsc `0xa1125b...aadc88`; bsc `0xa49642...804126`; bsc `0xad4bba...791f6f`; bsc `0xadb783...388ada`; bsc `0xb00b62...c00bc5`; bsc `0xb1dc4f...afd5bd`; bsc `0xb2c1b3...deca7c`; bsc `0xb6eb65...00a0c0`; bsc `0xb8c134...362c98`; bsc `0xb9b837...e84f31`; bsc `0xbb08f8...92cc1b`; bsc `0xc109d8...207102`; bsc `0xcd630d...7a08c3`; bsc `0xcf69f9...bf6317`; bsc `0xcfb96f...e2d280`; bsc `0xcfbb1a...a6398e`; bsc `0xd574c6...66db75`; bsc `0xdac0c9...07f323`; bsc `0xe0303c...c02f95`; bsc `0xe427a9...ea9908`; bsc `0xe9861f...622ff5`; bsc `0xe9d9f5...a3869c`; bsc `0xed3f6a...e01765`; bsc `0xfc698d...17e5e2` | ⚠️ Unaudited |
| ACryptoSVaultBnb | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378535 | `0x6fe676...35a628` | ⚠️ Unaudited |
| StrategyACryptoS0V6_ACSI | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378553 | `0x8045db...1bdf51` | ⚠️ Unaudited |
| ACryptoSVault | core_logic | project_anchor | own_core | 0 | bsc | unit-378466 | 25 deployments: bsc `0x027b51...baac78`; bsc `0x03e0df...4233c1`; bsc `0x14b197...c7dcec`; bsc `0x2875a5...b3ef2c`; bsc `0x40a7dd...dcdfed`; bsc `0x471696...ec1f8d`; bsc `0x58d35b...3a360b`; bsc `0x5c2b38...478684`; bsc `0x5c8c85...10e5a8`; bsc `0x5e4993...563690`; bsc `0x5f9aab...aedf55`; bsc `0x6c8a59...a30d8d`; bsc `0x6cc0ef...314a9c`; bsc `0x7a2fb0...7f6624`; bsc `0x82b4c3...04bced`; bsc `0x8dc707...f1d766`; bsc `0xab8191...31a2d1`; bsc `0xab8195...c8b24a`; bsc `0xac0452...ecbde2`; bsc `0xbba267...04bea5`; bsc `0xda6e3b...36033f`; bsc `0xf54d43...f6c73a`; bsc `0xf690ae...720494`; bsc `0xf7ffa2...7af16b`; bsc `0xfcf924...6d5a48` | ⚠️ Unaudited |
| StrategyACryptoSBsw | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378484 | 2 deployments: bsc `0x2aa23d...9354c5`; bsc `0x577b47...a29d51` | ⚠️ Unaudited |
| StrategyACryptoSMdxV3 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378482 | 2 deployments: bsc `0x24a87b...ada317`; bsc `0xe8b2e9...7d2a96` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02d444...a6aa8d`; bsc `0x888888...7a6ccd` | ⚠️ Unaudited |
| StrategyACryptoSAtlantisLeverageBnbV5 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb918b4...aee9fa` | ⚠️ Unaudited |
| StrategyACryptoSDsg | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378467 | `0x02bd61...51e6f9` | ⚠️ Unaudited |
| StrategyACryptoSVenusLeverageBnb | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b5b36...5d78ec` | ⚠️ Unaudited |
| StrategyACryptoSVenusVaiV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-378481 | `0x20d1d3...8a6f78` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378478 | 2 deployments: bsc `0x191409...8a191e`; bsc `0x391987...a4f958` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | needs_review (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x38b28b...809ac7`; bsc `0x9e31f4...606b98`; bsc `0xd3debe...23301b` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378499 | 3 deployments: bsc `0x494403...f02b28`; bsc `0x83d69e...71f29b`; bsc `0xeb7dc7...1ea5ad` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378591 | `0xb3f0c9...59b0ac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (584)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3e499ebd1aa75415d6ba26f3ffa08ae649b6db0a) | proxy | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 5 deployments: arbitrum `0x05aa42...7004ed`; arbitrum `0x4405bc...7fb938`; arbitrum `0x5fddfe...38328e`; arbitrum `0x8aa74a...adfc84`; arbitrum `0xdfafee...82873b` | ❓ Unverified |
| Proxy (impl: 0xc80ed325f6471d39f03b3acd1ed38dfd3a0972d7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x07667a...8bc6da` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0114a4...55d0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x014acd...d98a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bd7c...ea43f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025758...367f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02e7b1...a57c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03f52c...194f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0478b1...e38ddc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378471 | `0x060b86...0b46db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378472 | `0x06271d...107c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06f772...9fdfc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07016c...4528ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07020f...08af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x075054...10bd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x083127...356ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087e84...48043b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08a645...aaff9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09a182...9880f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0adcc1...d082b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b470d...c03e34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378473 | `0x0c3b60...06671c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5917...cb29a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0da914...02ca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e065f...6f901a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e08dc...568a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e8aee...e30a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ed63a...5d49d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127c84...8d281d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378475 | `0x12b05c...efb2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x148679...9aaf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14cb72...948745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ec92...cdd0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ed22...5a8a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14eef4...9b2257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15a790...dda7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15edf1...54d73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x161a62...3962c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f0a7...fc3dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170c1e...1e8174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17a57b...17edec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17db2e...171766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18241d...54e67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18c186...3fac84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378479 | `0x1b0837...119b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b5ca4...127ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd090...d91f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c6c21...f212be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378480 | `0x1e5ea5...3da59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e6de8...c26d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e73c3...8c7225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e79ba...9d4d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e83ee...7d6e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eae03...4ab3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ec76e...4631e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f44ae...901a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9068...fa6ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ff0fe...5fb0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20fe82...562377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22cacd...52f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22e61e...55bd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x235d80...599f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2438f4...01701b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24390d...28cb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x249973...ceef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24d379...a95e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265434...71f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26f4e9...8a2e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2883d6...7d74d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28ad34...e638d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x293256...21e50d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x295f34...5ce1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b217f...7bece2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b8faf...073861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b970f...7690bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2be060...257cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c39de...c420b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ce79a...c21567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cfb72...a29e29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378486 | `0x2d00c5...ac2d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3534...a4c83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e0d0d...1c93b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e4534...fc7030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e5180...7884d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ecb16...d91a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eed8c...af8eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f6612...b9ce6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9de8...ce648e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x300b57...b4a1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3080d2...d8a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308474...beba28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x316285...649db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x316ebf...b58a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378487 | `0x316f64...0d0f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31938e...94ce18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3195f1...38e2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b9a7...efa9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3254fc...c887c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3261e4...a2f09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ddea...9290d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32f6f7...9d2dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33db1a...a5165c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3457fc...45e289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378489 | `0x3468bc...35d0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34cafb...c01986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34deff...8d872b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x358029...f3a21c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378490 | `0x3595d9...fec1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3679d4...774ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36d206...db088f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x373561...8276b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ced9...271f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38de02...744c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39731e...9a4343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39a591...3f4a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39af7b...4ab9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a630a...85da4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378493 | `0x3aa07f...fbf9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2634...634fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bc194...27fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ce441...d10415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d0c1a...0d366e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d4bec...425334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dcd4c...bc935e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e3d3b...3bdbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e499e...b6db0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea7ba...cf72a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f5c00...67be40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40085a...30b8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40b3ec...96199e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428e04...02c614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f452...d0ecf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x443ca2...ac2254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4469ba...789de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f9cb...eda6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45043f...affdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45427a...7119fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378496 | `0x4651a5...3d7210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468b7b...a74764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e650...60d15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e90e...b1d334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47440e...b399e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378498 | `0x48b02d...96c4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48ec62...f1b474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49397a...d5d212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4939a7...a9efbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378500 | `0x4951c3...9add67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49c4b9...3e4429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49edf8...c139d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49fa76...40c5f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbfc7...3a55f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c3e07...f5de21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c6f26...1ea377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c6f66...e3abd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cbe64...0d8c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dd298...30e916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378501 | `0x4deb90...600216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4df2b5...8a0359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e27e8...38dabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378503 | `0x4e754c...a86ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ea2b2...9ee07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ec70c...3b12b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb1ba...ab17f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50bcdf...74937c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51bed7...275479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522f1b...3dc0fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378504 | `0x5260d8...1db4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52b6ea...aa3843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5405c5...146aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542678...20d69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d01f...9c36bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553a32...aff4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555e52...aa0dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55d2ae...e375d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x565b0b...444b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56e407...ca2946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5809b2...a2e5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x593d93...801b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5979b4...58e8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c663...db36cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59db51...8d9f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59e5fc...cc1d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59f450...0ce307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a9808...2dde80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378510 | `0x5aaa5a...8f7a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ad3d9...ea5b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5afa58...afa5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b7b64...2226a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c1310...e63b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c7a93...118353` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378515 | `0x5c8c58...b5ccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e1d64...d06056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5efda0...56e362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fdbd0...32b211` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378523 | `0x5ff576...801010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x600cc7...59503a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601257...ab38d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x603cee...cf470f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60cf11...38e4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61e960...35ae8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x625f0b...fcede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x627e65...443ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x632f1a...691e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63e648...237e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64c69b...187a8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378525 | `0x651fab...315abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x655c9e...f70195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65f9fd...4892d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x677907...74c932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67d288...49bbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6805e4...1bebd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6864f8...5f809d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6866f9...8fc014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68ff04...9e7e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x695577...7a4845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69cd48...9444d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b12c8...2ba69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b3de0...f124fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c38b6...9bb432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c3ea5...286054` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378529 | `0x6c8eee...18ad08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cb347...00303b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ceecc...3058de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d4caf...2a8a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da30d...d96bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378533 | `0x6f58a7...f78a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70024a...45ffef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x702607...30b0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70b494...7ab972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70f97c...79bb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x711208...ac9edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b345...cde4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7232e1...ef20fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x723799...eaebb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x725462...659b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x736654...69fee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x748944...5db0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378537 | `0x74c901...d72dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7510ab...3ec81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x756c99...45901a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75f092...e1f811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76044e...95bd24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378538 | `0x7635c6...d1403e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x764757...541e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76666f...428a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c233...72606a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d0ec...ebc13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e893...7e9543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x787703...18531e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x794c50...9d88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x795aa6...493225` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378541 | `0x796b87...3663eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799808...328b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79cb71...cb5782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aa0f9...42962b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378546 | `0x7abc58...c8cdda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b4081...41617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b9196...657f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7be050...8be00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c9821...f32dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cc9bc...954c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d06dc...295371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d3ac9...310282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dbdf9...26981c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7debb1...1b986c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1ea6...d46748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378548 | `0x7f1bce...2d5e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4e87...590fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378551 | `0x7f66f5...210b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fa6bf...27c21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81031a...07da8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x814149...9e2605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81c015...1c8a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81d0c4...69c12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81da84...ed1e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x834828...5205d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8419ef...0d7dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x842546...7d9905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x844cb6...fe68bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x848230...0e50cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85518c...ab04de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8592df...ae2a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85ab61...3d9397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378559 | `0x86363a...db44d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8650ab...e8d690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x866e00...bd0d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x869285...e4c453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86afae...5044b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b4e4...b36aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8761bd...5a5cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87cc18...aff498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d8eb...1d22f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88206d...706022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378561 | `0x8835d7...e4ff31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8845fe...19edef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x886786...686d00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378564 | `0x888888...54d2ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88a419...c15090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89952a...912539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378566 | `0x8996a3...982852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a22ef...9ea167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a5c28...27b2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae66a...4c3c26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378568 | `0x8b1a33...be0e24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378570 | `0x8ba0eb...9fc837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8be55d...9fcd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c1e59...415eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ca3e2...6420e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d009f...0b7872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x905f2f...ef31af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x908cb8...094a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90ff45...814515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91590f...5b2266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91944f...09ae6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91d5b2...83ca8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936c16...f5d522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93e2e1...1f2d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93f894...560e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x941e57...5d1a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x942dae...511679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946921...f0b904` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378574 | `0x94c9bf...24aa71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950007...e93096` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378575 | `0x96c839...c408b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96e38e...c77ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97391c...44317f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a4af...1695d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378576 | `0x97add6...448d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97affd...07eb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c110...958f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98d515...2f7e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99371d...474ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99601d...d38227` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378577 | `0x99c927...3c4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378578 | `0x9ab252...07cc71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378579 | `0x9b55e2...0ed3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c991d...f70d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e268b...fa2b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8d91...82b4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9efb37...62a090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f8a8e...87a3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f8db5...4cb960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa0bf...4a3709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa08d2a...6d53e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f76b...282fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1168d...49e3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa11c37...9f1b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1227a...41ebc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13a1e...0306d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378581 | `0xa18fdb...55d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a819...a6762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa20806...e69584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa29489...961e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa387be...8b955e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378582 | `0xa4752c...0b4add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378584 | `0xa54fcd...90156c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5d0c4...f899c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa63997...d218a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6af36...81628e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b493...48adcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa72fc6...17b1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7a4c5...428631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7fe1a...833e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82f32...6ceced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8e148...77d77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa98643...4e80d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa998b6...a0d08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9cb9b...c5e529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa7d33...14706f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaac02d...9ecdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaae93f...883418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac8327...605419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacc0fb...80bf4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378588 | `0xacc5b6...fdf660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacfd02...562df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad57a8...ce9df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6c68...0e0974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378589 | `0xae4a00...521bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb09bf1...60621c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0e020...f4c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0fbc7...53dd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1058b...ef5212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb12837...c7be80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb18cf1...98a081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378590 | `0xb1fa5d...4b474e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb29b01...75a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39959...bb687b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb48091...eb9337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57068...4764e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb643b6...34fbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6cb85...a52dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb72380...812e6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378592 | `0xb87a7c...a238ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb89294...9e677b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9df9e...450bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9f2b1...1b6e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba197f...e4d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba4b7a...421d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaeeae...6d57ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb5224...0deefe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378595 | `0xbbf560...552835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdc1b1...1b3bd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378596 | `0xbe35a4...6b935a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe6277...8bd0bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378597 | `0xbe7caa...b5ca81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbed611...7252b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf07d9...33653b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf09a4...ef61fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf0feb...1c3ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf3ec1...2f33b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf5e37...87bd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf8f88...1fd960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0148f...e0f02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc01e28...64871a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0ceb8...cd7694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0d0fd...0c6083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0f60c...b4e74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc12a5b...33d8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc13698...392ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1726d...3f1468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc261ef...ec4333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc27585...d841b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34e05...fd49f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc376ad...16c7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3b7f8...b927f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3ef17...5e91c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378598 | `0xc40475...c09958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc45044...1dbae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc50dca...7b2980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51ea3...1bf6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc56ebb...f501a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc57036...1c8afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc582ed...dfb3d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378599 | `0xc61639...aecbf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378600 | `0xc64d25...c5b529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc726e0...a3c403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75444...a56f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7b5aa...4e90b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378601 | `0xc8036d...087960` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378602 | `0xc807d3...d560cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8201d...097037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc970f3...31db94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca8c49...9a9a41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378603 | `0xcad070...f897b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb08c6...004869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9f0a...ed2a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba040...3c0f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcba404...4734dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6033...8a7b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdb35c...f0bf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce6c39...34891c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf0038...6c19bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf4e97...0af7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbc1f...d75bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfc60d...28b2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd009da...f52492` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378604 | `0xd016df...416507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0a062...dc9d51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378605 | `0xd172ab...0aae5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378606 | `0xd180ab...913fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd195c2...4a06cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd19813...3505b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1ca46...3259f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1e0e9...57f8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd24880...53e859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378607 | `0xd25ec3...cda438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2eada...dbc1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd35ebb...53717a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3c37b...921938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378609 | `0xd487c8...3939b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd587d4...793aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd64e4e...c4d1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd65e1f...c51c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd672c7...0f8b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd68ac0...3fd28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6d568...77f39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd70a5e...31263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d38d...05ec25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd88c09...2fb11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8929b...213bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8ed47...0ce3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8f281...a8a7a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378610 | `0xd95b9c...9ce129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378611 | `0xd9ab25...2aa824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda8811...b5d5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdac5b7...028ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb335c...631306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb825f...665da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb96ed...7ca473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb259...a35637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb44b...b5da5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbccd3...602978` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378613 | `0xde14f2...78db21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfafaa...6aa7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfe0e5...9c94c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0b6c0...20ebd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0e5fe...ef41d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378615 | `0xe1895d...11c467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2bcf6...4fb030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c138...ed8fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378616 | `0xe47848...9baf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe47c98...9f5987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378617 | `0xe4d2ed...7f13b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378618 | `0xe53cdd...ee386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe54706...e594cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe559a9...21dabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5f77f...75657e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe64771...addae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378619 | `0xe6d84b...a431ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378620 | `0xe720af...a196cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe786bd...906446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe979ba...e02ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea6fba...1e08f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeac70a...ff88f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaf419...cf35fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb0745...24c0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb7e2d...ee25ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378624 | `0xeb8f15...6e5e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebd318...3f25d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378625 | `0xec8375...4a16c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec94dc...527ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecaed9...8daae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeceeea...3010f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378626 | `0xed062e...3b59bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed08bd...8110a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3aac...8c455d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3af2...292db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed51b5...79fce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee08a1...91d8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee1d9d...88d9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee9ccd...c35ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeef75f...44309a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef015f...a5427f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3182...ae17ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3625...c04fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef5315...dd8bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378627 | `0xefbfc0...1e5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefcd03...4997c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0214f...913a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1c9dd...4958c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf347d2...42b2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf453b2...10a1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf46bed...11ae2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf49f1a...c4dee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4caa8...ec835c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5cae8...8ff017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6b8e5...e0bd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf82d1d...79a01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf91131...a2e5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf955c9...5b3f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9ebf7...e9737a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378631 | `0xfa4858...372eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa8639...f08799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfac6ab...026b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb4143...2c1629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb63b8...85afa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb74c8...316aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd1efb...b331b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378634 | `0xfd6e99...1217b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378635 | `0xfdecec...676f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe86e0...ce7d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff2ae6...7c076a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfffa04...ec9e33` | ❓ Unverified |
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
| bsc | `0x02aabf...919d0e` | ACryptoSVault | core_logic | $3,707,476.73 | Verified native implementation with $3,707,476.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 587 |

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
