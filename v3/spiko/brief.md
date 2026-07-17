# Agentic Audit Brief: Spiko

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

- Project: Spiko (`spiko`)
- Website: [https://www.spiko.io/](https://www.spiko.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, etherlink, polygon
- Contract surface: 167 unique implementations (297 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,099,799,782.47
- On-chain TVL (included contracts): $360,997,687.28
- TVL by chain: Polygon $166,349,603.73 | Ethereum $127,059,453.64 | Base $39,518,421.14 | Arbitrum $28,070,208.77

## Project Description

This brief describes the observed EVM deployment and audit surface for Spiko. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 70 contract row(s) across arbitrum, base, ethereum, etherlink, polygon. Structural roles: 32 unclassified, 29 core, 6 supporting, 3 infra. 38 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 70
- Structural roles: unclassified (32), core (29), supporting (6), infra (3)
- Contract kinds: contract (64), abstract (6)
- Detected standards: erc1967proxy (37), multicall (1)
- Frameworks: openzeppelin (38), openzeppelin-upgradeable (12), chainlink (1)
- Upgradeable-pattern rows: 38

## Fork Analysis

0 of 64 contracts are derived from known codebases. 64 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x344278aff344d6fb960705dc18a4912221608472`, chain 42793)
- UnnamedContract (`0x35dfec1813c43d82e6b87c682f560bbb8ea0c121`, chain 42793)
- UnnamedContract (`0x3690367edd22ede1fe827258352f900fbd05b8dc`, chain 42793)
- UnnamedContract (`0x3868d4e336d14d38031cf680329d31e4712e11cc`, chain 42793)
- UnnamedContract (`0x4f33acf823e6eeb697180d553ce0c710124c8d59`, chain 42793)
- UnnamedContract (`0x5677a4dc7484762ffccee13cba20b5c979def446`, chain 42793)
- UnnamedContract (`0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d`, chain 42793)
- UnnamedContract (`0xa0769f7a8fc65e47de93797b4e21c073c117fc80`, chain 42793)
- UnnamedContract (`0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`, chain 42793)
- UnnamedContract (`0xe4880249745eac5f1ed9d8f7df844792d560e750`, chain 42793)
- UnnamedContract (`0xef53e7d17822b641c6481837238a64a688709301`, chain 42793)
- UnnamedContract (`0xfe20ebe3881491b2e158b9d10cb95bcfa652262d`, chain 42793)
- ERC1967Proxy (`0x0990b149e915cb08e2143a5c6f669c907eddc8b0`, chain 1)
- ERC1967Proxy (`0x18b5c15e5196a38a162b1787875295b76e4313fb`, chain 1)
- ERC1967Proxy (`0x344278aff344d6fb960705dc18a4912221608472`, chain 1)
- ERC1967Proxy (`0x3868d4e336d14d38031cf680329d31e4712e11cc`, chain 1)
- ERC1967Proxy (`0x4f33acf823e6eeb697180d553ce0c710124c8d59`, chain 1)
- ERC1967Proxy (`0x5ed5a75eeed1934ea060186e35187eaa73331366`, chain 1)
- ERC1967Proxy (`0xa0769f7a8fc65e47de93797b4e21c073c117fc80`, chain 1)
- ERC1967Proxy (`0xc273986a91e4bfc543610a5cb5860b7cfefb6cc0`, chain 1)
- ERC1967Proxy (`0xcbade7d9bdee88411cb6cbcbb29952b742036992`, chain 1)
- ERC1967Proxy (`0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`, chain 1)
- ERC1967Proxy (`0xe4880249745eac5f1ed9d8f7df844792d560e750`, chain 1)
- ERC1967Proxy (`0xf695df6c0f3bb45918a7a82e83348fc59517734e`, chain 1)
- ERC1967Proxy (`0x272ea767712cc4839f4a27ee35eb73116158c8a2`, chain 137)
- ERC1967Proxy (`0x344278aff344d6fb960705dc18a4912221608472`, chain 137)
- ERC1967Proxy (`0x4fe515c67eeeadb3282780325f09bb7c244fe774`, chain 137)
- ERC1967Proxy (`0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5`, chain 137)
- ERC1967Proxy (`0x903d5990119bc799423e9c25c56518ba7dd19474`, chain 137)
- ERC1967Proxy (`0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d`, chain 137)
- ERC1967Proxy (`0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`, chain 137)
- ERC1967Proxy (`0x9de2b2dcdcf43540e47143f28484b6d15118f089`, chain 137)
- ERC1967Proxy (`0xa0769f7a8fc65e47de93797b4e21c073c117fc80`, chain 137)
- ERC1967Proxy (`0xaead1f7c9b189816cb845363d142cfcf339084c2`, chain 137)
- ERC1967Proxy (`0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`, chain 137)
- ERC1967Proxy (`0xe4880249745eac5f1ed9d8f7df844792d560e750`, chain 137)
- ERC1967Proxy (`0x0bb754d8940e283d9ff6855ab5dafbc14165c059`, chain 8453)
- ERC1967Proxy (`0x2f6c0e5e06b43512706a9cdf66cd21f723fe0ec3`, chain 8453)
- ERC1967Proxy (`0x344278aff344d6fb960705dc18a4912221608472`, chain 8453)
- ERC1967Proxy (`0x4f33acf823e6eeb697180d553ce0c710124c8d59`, chain 8453)
- ERC1967Proxy (`0xa0769f7a8fc65e47de93797b4e21c073c117fc80`, chain 8453)
- ERC1967Proxy (`0xa8de1f55aa0e381cb456e1dcc9ff781ea0079068`, chain 8453)
- ERC1967Proxy (`0xaead1f7c9b189816cb845363d142cfcf339084c2`, chain 8453)
- ERC1967Proxy (`0xd879846cbe20751bde8a9342a3cca00a3e56ca47`, chain 8453)
- ERC1967Proxy (`0xd9aa2300e126869182dfb6ecf54984e4c687f36b`, chain 8453)
- ERC1967Proxy (`0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`, chain 8453)
- ERC1967Proxy (`0xe4880249745eac5f1ed9d8f7df844792d560e750`, chain 8453)
- ERC1967Proxy (`0xf695df6c0f3bb45918a7a82e83348fc59517734e`, chain 8453)
- ERC1967Proxy (`0x021289588cd81dc1ac87ea91e91607eef68303f5`, chain 42161)
- ERC1967Proxy (`0x0c709396739b9cfb72bcea6ac691ce0ddf66479c`, chain 42161)
- ERC1967Proxy (`0x0e389c83bc1d16d86412476f6103027555c03265`, chain 42161)
- ERC1967Proxy (`0x1412632f2b89e87bfa20c1318a43ced25f1d7b76`, chain 42161)
- ERC1967Proxy (`0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74`, chain 42161)
- ERC1967Proxy (`0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39`, chain 42161)
- ERC1967Proxy (`0x903d5990119bc799423e9c25c56518ba7dd19474`, chain 42161)
- ERC1967Proxy (`0x97e7962bcd091e7ecfb583fc96289b1e1553ac6e`, chain 42161)
- ERC1967Proxy (`0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`, chain 42161)
- ERC1967Proxy (`0xa925c217e4c1c82ee721ebd496d3863d5c2d829a`, chain 42161)
- ERC1967Proxy (`0xbe023308ac2ef7e1c3799f4e6a3003ee6d342635`, chain 42161)
- ERC1967Proxy (`0xcbeb19549054cc0a6257a77736fc78c367216ce7`, chain 42161)
- MultiATM (`0xbd6ad96f51e8d732811587468d0e2f9efa55f605`, chain 1)
- PermissionManager (`0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e`, chain 1)
- PermissionManager (`0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e`, chain 137)
- PermissionManager (`0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 70; live-surface rows included: 70 (70 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 49/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 82
- Confirmed-live implementations: 33 of 167 unique; 134 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 115
- Unique implementations: 167
- Raw deployments: 297
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $360,997,687.28
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | project_anchor | own_supporting | 15 | ethereum | unit-393053 (5 proxies) | 18 deployments: ethereum `0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74`; ethereum `0x3868d4e336d14d38031cf680329d31e4712e11cc`; ethereum `0x4f33acf823e6eeb697180d553ce0c710124c8d59`; ethereum `0xa0769f7a8fc65e47de93797b4e21c073c117fc80`; ethereum `0xe4880249745eac5f1ed9d8f7df844792d560e750`; ethereum `0xf695df6c0f3bb45918a7a82e83348fc59517734e`; polygon `0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74`; polygon `0x903d5990119bc799423e9c25c56518ba7dd19474`; polygon `0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d`; polygon `0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`; polygon `0xa0769f7a8fc65e47de93797b4e21c073c117fc80`; polygon `0xe4880249745eac5f1ed9d8f7df844792d560e750`; base `0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74`; base `0x4f33acf823e6eeb697180d553ce0c710124c8d59`; base `0xa0769f7a8fc65e47de93797b4e21c073c117fc80`; base `0xa8de1f55aa0e381cb456e1dcc9ff781ea0079068`; base `0xe4880249745eac5f1ed9d8f7df844792d560e750`; base `0xf695df6c0f3bb45918a7a82e83348fc59517734e` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | polygon | unit-393064 | `0x272ea767712cc4839f4a27ee35eb73116158c8a2` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | ethereum | unit-393057 | 2 deployments: ethereum `0xbf5fb9284c9cf2798d5f18a9702af620cd4351be`; ethereum `0xcbade7d9bdee88411cb6cbcbb29952b742036992` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | arbitrum | unit-393075 | 2 deployments: arbitrum `0x021289588cd81dc1ac87ea91e91607eef68303f5`; arbitrum `0xa0769f7a8fc65e47de93797b4e21c073c117fc80` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | base | unit-393087 | 2 deployments: base `0xc32eca88b487365f9a6dff8346f7ef48048b5dda`; base `0xd879846cbe20751bde8a9342a3cca00a3e56ca47` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | polygon | unit-393071 | `0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | ethereum | unit-393052 | 2 deployments: ethereum `0x0990b149e915cb08e2143a5c6f669c907eddc8b0`; ethereum `0x13ae01cbce8530012516fbc1273803d4995aee71` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | polygon | unit-393062 | `0x4fe515c67eeeadb3282780325f09bb7c244fe774` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | base | unit-393091 | 2 deployments: base `0x0bb754d8940e283d9ff6855ab5dafbc14165c059`; base `0xd4324f09f53cf9e2a90d321d33c8c43898cefeb4` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | base | unit-393080 | 2 deployments: base `0x1e593293a0fd8b26104a6ce6a783a59cf6d70708`; base `0x2f6c0e5e06b43512706a9cdf66cd21f723fe0ec3` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | ethereum | unit-393054 | 2 deployments: ethereum `0x60fcb8511db2a7b823cd0f3c6b08da456e18bff1`; ethereum `0xc273986a91e4bfc543610a5cb5860b7cfefb6cc0` | ⚠️ Unaudited |
| ATM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75cb1bd539ee2cb22031603a7b437f1f7077b05e` | ⚠️ Unaudited |
| ATM3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8226e968efd24d9baf156eca15179d1cc1bfd828`; ethereum `0xf10890d77840d9186ac0aa438eab9a078cbb2a93` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: base `0x02e87189512d1bdc3ca7795cab68a8311703b88c`; base `0x3690367edd22ede1fe827258352f900fbd05b8dc`; base `0x80e873d80ed41ed0a3aaeeb6efbaa01839f2111b`; base `0xa1fdd455ed9adc66f2b6a496405911c0bbc9424e`; base `0xa42baa160db5aea58a1800ac6a33a92488288767`; arbitrum `0x02e87189512d1bdc3ca7795cab68a8311703b88c`; arbitrum `0x3690367edd22ede1fe827258352f900fbd05b8dc`; arbitrum `0x80e873d80ed41ed0a3aaeeb6efbaa01839f2111b`; arbitrum `0xa1fdd455ed9adc66f2b6a496405911c0bbc9424e`; arbitrum `0xa42baa160db5aea58a1800ac6a33a92488288767` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x192c8fdb3ab14d6a769f9bfd91e8823c6a26861d`; ethereum `0x7d6896541fe0a39831f8cc72f84386fe2e6ad192` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x480725c7e83ce6a0e0930bcc996977578925403e`; ethereum `0xafe71958b34aba419554db5dd7db27da0f41b2bb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78cc4829c6c0238e5816c49519a7fd5f181d5e4a`; ethereum `0xb3b02631b210c3e57de736fcbf3ffffcadc1c4f5` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x98b2c8c398350d9abadb772e4c3b2aadac3fbfb2`; ethereum `0xb20464a0eeb8dd532ee3a1f9791b3ec93119cda3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa6e60f540e76c6dd492be26829d0b8f0a981ffac`; ethereum `0xe2757dd28c1ed9185a95bebcdbd40d62ca751b82` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0336198d3c1ff92d6571f52765c8cac301b90fc8`; polygon `0x2a6d9192a0788e1b9fb6d8eab9b35dae25eefce4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x05d142fc45a0a5c0e5ec84923d3bb2b7b15ae7ac`; polygon `0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39`; polygon `0xa390a927d0ea7438cf8f3409791b540d56a6ddcd` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4c3ba0eae5ab65c9510769a2877cf4d93330bc87`; polygon `0x8226e968efd24d9baf156eca15179d1cc1bfd828` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x86a3c5e18cf42a59d137f8b37105354e7f53b9cb`; polygon `0xaa6b63461336b1a4c4ab2de2858f0f8aed5dc82d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x930f7f3a9a235d27ae082add5b7d4635e59eaf55`; polygon `0xb114e0e00622ffe5800004a98c8e01cd2c0c393b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5882526ca6980491a7ebd878d822ffab5510ed5e`; base `0xd9a531de8e5881d67b0cbe38d506b98461c86ff4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x86a3c5e18cf42a59d137f8b37105354e7f53b9cb`; base `0xaa6b63461336b1a4c4ab2de2858f0f8aed5dc82d` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | arbitrum | unit-393029 | 16 deployments: base `0x1b952b0db5c39ef801fedd1cbbef47d404689b1e`; base `0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39`; base `0x4c3ba0eae5ab65c9510769a2877cf4d93330bc87`; base `0x8226e968efd24d9baf156eca15179d1cc1bfd828`; base `0xa390a927d0ea7438cf8f3409791b540d56a6ddcd`; base `0xe7bbab0637a6ce538e621114c4c7b3d116d11d2a`; base `0xf10890d77840d9186ac0aa438eab9a078cbb2a93`; arbitrum `0x0c709396739b9cfb72bcea6ac691ce0ddf66479c`; arbitrum `0x1412632f2b89e87bfa20c1318a43ced25f1d7b76`; arbitrum `0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c`; arbitrum `0x1b952b0db5c39ef801fedd1cbbef47d404689b1e`; arbitrum `0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218`; arbitrum `0x8513fcdd66e148e4b5e4940be21f50c20d112731`; arbitrum `0x97e7962bcd091e7ecfb583fc96289b1e1553ac6e`; arbitrum `0xa390a927d0ea7438cf8f3409791b540d56a6ddcd`; arbitrum `0xbe023308ac2ef7e1c3799f4e6a3003ee6d342635` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | arbitrum | unit-393030 | 20 deployments: arbitrum `0x0e389c83bc1d16d86412476f6103027555c03265`; arbitrum `0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74`; arbitrum `0x29503f31b73f0734455942eb888e13aca1588a4e`; arbitrum `0x3868d4e336d14d38031cf680329d31e4712e11cc`; arbitrum `0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39`; arbitrum `0x4c3ba0eae5ab65c9510769a2877cf4d93330bc87`; arbitrum `0x4f33acf823e6eeb697180d553ce0c710124c8d59`; arbitrum `0x78f59adebdf873c5c3b351dde1c196d1b0501579`; arbitrum `0x7a16df1c2cd8b9eeb9ed9942c82c2e7c90bb93db`; arbitrum `0x8226e968efd24d9baf156eca15179d1cc1bfd828`; arbitrum `0x8d18e2cfc4c47a9ada7baa4e1efebf5ef366993e`; arbitrum `0x903d5990119bc799423e9c25c56518ba7dd19474`; arbitrum `0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d`; arbitrum `0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`; arbitrum `0xa260d72df8ff2696f3a8d0be46b7bc4d743be764`; arbitrum `0xa8de1f55aa0e381cb456e1dcc9ff781ea0079068`; arbitrum `0xa925c217e4c1c82ee721ebd496d3863d5c2d829a`; arbitrum `0xb114e0e00622ffe5800004a98c8e01cd2c0c393b`; arbitrum `0xcbeb19549054cc0a6257a77736fc78c367216ce7`; arbitrum `0xe4880249745eac5f1ed9d8f7df844792d560e750` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x42db5a5af4d82e8ed42405dfa37278c360d923c3`; polygon `0x42db5a5af4d82e8ed42405dfa37278c360d923c3`; base `0x42db5a5af4d82e8ed42405dfa37278c360d923c3` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393059 | 2 deployments: ethereum `0x5ed5a75eeed1934ea060186e35187eaa73331366`; ethereum `0xd4f4fb505b8c3c3cf3c39947246b2cafa10fe043` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 2 | polygon | unit-393066 | 4 deployments: polygon `0x465bc3e57a76905699df6772ee2571058a55f37a`; polygon `0xaead1f7c9b189816cb845363d142cfcf339084c2`; base `0x465bc3e57a76905699df6772ee2571058a55f37a`; base `0xaead1f7c9b189816cb845363d142cfcf339084c2` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaead1f7c9b189816cb845363d142cfcf339084c2` | ⚠️ Unaudited |
| MultiATM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393028 | `0xbd6ad96f51e8d732811587468d0e2f9efa55f605` | ⚠️ Unaudited |
| MultiATMLinearInterpolated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40d89856520c246b503b814a06ebbfb3f2a1efa` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08698f783e394432f974840502b7b51ce78d66de`; ethereum `0x7a35c010237d5be1973a8e92335778541b094291` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3eedd93f46caba8ae44a6f0c706bc8d4012263e6`; ethereum `0xbb53aa9d5d2c5b1d9da766bbcb3162de8b8740d3` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 21 | polygon | n/a | 24 deployments: ethereum `0x021289588cd81dc1ac87ea91e91607eef68303f5`; ethereum `0x0e389c83bc1d16d86412476f6103027555c03265`; ethereum `0x29503f31b73f0734455942eb888e13aca1588a4e`; ethereum `0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218`; ethereum `0x903d5990119bc799423e9c25c56518ba7dd19474`; ethereum `0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`; ethereum `0xa8de1f55aa0e381cb456e1dcc9ff781ea0079068`; ethereum `0xcbeb19549054cc0a6257a77736fc78c367216ce7`; polygon `0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0`; polygon `0x021289588cd81dc1ac87ea91e91607eef68303f5`; polygon `0x29503f31b73f0734455942eb888e13aca1588a4e`; polygon `0x3868d4e336d14d38031cf680329d31e4712e11cc`; polygon `0x4f33acf823e6eeb697180d553ce0c710124c8d59`; polygon `0xcbeb19549054cc0a6257a77736fc78c367216ce7`; polygon `0xf10890d77840d9186ac0aa438eab9a078cbb2a93`; polygon `0xf695df6c0f3bb45918a7a82e83348fc59517734e`; base `0x021289588cd81dc1ac87ea91e91607eef68303f5`; base `0x27bb2b34998f127d03f44d90f148248a3932f492`; base `0x29503f31b73f0734455942eb888e13aca1588a4e`; base `0x7a16df1c2cd8b9eeb9ed9942c82c2e7c90bb93db`; base `0x903d5990119bc799423e9c25c56518ba7dd19474`; base `0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d`; base `0x99f70a0e1786402a6796c6b0aa997ef340a5c6da`; base `0xcbeb19549054cc0a6257a77736fc78c367216ce7` | ⚠️ Unaudited |
| PermissionManager | governance | project_anchor | own_supporting | 3 | ethereum | unit-393058 | 6 deployments: ethereum `0x344278aff344d6fb960705dc18a4912221608472`; ethereum `0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e`; polygon `0x344278aff344d6fb960705dc18a4912221608472`; polygon `0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e`; base `0x344278aff344d6fb960705dc18a4912221608472`; base `0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e` | ⚠️ Unaudited |
| PermissionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x344278aff344d6fb960705dc18a4912221608472` | ⚠️ Unaudited |
| Redemption | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393056 | 6 deployments: ethereum `0xa925c217e4c1c82ee721ebd496d3863d5c2d829a`; ethereum `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`; polygon `0xa925c217e4c1c82ee721ebd496d3863d5c2d829a`; polygon `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8`; base `0xa925c217e4c1c82ee721ebd496d3863d5c2d829a`; base `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3d01f224e9cac1bfc2563a8da4162d044e115f4d`; base `0x8d18e2cfc4c47a9ada7baa4e1efebf5ef366993e` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x64a3b7922a7f005d7c97547f4d8b40275daae947`; base `0x91e2ed93b8309e43e05a3c4328349fd6e431e5a6` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218`; base `0x8513fcdd66e148e4b5e4940be21f50c20d112731` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0`; ethereum `0x8513fcdd66e148e4b5e4940be21f50c20d112731` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | ethereum | unit-393055 | 2 deployments: ethereum `0x18b5c15e5196a38a162b1787875295b76e4313fb`; ethereum `0x869dbfc8c578d7af77e0214287bb49d351d3e4e1` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2850a72abe63d0c7258910564ed56fcfd355893` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 2 deployments: polygon `0x75cb1bd539ee2cb22031603a7b437f1f7077b05e`; polygon `0x7a16df1c2cd8b9eeb9ed9942c82c2e7c90bb93db` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | polygon | unit-393061 | `0x9de2b2dcdcf43540e47143f28484b6d15118f089` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x0e389c83bc1d16d86412476f6103027555c03265`; base `0xa260d72df8ff2696f3a8d0be46b7bc4d743be764` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 1 | base | unit-393093 | 2 deployments: base `0xd9aa2300e126869182dfb6ecf54984e4c687f36b`; base `0xdcf337be639c1269c19272ec35b2763b08687ea2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (115)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e87189512d1bdc3ca7795cab68a8311703b88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0336198d3c1ff92d6571f52765c8cac301b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d142fc45a0a5c0e5ec84923d3bb2b7b15ae7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b952b0db5c39ef801fedd1cbbef47d404689b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6d9192a0788e1b9fb6d8eab9b35dae25eefce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3690367edd22ede1fe827258352f900fbd05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465bc3e57a76905699df6772ee2571058a55f37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fbfc21b32026904c79780dde33690e6f384323e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57fa613b284f05421f78c8bd579555d5c0d7783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e31c39fc3ec028557c9354d27b5c09faeb5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7430d9d142d811f61b4a2d90d6f3a70a8500bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d05817649f3128b84efdceaac5b93c913d8b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d31ba0d0da6db9d8b6b07fc675a8adea69bc30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f59adebdf873c5c3b351dde1c196d1b0501579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba5d85d9f7460fcaf514ae2553296905cb91423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e873d80ed41ed0a3aaeeb6efbaa01839f2111b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d18e2cfc4c47a9ada7baa4e1efebf5ef366993e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x930f7f3a9a235d27ae082add5b7d4635e59eaf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f14cef360d7827f9d19f86fbf1278dfff34496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fdd455ed9adc66f2b6a496405911c0bbc9424e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa390a927d0ea7438cf8f3409791b540d56a6ddcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42baa160db5aea58a1800ac6a33a92488288767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c741ee4947eb339f6ff71751d925118d49a38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaead1f7c9b189816cb845363d142cfcf339084c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb114e0e00622ffe5800004a98c8e01cd2c0c393b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b952b0db5c39ef801fedd1cbbef47d404689b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21907b7e283dc86cccb72caca3fb07e813fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fa1a715e58f5c5cd1c8b1f542ecbfb4dc4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32416c9cbccbec8b0cc9d867aaa6942a0fdaf21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3690367edd22ede1fe827258352f900fbd05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d01f224e9cac1bfc2563a8da4162d044e115f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57fa613b284f05421f78c8bd579555d5c0d7783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64a3b7922a7f005d7c97547f4d8b40275daae947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7430d9d142d811f61b4a2d90d6f3a70a8500bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78cc4829c6c0238e5816c49519a7fd5f181d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78f59adebdf873c5c3b351dde1c196d1b0501579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ba5d85d9f7460fcaf514ae2553296905cb91423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fcd000d31afbae3bd1d1ccbd7d07033f5133347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8513fcdd66e148e4b5e4940be21f50c20d112731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d18e2cfc4c47a9ada7baa4e1efebf5ef366993e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91e2ed93b8309e43e05a3c4328349fd6e431e5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9949ecd318cb4c156180dc6a47b860bb07801341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1fdd455ed9adc66f2b6a496405911c0bbc9424e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa42baa160db5aea58a1800ac6a33a92488288767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3b02631b210c3e57de736fcbf3ffffcadc1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb20d38e8889a04c275509be973e664e27ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9d26a02bfb80e177af352c3defe68ef5ea924fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7bbab0637a6ce538e621114c4c7b3d116d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9fd77c0d8d79753c6879552d40312ea36b27579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cd239b73ff2ed0a10767f7b6d4880ac399a3896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21907b7e283dc86cccb72caca3fb07e813fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fa1a715e58f5c5cd1c8b1f542ecbfb4dc4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x480725c7e83ce6a0e0930bcc996977578925403e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ff96d377cb28b06fef7c7470307bb5096b5583c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ca17d8d97c4688017deb6fd0e453d3adfc5fab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64e31c39fc3ec028557c9354d27b5c09faeb5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f9f630f3810cb24ffe8390815712003d7c46263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fcd000d31afbae3bd1d1ccbd7d07033f5133347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x930f7f3a9a235d27ae082add5b7d4635e59eaf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98568f30f0721fb531457e5eac58381c4c75e7dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9949ecd318cb4c156180dc6a47b860bb07801341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d104a7584119d8bf4a7ca2bcf76dda5005ee23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2d05ef66458ce001b85cbc2ae5c347e0df5de0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa71e40746854bd811c5af2ac4875a0da761076ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafe71958b34aba419554db5dd7db27da0f41b2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3b02631b210c3e57de736fcbf3ffffcadc1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb20d38e8889a04c275509be973e664e27ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc44f58777056ee8d64da651f75d719cb276eec27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd88110bf8bac4f5315c340a841dd2898f9d8e8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb7004dd9705c36289110c1c906c051d5b7ab428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb2e0fb9b73a03f487f521a575a846ffca816361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9fd77c0d8d79753c6879552d40312ea36b27579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffb84fa0eafa40a2cfb5a160e4ca14c1f004ee79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0336198d3c1ff92d6571f52765c8cac301b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21907b7e283dc86cccb72caca3fb07e813fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f284a29054449eb59ffc7d28f5b7ab7f0d187ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa1a715e58f5c5cd1c8b1f542ecbfb4dc4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x308f38bca540e1a34fcfa185ae1ac54c254e2370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32416c9cbccbec8b0cc9d867aaa6942a0fdaf21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d01f224e9cac1bfc2563a8da4162d044e115f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57fa613b284f05421f78c8bd579555d5c0d7783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a3b7922a7f005d7c97547f4d8b40275daae947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7430d9d142d811f61b4a2d90d6f3a70a8500bbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78cc4829c6c0238e5816c49519a7fd5f181d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ba5d85d9f7460fcaf514ae2553296905cb91423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fcd000d31afbae3bd1d1ccbd7d07033f5133347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86a3c5e18cf42a59d137f8b37105354e7f53b9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e89372fe86ff7f549b065bd9599beae06bb6c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91e2ed93b8309e43e05a3c4328349fd6e431e5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930f7f3a9a235d27ae082add5b7d4635e59eaf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9949ecd318cb4c156180dc6a47b860bb07801341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa6b63461336b1a4c4ab2de2858f0f8aed5dc82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3b02631b210c3e57de736fcbf3ffffcadc1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb20d38e8889a04c275509be973e664e27ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc44f58777056ee8d64da651f75d719cb276eec27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9d26a02bfb80e177af352c3defe68ef5ea924fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3f5f1524e1a472b51374a3ff41b8936eb5b658e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb7004dd9705c36289110c1c906c051d5b7ab428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7bbab0637a6ce538e621114c4c7b3d116d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9fd77c0d8d79753c6879552d40312ea36b27579` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393040 | `0x344278aff344d6fb960705dc18a4912221608472` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393041 | `0x35dfec1813c43d82e6b87c682f560bbb8ea0c121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393042 | `0x3690367edd22ede1fe827258352f900fbd05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393043 | `0x3868d4e336d14d38031cf680329d31e4712e11cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393044 | `0x4f33acf823e6eeb697180d553ce0c710124c8d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393045 | `0x5677a4dc7484762ffccee13cba20b5c979def446` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393046 | `0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393047 | `0xa0769f7a8fc65e47de93797b4e21c073c117fc80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393048 | `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393049 | `0xe4880249745eac5f1ed9d8f7df844792d560e750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393050 | `0xef53e7d17822b641c6481837238a64a688709301` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | etherlink | unit-393051 | `0xfe20ebe3881491b2e158b9d10cb95bcfa652262d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-10-spiko-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-10-spiko-securityreview.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13880] 2023-10-spiko-securityreview.pdf — no match: Contracts explicitly listed in scope: PermissionManager, PermissionManaged, Token, Redemption, Oracle, ERC20Mock, ERC1363ReceiverMock, Masks. Audit date from cover page: November 23, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-10-spiko-securityreview.pdf | PermissionManager | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x344278aff344d6fb960705dc18a4912221608472` — deployed 2025-02-12 19:38:33+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x344278aff344d6fb960705dc18a4912221608472` — deployed 2024-04-19 18:04:35+03 — liveness: live (proxy_unit_reachable)<br>ERC1967Proxy (proxy) (alternative) `0x344278aff344d6fb960705dc18a4912221608472` — deployed 2024-04-19 16:36:58+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-10-spiko-securityreview.pdf | PermissionManaged | unmatched — not counted | — | listed in scope | no |
| 2023-10-spiko-securityreview.pdf | Token | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xa8de1f55aa0e381cb456e1dcc9ff781ea0079068` — deployed 2025-07-16 13:24:25+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xe4880249745eac5f1ed9d8f7df844792d560e750` — deployed 2025-02-12 19:40:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd879846cbe20751bde8a9342a3cca00a3e56ca47` — deployed 2026-02-26 14:12:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x99f70a0e1786402a6796c6b0aa997ef340a5c6da` — deployed 2025-07-16 13:19:16+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x970e2adc2fdf53aea6b5fa73ca6dc30eafedfe3d` — deployed 2025-07-16 13:18:40+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x18b5c15e5196a38a162b1787875295b76e4313fb` — deployed 2026-02-26 14:59:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xf695df6c0f3bb45918a7a82e83348fc59517734e` — deployed 2025-07-16 13:33:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xe4880249745eac5f1ed9d8f7df844792d560e750` — deployed 2024-04-19 16:38:14+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xf695df6c0f3bb45918a7a82e83348fc59517734e` — deployed 2025-07-16 13:24:41+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa0769f7a8fc65e47de93797b4e21c073c117fc80` — deployed 2025-02-12 19:39:39+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4f33acf823e6eeb697180d553ce0c710124c8d59` — deployed 2025-07-16 13:24:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa0769f7a8fc65e47de93797b4e21c073c117fc80` — deployed 2024-04-19 16:37:42+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xcbade7d9bdee88411cb6cbcbb29952b742036992` — deployed 2026-02-26 12:22:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd9aa2300e126869182dfb6ecf54984e4c687f36b` — deployed 2026-02-26 14:27:17+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4fe515c67eeeadb3282780325f09bb7c244fe774` — deployed 2026-02-26 15:16:56+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4f33acf823e6eeb697180d553ce0c710124c8d59` — deployed 2025-07-16 13:40:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xe4880249745eac5f1ed9d8f7df844792d560e750` — deployed 2024-04-19 18:06:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x2f6c0e5e06b43512706a9cdf66cd21f723fe0ec3` — deployed 2026-02-26 14:22:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x9de2b2dcdcf43540e47143f28484b6d15118f089` — deployed 2026-02-26 15:20:24+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x021289588cd81dc1ac87ea91e91607eef68303f5` — deployed 2024-10-25 13:13:03+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x903d5990119bc799423e9c25c56518ba7dd19474` — deployed 2025-07-16 13:18:58+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0990b149e915cb08e2143a5c6f669c907eddc8b0` — deployed 2026-02-26 14:30:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x272ea767712cc4839f4a27ee35eb73116158c8a2` — deployed 2026-02-26 15:11:36+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0bb754d8940e283d9ff6855ab5dafbc14165c059` — deployed 2026-02-26 12:22:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa0769f7a8fc65e47de93797b4e21c073c117fc80` — deployed 2024-04-19 18:05:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x3868d4e336d14d38031cf680329d31e4712e11cc` — deployed 2025-07-16 13:41:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xc273986a91e4bfc543610a5cb5860b7cfefb6cc0` — deployed 2026-02-26 14:52:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5` — deployed 2026-02-26 12:22:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-10-spiko-securityreview.pdf | Redemption | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` — deployed 2024-04-19 16:37:20+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` — deployed 2024-04-19 18:04:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8` — deployed 2025-02-12 19:38:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-10-spiko-securityreview.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2023-10-spiko-securityreview.pdf | ERC20Mock | unmatched — not counted | — | listed in scope | no |
| 2023-10-spiko-securityreview.pdf | ERC1363ReceiverMock | unmatched — not counted | — | listed in scope | no |
| 2023-10-spiko-securityreview.pdf | Masks | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74` | Token | token | $184,229,114.38 | Verified native implementation with $184,229,114.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x272ea767712cc4839f4a27ee35eb73116158c8a2` | Token | token | $70,039,983.74 | Verified native implementation with $70,039,983.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbf5fb9284c9cf2798d5f18a9702af620cd4351be` | Token | token | $46,021,782.06 | Verified native implementation with $46,021,782.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x021289588cd81dc1ac87ea91e91607eef68303f5` | Token | token | $28,070,208.77 | Verified native implementation with $28,070,208.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc32eca88b487365f9a6dff8346f7ef48048b5dda` | Token | token | $14,653,324.46 | Verified native implementation with $14,653,324.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5` | Token | token | $13,239,005.63 | Verified native implementation with $13,239,005.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0990b149e915cb08e2143a5c6f669c907eddc8b0` | Token | token | $2,535,987.12 | Verified native implementation with $2,535,987.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4fe515c67eeeadb3282780325f09bb7c244fe774` | Token | token | $1,090,391.63 | Verified native implementation with $1,090,391.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0bb754d8940e283d9ff6855ab5dafbc14165c059` | Token | token | $1,000,062.97 | Verified native implementation with $1,000,062.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1e593293a0fd8b26104a6ce6a783a59cf6d70708` | Token | token | $116,635.64 | Verified native implementation with $116,635.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60fcb8511db2a7b823cd0f3c6b08da456e18bff1` | Token | token | $1,190.88 | Verified native implementation with $1,190.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ed5a75eeed1934ea060186e35187eaa73331366` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x465bc3e57a76905699df6772ee2571058a55f37a` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd6ad96f51e8d732811587468d0e2f9efa55f605` | MultiATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x344278aff344d6fb960705dc18a4912221608472` | PermissionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa925c217e4c1c82ee721ebd496d3863d5c2d829a` | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18b5c15e5196a38a162b1787875295b76e4313fb` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9de2b2dcdcf43540e47143f28484b6d15118f089` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9aa2300e126869182dfb6ecf54984e4c687f36b` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 121 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13880] 2023-10-spiko-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
