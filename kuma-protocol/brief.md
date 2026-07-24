# Agentic Audit Brief: KUMA Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: KUMA Protocol (`kuma-protocol`)
- Website: [https://kuma.bond](https://kuma.bond)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, linea, mantle, polygon
- Contract surface: 128 unique implementations (210 raw deployments)
- Coverage basis: 4/48 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,052,680.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KUMA Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 79 contract row(s) across ethereum, linea, mantle, polygon. Structural roles: 63 unclassified, 9 supporting, 7 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 79
- Structural roles: unclassified (63), supporting (9), core (7)
- Contract kinds: contract (78), abstract (1)
- Detected standards: erc165 (4), erc1967proxy (3), accesscontrol (2), chainlinkaggregator (2), erc20 (2), erc4626 (2), erc721 (2), pausable (2)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 88 contracts are derived from known codebases. 88 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01d1a890d40d890d59795afcce22f5adbb511a3a`, chain 137)
- UnnamedContract (`0x1a1a402746fbe8bcfe0f7992ae27c4ed81a70156`, chain 137)
- UnnamedContract (`0x5219bc51d270c284d7b40c0548c9192b271d2247`, chain 137)
- UnnamedContract (`0x05f41f99e6c72511f157674c6e43eda2a2e599a0`, chain 5000)
- UnnamedContract (`0x11be346f8b79613bd865d5dbffc1ba3c3b7c97be`, chain 5000)
- UnnamedContract (`0x291cb8c79009458d555a27144b4e19a4c2ae299a`, chain 5000)
- UnnamedContract (`0x33bb1a207c0a8957703260de5e0068520a9fbf35`, chain 5000)
- UnnamedContract (`0x37d1c94087643dfe5288f72cd1e4a6fde5b130a9`, chain 5000)
- UnnamedContract (`0x4520ee517b3c5f90b1491a7aacc04e1a08a29c7d`, chain 5000)
- UnnamedContract (`0xabe67bf848b2dbe3c330be84da117e86c735f0d0`, chain 5000)
- UnnamedContract (`0xbb43355b6b41408d6c46912ac68aa7d7c2cfca42`, chain 5000)
- UnnamedContract (`0xcdf658ee01b43c7ca9b8b567751c3a7d2f9a3b66`, chain 5000)
- UnnamedContract (`0xda9b8d91ae37b6da4241f2223f678dd6c1ec61d9`, chain 5000)
- UnnamedContract (`0xe740e27a0f24d45b42f361eda063a47088ede6be`, chain 5000)
- AccessController (`0x8b853de26973b6c772b1e29bb127f1a60130a725`, chain 1)
- AccessController (`0xc7b973a97f171e964eb3a0949caafbfd1ed77c0d`, chain 137)
- AccessController (`0x80a31ce83b1eb76ec4c550d713136efa29701a40`, chain 59144)
- Blacklist (`0xac472465be19191f3dc96bcb205285d7afc45baa`, chain 1)
- Blacklist (`0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0`, chain 137)
- Blacklist (`0xd34a77c963da4c16eccbee6d0a246047d086da1e`, chain 59144)
- ERC1967Proxy (`0x01bf66becdcfd6d59a5ca18869f494fea086cdfd`, chain 1)
- ERC1967Proxy (`0x238134c1d632f0a6719874f51e8152f912d9ab0a`, chain 1)
- ERC1967Proxy (`0x400e0202f84322421f8ad32ca61208bf8c62ad25`, chain 1)
- ERC1967Proxy (`0x45eac983c3a535d4ef2c41c903b377945414d331`, chain 1)
- ERC1967Proxy (`0x6596a0df031674b28673cf4b0fccdae70dfd9daf`, chain 1)
- ERC1967Proxy (`0xb1ab37ef0df6d2b8294e5fa2bf03a455e4951cda`, chain 1)
- ERC1967Proxy (`0xcb32e7455ee7574173ec89355b6a1c715e222fa1`, chain 1)
- ERC1967Proxy (`0xdc024bf64f893a682008083e805c9a204f3d7dc9`, chain 1)
- ERC1967Proxy (`0xf2b5c482358dbaa495d442b57c163dbedbf7868e`, chain 1)
- ERC1967Proxy (`0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73`, chain 137)
- ERC1967Proxy (`0x173eb1d561ccefd8e83a3741483a8bd76df827ef`, chain 137)
- ERC1967Proxy (`0x2cb7285733a30bb08303b917a7a519c88146c6eb`, chain 137)
- ERC1967Proxy (`0x4dba794671b891d2ee2e3e7ea9e993026219941c`, chain 137)
- ERC1967Proxy (`0x8df37d42877bfba37309b2503efbcaa7be28bd69`, chain 137)
- ERC1967Proxy (`0xa66818b5bda74c081a9582d8aa8929fae77e214a`, chain 137)
- ERC1967Proxy (`0xb5e2e9c4b4b6dfb7c5cc3b09119f31085d7faa36`, chain 137)
- ERC1967Proxy (`0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc`, chain 137)
- ERC1967Proxy (`0xd567e0fdc9acb22c41198adef3a399eac849ddbd`, chain 137)
- ERC1967Proxy (`0x27c57d8c5f80868e1ba55ebc78164cefec6e591b`, chain 59144)
- ERC1967Proxy (`0x41deefd0db39186bda6f52c3b3b89d54540483ac`, chain 59144)
- ERC1967Proxy (`0x69c6d64efa37a94fb234dbae52f4beae506e27f2`, chain 59144)
- ERC1967Proxy (`0x6a83fb636e6a5c760b487548acf4af9b100c49e0`, chain 59144)
- ERC1967Proxy (`0x70434338c1837d384e139f81f0539e83eee5517c`, chain 59144)
- ERC1967Proxy (`0x7a6aa80b49017f3e091574ab5c6977d863ff3865`, chain 59144)
- GnosisSafeProxy (`0x33da84dd937779f3edaccf87e7ddcdc216e0d1bf`, chain 1)
- GnosisSafeProxy (`0xb5502747aabdca21e832951b4caaf739da33f450`, chain 1)
- GnosisSafeProxy (`0xfef638230495d1b36422f7475c2000d7cb3207b6`, chain 5000)
- GnosisSafeProxy (`0x1151d63eb6154843d4b4898cf4c63af556642997`, chain 59144)
- GnosisSafeProxy (`0x7cf34ac2ceff942c697d9c070228454864025432`, chain 59144)
- KBCToken (`0xa89d5fdec7bada2e52034e45bd52b608b7184c1d`, chain 1)
- KBCToken (`0xd965ff561c3a67d630157ecdf6170884b0fa9caf`, chain 137)
- KBCToken (`0x91ca2767ad087f69374a79c2a55615c0672df264`, chain 59144)
- KIBToken (`0x3cd09352eebe8b9e302b83a59d90d19031290f80`, chain 1)
- KIBToken (`0x94abc2880f0205ff170d0e6e20a2d9e35a851ab3`, chain 1)
- KIBToken (`0x197c9eb5fd433e13b5876a4ae47dbcb2e6dd795e`, chain 137)
- KIBToken (`0xedb20e3cd8c7c149ea57fe470fb9685c4b1b8703`, chain 137)
- KIBToken (`0xfe96850285eea29c754473b95900b7db75f2e8e2`, chain 59144)
- KUMAAccessController (`0x5fad6f80312aee6f19784a7fc359f90d441163de`, chain 1)
- KUMAAccessController (`0xfe72616cbaec279a658f1c3bc3c1aa964aa42a54`, chain 137)
- KUMAAccessController (`0xb9cee0c302ef2844ef78f41800ce73c13b6a52ae`, chain 59144)
- KUMAAddressProvider (`0xb091c1292637c2576b691ebc38d06f9d6997338a`, chain 1)
- KUMAAddressProvider (`0x7714fcfe0d9c4726f6c1e3b1275c2951b9b54f65`, chain 137)
- KUMAAddressProvider (`0xeb4afea42bd9079b5816b4e2d26416860bf0fd12`, chain 59144)
- KUMABondToken (`0x74e9e8d1365358f0ec416e24f723e36181b79a7b`, chain 1)
- KUMABondToken (`0xfff0a94dca02eb764528100e044dc228b3d13e7a`, chain 137)
- KUMABondToken (`0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a`, chain 59144)
- KUMAFeeCollector (`0x25b23dd1b3432a55d405e17587594e17f9e74424`, chain 1)
- KUMAFeeCollector (`0xd4144c5a31c23059b6fa85c395b8bcd307773407`, chain 1)
- KUMAFeeCollector (`0x7feec0005cbf17f433ee753ad840268d48ffd1b6`, chain 137)
- KUMAFeeCollector (`0xd4db0fcf032cfeaa4a5c61ab7452b8a49f3e8a65`, chain 137)
- KUMAFeeCollector (`0x9f9f940704b21c3882c98cf60e15d015693d9056`, chain 59144)
- KUMASwap (`0x43ea73168b8f192dbdec088da29f2c5e517f6fcb`, chain 1)
- KUMASwap (`0x4cd485a0d20252ac3a145086052e5f661a15dcdf`, chain 1)
- KUMASwap (`0x41d4d26f70951a2134dc862ea6248ffbe2a516bb`, chain 137)
- KUMASwap (`0xd2a75e38c9aadd747a11561b3c28e54ad6752c82`, chain 137)
- KUMASwap (`0x42817db9c0b21b3718b54069267411207decebc1`, chain 59144)
- MCAGAggregator (`0x357536c1d029cdc7fe588ffeca71db66d2b782aa`, chain 1)
- MCAGAggregator (`0xc28372b25ecf0c8acc21a3fd87d22ea13003918d`, chain 1)
- MCAGAggregator (`0x13414c34da832f4013562e3e461f2a0da961cba9`, chain 137)
- MCAGAggregator (`0x7e86bce025339a77236adacd4af51f1ebbbbdd94`, chain 137)
- MCAGAggregator (`0x5516c211f39c875df43580728de7d274d7444fd1`, chain 59144)
- MCAGRateFeed (`0xab5459dd8bc238d270b1725c30fe229329a28f7b`, chain 1)
- MCAGRateFeed (`0x72e923047245d2b58d87f311a2b5b487620ee60a`, chain 137)
- MCAGRateFeed (`0xf1de412a3c8db2302d78f7563616ccab6dad07c5`, chain 59144)
- RateProvider (`0xd8689e8740c23d73136744817347fd6ac464e842`, chain 1)
- RateProvider (`0x76d8b79fb9afd4da89913458c90b6c09676628e2`, chain 137)
- WrappedRebaseToken (`0xaf4ce7cd4f8891ecf1799878c3e9a35b8be57e09`, chain 1)
- WrappedRebaseToken (`0x2f0b4300074afc01726262d4cc9c1d2619d7297a`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 79; live-surface rows included: 79 (74 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/68 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/48 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 62 of 128 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/91
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 128
- Raw deployments: 210
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 8.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 4.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KBCToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244494 | 2 deployments: ethereum `0x238134c1d632f0a6719874f51e8152f912d9ab0a`; ethereum `0xa89d5fdec7bada2e52034e45bd52b608b7184c1d` | ✅ Audited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244493 | 2 deployments: ethereum `0x94abc2880f0205ff170d0e6e20a2d9e35a851ab3`; ethereum `0xf2b5c482358dbaa495d442b57c163dbedbf7868e` | ✅ Audited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244496 | 2 deployments: ethereum `0xb091c1292637c2576b691ebc38d06f9d6997338a`; ethereum `0xdc024bf64f893a682008083e805c9a204f3d7dc9` | ✅ Audited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244495 | 2 deployments: ethereum `0x6596a0df031674b28673cf4b0fccdae70dfd9daf`; ethereum `0xab5459dd8bc238d270b1725c30fe229329a28f7b` | ✅ Audited |

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244450 | `0x8b853de26973b6c772b1e29bb127f1a60130a725` | ⚠️ Unaudited |
| AccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: ethereum `0xe3aaef477f95ec345b06b08ab1eb12dbfb92351e`; polygon `0x00142b50b435a6ddef5d91bfbb7208ecd2a05e7c`; polygon `0x02b23b7482c0a6709383045b6738cdb6f9c0a8b1`; polygon `0x302888839bdcd5e23b57645365c8bf2ab0652584`; polygon `0x4de405bcfda5576fa4275c5dde7002fc02467e23`; polygon `0x6bfad31050dff9a5aae81adadf7daf82655d4cd6`; polygon `0xaea58dd0a79cdfe14a25d537f6c2e8fd8556f3bf`; polygon `0xe7ec63ea366a2d345f1fad810269f24e158a5c8f`; linea `0x3037e0e4e2ae1b7c2376b14920d18bced0c4604e` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | polygon | unit-244467 | `0xc7b973a97f171e964eb3a0949caafbfd1ed77c0d` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | linea | unit-244486 | `0x80a31ce83b1eb76ec4c550d713136efa29701a40` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x38519093cc62d83e31afb53c00c0bf4dc8fdcd15`; polygon `0x3d58b7bbf14d4d97063da613ed1511ae178ebd58`; polygon `0xb89ddc23168442c31792c16d8f352842a5855b88`; polygon `0xdf4f21a00a300dc3f41deb1a40cca4485ccd79fa`; polygon `0xede77326449271ccd32d45103374e5cbff997c53` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244452 | `0xac472465be19191f3dc96bcb205285d7afc45baa` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | polygon | unit-244462 | `0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0` | ⚠️ Unaudited |
| Blacklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc10367c9a4cf294e9025be5a11294c72946c18ef` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | linea | unit-244488 | `0xd34a77c963da4c16eccbee6d0a246047d086da1e` | ⚠️ Unaudited |
| ConfigProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x20a83af929f1de7d518d49e93f5465d040a9fab4`; polygon `0x44adedae87cda45f9e9b6d49e49db5d583646163`; polygon `0xfed8a7930c141c29e5719fe8b44897c5fa7bdb22` | ⚠️ Unaudited |
| DebtNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xa88ced4edfd32bcd32de592ea3eec7c03d7d329f`; polygon `0xeb6b8f833f5aa81cb00a1cc7ef93b6b332a53574` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7e566027661211e33cebaedba21d3fdc95734f76`; polygon `0xecede3d192f2c5488edb2d4f47978115bc5b8ed4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x86f875ee1d4ec7e0906c6dbd3de36872a0adec87`; polygon `0x9f1a2e04f563837ddb49d51713be49b305d5e05e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb27615d8a89a1a7d7e690d77aa6e03ea4c679d48`; polygon `0xc1e17d9e66f505355c9fb9a49e6c2dded1dd6a82` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x274b3089a718ef7d8efb235578f0717e702b0bce`; linea `0x5eb5bd6bf2abca18a56014a916a6571d8a25684d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x31150b1a1ad3a7cfda76e36aae379efd8f3e00fa`; linea `0x6f74f0a232da85afca8fd264a0e6e277dba8bbbd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x57bd03210e60c20841b6c0944e5915a146a8f3fa`; linea `0x83f8eb40f158cfb9f9c8b229584fe49fff15af34` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6a9742626917fa15db6639cb6c9b8ba6d3d3f24a`; linea `0x82d9db83eca8b9936ecb2b3a690debb5035b3056` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244451 | `0xa1048eef9c523304202daf480051a672e92c6888` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77d36e52d8cf40b194d613030f8d3a7e87abce0` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244465 | `0xabd06d7f15123d13c985315ad73a3acab06afa41` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x28c1ab6aeabb84491dbafc71d9ebb5cc1d62cd85`; polygon `0x83d8ca70144d55f74ad3c5eb3336b4163bca1227`; polygon `0x8cfa62c16a348f58746634c7478f863df93d04b5` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 2 | ethereum | unit-244498 (2 proxies) | 2 deployments: ethereum `0x33da84dd937779f3edaccf87e7ddcdc216e0d1bf`; ethereum `0xb5502747aabdca21e832951b4caaf739da33f450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | linea | unit-244508 (2 proxies) | 2 deployments: linea `0x1151d63eb6154843d4b4898cf4c63af556642997`; linea `0x7cf34ac2ceff942c697d9c070228454864025432` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-244482 | `0xfef638230495d1b36422f7475c2000d7cb3207b6` | ⚠️ Unaudited |
| GovernanceAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x026fa9b2bc828c7e0acca440fdf77a19d3fa0ecf`; polygon `0xa918fa95a6a844fff0cca5481e920634cbf47e63` | ⚠️ Unaudited |
| KBCToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244506 | 2 deployments: polygon `0x8df37d42877bfba37309b2503efbcaa7be28bd69`; polygon `0xd965ff561c3a67d630157ecdf6170884b0fa9caf` | ⚠️ Unaudited |
| KBCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x1647f37e6db9756522f6d31ebae01f7ad1e96f7c`; linea `0xc54b48f74bee64f2ae06d8c141215569b81550b7` | ⚠️ Unaudited |
| KBCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x32cc00ca0e382af2fa9a08770856c98016da664e`; linea `0xc815b8c36439cd4428aa366ed59a700155d8108a` | ⚠️ Unaudited |
| KBCToken | unknown | project_anchor | own_supporting | 1 | linea | unit-244510 | 2 deployments: linea `0x6a83fb636e6a5c760b487548acf4af9b100c49e0`; linea `0x91ca2767ad087f69374a79c2a55615c0672df264` | ⚠️ Unaudited |
| KIBTAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76c370766947667dcb1677c2818e1e6b7ac0695` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244456 | `0xdc888b8c76ef26852b6f6c0008d6e2f29a96cb50` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244464 | `0x82c3e5aa2b31a9bdcc9149fb8050464d2c77b4f0` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244466 | `0xae1e83a79195d401a93bbeb768632ea633f77b50` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244490 | 2 deployments: ethereum `0x01bf66becdcfd6d59a5ca18869f494fea086cdfd`; ethereum `0x3cd09352eebe8b9e302b83a59d90d19031290f80` | ⚠️ Unaudited |
| KIBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66dfa32e58b2b0d0c6d5e9650e56445b568dcfb1`; ethereum `0x932c930104f39e475965f9fbfa345c1c4f537e5f` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244499 | 2 deployments: polygon `0x197c9eb5fd433e13b5876a4ae47dbcb2e6dd795e`; polygon `0xa66818b5bda74c081a9582d8aa8929fae77e214a` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244507 | 2 deployments: polygon `0x2cb7285733a30bb08303b917a7a519c88146c6eb`; polygon `0xedb20e3cd8c7c149ea57fe470fb9685c4b1b8703` | ⚠️ Unaudited |
| KIBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x5ccc9fe16eb0eb822da9331601002bf80fbdd3e8`; linea `0xc84f2ce21272f17d92d2a450f1c8567bf0ff448e` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | linea | unit-244514 | 2 deployments: linea `0x7a6aa80b49017f3e091574ab5c6977d863ff3865`; linea `0xfe96850285eea29c754473b95900b7db75f2e8e2` | ⚠️ Unaudited |
| KUMAAccessController | governance | project_anchor | own_supporting | 0 | ethereum | unit-244448 | `0x5fad6f80312aee6f19784a7fc359f90d441163de` | ⚠️ Unaudited |
| KUMAAccessController | unknown | project_anchor | own_supporting | 0 | polygon | unit-244468 | `0xfe72616cbaec279a658f1c3bc3c1aa964aa42a54` | ⚠️ Unaudited |
| KUMAAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x85dd3aec1ae4fa5fb495980cbf9fd3e8423be78f`; linea `0xad5c32d6e67d95e460206b7268168c073974ad6b` | ⚠️ Unaudited |
| KUMAAccessController | governance | project_anchor | own_supporting | 0 | linea | unit-244487 | `0xb9cee0c302ef2844ef78f41800ce73c13b6a52ae` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | polygon | unit-244502 | 2 deployments: polygon `0x4dba794671b891d2ee2e3e7ea9e993026219941c`; polygon `0x7714fcfe0d9c4726f6c1e3b1275c2951b9b54f65` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x2fb3b498f49e466da6863a745dedc6764bf16840`; linea `0x96ae4010efb5a89b49896217481d66e858767b8f` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x5a22c277da5be9c72e072e31aff2cd4508a77fb3`; linea `0xdc5767bd50dcf947ec90784be717ef011fe6f34e` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | linea | unit-244512 | 2 deployments: linea `0x69c6d64efa37a94fb234dbae52f4beae506e27f2`; linea `0xeb4afea42bd9079b5816b4e2d26416860bf0fd12` | ⚠️ Unaudited |
| KUMABondToken | token | project_anchor | own_supporting | 0 | ethereum | unit-244449 | `0x74e9e8d1365358f0ec416e24f723e36181b79a7b` | ⚠️ Unaudited |
| KUMABondToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bd547ac3adebe3bc15d8257b28b2bef7512f389` | ⚠️ Unaudited |
| KUMABondToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-244469 | `0xfff0a94dca02eb764528100e044dc228b3d13e7a` | ⚠️ Unaudited |
| KUMABondToken | token | project_anchor | own_supporting | 0 | linea | unit-244484 | `0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244489 | 2 deployments: ethereum `0x25b23dd1b3432a55d405e17587594e17f9e74424`; ethereum `0x45eac983c3a535d4ef2c41c903b377945414d331` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244497 | 2 deployments: ethereum `0x400e0202f84322421f8ad32ca61208bf8c62ad25`; ethereum `0xd4144c5a31c23059b6fa85c395b8bcd307773407` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | polygon | unit-244503 | 2 deployments: polygon `0x7feec0005cbf17f433ee753ad840268d48ffd1b6`; polygon `0xb5e2e9c4b4b6dfb7c5cc3b09119f31085d7faa36` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | polygon | unit-244505 | 2 deployments: polygon `0xd4db0fcf032cfeaa4a5c61ab7452b8a49f3e8a65`; polygon `0xd567e0fdc9acb22c41198adef3a399eac849ddbd` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x16a4ead3305e1b265c35915a30004519f09c4940`; linea `0xe12151ecc3f7bed4010f59647bc8fd7dff0db8eb` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | linea | unit-244511 | 2 deployments: linea `0x70434338c1837d384e139f81f0539e83eee5517c`; linea `0x9f9f940704b21c3882c98cf60e15d015693d9056` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244491 | 2 deployments: ethereum `0x43ea73168b8f192dbdec088da29f2c5e517f6fcb`; ethereum `0xb1ab37ef0df6d2b8294e5fa2bf03a455e4951cda` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244492 | 2 deployments: ethereum `0x4cd485a0d20252ac3a145086052e5f661a15dcdf`; ethereum `0xcb32e7455ee7574173ec89355b6a1c715e222fa1` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | polygon | unit-244500 | 2 deployments: polygon `0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73`; polygon `0x41d4d26f70951a2134dc862ea6248ffbe2a516bb` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | polygon | unit-244504 | 2 deployments: polygon `0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc`; polygon `0xd2a75e38c9aadd747a11561b3c28e54ad6752c82` | ⚠️ Unaudited |
| KUMASwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x34e2324f2ee4ab3b0135eea7f889ce687ec12233`; linea `0xbe5acb0daf2fa7eb0255ba2b20828d6113f06c6f` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | linea | unit-244509 | 2 deployments: linea `0x41deefd0db39186bda6f52c3b3b89d54540483ac`; linea `0x42817db9c0b21b3718b54069267411207decebc1` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x4986af7f4194af50586f8236f76bef909cb9d5f3`; polygon `0x8b45ce4b1eaac67fa4ed8609710cc0d8cfd22047`; polygon `0x97b6d9ba569153e4b43eaacc84a517cbe4f5b740` | ⚠️ Unaudited |
| MCAGAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06b1d77aca7e3239878ca864931c5750113bb9d7`; linea `0x782b8c51de03ddf4cd0047a7be900a8c85b034a3` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244447 | `0x357536c1d029cdc7fe588ffeca71db66d2b782aa` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244454 | `0xc28372b25ecf0c8acc21a3fd87d22ea13003918d` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | polygon | unit-244458 | `0x13414c34da832f4013562e3e461f2a0da961cba9` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | polygon | unit-244463 | `0x7e86bce025339a77236adacd4af51f1ebbbbdd94` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | linea | unit-244485 | `0x5516c211f39c875df43580728de7d274d7444fd1` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | polygon | unit-244501 | 2 deployments: polygon `0x173eb1d561ccefd8e83a3741483a8bd76df827ef`; polygon `0x72e923047245d2b58d87f311a2b5b487620ee60a` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x26ddb0cdca2e6f565307831f8700f4d1fde25dde`; linea `0x3eb85a4d4bec052c71d9cc76ec8d54fa34db661f` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | linea | unit-244513 | 2 deployments: linea `0x27c57d8c5f80868e1ba55ebc78164cefec6e591b`; linea `0xf1de412a3c8db2302d78f7563616ccab6dad07c5` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x959f2d6ada02b929d2824a6eb16f98ac9ea5d69d`; linea `0xec23c6a984bb7763025593a189defbac7c920fca` | ⚠️ Unaudited |
| PaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x4811d2a9374db89ec5ffd70be76bd68618233a00`; polygon `0x604bb0aa2be02bcf4f0823400cc21430df667277`; polygon `0x8054d4d130c3a84852f379424bcac75673a7486b`; polygon `0xb04e31f3cf7bdbf8b3b843df1a63fd3047cad1f5`; linea `0x93bf70bc8aa43c0099a33f5745793532f9e78b38` | ⚠️ Unaudited |
| PriceFeedUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x6ee6aca3b1381c8d9fbe9be4d16bbb1bc2b06683`; polygon `0xabb4190ef32cc4c749f12fb6b3191eaf0a128e65`; polygon `0xb3d014fcb429a1eaf4c98b4a1d7384db47321fa4` | ⚠️ Unaudited |
| RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244455 | `0xd8689e8740c23d73136744817347fd6ac464e842` | ⚠️ Unaudited |
| RateProvider | unknown | project_anchor | own_supporting | 0 | polygon | unit-244461 | `0x76d8b79fb9afd4da89913458c90b6c09676628e2` | ⚠️ Unaudited |
| RatesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xd58f48f533e3896b51854bd95165fdd87605497a`; polygon `0xfc3631012bf0c6a24ebfc8eb8a8ed76aa1ff1686` | ⚠️ Unaudited |
| VaultsCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x11737d07a928b62b3814ecd1778814a82e3c77ff`; polygon `0xc1557615dea73d04f206fe3589030a514d58bf83`; polygon `0xefce114978abcd7bbf30949607a0be4ac6c402e9` | ⚠️ Unaudited |
| VaultsCoreState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x20b55eaba83c3ce27082879be54fe47bbb869e38`; polygon `0x2caf48182c901ad5240f0219d2252a295a836572`; polygon `0x7a33f465118c3f9bd280308c1233adb163665f75` | ⚠️ Unaudited |
| VaultsDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x003b7bdc1adfa3fee002869081cbff4d73646d08`; polygon `0x8a604e5c0ced41064354d055b84fc964aaa9101a`; polygon `0xd0e68bdc9b6084d5675b88f7903cf6ff7f4ebabc` | ⚠️ Unaudited |
| WrappedRebaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1543b1a4b10a023664df195f12e75f31df845395`; ethereum `0x476507aec878ebdea7d983d0967aabf113200c87`; ethereum `0xb186b93302f0c8aa8591c0ccf24c3513b918aef7`; ethereum `0xf1254e912e4fb87c178df9a9baf6dd49009e3fe4` | ⚠️ Unaudited |
| WrappedRebaseToken | token | project_anchor | own_supporting | 0 | ethereum | unit-244453 | `0xaf4ce7cd4f8891ecf1799878c3e9a35b8be57e09` | ⚠️ Unaudited |
| WrappedRebaseToken | token | project_anchor | own_supporting | 0 | linea | unit-244483 | `0x2f0b4300074afc01726262d4cc9c1d2619d7297a` | ⚠️ Unaudited |
| WrappedRebaseTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x9bdd10f41b4de9dc1d63ae6ff9075c075298f735`; linea `0xae136f4926fdb96f73fb5d899ea0cdc3a5efabbd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a467d59507979168c2185b2e036956670cb1981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e8cdf12784f3974fac943f70ec31a012ef74874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7d90b56b40a0a59e277765e16e99a7602dff07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd407dbee29d803164a5dc1193aece283376de867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244457 | `0x01d1a890d40d890d59795afcce22f5adbb511a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15c05d10c9f66b5983e3f9b342751f6333da2c5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244459 | `0x1a1a402746fbe8bcfe0f7992ae27c4ed81a70156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x308466012cf91c926f1d7f3887e84630dbc0ccdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244460 | `0x5219bc51d270c284d7b40c0548c9192b271d2247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba75fc937b0c5c18d084d28212fa36617368546b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244470 | `0x05f41f99e6c72511f157674c6e43eda2a2e599a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0abf0c3822fee43d58e3ffac870de5c4f969569a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244471 | `0x11be346f8b79613bd865d5dbffc1ba3c3b7c97be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244472 | `0x291cb8c79009458d555a27144b4e19a4c2ae299a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2bb3f79b89a33dbcec846ec706c650ccefc742a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3015c574217a6980476d2162bc388c3f6e0af6c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244473 | `0x33bb1a207c0a8957703260de5e0068520a9fbf35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244474 | `0x37d1c94087643dfe5288f72cd1e4a6fde5b130a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3bcdd3680e0587bbe1bb4438bf2819adc8b7e0a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244475 | `0x4520ee517b3c5f90b1491a7aacc04e1a08a29c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x63a40299a9ead946adceca267c70600b87d1625b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6ff6fd552b14a27b5ac8c47ae534b13f22acae09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8cf40718590f391a45e17afef6880ce68de3494a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xab7e636ca60b630febf0b0f3d520bd34c2c3570a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244476 | `0xabe67bf848b2dbe3c330be84da117e86c735f0d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae37de1c998f21cc01a38e5a586a10879fbccfb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244477 | `0xbb43355b6b41408d6c46912ac68aa7d7c2cfca42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244479 | `0xcdf658ee01b43c7ca9b8b567751c3a7d2f9a3b66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244480 | `0xda9b8d91ae37b6da4241f2223f678dd6c1ec61d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244481 | `0xe740e27a0f24d45b42f361eda063a47088ede6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4b4d246dd088570ff2aef0c95f53cf88d049a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfdbb8351dfa6a53b38485ac997111ee053a43b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1a344570a072612a08ddf92be590faa0097317a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7d9573bc16b75960465e9b9dd8bd8220bc1cecb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x888c2bfd992852e2754dd3cd261bb5bedc2826d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3b9d4a8f77ca47c329607051991f7859334dc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xda8102cb6fa68ad363e214515d0fb14fdeaccfeb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 182
- Live contracts: 62
- Unknown liveness contracts: 120
- Source-verified contracts: 152
- Currently scope-matched contracts retained as-is: 4
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=4, contamination review=13, exact address book overlap=38, source verified unclassified=97, unverified unclassified=30

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | ERC1967Proxy<br>`0x238134c1d632f0a6719874f51e8152f912d9ab0a` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x6596a0df031674b28673cf4b0fccdae70dfd9daf` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xdc024bf64f893a682008083e805c9a204f3d7dc9` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xf2b5c482358dbaa495d442b57c163dbedbf7868e` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0x01bf66becdcfd6d59a5ca18869f494fea086cdfd` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0x400e0202f84322421f8ad32ca61208bf8c62ad25` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0x45eac983c3a535d4ef2c41c903b377945414d331` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0xb1ab37ef0df6d2b8294e5fa2bf03a455e4951cda` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0xcb32e7455ee7574173ec89355b6a1c715e222fa1` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | ERC4626Oracle<br>`0xa1048eef9c523304202daf480051a672e92c6888` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | exact address book overlap | RateProvider<br>`0xd8689e8740c23d73136744817347fd6ac464e842` | project_anchor | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x66dfa32e58b2b0d0c6d5e9650e56445b568dcfb1` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | ERC4626Oracle<br>`0xc77d36e52d8cf40b194d613030f8d3a7e87abce0` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KBCToken<br>`0xa89d5fdec7bada2e52034e45bd52b608b7184c1d` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KIBToken<br>`0x3cd09352eebe8b9e302b83a59d90d19031290f80` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KIBToken<br>`0x932c930104f39e475965f9fbfa345c1c4f537e5f` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KIBToken<br>`0x94abc2880f0205ff170d0e6e20a2d9e35a851ab3` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KUMAAddressProvider<br>`0xb091c1292637c2576b691ebc38d06f9d6997338a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KUMAFeeCollector<br>`0x25b23dd1b3432a55d405e17587594e17f9e74424` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KUMAFeeCollector<br>`0xd4144c5a31c23059b6fa85c395b8bcd307773407` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KUMASwap<br>`0x43ea73168b8f192dbdec088da29f2c5e517f6fcb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | KUMASwap<br>`0x4cd485a0d20252ac3a145086052e5f661a15dcdf` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | MCAGRateFeed<br>`0xab5459dd8bc238d270b1725c30fe229329a28f7b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | WrappedRebaseToken<br>`0x1543b1a4b10a023664df195f12e75f31df845395` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | WrappedRebaseToken<br>`0x476507aec878ebdea7d983d0967aabf113200c87` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | WrappedRebaseToken<br>`0xb186b93302f0c8aa8591c0ccf24c3513b918aef7` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | source verified unclassified | WrappedRebaseToken<br>`0xf1254e912e4fb87c178df9a9baf6dd49009e3fe4` | non_address_book | unknown | unknown | verified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e8cdf12784f3974fac943f70ec31a012ef74874` | non_address_book | unknown | unknown | unverified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7d90b56b40a0a59e277765e16e99a7602dff07a` | non_address_book | unknown | unknown | unverified | n/a | `0x4d5b9bc211b070fd8b5b47d100d28374497c1971` |
| ethereum | contamination review | MCAGAggregator<br>`0x06b1d77aca7e3239878ca864931c5750113bb9d7` | non_address_book | unknown | unknown | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | exact address book overlap | AccessController<br>`0x8b853de26973b6c772b1e29bb127f1a60130a725` | project_anchor | unknown | live | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | exact address book overlap | Blacklist<br>`0xac472465be19191f3dc96bcb205285d7afc45baa` | project_anchor | unknown | live | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | exact address book overlap | KIBTAggregator<br>`0xdc888b8c76ef26852b6f6c0008d6e2f29a96cb50` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | exact address book overlap | MCAGAggregator<br>`0x357536c1d029cdc7fe588ffeca71db66d2b782aa` | project_anchor | unknown | live | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | exact address book overlap | MCAGAggregator<br>`0xc28372b25ecf0c8acc21a3fd87d22ea13003918d` | project_anchor | unknown | live | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | source verified unclassified | AccessController<br>`0xe3aaef477f95ec345b06b08ab1eb12dbfb92351e` | non_address_book | unknown | unknown | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | source verified unclassified | KIBTAggregator<br>`0xb76c370766947667dcb1677c2818e1e6b7ac0695` | non_address_book | unknown | unknown | verified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a467d59507979168c2185b2e036956670cb1981` | non_address_book | unknown | unknown | unverified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd407dbee29d803164a5dc1193aece283376de867` | non_address_book | unknown | unknown | unverified | n/a | `0x52532a03a23ed231ac3b4138ed2d1a73019b16c2` |
| linea | exact address book overlap | AccessController<br>`0x80a31ce83b1eb76ec4c550d713136efa29701a40` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | Blacklist<br>`0xd34a77c963da4c16eccbee6d0a246047d086da1e` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x27c57d8c5f80868e1ba55ebc78164cefec6e591b` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x41deefd0db39186bda6f52c3b3b89d54540483ac` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x69c6d64efa37a94fb234dbae52f4beae506e27f2` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x6a83fb636e6a5c760b487548acf4af9b100c49e0` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x70434338c1837d384e139f81f0539e83eee5517c` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x7a6aa80b49017f3e091574ab5c6977d863ff3865` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | exact address book overlap | MCAGAggregator<br>`0x5516c211f39c875df43580728de7d274d7444fd1` | project_anchor | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | AccessController<br>`0x3037e0e4e2ae1b7c2376b14920d18bced0c4604e` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x1647f37e6db9756522f6d31ebae01f7ad1e96f7c` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x16a4ead3305e1b265c35915a30004519f09c4940` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x31150b1a1ad3a7cfda76e36aae379efd8f3e00fa` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x34e2324f2ee4ab3b0135eea7f889ce687ec12233` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x3eb85a4d4bec052c71d9cc76ec8d54fa34db661f` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x57bd03210e60c20841b6c0944e5915a146a8f3fa` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x5eb5bd6bf2abca18a56014a916a6571d8a25684d` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x82d9db83eca8b9936ecb2b3a690debb5035b3056` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x959f2d6ada02b929d2824a6eb16f98ac9ea5d69d` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0x96ae4010efb5a89b49896217481d66e858767b8f` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0xc815b8c36439cd4428aa366ed59a700155d8108a` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0xc84f2ce21272f17d92d2a450f1c8567bf0ff448e` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | ERC1967Proxy<br>`0xdc5767bd50dcf947ec90784be717ef011fe6f34e` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KBCToken<br>`0x32cc00ca0e382af2fa9a08770856c98016da664e` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KBCToken<br>`0x91ca2767ad087f69374a79c2a55615c0672df264` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KBCToken<br>`0xc54b48f74bee64f2ae06d8c141215569b81550b7` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KIBToken<br>`0x5ccc9fe16eb0eb822da9331601002bf80fbdd3e8` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KIBToken<br>`0xfe96850285eea29c754473b95900b7db75f2e8e2` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAAccessController<br>`0x85dd3aec1ae4fa5fb495980cbf9fd3e8423be78f` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAAccessController<br>`0xad5c32d6e67d95e460206b7268168c073974ad6b` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAAddressProvider<br>`0x2fb3b498f49e466da6863a745dedc6764bf16840` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAAddressProvider<br>`0x5a22c277da5be9c72e072e31aff2cd4508a77fb3` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAAddressProvider<br>`0xeb4afea42bd9079b5816b4e2d26416860bf0fd12` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAFeeCollector<br>`0x9f9f940704b21c3882c98cf60e15d015693d9056` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMAFeeCollector<br>`0xe12151ecc3f7bed4010f59647bc8fd7dff0db8eb` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMASwap<br>`0x42817db9c0b21b3718b54069267411207decebc1` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | KUMASwap<br>`0xbe5acb0daf2fa7eb0255ba2b20828d6113f06c6f` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | MCAGAggregator<br>`0x782b8c51de03ddf4cd0047a7be900a8c85b034a3` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | MCAGRateFeed<br>`0x26ddb0cdca2e6f565307831f8700f4d1fde25dde` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | MCAGRateFeed<br>`0xec23c6a984bb7763025593a189defbac7c920fca` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | MCAGRateFeed<br>`0xf1de412a3c8db2302d78f7563616ccab6dad07c5` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | PaUSD<br>`0x93bf70bc8aa43c0099a33f5745793532f9e78b38` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | source verified unclassified | WrappedRebaseTokenFactory<br>`0xae136f4926fdb96f73fb5d899ea0cdc3a5efabbd` | non_address_book | unknown | unknown | verified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x1a344570a072612a08ddf92be590faa0097317a8` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x274b3089a718ef7d8efb235578f0717e702b0bce` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x6a9742626917fa15db6639cb6c9b8ba6d3d3f24a` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x6f74f0a232da85afca8fd264a0e6e277dba8bbbd` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x7d9573bc16b75960465e9b9dd8bd8220bc1cecb0` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x83f8eb40f158cfb9f9c8b229584fe49fff15af34` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0x888c2bfd992852e2754dd3cd261bb5bedc2826d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0xc3b9d4a8f77ca47c329607051991f7859334dc3e` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| linea | unverified unclassified | UnnamedContract<br>`0xda8102cb6fa68ad363e214515d0fb14fdeaccfeb` | non_address_book | unknown | unknown | unverified | n/a | `0x5ef26f4483ba3fbc2fd6623c5426e3cbc6400975` |
| mantle | unverified unclassified | UnnamedContract<br>`0x0abf0c3822fee43d58e3ffac870de5c4f969569a` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x2bb3f79b89a33dbcec846ec706c650ccefc742a1` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3015c574217a6980476d2162bc388c3f6e0af6c3` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3bcdd3680e0587bbe1bb4438bf2819adc8b7e0a7` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x63a40299a9ead946adceca267c70600b87d1625b` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x6ff6fd552b14a27b5ac8c47ae534b13f22acae09` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0x8cf40718590f391a45e17afef6880ce68de3494a` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0xab7e636ca60b630febf0b0f3d520bd34c2c3570a` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0xae37de1c998f21cc01a38e5a586a10879fbccfb7` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0xf4b4d246dd088570ff2aef0c95f53cf88d049a17` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| mantle | unverified unclassified | UnnamedContract<br>`0xfdbb8351dfa6a53b38485ac997111ee053a43b27` | non_address_book | unknown | unknown | unverified | n/a | `0x373dd1d9d55dcbb09dd89e13b37020dc815c8dbd` |
| polygon | contamination review | AddressProvider<br>`0x38519093cc62d83e31afb53c00c0bf4dc8fdcd15` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | ConfigProvider<br>`0x20a83af929f1de7d518d49e93f5465d040a9fab4` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | DebtNotifier<br>`0xa88ced4edfd32bcd32de592ea3eec7c03d7d329f` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | GovernanceAddressProvider<br>`0x026fa9b2bc828c7e0acca440fdf77a19d3fa0ecf` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | KIBTAggregator<br>`0x82c3e5aa2b31a9bdcc9149fb8050464d2c77b4f0` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | LiquidationManager<br>`0x4986af7f4194af50586f8236f76bef909cb9d5f3` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | PriceFeedUSD<br>`0x6ee6aca3b1381c8d9fbe9be4d16bbb1bc2b06683` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | RatesManager<br>`0xd58f48f533e3896b51854bd95165fdd87605497a` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | VaultsCore<br>`0x11737d07a928b62b3814ecd1778814a82e3c77ff` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | VaultsCoreState<br>`0x20b55eaba83c3ce27082879be54fe47bbb869e38` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | VaultsDataProvider<br>`0x003b7bdc1adfa3fee002869081cbff4d73646d08` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | contamination review | WrappedRebaseTokenFactory<br>`0x9bdd10f41b4de9dc1d63ae6ff9075c075298f735` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | AccessController<br>`0xc7b973a97f171e964eb3a0949caafbfd1ed77c0d` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | Blacklist<br>`0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x173eb1d561ccefd8e83a3741483a8bd76df827ef` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x2cb7285733a30bb08303b917a7a519c88146c6eb` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x4dba794671b891d2ee2e3e7ea9e993026219941c` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x8df37d42877bfba37309b2503efbcaa7be28bd69` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0xa66818b5bda74c081a9582d8aa8929fae77e214a` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0xb5e2e9c4b4b6dfb7c5cc3b09119f31085d7faa36` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0xd567e0fdc9acb22c41198adef3a399eac849ddbd` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | ERC4626Oracle<br>`0xabd06d7f15123d13c985315ad73a3acab06afa41` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | KIBTAggregator<br>`0xae1e83a79195d401a93bbeb768632ea633f77b50` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | KUMAAccessController<br>`0xfe72616cbaec279a658f1c3bc3c1aa964aa42a54` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | KUMABondToken<br>`0xfff0a94dca02eb764528100e044dc228b3d13e7a` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | MCAGAggregator<br>`0x13414c34da832f4013562e3e461f2a0da961cba9` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | exact address book overlap | MCAGAggregator<br>`0x7e86bce025339a77236adacd4af51f1ebbbbdd94` | project_anchor | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0x00142b50b435a6ddef5d91bfbb7208ecd2a05e7c` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0x02b23b7482c0a6709383045b6738cdb6f9c0a8b1` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0x302888839bdcd5e23b57645365c8bf2ab0652584` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0x4de405bcfda5576fa4275c5dde7002fc02467e23` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0x6bfad31050dff9a5aae81adadf7daf82655d4cd6` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0xaea58dd0a79cdfe14a25d537f6c2e8fd8556f3bf` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AccessController<br>`0xe7ec63ea366a2d345f1fad810269f24e158a5c8f` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AddressProvider<br>`0x3d58b7bbf14d4d97063da613ed1511ae178ebd58` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AddressProvider<br>`0xb89ddc23168442c31792c16d8f352842a5855b88` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AddressProvider<br>`0xdf4f21a00a300dc3f41deb1a40cca4485ccd79fa` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | AddressProvider<br>`0xede77326449271ccd32d45103374e5cbff997c53` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | Blacklist<br>`0xc10367c9a4cf294e9025be5a11294c72946c18ef` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | ConfigProvider<br>`0x44adedae87cda45f9e9b6d49e49db5d583646163` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | ConfigProvider<br>`0xfed8a7930c141c29e5719fe8b44897c5fa7bdb22` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | DebtNotifier<br>`0xeb6b8f833f5aa81cb00a1cc7ef93b6b332a53574` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | ERC1967Proxy<br>`0x86f875ee1d4ec7e0906c6dbd3de36872a0adec87` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | ERC1967Proxy<br>`0xb27615d8a89a1a7d7e690d77aa6e03ea4c679d48` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | ERC1967Proxy<br>`0xecede3d192f2c5488edb2d4f47978115bc5b8ed4` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | FeeDistributor<br>`0x28c1ab6aeabb84491dbafc71d9ebb5cc1d62cd85` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | FeeDistributor<br>`0x8cfa62c16a348f58746634c7478f863df93d04b5` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | GovernanceAddressProvider<br>`0xa918fa95a6a844fff0cca5481e920634cbf47e63` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KBCToken<br>`0xd965ff561c3a67d630157ecdf6170884b0fa9caf` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KIBToken<br>`0x197c9eb5fd433e13b5876a4ae47dbcb2e6dd795e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KIBToken<br>`0xedb20e3cd8c7c149ea57fe470fb9685c4b1b8703` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMAAddressProvider<br>`0x7714fcfe0d9c4726f6c1e3b1275c2951b9b54f65` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMABondToken<br>`0x4bd547ac3adebe3bc15d8257b28b2bef7512f389` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMAFeeCollector<br>`0x7feec0005cbf17f433ee753ad840268d48ffd1b6` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMAFeeCollector<br>`0xd4db0fcf032cfeaa4a5c61ab7452b8a49f3e8a65` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMASwap<br>`0x41d4d26f70951a2134dc862ea6248ffbe2a516bb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | KUMASwap<br>`0xd2a75e38c9aadd747a11561b3c28e54ad6752c82` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | LiquidationManager<br>`0x8b45ce4b1eaac67fa4ed8609710cc0d8cfd22047` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | LiquidationManager<br>`0x97b6d9ba569153e4b43eaacc84a517cbe4f5b740` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | MCAGRateFeed<br>`0x72e923047245d2b58d87f311a2b5b487620ee60a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | PaUSD<br>`0x4811d2a9374db89ec5ffd70be76bd68618233a00` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | PaUSD<br>`0x604bb0aa2be02bcf4f0823400cc21430df667277` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | PaUSD<br>`0xb04e31f3cf7bdbf8b3b843df1a63fd3047cad1f5` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | PriceFeedUSD<br>`0xabb4190ef32cc4c749f12fb6b3191eaf0a128e65` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | PriceFeedUSD<br>`0xb3d014fcb429a1eaf4c98b4a1d7384db47321fa4` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | RatesManager<br>`0xfc3631012bf0c6a24ebfc8eb8a8ed76aa1ff1686` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsCore<br>`0xc1557615dea73d04f206fe3589030a514d58bf83` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsCore<br>`0xefce114978abcd7bbf30949607a0be4ac6c402e9` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsCoreState<br>`0x2caf48182c901ad5240f0219d2252a295a836572` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsCoreState<br>`0x7a33f465118c3f9bd280308c1233adb163665f75` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsDataProvider<br>`0x8a604e5c0ced41064354d055b84fc964aaa9101a` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | source verified unclassified | VaultsDataProvider<br>`0xd0e68bdc9b6084d5675b88f7903cf6ff7f4ebabc` | non_address_book | unknown | unknown | verified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x15c05d10c9f66b5983e3f9b342751f6333da2c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x308466012cf91c926f1d7f3887e84630dbc0ccdf` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e566027661211e33cebaedba21d3fdc95734f76` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f1a2e04f563837ddb49d51713be49b305d5e05e` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0xba75fc937b0c5c18d084d28212fa36617368546b` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc1e17d9e66f505355c9fb9a49e6c2dded1dd6a82` | non_address_book | unknown | unknown | unverified | n/a | `0x45c1155057e9ab63042e2631286b58abe29bb3a6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-02-kuma](https://code4rena.com/reports/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | matched | 4 | 4 | 0 | 7 | high |
| [www.chainsecurity.com/security-audit/kuma-protocol](https://www.chainsecurity.com/security-audit/kuma-protocol) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [2023-02-kuma (GitHub directory)](https://github.com/code-423n4/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2758] code4rena.com/reports/2023-02-kuma — matched: Extracted 11 contracts from scope and findings sections. Audit date from report header.
- [2759] www.chainsecurity.com/security-audit/kuma-protocol — no match: No explicit scope section or file paths found. Contract names inferred from description.
- [11948] 2023-02-kuma (GitHub directory) — no match: Extracted 22 contract names from the scope table (12 contracts + 10 interfaces). Audit end date is February 22, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-02-kuma | KBCToken | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x238134c1d632f0a6719874f51e8152f912d9ab0a` — deployed 2023-05-11 13:24:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6a83fb636e6a5c760b487548acf4af9b100c49e0` — deployed 2023-11-09 15:07:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x8df37d42877bfba37309b2503efbcaa7be28bd69` — deployed 2023-10-26 19:25:21+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KIBToken | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x7a6aa80b49017f3e091574ab5c6977d863ff3865` — deployed 2023-11-09 16:17:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0xf2b5c482358dbaa495d442b57c163dbedbf7868e` — deployed 2023-06-06 14:51:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa66818b5bda74c081a9582d8aa8929fae77e214a` — deployed 2023-11-27 12:00:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x01bf66becdcfd6d59a5ca18869f494fea086cdfd` — deployed 2023-05-11 13:39:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x2cb7285733a30bb08303b917a7a519c88146c6eb` — deployed 2023-10-27 17:22:40+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-06 was 17d from audit; next candidate 43d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KUMAAddressProvider | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x69c6d64efa37a94fb234dbae52f4beae506e27f2` — deployed 2023-11-09 15:07:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0xdc024bf64f893a682008083e805c9a204f3d7dc9` — deployed 2023-05-11 11:11:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4dba794671b891d2ee2e3e7ea9e993026219941c` — deployed 2023-10-26 19:21:19+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KUMAFeeCollector | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb5e2e9c4b4b6dfb7c5cc3b09119f31085d7faa36` — deployed 2023-11-27 18:51:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x400e0202f84322421f8ad32ca61208bf8c62ad25` — deployed 2023-05-11 13:43:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x45eac983c3a535d4ef2c41c903b377945414d331` — deployed 2023-05-15 09:50:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd567e0fdc9acb22c41198adef3a399eac849ddbd` — deployed 2023-10-27 17:25:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x70434338c1837d384e139f81f0539e83eee5517c` — deployed 2023-11-09 16:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | KUMASwap | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb1ab37ef0df6d2b8294e5fa2bf03a455e4951cda` — deployed 2023-05-11 13:48:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x41deefd0db39186bda6f52c3b3b89d54540483ac` — deployed 2023-11-09 16:14:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73` — deployed 2023-10-27 17:20:12+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xcb32e7455ee7574173ec89355b6a1c715e222fa1` — deployed 2023-05-15 09:51:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc` — deployed 2023-11-27 18:27:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | Blacklist | ambiguous — not counted | Blacklist (alternative) `0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0` — deployed 2023-10-26 12:32:02+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xd34a77c963da4c16eccbee6d0a246047d086da1e` — deployed 2023-07-17 16:25:19+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xac472465be19191f3dc96bcb205285d7afc45baa` — deployed 2023-05-10 12:07:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | KYCToken | unmatched — not counted | — | listed in scope and Low Risk section | no |
| code4rena.com/reports/2023-02-kuma | KUMABondToken | ambiguous — not counted | KUMABondToken (alternative) `0x74e9e8d1365358f0ec416e24f723e36181b79a7b` — deployed 2023-05-10 12:08:23+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a` — deployed 2023-07-17 16:30:59+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0xfff0a94dca02eb764528100e044dc228b3d13e7a` — deployed 2023-10-26 12:33:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | MCAGAggregator | ambiguous — not counted | MCAGAggregator (alternative) `0x13414c34da832f4013562e3e461f2a0da961cba9` — deployed 2023-09-12 18:15:57+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x5516c211f39c875df43580728de7d274d7444fd1` — deployed 2023-07-17 16:39:41+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x357536c1d029cdc7fe588ffeca71db66d2b782aa` — deployed 2023-05-15 09:30:23+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x7e86bce025339a77236adacd4af51f1ebbbbdd94` — deployed 2023-10-26 12:42:35+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0xc28372b25ecf0c8acc21a3fd87d22ea13003918d` — deployed 2023-05-11 10:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | WadRayMath | unmatched — not counted | — | listed in scope and Low Risk section | no |
| code4rena.com/reports/2023-02-kuma | MCAGRateFeed | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x173eb1d561ccefd8e83a3741483a8bd76df827ef` — deployed 2023-10-26 19:25:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x6596a0df031674b28673cf4b0fccdae70dfd9daf` — deployed 2023-05-11 13:29:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x27c57d8c5f80868e1ba55ebc78164cefec6e591b` — deployed 2023-11-09 15:08:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/kuma-protocol | KUMABond | unmatched — not counted | — | mentioned as tokenized NFTs | no |
| www.chainsecurity.com/security-audit/kuma-protocol | KIB | unmatched — not counted | — | ERC-20 token mentioned as audited | no |
| www.chainsecurity.com/security-audit/kuma-protocol | DeprecationMode | unmatched — not counted | — | mentioned as safeguard | no |
| 2023-02-kuma (GitHub directory) | KUMAAccessController | ambiguous — not counted | KUMAAccessController (alternative) `0xfe72616cbaec279a658f1c3bc3c1aa964aa42a54` — deployed 2023-10-26 19:17:27+03 — liveness: live (current_address_book_code)<br>KUMAAccessController (alternative) `0x5fad6f80312aee6f19784a7fc359f90d441163de` — deployed 2023-05-11 11:11:23+03 — liveness: live (current_address_book_code)<br>KUMAAccessController (alternative) `0xb9cee0c302ef2844ef78f41800ce73c13b6a52ae` — deployed 2023-11-09 15:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | AccessController | ambiguous — not counted | AccessController (alternative) `0x8b853de26973b6c772b1e29bb127f1a60130a725` — deployed 2023-05-10 12:03:59+03 — liveness: live (code_present_context)<br>AccessController (alternative) `0xc7b973a97f171e964eb3a0949caafbfd1ed77c0d` — deployed 2023-10-26 11:24:13+03 — liveness: live (code_present_context)<br>AccessController (alternative) `0x80a31ce83b1eb76ec4c550d713136efa29701a40` — deployed 2023-07-17 12:57:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | Blacklist | ambiguous — not counted | Blacklist (alternative) `0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0` — deployed 2023-10-26 12:32:02+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xd34a77c963da4c16eccbee6d0a246047d086da1e` — deployed 2023-07-17 16:25:19+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xac472465be19191f3dc96bcb205285d7afc45baa` — deployed 2023-05-10 12:07:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KBCToken | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x238134c1d632f0a6719874f51e8152f912d9ab0a` — deployed 2023-05-11 13:24:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6a83fb636e6a5c760b487548acf4af9b100c49e0` — deployed 2023-11-09 15:07:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x8df37d42877bfba37309b2503efbcaa7be28bd69` — deployed 2023-10-26 19:25:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | MCAGAggregator | ambiguous — not counted | MCAGAggregator (alternative) `0x13414c34da832f4013562e3e461f2a0da961cba9` — deployed 2023-09-12 18:15:57+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x5516c211f39c875df43580728de7d274d7444fd1` — deployed 2023-07-17 16:39:41+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x357536c1d029cdc7fe588ffeca71db66d2b782aa` — deployed 2023-05-15 09:30:23+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x7e86bce025339a77236adacd4af51f1ebbbbdd94` — deployed 2023-10-26 12:42:35+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0xc28372b25ecf0c8acc21a3fd87d22ea13003918d` — deployed 2023-05-11 10:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | MCAGRateFeed | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x173eb1d561ccefd8e83a3741483a8bd76df827ef` — deployed 2023-10-26 19:25:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6596a0df031674b28673cf4b0fccdae70dfd9daf` — deployed 2023-05-11 13:29:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x27c57d8c5f80868e1ba55ebc78164cefec6e591b` — deployed 2023-11-09 15:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KYCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | KUMAAddressProvider | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x69c6d64efa37a94fb234dbae52f4beae506e27f2` — deployed 2023-11-09 15:07:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xdc024bf64f893a682008083e805c9a204f3d7dc9` — deployed 2023-05-11 11:11:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4dba794671b891d2ee2e3e7ea9e993026219941c` — deployed 2023-10-26 19:21:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMABondToken | ambiguous — not counted | KUMABondToken (alternative) `0x74e9e8d1365358f0ec416e24f723e36181b79a7b` — deployed 2023-05-10 12:08:23+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a` — deployed 2023-07-17 16:30:59+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0xfff0a94dca02eb764528100e044dc228b3d13e7a` — deployed 2023-10-26 12:33:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMAFeeCollector | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb5e2e9c4b4b6dfb7c5cc3b09119f31085d7faa36` — deployed 2023-11-27 18:51:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x400e0202f84322421f8ad32ca61208bf8c62ad25` — deployed 2023-05-11 13:43:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x45eac983c3a535d4ef2c41c903b377945414d331` — deployed 2023-05-15 09:50:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd567e0fdc9acb22c41198adef3a399eac849ddbd` — deployed 2023-10-27 17:25:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x70434338c1837d384e139f81f0539e83eee5517c` — deployed 2023-11-09 16:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KIBToken | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x7a6aa80b49017f3e091574ab5c6977d863ff3865` — deployed 2023-11-09 16:17:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xf2b5c482358dbaa495d442b57c163dbedbf7868e` — deployed 2023-06-06 14:51:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa66818b5bda74c081a9582d8aa8929fae77e214a` — deployed 2023-11-27 12:00:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x01bf66becdcfd6d59a5ca18869f494fea086cdfd` — deployed 2023-05-11 13:39:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x2cb7285733a30bb08303b917a7a519c88146c6eb` — deployed 2023-10-27 17:22:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMASwap | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb1ab37ef0df6d2b8294e5fa2bf03a455e4951cda` — deployed 2023-05-11 13:48:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x41deefd0db39186bda6f52c3b3b89d54540483ac` — deployed 2023-11-09 16:14:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73` — deployed 2023-10-27 17:20:12+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xcb32e7455ee7574173ec89355b6a1c715e222fa1` — deployed 2023-05-15 09:51:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc` — deployed 2023-11-27 18:27:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | IBlacklist | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IMCAGRateFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | MCAGAggregatorInterface | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKYCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKBCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMAFeeCollector | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMAAddressProvider | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMABondToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKIBToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMASwap | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8b853de26973b6c772b1e29bb127f1a60130a725` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc7b973a97f171e964eb3a0949caafbfd1ed77c0d` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x80a31ce83b1eb76ec4c550d713136efa29701a40` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac472465be19191f3dc96bcb205285d7afc45baa` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7cdfc6da2da4af63fe260c1273ec13f3ba51f0c0` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd34a77c963da4c16eccbee6d0a246047d086da1e` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8df37d42877bfba37309b2503efbcaa7be28bd69` | KBCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6a83fb636e6a5c760b487548acf4af9b100c49e0` | KBCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01bf66becdcfd6d59a5ca18869f494fea086cdfd` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x197c9eb5fd433e13b5876a4ae47dbcb2e6dd795e` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2cb7285733a30bb08303b917a7a519c88146c6eb` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7a6aa80b49017f3e091574ab5c6977d863ff3865` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5fad6f80312aee6f19784a7fc359f90d441163de` | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfe72616cbaec279a658f1c3bc3c1aa964aa42a54` | KUMAAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb9cee0c302ef2844ef78f41800ce73c13b6a52ae` | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4dba794671b891d2ee2e3e7ea9e993026219941c` | KUMAAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x69c6d64efa37a94fb234dbae52f4beae506e27f2` | KUMAAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74e9e8d1365358f0ec416e24f723e36181b79a7b` | KUMABondToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfff0a94dca02eb764528100e044dc228b3d13e7a` | KUMABondToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a` | KUMABondToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25b23dd1b3432a55d405e17587594e17f9e74424` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x400e0202f84322421f8ad32ca61208bf8c62ad25` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7feec0005cbf17f433ee753ad840268d48ffd1b6` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd4db0fcf032cfeaa4a5c61ab7452b8a49f3e8a65` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x70434338c1837d384e139f81f0539e83eee5517c` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43ea73168b8f192dbdec088da29f2c5e517f6fcb` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4cd485a0d20252ac3a145086052e5f661a15dcdf` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbcc3824ec54e49f06423f23f02385b4ea98b4ebc` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x41deefd0db39186bda6f52c3b3b89d54540483ac` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x357536c1d029cdc7fe588ffeca71db66d2b782aa` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc28372b25ecf0c8acc21a3fd87d22ea13003918d` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x13414c34da832f4013562e3e461f2a0da961cba9` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7e86bce025339a77236adacd4af51f1ebbbbdd94` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5516c211f39c875df43580728de7d274d7444fd1` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x173eb1d561ccefd8e83a3741483a8bd76df827ef` | MCAGRateFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x27c57d8c5f80868e1ba55ebc78164cefec6e591b` | MCAGRateFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8689e8740c23d73136744817347fd6ac464e842` | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x76d8b79fb9afd4da89913458c90b6c09676628e2` | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf4ce7cd4f8891ecf1799878c3e9a35b8be57e09` | WrappedRebaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2f0b4300074afc01726262d4cc9c1d2619d7297a` | WrappedRebaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 16 ambiguous, 16 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: temporal_name=4

Zero-match audit list:

- [2759] www.chainsecurity.com/security-audit/kuma-protocol
- [11948] 2023-02-kuma (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
