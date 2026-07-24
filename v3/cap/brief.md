# Agentic Audit Brief: cap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 10 (4 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: cap (`cap`)
- Website: [https://cap.app/](https://cap.app/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 324 unique implementations (364 raw deployments)
- Coverage basis: 2/8 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $305,971,773.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 4 infra, 4 supporting, 3 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: infra (4), supporting (4), core (3)
- Contract kinds: contract (9), unclassified (2)
- Detected standards: erc1967proxy (4), accesscontrol (1), chainlinkaggregator (1), erc165 (1)
- Frameworks: openzeppelin (7), chainlink (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CapSymbioticVaultFactory (`0x0b92300c8494833e504ad7d36a301ea80dbbae2e`, chain 1)
- CapTokenAdapter (`0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf`, chain 1)
- ERC1967Proxy (`0x0036c7b9b62c53f47c804a5643f0c09f864bef0b`, chain 1)
- ERC1967Proxy (`0x08a728cf4e6b39f4afa059c6ee376103722953ea`, chain 1)
- ERC1967Proxy (`0x09a3976d8d63728d20dcdfee1e531c206ba91225`, chain 1)
- TimelockController (`0xd8236031d8279d82e615af2bfab5fc0127a329ab`, chain 1)
- Token (`0x99991c6aabba5a096f24f250b73580f5179b9999`, chain 1)
- Yearn V3 Vault (`0x3ed6aa32c930253fc990de58ff882b9186cd0072`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (8 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/8 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 303 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 65
- Confirmed-live implementations: 8 of 324 unique; 316 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/140
- Verified + Unaudited implementations: 138
- Verified by bytecode match: 0
- Unverified implementations: 184
- Unique implementations: 324
- Raw deployments: 364
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 12.5% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Octane | Tier 2 | 1 | 0.7% | 2026-03 |
| Recon | Tier 2 | 1 | 0.7% | 2025-07 |
| Sherlock | Tier 1 | 1 | 0.7% | 2025-09 |
| Spearbit | Tier 1 | 1 | 0.7% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CapTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400507 | `0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf` | ✅ Audited |
| Token | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400522 | `0x99991c6aabba5a096f24f250b73580f5179b9999` | ✅ Audited |

### ⚠️ Verified + Unaudited (138)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControl | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400517 | `0x7731129a10d51e18cde607c5c115f26503d2c683` | ⚠️ Unaudited |
| CapNotify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76bc8fa25af11eb693d21dfd92a7d7f70261611` | ⚠️ Unaudited |
| CapSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307c0c1f1a8b3a7153842922dff239c66f308238` | ⚠️ Unaudited |
| CapSymbioticVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400499 | `0x0b92300c8494833e504ad7d36a301ea80dbbae2e` | ⚠️ Unaudited |
| CapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031b51bed47543aa87d2f74ab3b1fcd606c99b24` | ⚠️ Unaudited |
| CapToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400523 | `0xcccc62962d17b8914c62d74ffb843d73b2a3cccc` | ⚠️ Unaudited |
| CCAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4987225285a27c182130fb9bf50a979fbe85ebbb` | ⚠️ Unaudited |
| CoverageLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1942a91d84b670d21d424f30fa583f45448e621` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8868614d7e945ef0b30988b11b63103976edfd6d` | ⚠️ Unaudited |
| DebtToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400524 | `0xfa8c6d0b95d9191b5a1d51c868da2bdfd6c04ff9` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386c93f9f0a8a681c5a3e826063106a2474958ab` | ⚠️ Unaudited |
| Delegation | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400521 | `0xf3e3eae671000612ce3fd15e1019154c1a4d693f` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400525 | `0x0036c7b9b62c53f47c804a5643f0c09f864bef0b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x019b65850e3ad55939169845551f3d9c512e52cd`; ethereum `0xbd12e50bfaa25735d074dbfdcf73208b9ccd2e43` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04b57729e21a1a8c8b787013d1dbd81e4001163c`; ethereum `0x769a5345712d78f41f5d36d4af2a604f735bfd5b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400519 | `0x08a728cf4e6b39f4afa059c6ee376103722953ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400520 | `0x09a3976d8d63728d20dcdfee1e531c206ba91225` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f60670907d9690e05ee9f4be336aa9967c49832`; ethereum `0x3c9c31ba7ed1b790313ac3c99bd8d593d5690a9f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1036c242cce7a6632e2f2649f293eaa881835772`; ethereum `0x48c442cb3cc8503690d39582b0e9f36872126749` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f8b29f3af949c71f7780d7f5159e199a9c355d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32fd97a5196a6d98656a7f2f191ae4732ad13170`; ethereum `0xc162e91576246f90ff7e5a3b3c9a0daa05bf1bd5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x434558cb1ebe9950e8a66f1ef8a15a473dce7d8c`; ethereum `0x7925c2f66fd1ae8663d56d70cdcc2508b1d25233` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x44f7e678e8412dbef1fd930f60af2bd125095962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x69a22f0fc7b398e637bf830b862c75dd854b2bbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbde7c8db7a546526dd99d23796baa24c80c5036b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b2c406f0dbf7624a32971277da7b4c43a7a942b`; ethereum `0xa219348b7c00118fe143c484d79248bc74fdd3be` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14449cc3185dec0421c3cb37074215f1aacb97f9` | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a2b84901410a81c6421104a12d6555ca286021` | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c`; ethereum `0xe2072fb13ff92d04e44cc55574816dba3e539e1d` | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x767b8971ca1dc117f624d3ee3053d2881d241db9`; ethereum `0xac40eb70c9146d05d56c535cab6749db35b8729c` | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105eac28b82b872a8b10218bd237a4c097022021` | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2c697fcce450a65092eb50ad6f24bd478818de` | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d` | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f67fd74cff274ef2942223c0f3166b856410add` | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e` | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24edd61cda334bff871a80deb135073a7d7a9187` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d4f3199a80b848f3d094745f3bbd4224892654e`; ethereum `0x8b4736f5ead8ed579ecf65a13f9c1e8b44dedf20` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f4e639745cfb234b6176e96c6afd83269baf52e`; ethereum `0x82721e2c5ef2df1796b09728376361892b155594` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf2db7b3455077fb177215d45d62d441df3c17bf3`; ethereum `0xffe5f5e9e18b88fbdd7e28d4a583a111c874fb47` | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe13e2bbab029bfb324f49048ced0e95ea30ae049`; ethereum `0xe257da3c4977b43acf5fdd7704fc04acc930f2ce` | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400513 | 2 deployments: ethereum `0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb`; ethereum `0x9a5a3c3ed0361505cc1d4e824b3854de5724434a` | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c89968338b75551243c99b452c84a01888282fd` | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a855867ae59d6292d5675b654c776147039ba5` | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d295409d5a20b2c851df18054d32a442791346` | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ee5ce6556599e16c226579ba14f94926d8cb86d` | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f9a127fba172c41d8c29e49b3c1326d2eb577e` | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ed6a4ac085620ee943c0b15525c4428d23e4db` | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4` | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57`; ethereum `0xa0f2ef6cec437a4e5f6127d6c51e1b0d3a746911` | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f14a50ba904a28cf6088e71b6a15561074398d7`; ethereum `0x7d05cd5159f38694a7d4dbf58957146a63c8ad5a` | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x03138081aed44e2e0eb10361ee41d84edd22a05f`; ethereum `0x15d3fce22a60e28b15d41fd68fe013fcc8692216` | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573bb572049ff50156e94823bb99920d406e96f8` | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a` | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x636eca78f6b46a69ab233ef513c1fb4703e32a7b`; ethereum `0xa9e8db7f2eadca17fa67bcf32e6464bc0840d792` | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06` | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95`; ethereum `0xb6c84a74333bb8bc7cd7024be1bcbdf888232752` | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc328cdf06cbc77134b84e1f6ed452774947146b6`; ethereum `0xec34d1cf550dda751ff20cd4ecc7ff9219551b04` | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40`; ethereum `0xb90018d7448d44b5dfaab87a0cfe43696e0dc9b2` | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x197225b3b017eb9b72ac356d6b3c267d0c04c57c` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae02d5be17a23c8fdd0676c6a5f9143d91237979` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85c4f855bc0609d2584405819edaea3adabfe97d` | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7699e81acf22456fa83696573738dfa25f1d6be`; ethereum `0xc3fce3819df1734d004f74ead84263b7d900ea59` | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60224122830fd6cf5119f548477a190310d2c94` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3587a73aa02519335a8a6053a97657bece0bc2cc`; ethereum `0xbf3ba2b090188b40ef83145be0e9f30c6ca63689` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x24c8964338deb5204b096039147b8e8c3aea42cc`; ethereum `0x663b50c9da9bd586f855af13e91ef2f0954c9761` | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f145fd2cc3ed0806cae3eba73472e5991f5a721` | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a` | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6dd1e6799b67434601fd0c65cf13d4df9278cd52`; ethereum `0xfb17bbc05f0ee8b0a642795ed8f086e17543d7fc` | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7` | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29` | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b` | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a6fd5820f797e517297feff90aaecd8e2dc77b3`; ethereum `0x96572d32d699ce463fdf36610273cc76b7d83f9b` | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519`; ethereum `0xa3a75fd9f19bd334605f59527552dbc6c7f6fd88` | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cec96a68cb9a979621b104f3c94884be1a66da0` | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x80b0735616b27b647233d3ab67078c95ba5a2c93`; ethereum `0xe18aad6733d1db21e19cb83b697082d3d4ee5170` | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b`; ethereum `0xbe4d4d2fdde7408bd00b9912705de7bdc3f9bdeb` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243507c8c114618d7c8ad94b51118db7b4e32ece` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2`; ethereum `0x0911af228c32458a560853605ef78b129c7df099` | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8` | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x107dd3391a6357248f2093698014e7c6130779ee`; ethereum `0x29d2fec890b037b2d34f061f9a50f76f85ddbcae` | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2619976127c90de2eea94b368ac5156ef16b7f3f` | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2240ae461b34cc56d654ba5fa5830a243ca54840`; ethereum `0xa42a6568f1df29ef95dddf440c41e48d4cfb310e` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e202a7e713d00804f9ce397260362bf5e0eaaa8` | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019697e7832dba533c320c0e2a36faa2da958de9` | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e`; ethereum `0xb5b408a269217f414da4bb01225f7b57664eaf6f` | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa7b0247d2da6b11ff2740491cb433a1520d5da98`; ethereum `0xff3dfeb3d651359d6e6404e476b2f955a5a3393d` | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c698e69d420aea702e10acc01850ef57978f64` | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d01242aadc0425209544520093e74fd151daeb9` | ⚠️ Unaudited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71` | ⚠️ Unaudited |
| FeeAuction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400516 | `0xa1a20abdc873cf291c22ce3c8968ec06277324d0` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ffc56495372e698b9642d638a7702e0f04031a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90de8357ee4f5c145c159f8e3822ba9b17be4f1` | ⚠️ Unaudited |
| Lender | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400518 | `0x15622c3dbbc5614e6dfa9446603c1779647f01fc` | ⚠️ Unaudited |
| LimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e44d0c6792a7eccfaf1a759202ff80f7d3dfbef` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400505 | `0x8e3386b2f6084eb1b0988070c3d826995bd175c0` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99c0ae66dd5131ae155f25f42aceb1d1a00ff6f` | ⚠️ Unaudited |
| Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400526 | `0xcd7f45566bc0e7303fb92a93969bb4d3f6e662bb` | ⚠️ Unaudited |
| Safe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-400514 (2 proxies) | 2 deployments: ethereum `0x80a216738e4e49b262deae6beb6578bdf164c2ea`; ethereum `0xb8fc49402df3ee4f8587268fb89fda4d621a8793` | ⚠️ Unaudited |
| SoulboundERC1155Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c443f0282d004b2cd7946c4b6b3b56dc839555` | ⚠️ Unaudited |
| Stabledrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eca13fc018206d0bfbc847ee882cfd03b6bb159` | ⚠️ Unaudited |
| StakedCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c08836d2873d1ffc958e3c57f3e08852b42a3d` | ⚠️ Unaudited |
| StakedCap | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400515 | `0x88887be419578051ff9f4eb6c858a951921d8888` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed902f3788441d8db845a1ec2a8c8f2b54fd578` | ⚠️ Unaudited |
| SymbioticNetwork | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400512 | `0x98e52ea7578f2088c152e81b17a9a459bf089f2a` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TerminatedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87729bc3824f4d4b36abfc034680e77d8c51ba89` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc088c17d6928420a9f08b242d48b050f2e4fc8` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400508 | `0xd8236031d8279d82e615af2bfab5fc0127a329ab` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0d399e8a11e1c6df00e1fb5698936b5614e9259` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18c9b9500d8006574329ff95deb47f9576011a9f`; ethereum `0x84987d91c2f0ed733eb0493862740661e2f2d233` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6`; ethereum `0x4cdbabc43fb0671eef5ce9586ceb311dbdda3c1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x354d1e7d9cf90841dfa252547881db96af2aae3e`; ethereum `0x81151ceeb6f4918b49a5adf4157038642d63173c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x61376924babe5a0fa982fff2c8be8013be3d6bb6`; ethereum `0xc9cf6ce7aec6e0d8432bdb4ab39a56e3b09835fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6682c5b9b47ec0d18beb2088779f14535fc7bf47`; ethereum `0x67dc7fb6fab3acb6768e18da28116ed5c95cb9df` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| ValidationHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4464a0ae10bd08ab8b758d7ccad124cc21bc6c64` | ⚠️ Unaudited |
| VaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad237e4441ca07691c2deec716061881eed8eed` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400502 | `0x3ed6aa32c930253fc990de58ff882b9186cd0072` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (184)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ef0593aefbc9d6fa28fd386a8be0e5eb34f70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0627c789b4df840415dc9d2a13b9c4999941ab49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073966279048fefdaec3928d3e719cda55658d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d56face37ffe66bf573d963af5d28027a0753ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d9b42a2a73ec528759701d0b70ccf974a327ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db4889e9e786c4d5191ba92852742106be19a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1054d0fec6139b4cd6f7703e37e109b1a069a3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11742fc74a2f97585df64efa1c3f3a02e9bc2cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1388b2dc1fe408741e48145f87fd79f01bca7e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168f23cc84e59ad4ff22eb82d4babfffe8689e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2460042277fa16d2df38af96c8b93f4e6b12d006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c49dabacb2871caf4037f61aca05e07452048e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b82a7fee03281dc63f02570560d1f4690b7520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbf2dce8dd70306929e79fc22811103ff488661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cf0c02b7399d6ae7094a4989ea43a4c3b46c932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dda73fd845a264067848334701611a8ca384f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f6878229644699fdbb164ef2c7ff2746fd08c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3519b2f175d22a4dfa0595c291fefe0945f0656d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3752459760f2fba01c7b761c98a915f0ff05bcfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b34c551c12e356ba9290d002e5594c99039e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399f5c0756dc418beabec0d8627eb16825f0cde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3a683addd54d0bc0dcc7fc46fd0a66966c53b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c327a0dae1470248fe96da5b33c1debd1c1fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da463d4a627191f7b66f799eb900a729cc05bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f24bf4922c872877bd89789fee5f306147b9a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd49f2146fe0e10c4ae7e3fe04b3d5126385ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c0e0ef7c2f35de073f4d6f9c0e4483429c3d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46f1b5f29a2dc1a730508a1b41a8b5b93e316eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48acab99130b3f319f2b272619e83985a3f2c4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4914b59ab7f030d605c336cdc3f7470a2e16a53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a784cb1e0b4c07aef60f98c561f04b4414f44a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd1add64860270f25cf29374a3b1155d526c5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5016c48f36f7e4c83b5c4d4b7227bfef35ae7688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5155d4e35cde1b85c0b789f0ebc860d21818eb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51da1ec8dc52f146e644f5f759d399038ccf7ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5232974bcd5a3ffe41478736bb8b0e760130c800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349937179f7b7e499fa58c797a27d000156a489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e4f7c85272dfac2caa82804cbdadce25079c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e57c2acba2f9919ff545aa595ff691b90d36a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5708d924fc996edee46962cdb6815f90639974e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e1e8e5576c5cfbbb0000ef3f1af24e3a452074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589e7ea76abc1ff9b809bcaace3d32328eb993f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c47b527d98f057680156d61c1b997f14b9b4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc480aecad8f52ebd25b9b427737e401e47e8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5fbcd669f2aa9d65dbd7531bcba75b4b63b5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9a7291835e1c2fb824e31747eb24ed0f58382f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e21f6530f656a38cae4f55500944753f662d184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3b9f61585aa4648682b3f06d9efbeedba21105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed9f8095e8c559aa07ae0e7dc748894b825f80e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee8c9299d0c9f99d1d20084a93415ab20829e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f138218ad5f40804c1e3f18266102493df872ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61fb479d148e24602a1833876a67fb140e5a2156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6205dcc41329fb5de3fb01e272ed49f8771cc715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624504e11049edd5f4754903e75d096afcee46e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64567e98cd31b31fef5c4a11f1a40615b6016f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64775db2ac856843e1f900f6249687d6d803b22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65721910daea0f28cbaa99964f952c68cd9bbfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6681eb184c876d74ea3ddfae0ecee0c9c0f84bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6747730797d19fb89e757f903d9a6a438e2d2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f6838e58859d612e4ddf04da396d6dabb66dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68c4f03b8640c0393a832987147bae7a0b27aaa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ee2ca4962c03f1c695c6c0cde17498cc245f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x692f045efac629a4d3c54de4d8ddb1d225b5a976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6947a9417650c39581a20f5269e17765c73b9f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ebeb382b0e82127cc77e7b2679beb0e0be7184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4fb20677bd39fc3241824da65b7ca49cc55a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0a3cb3797691b5a702155f4fe507fd58b5d023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce9000fea07d162cabd8f2f6e66cd6a78e41854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e64d191a4cadc0c8675021bb5ff4c7984cf5a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701e83bd1b84d02c10587f0de9dfad5a22419df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7391452a90dda26892bc52fef3ef42f92f19fc61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d96a12224c79fde8a2d2b9e1cb0fb83e0a38d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7858d18569e8e232415b07b82b8e1ec896ade1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2d738042376bf48bebc49932869eac3d7e38b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c6f7f61a55fc7a1337abd45733ad9c1c68076d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8422b47b8dff88254acbf40ef42db383948f63a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f86dae1851dc1e962529910b2732244c60afa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b23116570a29dff563c932cabcac5d3c28f967b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9140fe6650e56a0a07e86455d745f8f7843b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d63804ad0579471c85394f47aa4585952e946b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7d54b5c27ab46c79d7e41a392e965213ca3c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9269127f104c040ab526575573c23f3e67401ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931b7cc89d53844ef2f5f70615eee6d4ed5ba19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95364ccd4fde3b3568af479d4df394be91b22759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983aeaaa0d0426839158435c43725ea7f45d4137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0324dcff57d33eba3ce2e9bec337085335ff26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aced511dbaddeeb114c2144fe9a03d79559560b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b5dd5336a9e174c525ac41e2d14f8be0b1b86ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c303927dc4939692cc60641d6ceaba9185d687a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c3a8aa28e0388e89302390695478c8d00a7dbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c850771b321c6e7aa909413b5cc98c86ccba96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd5c295e14a3a86a44ed836a4f2f0b75dbfe5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e256b38c31a3fd8f8fec3a509c36a596bfa36c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e37dbf40fe5fe9320e45fe6b95b000aa05459a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed559c2ad1562ae8e919691a84a3320f547b248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa275809f06944c00e308fe764b0559ed84481042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa569e68b5d110f2a255482c2997dfdbe1b2ab912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62571ebdffabc3051a2e5b9e1f57b23d830c8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f809091efbf1bc98875b9a169d36f006bd56cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76645e15c267b876999bf7689e0b2c1ee29bfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa798aaaa41ebb8ea7e519924bbbf7c32c135e07c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82f6f9e67e127621f3e5f3953beef926b4b5ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa843e3b752a100274b8245ec1a2729c27a07c12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a94da411425634e3ed6c331a32ab4fd774aa43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c23933d655c6f241ffda39af046ce2ec4475e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa908a8a06b08a14409191ce8d23ac744b2b5b3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90e0136cb598e1cef28dc54932c17033b54538c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab065dd40bce0734d1de36afdf64612db9b2b83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7f623fb2f6fea6601d4350fa0e2290663c28fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9901d26c8b3f2381558bd30b3e2c7963ba471a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf2084df1ff172b1d39a94680c9b8bd42b55e20c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61e527d88831f6cb7a4c2d43be9805438ecc44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81131b6368b3f0a83af09db4e39ac23da96c2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb98274e8b5683975c3778e65640ec0036d763162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb993d06d44b8df77b162b2b5e2e2bb4fe9243791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9bd795bb71012c0f3cd1d9c9a4c686f2d3524a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1016eb82e39ecf4deb526b65f08e7aaa2aea98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbafa68719ebf4a174971032588f4aeedf5a13b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf121624c3b85c929ac83872bf6c86b0976a55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd7c686c1c62e71c8bfd18fbd8005c70c4f866a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe92962ec21b99870a583e232abcfdd64cdb78c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf664de63168720b57f1c93581512e9580e3e6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe4d64e61a3a02c4781a65fa343007de7ea9f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03b2a75620277927b4f0fc2f56cde0d0065e42b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2e88eb6752a95e3b10a54c74608088020387228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3346631e0a9720582fb9cabdbea22bc2f57741b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6504c2c918c8c17ee2f1e01aefa43b1f27849ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a09cb2692724752352899f73f81ebe5ef06bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96d5ec90b07fe2a96253990dc7ef2df22fde0b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca727511c9d542aab9ef406d24e5bbbe4567c22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb62f468b5724b7748293fc78e42c3da840a8338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce18a2bf89fa3c56af5bde8a41eff967a6d63d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce2177833e400f91bb308308f7d9933e48982b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b738a4c55366463f9303199e64423218d5a4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0caa136abe412557e258c09f5122029d03c34f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd212fa2cf56197dd79880681807ce4d95c9ffa2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd260596f85c6d91ccd40f7076eeb62acb3b2ad53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd308867ed5a2c41dc778f4cf34593764d09860e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd44dba5b9c415ab7387b46f05b4538205dacc01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd512aeab1392d5c8ff8f0accae2cd3860f1904d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd583eecaa7bbde0d8ad3c84b8dac4d9612f823b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6156f8177aa1a6e0c5278ce437a9bdb32f203ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6ea51794495cf339b3aa15ebda731ef04b18d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70c5728bdf8a513a5f527bf04746353a0fb1dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd71f47e772036b206885248032f7dbbbe6078676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb34c0849de02abc719740e147e6df4ffe4e8163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb549616407f8a30799f77f12b6b85aec936782d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb773a542ec85a735f261738803884b08a43a6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb924a25bff353f98b066f692c38c3cfacb3a601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf76695e63430a90232ffe64f19874a97355fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc22c2807a5af1c08ed9b5b27dd1d6da26f68bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc3fe501c1842953b85f5208da69dc84ff71a311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddaf4e33ad99a9ec7bb453db0869e064a47255b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde3b77040cee3387c0ca661d1b619c3aca203b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-400511 | `0xdf48eb321b38bc19e7f5b2cca8242cc6b9a6ecd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfbfae1695e6cb504db521db072f2331272c0e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d290eba865a6ca14c1c9bfd9cd839fa8d54543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20fbe3467436bd6dd7096adf0770a0870bae567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe229bd175907a948ce8d1a1579fd4d81c683a867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe236394799650b622e04c587d22b0349d703714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23680f14214c4c9238411d2a85e74a9297ecef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe327a025eec3af8c4ffd4cdb984417f1df9ba5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35d17850ce59488ae47ee5d66baa06abd100aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ae88743c3834d0c492eabc47384c84bcadc6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5009c352b0eba16ccd990084b81e03e0c6d05f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c1a89887c572c3c345efe2bbbe797ac5b22461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe65c3eccd18879e103dbc96d854e376ced4cc7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7107af1636834b9c0a5bc84d9d7c83955f272b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc6287d3d41b322af600317628d7e226dd3add4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeef31c7d9f2e82e8a497b140cc60cc082be4b94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf030a9ad2707c6c628f58372fa3b355264417f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04aabe8bed0228c6ebbf08081e5bf7ed51b4408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19a30ddb9eed93407d5a13109d633395296b4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2448dc04b1d3f1767d6f7c03da8a3933bddd697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2d31a29c7bcc992a62d297489dbbfff5f39be15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4cd6c31c396753714d3618d82a01709b27356d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79e8e7ba2ddb5d0a7d98b1f57fcb8a50436e9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb39e573b033ecbd8f795369bdab11f0e210992f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd4213436c44d8f55450dbacb09c5015744623b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc606945b2fe1eb5bae11a1206b50df6ba4ba6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdeb31951781effbd2a0c5eb3f1da4da5c1b29ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2e276ec427cea3ee16f34cd1f617df62b798a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe44b9f773faa44e8a50eedc25f7dbe38a432eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffdb8facca22a95bc1baebadd3977a1945d5add6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 221
- Live contracts: 0
- Unknown liveness contracts: 221
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=221

Showing first 200 of 221 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x04ef0593aefbc9d6fa28fd386a8be0e5eb34f70b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x0627c789b4df840415dc9d2a13b9c4999941ab49` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x073966279048fefdaec3928d3e719cda55658d10` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x0911af228c32458a560853605ef78b129c7df099` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x0d56face37ffe66bf573d963af5d28027a0753ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x0d9b42a2a73ec528759701d0b70ccf974a327ebb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x0db4889e9e786c4d5191ba92852742106be19a68` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x1054d0fec6139b4cd6f7703e37e109b1a069a3df` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x11742fc74a2f97585df64efa1c3f3a02e9bc2cdc` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x1388b2dc1fe408741e48145f87fd79f01bca7e16` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x15d3fce22a60e28b15d41fd68fe013fcc8692216` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x168f23cc84e59ad4ff22eb82d4babfffe8689e65` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x2460042277fa16d2df38af96c8b93f4e6b12d006` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x24c49dabacb2871caf4037f61aca05e07452048e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x28b82a7fee03281dc63f02570560d1f4690b7520` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x29d2fec890b037b2d34f061f9a50f76f85ddbcae` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x2bbf2dce8dd70306929e79fc22811103ff488661` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x2cf0c02b7399d6ae7094a4989ea43a4c3b46c932` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x2dda73fd845a264067848334701611a8ca384f17` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x34f6878229644699fdbb164ef2c7ff2746fd08c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x3519b2f175d22a4dfa0595c291fefe0945f0656d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x3752459760f2fba01c7b761c98a915f0ff05bcfc` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x37b34c551c12e356ba9290d002e5594c99039e75` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x399f5c0756dc418beabec0d8627eb16825f0cde5` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x3b3a683addd54d0bc0dcc7fc46fd0a66966c53b3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x3c327a0dae1470248fe96da5b33c1debd1c1fad2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x3c9c31ba7ed1b790313ac3c99bd8d593d5690a9f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x3da463d4a627191f7b66f799eb900a729cc05bbf` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x3f24bf4922c872877bd89789fee5f306147b9a29` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x3fd49f2146fe0e10c4ae7e3fe04b3d5126385ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x42c0e0ef7c2f35de073f4d6f9c0e4483429c3d31` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x46f1b5f29a2dc1a730508a1b41a8b5b93e316eb2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x48acab99130b3f319f2b272619e83985a3f2c4c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x48c442cb3cc8503690d39582b0e9f36872126749` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x4914b59ab7f030d605c336cdc3f7470a2e16a53b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x4a784cb1e0b4c07aef60f98c561f04b4414f44a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x4cd1add64860270f25cf29374a3b1155d526c5b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x4cdbabc43fb0671eef5ce9586ceb311dbdda3c1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5016c48f36f7e4c83b5c4d4b7227bfef35ae7688` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5155d4e35cde1b85c0b789f0ebc860d21818eb52` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x51da1ec8dc52f146e644f5f759d399038ccf7ab4` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5232974bcd5a3ffe41478736bb8b0e760130c800` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5349937179f7b7e499fa58c797a27d000156a489` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x53e4f7c85272dfac2caa82804cbdadce25079c81` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x53e57c2acba2f9919ff545aa595ff691b90d36a8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5708d924fc996edee46962cdb6815f90639974e1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x57e1e8e5576c5cfbbb0000ef3f1af24e3a452074` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x589e7ea76abc1ff9b809bcaace3d32328eb993f6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5c47b527d98f057680156d61c1b997f14b9b4f82` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5cc480aecad8f52ebd25b9b427737e401e47e8b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5d5fbcd669f2aa9d65dbd7531bcba75b4b63b5ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5d9a7291835e1c2fb824e31747eb24ed0f58382f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5e21f6530f656a38cae4f55500944753f662d184` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5e3b9f61585aa4648682b3f06d9efbeedba21105` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5ed9f8095e8c559aa07ae0e7dc748894b825f80e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x5ee8c9299d0c9f99d1d20084a93415ab20829e04` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x5f138218ad5f40804c1e3f18266102493df872ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x61fb479d148e24602a1833876a67fb140e5a2156` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6205dcc41329fb5de3fb01e272ed49f8771cc715` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x624504e11049edd5f4754903e75d096afcee46e3` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x64567e98cd31b31fef5c4a11f1a40615b6016f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x64775db2ac856843e1f900f6249687d6d803b22d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x65721910daea0f28cbaa99964f952c68cd9bbfef` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x663b50c9da9bd586f855af13e91ef2f0954c9761` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x6681eb184c876d74ea3ddfae0ecee0c9c0f84bc1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6747730797d19fb89e757f903d9a6a438e2d2078` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x67dc7fb6fab3acb6768e18da28116ed5c95cb9df` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x67f6838e58859d612e4ddf04da396d6dabb66dc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x68c4f03b8640c0393a832987147bae7a0b27aaa7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x68ee2ca4962c03f1c695c6c0cde17498cc245f84` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x692f045efac629a4d3c54de4d8ddb1d225b5a976` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x6947a9417650c39581a20f5269e17765c73b9f62` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x69ebeb382b0e82127cc77e7b2679beb0e0be7184` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6a4fb20677bd39fc3241824da65b7ca49cc55a48` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6c0a3cb3797691b5a702155f4fe507fd58b5d023` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6ce9000fea07d162cabd8f2f6e66cd6a78e41854` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x6e64d191a4cadc0c8675021bb5ff4c7984cf5a4e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x701e83bd1b84d02c10587f0de9dfad5a22419df7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x7391452a90dda26892bc52fef3ef42f92f19fc61` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x74d96a12224c79fde8a2d2b9e1cb0fb83e0a38d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x769a5345712d78f41f5d36d4af2a604f735bfd5b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x7858d18569e8e232415b07b82b8e1ec896ade1c8` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x7925c2f66fd1ae8663d56d70cdcc2508b1d25233` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x7d05cd5159f38694a7d4dbf58957146a63c8ad5a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x7e2d738042376bf48bebc49932869eac3d7e38b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x81151ceeb6f4918b49a5adf4157038642d63173c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x82721e2c5ef2df1796b09728376361892b155594` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x83c6f7f61a55fc7a1337abd45733ad9c1c68076d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x8422b47b8dff88254acbf40ef42db383948f63a9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x84987d91c2f0ed733eb0493862740661e2f2d233` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x86f86dae1851dc1e962529910b2732244c60afa9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x8b23116570a29dff563c932cabcac5d3c28f967b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x8b4736f5ead8ed579ecf65a13f9c1e8b44dedf20` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x8c9140fe6650e56a0a07e86455d745f8f7843b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x8d63804ad0579471c85394f47aa4585952e946b3` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x8f7d54b5c27ab46c79d7e41a392e965213ca3c64` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9269127f104c040ab526575573c23f3e67401ad9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x931b7cc89d53844ef2f5f70615eee6d4ed5ba19f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x95364ccd4fde3b3568af479d4df394be91b22759` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x96572d32d699ce463fdf36610273cc76b7d83f9b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x983aeaaa0d0426839158435c43725ea7f45d4137` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9a0324dcff57d33eba3ce2e9bec337085335ff26` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9aced511dbaddeeb114c2144fe9a03d79559560b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9b5dd5336a9e174c525ac41e2d14f8be0b1b86ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x9c303927dc4939692cc60641d6ceaba9185d687a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x9c3a8aa28e0388e89302390695478c8d00a7dbbb` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9c850771b321c6e7aa909413b5cc98c86ccba96f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9cd5c295e14a3a86a44ed836a4f2f0b75dbfe5bd` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0x9e256b38c31a3fd8f8fec3a509c36a596bfa36c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x9e37dbf40fe5fe9320e45fe6b95b000aa05459a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0x9ed559c2ad1562ae8e919691a84a3320f547b248` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa0f2ef6cec437a4e5f6127d6c51e1b0d3a746911` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa219348b7c00118fe143c484d79248bc74fdd3be` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa275809f06944c00e308fe764b0559ed84481042` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa3a75fd9f19bd334605f59527552dbc6c7f6fd88` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa42a6568f1df29ef95dddf440c41e48d4cfb310e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa569e68b5d110f2a255482c2997dfdbe1b2ab912` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa62571ebdffabc3051a2e5b9e1f57b23d830c8fd` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xa6f809091efbf1bc98875b9a169d36f006bd56cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa76645e15c267b876999bf7689e0b2c1ee29bfe6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xa798aaaa41ebb8ea7e519924bbbf7c32c135e07c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa82f6f9e67e127621f3e5f3953beef926b4b5ba9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xa843e3b752a100274b8245ec1a2729c27a07c12a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xa8a94da411425634e3ed6c331a32ab4fd774aa43` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa8c23933d655c6f241ffda39af046ce2ec4475e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xa908a8a06b08a14409191ce8d23ac744b2b5b3f5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa90e0136cb598e1cef28dc54932c17033b54538c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xa9e8db7f2eadca17fa67bcf32e6464bc0840d792` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xab065dd40bce0734d1de36afdf64612db9b2b83b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xab7f623fb2f6fea6601d4350fa0e2290663c28fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xac40eb70c9146d05d56c535cab6749db35b8729c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xac9901d26c8b3f2381558bd30b3e2c7963ba471a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xaf2084df1ff172b1d39a94680c9b8bd42b55e20c` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xb5b408a269217f414da4bb01225f7b57664eaf6f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xb61e527d88831f6cb7a4c2d43be9805438ecc44f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xb6c84a74333bb8bc7cd7024be1bcbdf888232752` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xb81131b6368b3f0a83af09db4e39ac23da96c2db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xb90018d7448d44b5dfaab87a0cfe43696e0dc9b2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xb98274e8b5683975c3778e65640ec0036d763162` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xb993d06d44b8df77b162b2b5e2e2bb4fe9243791` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xb9bd795bb71012c0f3cd1d9c9a4c686f2d3524a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xba1016eb82e39ecf4deb526b65f08e7aaa2aea98` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbbafa68719ebf4a174971032588f4aeedf5a13b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbbf121624c3b85c929ac83872bf6c86b0976a55e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbd12e50bfaa25735d074dbfdcf73208b9ccd2e43` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xbd7c686c1c62e71c8bfd18fbd8005c70c4f866a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbe4d4d2fdde7408bd00b9912705de7bdc3f9bdeb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbe92962ec21b99870a583e232abcfdd64cdb78c9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbf3ba2b090188b40ef83145be0e9f30c6ca63689` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xbf664de63168720b57f1c93581512e9580e3e6f8` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xbfe4d64e61a3a02c4781a65fa343007de7ea9f14` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xc03b2a75620277927b4f0fc2f56cde0d0065e42b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xc162e91576246f90ff7e5a3b3c9a0daa05bf1bd5` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xc2e88eb6752a95e3b10a54c74608088020387228` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xc3346631e0a9720582fb9cabdbea22bc2f57741b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xc3fce3819df1734d004f74ead84263b7d900ea59` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xc6504c2c918c8c17ee2f1e01aefa43b1f27849ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xc8a09cb2692724752352899f73f81ebe5ef06bad` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xc96d5ec90b07fe2a96253990dc7ef2df22fde0b3` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xc9cf6ce7aec6e0d8432bdb4ab39a56e3b09835fd` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xca727511c9d542aab9ef406d24e5bbbe4567c22d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xcb62f468b5724b7748293fc78e42c3da840a8338` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xce18a2bf89fa3c56af5bde8a41eff967a6d63d26` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xce2177833e400f91bb308308f7d9933e48982b01` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd0b738a4c55366463f9303199e64423218d5a4b2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd0caa136abe412557e258c09f5122029d03c34f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd212fa2cf56197dd79880681807ce4d95c9ffa2e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd260596f85c6d91ccd40f7076eeb62acb3b2ad53` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xd308867ed5a2c41dc778f4cf34593764d09860e7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xd44dba5b9c415ab7387b46f05b4538205dacc01d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd512aeab1392d5c8ff8f0accae2cd3860f1904d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd583eecaa7bbde0d8ad3c84b8dac4d9612f823b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xd6156f8177aa1a6e0c5278ce437a9bdb32f203ef` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xd6ea51794495cf339b3aa15ebda731ef04b18d02` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xd70c5728bdf8a513a5f527bf04746353a0fb1dd9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xd71f47e772036b206885248032f7dbbbe6078676` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdb34c0849de02abc719740e147e6df4ffe4e8163` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdb549616407f8a30799f77f12b6b85aec936782d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdb773a542ec85a735f261738803884b08a43a6a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdb924a25bff353f98b066f692c38c3cfacb3a601` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xdbf76695e63430a90232ffe64f19874a97355fbe` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdc22c2807a5af1c08ed9b5b27dd1d6da26f68bc2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdc3fe501c1842953b85f5208da69dc84ff71a311` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xddaf4e33ad99a9ec7bb453db0869e064a47255b0` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xdde3b77040cee3387c0ca661d1b619c3aca203b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xdfbfae1695e6cb504db521db072f2331272c0e42` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe0d290eba865a6ca14c1c9bfd9cd839fa8d54543` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe18aad6733d1db21e19cb83b697082d3d4ee5170` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe2072fb13ff92d04e44cc55574816dba3e539e1d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe20fbe3467436bd6dd7096adf0770a0870bae567` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe229bd175907a948ce8d1a1579fd4d81c683a867` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe236394799650b622e04c587d22b0349d703714a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe23680f14214c4c9238411d2a85e74a9297ecef0` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe257da3c4977b43acf5fdd7704fc04acc930f2ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe327a025eec3af8c4ffd4cdb984417f1df9ba5a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe35d17850ce59488ae47ee5d66baa06abd100aaa` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe4ae88743c3834d0c492eabc47384c84bcadc6a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe5009c352b0eba16ccd990084b81e03e0c6d05f5` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |
| unverified unclassified | UnnamedContract<br>`0xe5c1a89887c572c3c345efe2bbbe797ac5b22461` | non_address_book | unknown | unknown | unverified | n/a | `0xa1be220e2491239206f6cd7221f54d24de5907a1` |
| unverified unclassified | UnnamedContract<br>`0xe65c3eccd18879e103dbc96d854e376ced4cc7dd` | non_address_book | unknown | unknown | unverified | n/a | `0xc1ab5a9593e6e1662a9a44f84df4f31fc8a76b52` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-03-17-Zellic.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-03-17-Zellic.pdf) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-05-15-TrailOfBits.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-15-TrailOfBits.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-05-25-Electisec.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-25-Electisec.pdf) | Electisec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-06-23-Spearbit.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-06-23-Spearbit.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 21 | high |
| [2025-07-04-Recon.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-07-04-Recon.pdf) | Recon | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 14 | medium |
| [2025-09-03-Sherlock.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-03-Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 49 | high |
| [2025-09-15-Certora (EigenAVS).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-15-Certora%20(EigenAVS).pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-11-27-Spearbit (PR Review).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-11-27-Spearbit%20(PR%20Review).pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-03-24-Octane.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2026-03-24-Octane.pdf) | Octane | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [[Sherlock Bug Bounty](): Up to $1m in rewards](https://audits.sherlock.xyz/bug-bounties/114) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16877] 2025-03-17-Zellic.pdf — no match: Scope section lists 'contracts/*' as programs. Extracted contract names from findings targets and file paths.
- [16878] 2025-05-15-TrailOfBits.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections, plus findings targets. Audit date from cover page and fix review delivery date.
- [16879] 2025-05-25-Electisec.pdf — no match: Two contracts in scope: OAppMessenger and PreMainnetVault. Audit date from review period end (March 6, 2025).
- [16880] 2025-06-23-Spearbit.pdf — matched: Extracted contract names from findings and scope section. Audit date from cover page.
- [16881] 2025-07-04-Recon.pdf — matched: No explicit scope section found; contracts extracted from findings and file paths mentioned in the report.
- [16882] 2025-09-03-Sherlock.pdf — matched: All contracts listed in the scope section of the audit report. Date is the end date of the audit period (July 10 - July 24, 2025).
- [16883] 2025-09-15-Certora (EigenAVS).pdf — no match: Audit report from Certora, dated September 22, 2025. Scope explicitly lists four Solidity contracts.
- [16884] 2025-11-27-Spearbit (PR Review).pdf — no match: The scope section describes components (Access Control, Delegation, Lending Pool, etc.) but does not list specific contract names or file paths. No individual contract names are identifiable.
- [16885] 2026-03-24-Octane.pdf — matched: Only Token.sol is explicitly listed in scope.
- [16886] [Sherlock Bug Bounty](): Up to $1m in rewards — no match: The provided text is a bug bounty page header with no contract names or audit report content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-03-17-Zellic.pdf | ValidationLogic | unmatched — not counted | — | Target in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | Delegation | unmatched — not counted | — | Target in findings 3.2 and 3.3 | no |
| 2025-03-17-Zellic.pdf | PriceOracle | unmatched — not counted | — | Target in finding 3.4 | no |
| 2025-03-17-Zellic.pdf | Vault | unmatched — not counted | — | Target in findings 3.5 and 3.6 | no |
| 2025-03-17-Zellic.pdf | FeeAuction | unmatched — not counted | — | Target in finding 3.7 | no |
| 2025-03-17-Zellic.pdf | MinterLogic | unmatched — not counted | — | Target in finding 3.8 | no |
| 2025-03-17-Zellic.pdf | VaultLogic | unmatched — not counted | — | Target in finding 3.9 | no |
| 2025-03-17-Zellic.pdf | Lender | unmatched — not counted | — | Mentioned in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | BorrowLogic | unmatched — not counted | — | Mentioned in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | IOracle | unmatched — not counted | — | Interface used in PriceOracle | no |
| 2025-03-17-Zellic.pdf | IDelegation | unmatched — not counted | — | Interface used in ValidationLogic | no |
| 2025-03-17-Zellic.pdf | IVault | unmatched — not counted | — | Interface used in VaultLogic | no |
| 2025-03-17-Zellic.pdf | IMinter | unmatched — not counted | — | Interface used in MinterLogic | no |
| 2025-05-15-TrailOfBits.pdf | FeeAuction | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | PriceOracle | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | NetworkMiddleware | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | StakedCap | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | VaultLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Delegation | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | VaultAdapter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | StakedCapAdapter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Lender | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | FractionalReserveLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | FractionalReserve | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | ZapOFTComposer | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-25-Electisec.pdf | OAppMessenger | unmatched — not counted | — | listed in scope | no |
| 2025-05-25-Electisec.pdf | PreMainnetVault | unmatched — not counted | — | listed in scope | no |
| 2025-06-23-Spearbit.pdf | Access | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | AccessControl | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2025-06-23-Spearbit.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-23-Spearbit.pdf | ChainlinkAdapter | unmatched — not counted | — | mentioned in finding I-2 | no |
| 2025-06-23-Spearbit.pdf | Delegation | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | FractionalReserveLogic | unmatched — not counted | — | mentioned in finding M-3, M-5, I-3 | no |
| 2025-06-23-Spearbit.pdf | IAccessControl | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | IDebtToken | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | IDelegation | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | IERC4626 | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2025-06-23-Spearbit.pdf | ILender | unmatched — not counted | — | mentioned in finding H-1, M-2, L-2, I-6 | no |
| 2025-06-23-Spearbit.pdf | IMinter | unmatched — not counted | — | mentioned in finding M-6 | no |
| 2025-06-23-Spearbit.pdf | IOracle | unmatched — not counted | — | mentioned in finding M-2 | no |
| 2025-06-23-Spearbit.pdf | IVault | unmatched — not counted | — | mentioned in finding H-1, M-3, M-7, L-5, I-1 | no |
| 2025-06-23-Spearbit.pdf | Lender | unmatched — not counted | — | mentioned in finding I-7 | no |
| 2025-06-23-Spearbit.pdf | MinterLogic | unmatched — not counted | — | mentioned in finding M-1, L-4, L-7 | no |
| 2025-06-23-Spearbit.pdf | StakedCap | unmatched — not counted | — | mentioned in finding M-8 | no |
| 2025-06-23-Spearbit.pdf | ValidationLogic | unmatched — not counted | — | mentioned in finding I-6 | no |
| 2025-06-23-Spearbit.pdf | VaultAdapter | unmatched — not counted | — | mentioned in finding H-2, M-7, L-8 | no |
| 2025-06-23-Spearbit.pdf | VaultLogic | unmatched — not counted | — | mentioned in finding M-3, L-3, L-5 | no |
| 2025-06-23-Spearbit.pdf | ViewLogic | unmatched — not counted | — | mentioned in finding M-2, L-2 | no |
| 2025-07-04-Recon.pdf | Vault | unmatched — not counted | — | mentioned in M-02 and other findings | no |
| 2025-07-04-Recon.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-04-Recon.pdf | BorrowLogic | unmatched — not counted | — | mentioned in L-02 | no |
| 2025-07-04-Recon.pdf | ViewLogic | unmatched — not counted | — | mentioned in L-04 and Q-01 | no |
| 2025-07-04-Recon.pdf | Lender | unmatched — not counted | — | mentioned in properties and findings | no |
| 2025-07-04-Recon.pdf | Delegation | unmatched — not counted | — | mentioned in Q-03 | no |
| 2025-07-04-Recon.pdf | DebtToken | unmatched — not counted | — | mentioned in L-04 | no |
| 2025-07-04-Recon.pdf | CapToken | unmatched — not counted | — | mentioned in properties and L-03 | no |
| 2025-07-04-Recon.pdf | Minter | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | AccessControl | unmatched — not counted | — | mentioned in Q-03 and Q-04 | no |
| 2025-07-04-Recon.pdf | ConfigureAccessControl | unmatched — not counted | — | mentioned in Q-03 | no |
| 2025-07-04-Recon.pdf | DeployVault | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | InfraConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | VaultConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | UsersConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-09-03-Sherlock.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Access | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Delegation | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkMiddleware | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetwork | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FeeAuction | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AgentConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ViewLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MintableERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ScaledToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AaveAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-03-Sherlock.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | RateOracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AccessStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DebtTokenStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DelegationStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FeeAuctionStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserveStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | LenderStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MintableERC20StorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MinterStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PriceOracleStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | RateOracleStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ScaledTokenStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | StakedCapStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkMiddlewareStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultAdapterStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | CapToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | StakedCap | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserve | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MinterLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Minter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenServiceManager | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenOperator | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenServiceManagerStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenOperatorStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2026-03-24-Octane.pdf | Token | own proxy deployment | Token (proxy) (selected) `0x99991c6aabba5a096f24f250b73580f5179b9999` — deployed 2026-05-08 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0b92300c8494833e504ad7d36a301ea80dbbae2e` | CapSymbioticVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 108 |
| upstream | 3 |
| standard_library | 20 |
| needs_review | 193 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 116 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2, medium=1
- Match method counts: unique_name=4

Zero-match audit list:

- [16877] 2025-03-17-Zellic.pdf
- [16878] 2025-05-15-TrailOfBits.pdf
- [16879] 2025-05-25-Electisec.pdf
- [16883] 2025-09-15-Certora (EigenAVS).pdf
- [16884] 2025-11-27-Spearbit (PR Review).pdf
- [16886] [Sherlock Bug Bounty](): Up to $1m in rewards

Fork inheritance lineage and inherited audits are included when available.
