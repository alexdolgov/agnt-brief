# Agentic Audit Brief: cap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 10 (4 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cap (`cap`)
- Website: [https://cap.app/](https://cap.app/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 141 unique implementations (143 raw deployments)
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
- Outside the address book: 120 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 65
- Confirmed-live implementations: 8 of 141 unique; 133 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/140
- Verified + Unaudited implementations: 138
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 141
- Raw deployments: 143
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
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x019b65850e3ad55939169845551f3d9c512e52cd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x04b57729e21a1a8c8b787013d1dbd81e4001163c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400519 | `0x08a728cf4e6b39f4afa059c6ee376103722953ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400520 | `0x09a3976d8d63728d20dcdfee1e531c206ba91225` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f60670907d9690e05ee9f4be336aa9967c49832` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1036c242cce7a6632e2f2649f293eaa881835772` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f8b29f3af949c71f7780d7f5159e199a9c355d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x32fd97a5196a6d98656a7f2f191ae4732ad13170` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x434558cb1ebe9950e8a66f1ef8a15a473dce7d8c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x44f7e678e8412dbef1fd930f60af2bd125095962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x69a22f0fc7b398e637bf830b862c75dd854b2bbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbde7c8db7a546526dd99d23796baa24c80c5036b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4b2c406f0dbf7624a32971277da7b4c43a7a942b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14449cc3185dec0421c3cb37074215f1aacb97f9` | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a2b84901410a81c6421104a12d6555ca286021` | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c` | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x767b8971ca1dc117f624d3ee3053d2881d241db9` | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105eac28b82b872a8b10218bd237a4c097022021` | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2c697fcce450a65092eb50ad6f24bd478818de` | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d` | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f67fd74cff274ef2942223c0f3166b856410add` | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e` | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24edd61cda334bff871a80deb135073a7d7a9187` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d4f3199a80b848f3d094745f3bbd4224892654e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f4e639745cfb234b6176e96c6afd83269baf52e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf2db7b3455077fb177215d45d62d441df3c17bf3` | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe13e2bbab029bfb324f49048ced0e95ea30ae049` | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400513 | 2 deployments: ethereum `0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb`; ethereum `0x9a5a3c3ed0361505cc1d4e824b3854de5724434a` | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c89968338b75551243c99b452c84a01888282fd` | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a855867ae59d6292d5675b654c776147039ba5` | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d295409d5a20b2c851df18054d32a442791346` | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ee5ce6556599e16c226579ba14f94926d8cb86d` | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f9a127fba172c41d8c29e49b3c1326d2eb577e` | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ed6a4ac085620ee943c0b15525c4428d23e4db` | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4` | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57` | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1f14a50ba904a28cf6088e71b6a15561074398d7` | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03138081aed44e2e0eb10361ee41d84edd22a05f` | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573bb572049ff50156e94823bb99920d406e96f8` | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a` | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x636eca78f6b46a69ab233ef513c1fb4703e32a7b` | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06` | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95` | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc328cdf06cbc77134b84e1f6ed452774947146b6` | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40` | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x197225b3b017eb9b72ac356d6b3c267d0c04c57c` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae02d5be17a23c8fdd0676c6a5f9143d91237979` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85c4f855bc0609d2584405819edaea3adabfe97d` | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb7699e81acf22456fa83696573738dfa25f1d6be` | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60224122830fd6cf5119f548477a190310d2c94` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3587a73aa02519335a8a6053a97657bece0bc2cc` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24c8964338deb5204b096039147b8e8c3aea42cc` | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f145fd2cc3ed0806cae3eba73472e5991f5a721` | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a` | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6dd1e6799b67434601fd0c65cf13d4df9278cd52` | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7` | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29` | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b` | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a6fd5820f797e517297feff90aaecd8e2dc77b3` | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519` | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cec96a68cb9a979621b104f3c94884be1a66da0` | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x80b0735616b27b647233d3ab67078c95ba5a2c93` | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243507c8c114618d7c8ad94b51118db7b4e32ece` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2` | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8` | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107dd3391a6357248f2093698014e7c6130779ee` | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2619976127c90de2eea94b368ac5156ef16b7f3f` | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2240ae461b34cc56d654ba5fa5830a243ca54840` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e202a7e713d00804f9ce397260362bf5e0eaaa8` | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019697e7832dba533c320c0e2a36faa2da958de9` | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e` | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa7b0247d2da6b11ff2740491cb433a1520d5da98` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18c9b9500d8006574329ff95deb47f9576011a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x354d1e7d9cf90841dfa252547881db96af2aae3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x61376924babe5a0fa982fff2c8be8013be3d6bb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6682c5b9b47ec0d18beb2088779f14535fc7bf47` | ⚠️ Unaudited |
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-400511 | `0xdf48eb321b38bc19e7f5b2cca8242cc6b9a6ecd0` | ❓ Unverified |

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
| needs_review | 10 |

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
