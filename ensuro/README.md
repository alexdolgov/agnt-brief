# Agentic Audit Brief: Ensuro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ensuro (`ensuro`)
- Website: [https://ensuro.co](https://ensuro.co)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon
- Contract surface: 157 unique implementations (353 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,102,228.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ensuro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 116 contract row(s) across ethereum, polygon. Structural roles: 113 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 116
- Structural roles: unclassified (113), supporting (2), core (1)
- Contract kinds: contract (115), abstract (1)
- Detected standards: erc165 (1), erc1967proxy (1), erc20 (1), multicall (1), pausable (1)
- Frameworks: openzeppelin (3), aave (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EToken (`0x495d416920ab6c9bba6b35f2f4ac1976ab50b191`, chain 1)
- EToken (`0x54012f190d3facadd0f6b66897e94f08d812577b`, chain 1)
- EToken (`0x6192b45fe7ed857fb607c086eec69b1f237e4302`, chain 1)
- EToken (`0x6bf86ad735d7a4ee52c9c2a8d9e8a275e70f7895`, chain 1)
- EToken (`0xa695f844dfaecd3eba2234d39cc0fb96c2880fb7`, chain 1)
- EToken (`0xcd71f1e7e01926cc0c3f5257f3b49a73844d48bf`, chain 1)
- PremiumsAccount (`0x09a1e8bbb53b523003bf7300e859458a0a04abd6`, chain 1)
- PremiumsAccount (`0x0c798aa7d4638626f15af8021f2df47571d0a811`, chain 1)
- PremiumsAccount (`0x1a4a62d7aa58a079c7c6d28618423fd783012f43`, chain 1)
- PremiumsAccount (`0x2dd9dbbeff5bc7569c669652bb9665e06cf55747`, chain 1)
- PremiumsAccount (`0x8ae72a3bbbe37cf5a31e3ca7100f129c6c62a2f2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 116; live-surface rows included: 116 (35 live, 81 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/98 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 38 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 133
- Confirmed-live implementations: 19 of 157 unique; 138 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/151
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 157
- Raw deployments: 353
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 1.3% | 2025-12 |
| SlowMist | Tier 1 | 2 | 1.3% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LPManualWhitelist | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384384 | `0xca0d8d067f6698c8ffa03a551b68d45bc728e545` | ✅ Audited |
| PolicyPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384382 | `0xd81a8b5be59ceae0f9e27455a998b4fdac9fa0a3` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3InvestStrategy | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384356 | `0xd74a28274c4b1a116add9857fc0e8f5e8fac2497` | ⚠️ Unaudited |
| AccessControlAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x90c5a7d0c2c83ff3d145a2cf7f20b97253c5477d`; polygon `0xe8b412158c205b0f605e0fc09dcda27d3f140fe9` | ⚠️ Unaudited |
| AccessManagedMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8f73f5e41b17c73e16962b04c7be2d193e64b18f`; polygon `0xef2f735dff065268389440fd7b9612ede8a10a0e` | ⚠️ Unaudited |
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x367a03acd2f4df96871b891c0bad32b9f2f3a9d4`; ethereum `0xc3d6b7dc889173bcbb25015ecee62d93cd373c07`; ethereum `0xf5866b62f97c67f5d10de87b62bd50c053e69b3e`; polygon `0xa29df9825f283b2fa7a26b4627f84ada80cdd79a`; polygon `0xf5866b62f97c67f5d10de87b62bd50c053e69b3e` | ⚠️ Unaudited |
| AccessManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384335 | `0x47e2afb074487682db5db6c7e41b43f913026544` | ⚠️ Unaudited |
| AccessManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384404 | 2 deployments: polygon `0x47e2afb074487682db5db6c7e41b43f913026544`; polygon `0x691a4d0963fc9f26a599b9a45ef92ead0122efb8` | ⚠️ Unaudited |
| AccessManagerAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x144749b06376f949992123481441cfd0a9a077e5`; polygon `0x52050109459781daf99c2a63c6ed15d5abdbc4c0`; polygon `0xbf148e1d4c83cc4f3047a5b8926c6ce6c4bdcc64` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa4d94019934d8333ef880abffbf2fdd611c762bd` | ⚠️ Unaudited |
| BatchRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa433f6dab80083beb2fee9ef0af8226751cac317` | ⚠️ Unaudited |
| CashFlowLender | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384327 | `0x291a65f1131950e37beda71a931a4dd33408d0d2` | ⚠️ Unaudited |
| CashFlowLender | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384385 | `0x5fe11f30647899dca35f9f2f62b8c51856ae33e6` | ⚠️ Unaudited |
| CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384386 | 2 deployments: polygon `0x02221b21775e5a3f5472403660b181b792e3dd58`; polygon `0xccd55d27ae681682f5ed2b04ef21069d4ec24982` | ⚠️ Unaudited |
| CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2efd180a3423edb5d71360ddbdb651101e430b08`; polygon `0xd5b68bdc0606537f9ea528a7223cd9ce75da8ee7`; polygon `0xd8f30147961b99d89222e660b3d3855c5eb12330`; polygon `0xdda5c127d7582e50622a4634fd1737a324af3f70` | ⚠️ Unaudited |
| CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6cacea88486260ef7e6fde39bab3236c908d10b5`; polygon `0x74e4f7a320c7716e986c1bf5e6916dc5631c4be5` | ⚠️ Unaudited |
| Cooler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x492e505ef2fd4ca30d60c9caa5becda56f074c6a`; ethereum `0x9ec1c481e77fe05aa3e55bee3ea21242a18e255b` | ⚠️ Unaudited |
| CurrencyMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x992a2b3381ad95ec22418caa9b9fb0e1d2715df7`; polygon `0xbfe4a3ba918af88774b6ada381bc564bdfc42f63` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55e2c23ab6adc12accf1075b91c174ee0102` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0` | ⚠️ Unaudited |
| ERC2771ForwarderAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x101deab893c3eef3e705e771edc2a0245addec73`; ethereum `0x62e4790f5c7ea5d327f20108dc698b7bb2d023e9` | ⚠️ Unaudited |
| ERC2771ForwarderAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb89e74f06c0463b6ff5b479eabe00dc8299a106` | ⚠️ Unaudited |
| ERC4626AssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x33681a76efbc8e7c0a7a08b36b9d16c895f8d86f`; polygon `0x4b9d6ad3a0efd9d52b3b54ac21cb6bb0d47609a1`; polygon `0x89f2c01103203b0c77019de493c8af2699e8ac12` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384410 | 2 deployments: polygon `0x1858a315c225a692ba40c3fc7a143362e31a85e8`; polygon `0x92d4737a5ee924031d16baaada6eaab7d591a014` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x199a1f7c986b987ce5c68a07e17e8e77baabbde7`; polygon `0x36d0498f725f5f38af1c60b8e7339bcfe9ed72d8`; polygon `0x4187e06fa34d5e781a07ba97df00dfe19b6586c6`; polygon `0x4e069382ea544eda4fd47787da62137a2ca85fe2`; polygon `0xa72b2b49788114cdca748449b49ae0087848192a`; polygon `0xb642d98ebde34ba8dcbc4b3b5010433245309d50` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x1d04a92400d0b07182b895619216ada309293b85`; polygon `0x401fc54e9d7484349f8a7f19527e5a1f1f45be0f`; polygon `0x5a38cbdaaeb6f04c60f4fe8e21819d3eff6b351f`; polygon `0x7a95c454223f23e363bb00f7d6da287f345d06a9`; polygon `0x9b0b4fedfce20f6452c2ec0b9da33cbb0ce01bb3`; polygon `0xc493362da7a1b2e20b00717bd8e99dafa2e1cd16`; polygon `0xccf28132db3024d6c19916640e655173b96c8373` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x1d878bc19bdb2d3d3eb6236def6add3461bdf113`; polygon `0x42015e95ce7c0c21df273291491df5baf2d6708a`; polygon `0x4dbd846765cea50fc738c0a8fde5bae9d8a5f6c5` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 2 deployments: polygon `0x8029306034a8d085cb5b5f3f5bb068692bba8261`; polygon `0xa321383e5888eb9c2a24e90feb0647ece82f056c` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384413 | 2 deployments: polygon `0xc0cad6c4910aa0c4e72b657b9baf8cbf81e4ec76`; polygon `0xfeddf0af6aa75dfc175bdab964d5a8f6683e1aaf` | ⚠️ Unaudited |
| ERC4626InvestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x7c19bc765460028ddd087167b8af4a77a5dff81d`; ethereum `0xde79ce5b2d867ec67c73d64dedfbcde8ab95ca80`; ethereum `0xf7bbf9ac5feb6f03913eed5b24c1df190f81b9ca`; polygon `0x758130f2204ad60cca03b9b03c467bfa32b0a33d`; polygon `0xe89598eb480903aa95d0ea6c2d3b106495df245a` | ⚠️ Unaudited |
| ERC4626PlusVaultAssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0a175e57deff6f5357a1ee047f63fdcf7bf411e2`; polygon `0xa2679feca2931eb13ad6926ddc0415b4c5632b7b`; polygon `0xa5a2b09868ba5a95535824e727dbc4555c7a8d85` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384381 | 2 deployments: ethereum `0x12a4f34d27b1d54defd4eb39799971e26d9025e7`; ethereum `0xa695f844dfaecd3eba2234d39cc0fb96c2880fb7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384373 | 2 deployments: ethereum `0x176057c7d384ffc8fee977615e4bf9c31f5341c2`; ethereum `0x495d416920ab6c9bba6b35f2f4ac1976ab50b191` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384383 | 2 deployments: ethereum `0x2cf13b8b1467ce1a651767dcd498c607955a7387`; ethereum `0xcd71f1e7e01926cc0c3f5257f3b49a73844d48bf` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384374 | 2 deployments: ethereum `0x54012f190d3facadd0f6b66897e94f08d812577b`; ethereum `0xb375f428de1143bd08eb20151559a221744249c7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384375 | 2 deployments: ethereum `0x6192b45fe7ed857fb607c086eec69b1f237e4302`; ethereum `0xfa9888b740031fa16e635244a6a33a5851980b34` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384377 | 2 deployments: ethereum `0x6bf86ad735d7a4ee52c9c2a8d9e8a275e70f7895`; ethereum `0xa551285b49a29cbdbae7fc5c6a61fadc918ad224` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384389 | 2 deployments: polygon `0x08639cb1477136188122ade83aaa300821b147bf`; polygon `0x55bae6690d46ea94d7f05df7c80a85e322421fb6` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | polygon | n/a | 6 deployments: polygon `0x0aa6623be5b293fdde18ae0095163785a0b0e4e3`; polygon `0x15f76f59a29c7c12b4a67751ca525bf9167c1aab`; polygon `0x1c7f0c8ba10db7f2e1c7b5b0a024b66b6baceb45`; polygon `0x45435f79103472ed62fb9c92f04c50b188b22b99`; polygon `0x92624870dc092c36943682375df8246bf126d410`; polygon `0xb1dff6ce862273adca2b9efd96a8976764ac7414` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 3 deployments: polygon `0x138ca65ae1fb2a24041708ffe1bf757198b3d50e`; polygon `0x32a9cbeb2ca148e55f327c6b4673351dd03ed858`; polygon `0x71d390c243706b713b5d2b077e942223f7a55d00` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x167107ec321f723c5a412968e19731cfcd16b823`; polygon `0x16b1da32d515d39c1740350ad037d0596304a406` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384397 | 2 deployments: polygon `0x1c48accaf6f8106883aa1973a45f02525652defc`; polygon `0x40148286264353d8788e0ae0f45527a3b15d4e06` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384392 | 2 deployments: polygon `0x28e03984451a4c0540ee30b16104c0f24786ef0e`; polygon `0x8d2ee82c4172b2138b06b8037d769cbfaf9c0274` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x32bebbfeb5d1b904799729bfad216baa709615c5`; polygon `0x623677be20a9cb9c274c69b00f9d63772d373cd7`; polygon `0x732088771cf528d29937c5aee0b14a29379934a6`; polygon `0x883a45c52fff60505ef4d6ff3f6f32f9b9f63f8f`; polygon `0xbc05fad306f233bb7cc739148a0c1bcf486c7df0`; polygon `0xbca3ddf5e3b3fc75831dd09f4bfc97b713d13823` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384401 (2 proxies) | 3 deployments: polygon `0x53802d49ad788306e523233b3e0231ff1d09000c`; polygon `0x6229d78658305a301e177f9daea3a0799fd1528c`; polygon `0xe36d6585f0c200195b196c66644c519e7674b476` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 3 | polygon | unit-384402 (3 proxies) | 4 deployments: polygon `0x5be65258c1583051d60afe2a99c79d846fce9546`; polygon `0x6a0e61c757e384eb1e4a2b94f7e02e68e4b4515e`; polygon `0xbc33c283a37d46aba17bc5f8c27b27242688dec6`; polygon `0xf383ef2d31e1d4a19b3e04ca2937db6a8da9f229` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384418 (2 proxies) | 3 deployments: polygon `0x9078dddea2f82c27791ef78a9ec9ab0f66bfb6f9`; polygon `0x9f967c614c9573cc4eabe68ae0354e5d11f7ec9d`; polygon `0xec41224305671f942cba36a206238ba1c7ac5aab` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb96eaaa2fdf6548b0b2a4f65234318d274cf6af2`; polygon `0xce9cd5b4a2091fc725c699994b67b1c234b14bc1` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6202a078af9ba596133d4aaa056f09361228f681`; polygon `0xc17e601791d3ef6c75042f2e055af7fad178c54b` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9819891095f88249be0990afb8c93303115992db`; polygon `0xc77b1d40599f8ea87c2015ee49dc9530da0eb4aa` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2174b42dfe6461538af5e1e837edd767703664` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384394 | 2 deployments: polygon `0x2bb7644221cfcc35a1c99ed7167391ff82fe4c08`; polygon `0x31f1c2705a7994e74aa9a5d8a8c6fc8b330c3849` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384399 | 2 deployments: polygon `0x4d2da537e0c6c8c63f74c0563b14a8d2b6d835ae`; polygon `0xe7dc8cdb94f0a44a930294acc8f2f28dfd3cdeae` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x747be075b8ed012659103905fb0096783c9af311`; polygon `0x8d2ccbaf433306a57d668ec19b3ac570015eaace` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0096aff75e76648ca9fafbcbad77cc38dff9e59d`; polygon `0x43882ade3df425d7097f0ca62e8cf08e6bef8777` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x023c94de38d3b7b57e00045fdf8c9362f6be77c8`; polygon `0xca583ccbdbe67a81851f652ad2e82896b6209a32` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0847308da19f826b2d7379b134d9a959245f55c0`; polygon `0x90d04a6f89cd964fca8df3472ff6ec1d2c4082a5` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2e25a28ecbd7e8e70dabb1ca79bf6b4ea5aada26`; polygon `0xb37c4437ece439a71dbb764d7df14050fbafa197` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384395 | 2 deployments: polygon `0x32ca53d87540dbb86731931365c2d5f872c3a70b`; polygon `0x3eab5b880b83607288744f35e778d60d0cd6539f` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3d6c6488edb8024276ea0e2376826aecc1ce57ca`; polygon `0xc4d328ac42d0cb88d960794fe3a6e4faad493e93` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384409 | 2 deployments: polygon `0x91d44ed99aba67fcf5f9f3da0648358a16dad830`; polygon `0xe64b6b463c3b3cb3475fb940b64ef6f946d6f460` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa1edaf03813e7f68d7e980f47a284b869581910d`; polygon `0xa60bcf11c5ddf0bcad0890252862d97f2660b1db` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xca3f0a0fce99c8aa19f46611a90c326dde2429df`; polygon `0xfc8199ce4e392e5bcd7ea57da3fc3a8eb7e7af2e` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd76171900fc9e1bf6e9c79a243f507a2a69f088a`; polygon `0xdf0e56e890a9001152aff1fc4b6fe2ef618f66ce` | ⚠️ Unaudited |
| FullSignedUW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb259d0267cdf1852714f6a3037551fd577170cf0` | ⚠️ Unaudited |
| IdleInvestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xdd71d390fa6087d7ae3d2ae3ac9e5a6bc2e1e570`; polygon `0x1c8b0245a1028ea4b27e1d9afc9f45d895e08d12`; polygon `0xebeb6d29b642d8dade3d97801bfe3cf9280c0047` | ⚠️ Unaudited |
| LimitOutflowModifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x90f9b3b51632a530b065f7d2285faf8f93de3efa`; polygon `0xec9b26ef15405aedcddc46a2c3837f81a19de36f` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384339 | `0x4e8ac0b7dd930aa814d8bd0dc6e4adf692b897dc` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xe43be3c635db0862a49b606ea2f3bd1205518bf5`; polygon `0x5dff0f8f5b0713405978162b146db7d896bbb9be` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384415 | 2 deployments: polygon `0x99b2949f4b12bf14f9ad66de374cd5a2bf6a0c15`; polygon `0xccb8dcc5efcec39e8425d85cafed75a9bfc5cf6e` | ⚠️ Unaudited |
| LPManualWhitelistV20Upgraded | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x05c77923d13a9efdb651d52b73b7f4b4f33f95e3`; polygon `0x13f6d7205c57060fc9c2faea43906a11501a3fc4` | ⚠️ Unaudited |
| MerklRewardsInvestStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xa637f498f73322dca6587189af8271b215ffedf5`; polygon `0xa67c6b969b97c470f22b6792935200de829cfbf6` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xe108fbc04852b5df72f9e44d7c29f47e7a993add`; polygon `0x781fb7f6d845e3be129289833b04d43aa8558c42`; polygon `0xacb0dce4b0ff400ad8f6917f3ca13e434c9ed6bc` | ⚠️ Unaudited |
| MigrateAssetMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d35426db6db23bf09ea59bcac21f25e20c38cd7` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384406 (2 proxies) | 3 deployments: polygon `0x48ff8b1493c6a3545aea3f0812f1303e2f958bf4`; polygon `0x7426feefd89a36237eeb53095cf64967d3c4924c`; polygon `0xf6b7a278affbc905b407e01893b287d516016ce0` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x81e9a64029e2b103d634a4fb829adcca90d84454`; polygon `0xa53000ea6e0218c45a3c4eeaa2813ef75269af91`; polygon `0xfd82f676b0482eb8f29fdcc41d4166082242a589` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x936dac0eea5e4e90b8384b96d1aa6284ce106f71` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384391 | 2 deployments: polygon `0x0917c28b736746f9a32652cd2c66e918cc9d26c9`; polygon `0x28d3e29c5e1d953acb7361aa1e3a1d9abedee14e` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe98aaae0df8bcaf501c27373eb9c3eedde623e85` | ⚠️ Unaudited |
| MultiStrategyERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0b351dfdbe5a1f329c2a1229708dc7b2e3a7ec0e`; polygon `0x1ee585dcea25cbda16be8cfefa381a1f32aca418` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-384368 | 2 deployments: ethereum `0x167107ec321f723c5a412968e19731cfcd16b823`; ethereum `0x55bae6690d46ea94d7f05df7c80a85e322421fb6` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x14f6dfee761455247c6bf2b2b052a1f6245dd6fb`; polygon `0x48ddc33fe54ed84121163f5e05e35e48314897a4` | ⚠️ Unaudited |
| P2PSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x934164f9bbf4ec0f89d4e1f201efce61a9378377`; ethereum `0xa87ce1341bcc24671696077c022f5f21586c1aba`; polygon `0x7801cfc789721138aba7ffd957653b9aa1872952` | ⚠️ Unaudited |
| PolicyPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384346 | `0x9165f165b6ba787b5d7007b3ca8dbf12edb23463` | ⚠️ Unaudited |
| PolicyPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0xb135570eb4a137077f0b56f59a5449e1283c84a0`; polygon `0x076fb4a3de7a4285ac660fd52cebf924f67f480b`; polygon `0x32d54f1038c7eeca244cfdece35e1dcd17146a78`; polygon `0x367a03acd2f4df96871b891c0bad32b9f2f3a9d4`; polygon `0x49b11da205f06dd76bad4e10a250471e35b8e154`; polygon `0x9633bebbc4718db35b307e7112fa4e59fdc728b7`; polygon `0xb06afa946a2adcace2c0d9e587cbba6279a76d8d`; polygon `0xd1ab94c762e677d2bc45c51ff4a4f85fe84f1251`; polygon `0xd7f8c39c61b25f9061b5f2d4ad7608892c9c01db`; polygon `0xd9547838ed04c8bbe6c078bf83655698ce4f3ef8` | ⚠️ Unaudited |
| PolicyPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384403 | 2 deployments: polygon `0x649b1e8c25763b1e83b73f76961662e0d4e813cc`; polygon `0xd74a28274c4b1a116add9857fc0e8f5e8fac2497` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384366 | 2 deployments: ethereum `0x09a1e8bbb53b523003bf7300e859458a0a04abd6`; ethereum `0x644da701e26631dde184da081395ace07f49c162` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384369 | 2 deployments: ethereum `0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc`; ethereum `0x1a4a62d7aa58a079c7c6d28618423fd783012f43` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384367 | 2 deployments: ethereum `0x0c798aa7d4638626f15af8021f2df47571d0a811`; ethereum `0x585b9b700e557f3c314d5c50137d5d100b4b5a85` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384372 | 2 deployments: ethereum `0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9`; ethereum `0x2dd9dbbeff5bc7569c669652bb9665e06cf55747` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384379 | 2 deployments: ethereum `0x33918bdc50e021d057145e17d3f31ac97f589e1d`; ethereum `0x8ae72a3bbbe37cf5a31e3ca7100f129c6c62a2f2` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x005eae67dadc009f18e7045debee98178025e105`; polygon `0x0d40f5042c203eedfa2f9629f5040821bb5f5678`; polygon `0x2a85bed31fd409e86cd781727fc5f60b7c506e0b`; polygon `0x68c6615638622ab7b70d4cc23bb1b369d56d3aaa`; polygon `0x6da61244507b532e9ded174033c8c8aa7f9af084`; polygon `0x9e7cfc91440c1963590c522bf2ef71af32c2681c`; polygon `0xb44083b7edc46d5c9aec575580a82def2fb324ae`; polygon `0xf5f3209e6c3f12dea67a8c87a2393f4c6adb3616`; polygon `0xf6a4298ce72b4fa1ef07442ca9a1db86a0c7723f`; polygon `0xfc61b42cf47489e93a1dbde73d511789dcc33344` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384388 | 2 deployments: polygon `0x056bf85398cb0ab9313a7a06cf020768533fa4e5`; polygon `0x47f35b4876138b5d96ffded1e46ae6b58e6e7b31` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384390 | 2 deployments: polygon `0x06347ea3da6a5b44eeae3b8f4a65992ae073e6f4`; polygon `0x1117754961a2c1ff0f8d78cc6d56558851da21a4` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0f24c37f024d7bfc1d9b53377107c8cea73cf4ca`; polygon `0x1d71e3901db121f05a4a06f92440108055386355` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x11b490292799a0edfe37797592f77151c4483442`; polygon `0x4dd7ae0abc41defca2924d93bef312e0f22b4d21` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x21b8fc59ff2fb1ba0d4fc485aa7cb3a8d0c5da91`; polygon `0x6d3c1a6fdf608015c2fad134f4db533d6e621283` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2f2b6a02a9870d16a2b7126aacd18c99bf235806`; polygon `0x452929d6863fea518f374dacb3ac3f854c0c5fdc` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x33f7b7eeeca6c8d5d52f06f6808e0c3581ff0957`; polygon `0x6cb730df6b3db5baac5fd96f50b04005c1b3a5f7` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b8d6cae8d625d1f2494ef3ac21e9ba41f9bea8d`; polygon `0x41b5a105c850014ec594879e8511994f25092460` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x41716b609e6eacf05a129e5ccf4188606c025d1e`; polygon `0xd26d5015c57c197ae5e7bc866b49837d22364eab` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384398 | 2 deployments: polygon `0x42118df6ebb18346ca425f1c67ac739e95ad9358`; polygon `0x4626e53d4df165f4b0a586470c73b022d25c09af` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x494fcb06625260de267d2325f9eb41e1f745966d`; polygon `0x72b74498a400ef16c669d8a23d19e672846a8dcf` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384411 | 2 deployments: polygon `0x4f43b8f252887f814ed689346fdb5bd266394520`; polygon `0xb12420e76af8d79b763a067a857c3fbf107b2f0b` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x585d65636acb42d8ec6b540ea6c688061037cf90`; polygon `0xf7ef82a521d6bd4b2cdaa3a1beb30fb724930651` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x74b3476742542e0e8863e7ba5ec931d038728c75`; polygon `0xa490d80a80c8e547d040ce3abbdcc8ccad584e4c` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x76d33267ebbb0ba2f68e3c7a3c5e994c628f6926`; polygon `0xa4c5fce6e29e74ea390d4d726e5f60bd4c7017dd` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384407 | 2 deployments: polygon `0x7778299e79cc0bc10a18a00547e72a3c016c521a`; polygon `0xc1a74eac52a195e54e0cd672a9dab023292c6100` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384408 | 2 deployments: polygon `0x79f0a51bfa5c489f6b6c743055c9394ee3057677`; polygon `0x8908d99a4e2ff6b7bf4563593b02acbc7bbfabc1` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x95d0294f089fb7c58b3d589bbd62c3b49cf7e89c`; polygon `0xf5fcd1ebc66641925ad3147aad18db589b7f517d` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x99aedc825950579d4006f1a0fc031c7a81ecb14a`; polygon `0xe43587386e6e8fa127dd008770cdc07de2df91e9` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384417 | 2 deployments: polygon `0xa5a8c6b6cb08db75f5d487f0838d0743871d80a7`; polygon `0xdf6f5bc7605e36721d081e46e4c2ee048ed57923` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xaf48bd33916836f5a3dd8c9095692d240a6a2567`; polygon `0xd7f0eb5104e21bdff0104088f28883883977c4de` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb1b96373b8bb7e3d0f66e1f94a135156663c516d`; polygon `0xf89229900d5c134fd0d1e299f9159e4fdfc84f51` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384414 | 2 deployments: polygon `0xc22d26225bbebfab43c53848fa16171082139cb7`; polygon `0xccf5c404d32eb6e777088ab13837a1b8dcba9328` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384387 | 2 deployments: polygon `0x0522513fb2db66e402abd43a9f4daa8c480ad684`; polygon `0x0ce31c3bb29e33afbf8ae8f0912838c9d657ae12` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b2a9e12d14506071861b23f7e118fa2ca264b30`; polygon `0x61e3cf8e3aea88f069a86648c324b118bb08bc6d` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384370 | 2 deployments: ethereum `0x09edb5935861b28bbd19bc1335770250f050611e`; ethereum `0x2343d9437d454f91cce01fd1e94c6b97d59840b1` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384380 | 2 deployments: ethereum `0x243604937883777753fb2fc0cb4cdd951706107b`; ethereum `0x9c430cb4377cd1de438fed302c99c5da4e11c425` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384371 | 2 deployments: ethereum `0x251e9fc83cd14ea19c474ffad97b6ec3210397f2`; ethereum `0x95ec92ee7539d2fe38f68d593f1451fa88452891` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384376 | 2 deployments: ethereum `0x69dcc9cd82651bca30ca531f893aab4002adc033`; ethereum `0xb0ff4889db7439582e31596d857baf4edbf5a623` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384378 | 2 deployments: ethereum `0x84e0beaecd2cf6e6a28946f78dd34e8454c020d5`; ethereum `0xd51002dc3617e9e5c91d414a9f630b4165c4f9bb` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0b99888ff4e26a6fdb89c39e9944a0b0f7194e58`; polygon `0xfd43d3f8426266e9667993e25b582607708338c4` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x0cde6c5f4bc2832fd1cc8e931c338c30149f6bd9`; polygon `0x0e144bc9331419b3c71cc27fae4ab3dd3c5051e2`; polygon `0x36af72d0633e9b3ec9db04f2e05e354ff3b3fc06`; polygon `0x55ff47212db14a74a3a98be4b342e90ab5e5074a`; polygon `0x96719a947e4c0026a7021e2f91204f1e17305bc2`; polygon `0xb051dde211e0be180c07fe0bdf82a5a9d4c7abd3`; polygon `0xe899f80033a0ed3b9cfdcbc66d8c98537a5603a8`; polygon `0xf4496e5a956c0b2e64c3f2fd3076d3836806e3c9` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384412 | 2 deployments: polygon `0x34c560b19dfd490e0d4b8054df35669092a94b78`; polygon `0xbc877348f2314a86c174647e89f80716e8ff9c27` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x416fed87aa32268426ccd94aeae9d9121383853a`; polygon `0x7341a1d0f0f4c38418e3fc07883746708778a297` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x45e6c213528af48fb60ff1c01e8b6497972b7bd3`; polygon `0x9d4225505b9d4ece32866d8fa7639bad3a31f46f` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x641e72fea330a882a7f9f4d41f2400ca4a37d30c`; polygon `0xd1ed79781cb9135666e69ce29b6ca07ea531947d` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384405 | 2 deployments: polygon `0x6cd383ef37a4b9b6153cf57d83eb50b36db34798`; polygon `0xa2f279160debac2260ffd9e7d43118c9c211683c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7a0ebb40cff9990d7d0dc0b365a2d669e45296e1`; polygon `0x94d9b58d124f3f0975df2ba0f5091c9b280d718c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x87c7b54f0c7f39aec8628704001b9c377e274f00`; polygon `0xf41e84d85e5b968742784b3d3550f7af66c77124` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384419 | 2 deployments: polygon `0xa65c9de776d1f30c095eff9c775e001a1d366df8`; polygon `0xef49d2ccc2a95f73d6b33fdc4ae22ee550ffcbe8` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xdea3defef5d8dfdd5b385f3af53cc937e6d33c8f`; polygon `0xef4c0a58add0cbc8f2e4208bf8e1a693ceb0b069` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03562d797ccddda52d85fe4fe0f65935c7cfc40e` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384396 | 2 deployments: polygon `0x32ca744527634c3231a7d6f24b4d9ad2949ef142`; polygon `0x4d85a3e264bb58ccfa48607f39ef01e59893121c` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384416 | 2 deployments: polygon `0x37fe456eff897cb5ddf040a5e95f399eabc162ca`; polygon `0xd66eae1a6e9102da728fbb2556fc6a8189d11f95` | ⚠️ Unaudited |
| StableSwapPayoutHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb920b7b4143ee4bada8dd0b077082b52bf940689`; polygon `0xe6b3490dc3c988abed988bcf9591848886c909b7` | ⚠️ Unaudited |
| SwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x8b641107c55664a9c64233f2d9e81c17c9a3cae3`; polygon `0x204ad7e9e1b94acbf975314ff17e87ecc7f71aff`; polygon `0x8bb0f8214f964e7ab1a475220b9a1f522f9f2175`; polygon `0x8dd2114befaf6df104e8271beb199b8511322922` | ⚠️ Unaudited |
| SwapStableInvestStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x84bdaa06429f25085b2685ef7600cb4958961dd8`; ethereum `0xd2bb05fe84c60922c2d34faf675162aec3124069`; polygon `0x2191087cc6688f24e939b840fb2c55631a81891b`; polygon `0x3a80960fa71c8ce20eba41cb3d5c2dbb7becceb9`; polygon `0x56eced716d979a00728f9f30d7fc7afe4f621bb5`; polygon `0x829cb32525e421b99f1f29ce9372df8432bf740a` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x219aa0e548d92e0cdb67913decdda72a008fcaa4`; polygon `0x787b6748d41b9a4cd88cec149ac6257647a9c4f4` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384393 | 2 deployments: polygon `0x303fe729656ce9901953fe085fb414770c8c32fd`; polygon `0xdad2dfe1450618e1c90c86bdb0895bcfcadd4df5` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b96b96e5498dd6d457cc15014c57c38af9032c0` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8355b7251e88bfa35e0447709cd2b91cce35a091`; polygon `0xed19084e329fb7267c0fe09aa7d23dd4f81c2ac6` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x371d67ee31f6bfcdf13c7fa0cc9cc2c7080ac666`; polygon `0x76934cd2648594488a1378ac769d639933623d2a`; polygon `0xc0d3ecacebe2a8f2268d3fae616f9dd1b94e81a2` | ⚠️ Unaudited |
| TrustfulRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384400 (2 proxies) | 3 deployments: polygon `0x42842f88c3ea0eb39f3303a80a03f7f55db31b28`; polygon `0x4e717f87aafb53ea88378b5079b177628b082ed7`; polygon `0xdfc75aa0ceab89c40cd4b78e7f4179632fe06e93` | ⚠️ Unaudited |
| USDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe` | ⚠️ Unaudited |
| USDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a074c1ac759b10c8630b71aa017004c3e091b9b` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56bfa6f53669b836d1e0dfa5e99706b12c373ecf`; ethereum `0x8c106eedad96553e64287a5a6839c3cc78afa3d0` | ⚠️ Unaudited |
| WEToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4704dc80953245bc87e09980004498d4249b67` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x82b09f8b6096039aa0d62a5cee8dff7f95791c04`; ethereum `0x960348123bbc7a6ce14ac3a5ebbb466cc8ac6df6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7529abff0f8665a4e7fcd532d0f528090435d10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9482f494d5883e2bd1052f91ced7e808880f089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a7441bc47f40bfc9b27be34e1882c761d55afe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33eb6485b7853f6d4a53f4a7855cf3a1e7456325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34460d69bc5bd5009038ede34702b75c0361749b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-384365 | `0x3a80c5595ab0f8e90f8115a3b18495009d0f32cb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 319
- Live contracts: 35
- Unknown liveness contracts: 284
- Source-verified contracts: 314
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, candidate review=245, contamination review=1, source verified unclassified=66, unverified unclassified=5

Showing first 200 of 319 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | AccessManagedProxy<br>`0xca0d8d067f6698c8ffa03a551b68d45bc728e545` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| currently scope matched | AccessManagedProxy<br>`0xd81a8b5be59ceae0f9e27455a998b4fdac9fa0a3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x09edb5935861b28bbd19bc1335770250f050611e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x12a4f34d27b1d54defd4eb39799971e26d9025e7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x176057c7d384ffc8fee977615e4bf9c31f5341c2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x243604937883777753fb2fc0cb4cdd951706107b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x2cf13b8b1467ce1a651767dcd498c607955a7387` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x33918bdc50e021d057145e17d3f31ac97f589e1d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x492e505ef2fd4ca30d60c9caa5becda56f074c6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x55bae6690d46ea94d7f05df7c80a85e322421fb6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedProxy<br>`0x585b9b700e557f3c314d5c50137d5d100b4b5a85` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x5fe11f30647899dca35f9f2f62b8c51856ae33e6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x62e4790f5c7ea5d327f20108dc698b7bb2d023e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x644da701e26631dde184da081395ace07f49c162` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0x95ec92ee7539d2fe38f68d593f1451fa88452891` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0xa551285b49a29cbdbae7fc5c6a61fadc918ad224` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0xb0ff4889db7439582e31596d857baf4edbf5a623` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0xb375f428de1143bd08eb20151559a221744249c7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0xd51002dc3617e9e5c91d414a9f630b4165c4f9bb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessManagedProxy<br>`0xfa9888b740031fa16e635244a6a33a5851980b34` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | CashFlowLender<br>`0x291a65f1131950e37beda71a931a4dd33408d0d2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | Cooler<br>`0x9ec1c481e77fe05aa3e55bee3ea21242a18e255b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | ERC1967Proxy<br>`0x960348123bbc7a6ce14ac3a5ebbb466cc8ac6df6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfefe66b655c0785237bf3364d93684062f76d767` |
| candidate review | ERC1967Proxy<br>`0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfefe66b655c0785237bf3364d93684062f76d767` |
| candidate review | LPManualWhitelist<br>`0x4e8ac0b7dd930aa814d8bd0dc6e4adf692b897dc` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | OutflowLimitedAMMSV<br>`0x167107ec321f723c5a412968e19731cfcd16b823` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | PolicyPool<br>`0x9165f165b6ba787b5d7007b3ca8dbf12edb23463` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | RiskModule<br>`0x2343d9437d454f91cce01fd1e94c6b97d59840b1` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | RiskModule<br>`0x251e9fc83cd14ea19c474ffad97b6ec3210397f2` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | RiskModule<br>`0x69dcc9cd82651bca30ca531f893aab4002adc033` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | RiskModule<br>`0x84e0beaecd2cf6e6a28946f78dd34e8454c020d5` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | RiskModule<br>`0x9c430cb4377cd1de438fed302c99c5da4e11c425` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0ef551ea2291ebc83ef6ba1b9d7c3f5847fa9b0a` |
| candidate review | AccessControlAccount<br>`0x90c5a7d0c2c83ff3d145a2cf7f20b97253c5477d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedMSV<br>`0x8f73f5e41b17c73e16962b04c7be2d193e64b18f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedMSV<br>`0xef2f735dff065268389440fd7b9612ede8a10a0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedProxy<br>`0x14f6dfee761455247c6bf2b2b052a1f6245dd6fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedProxy<br>`0x6cacea88486260ef7e6fde39bab3236c908d10b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagedProxy<br>`0x90f9b3b51632a530b065f7d2285faf8f93de3efa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManager<br>`0x691a4d0963fc9f26a599b9a45ef92ead0122efb8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManager<br>`0xa29df9825f283b2fa7a26b4627f84ada80cdd79a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManager<br>`0xf5866b62f97c67f5d10de87b62bd50c053e69b3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagerAccount<br>`0x144749b06376f949992123481441cfd0a9a077e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagerAccount<br>`0x52050109459781daf99c2a63c6ed15d5abdbc4c0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | AccessManagerAccount<br>`0xbf148e1d4c83cc4f3047a5b8926c6ce6c4bdcc64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0x02221b21775e5a3f5472403660b181b792e3dd58` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0x2efd180a3423edb5d71360ddbdb651101e430b08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0x74e4f7a320c7716e986c1bf5e6916dc5631c4be5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0xd5b68bdc0606537f9ea528a7223cd9ce75da8ee7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0xd8f30147961b99d89222e660b3d3855c5eb12330` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CashFlowLender<br>`0xdda5c127d7582e50622a4634fd1737a324af3f70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CurrencyMigrator<br>`0x992a2b3381ad95ec22418caa9b9fb0e1d2715df7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | CurrencyMigrator<br>`0xbfe4a3ba918af88774b6ada381bc564bdfc42f63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x06347ea3da6a5b44eeae3b8f4a65992ae073e6f4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x0917c28b736746f9a32652cd2c66e918cc9d26c9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x0aa6623be5b293fdde18ae0095163785a0b0e4e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x0b99888ff4e26a6fdb89c39e9944a0b0f7194e58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x0ce31c3bb29e33afbf8ae8f0912838c9d657ae12` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x11b490292799a0edfe37797592f77151c4483442` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x138ca65ae1fb2a24041708ffe1bf757198b3d50e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x13f6d7205c57060fc9c2faea43906a11501a3fc4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x15f76f59a29c7c12b4a67751ca525bf9167c1aab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x1858a315c225a692ba40c3fc7a143362e31a85e8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x199a1f7c986b987ce5c68a07e17e8e77baabbde7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x1c48accaf6f8106883aa1973a45f02525652defc` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x1c7f0c8ba10db7f2e1c7b5b0a024b66b6baceb45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x1d71e3901db121f05a4a06f92440108055386355` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x1ee585dcea25cbda16be8cfefa381a1f32aca418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x2b2a9e12d14506071861b23f7e118fa2ca264b30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x2bb7644221cfcc35a1c99ed7167391ff82fe4c08` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x2e25a28ecbd7e8e70dabb1ca79bf6b4ea5aada26` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x2f2b6a02a9870d16a2b7126aacd18c99bf235806` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x32a9cbeb2ca148e55f327c6b4673351dd03ed858` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x32bebbfeb5d1b904799729bfad216baa709615c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x34c560b19dfd490e0d4b8054df35669092a94b78` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x36d0498f725f5f38af1c60b8e7339bcfe9ed72d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x37fe456eff897cb5ddf040a5e95f399eabc162ca` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x3d6c6488edb8024276ea0e2376826aecc1ce57ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x3eab5b880b83607288744f35e778d60d0cd6539f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x416fed87aa32268426ccd94aeae9d9121383853a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x4187e06fa34d5e781a07ba97df00dfe19b6586c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x41b5a105c850014ec594879e8511994f25092460` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x42015e95ce7c0c21df273291491df5baf2d6708a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x42118df6ebb18346ca425f1c67ac739e95ad9358` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x42842f88c3ea0eb39f3303a80a03f7f55db31b28` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x43882ade3df425d7097f0ca62e8cf08e6bef8777` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x45435f79103472ed62fb9c92f04c50b188b22b99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x47e2afb074487682db5db6c7e41b43f913026544` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x47f35b4876138b5d96ffded1e46ae6b58e6e7b31` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x48ff8b1493c6a3545aea3f0812f1303e2f958bf4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x4d85a3e264bb58ccfa48607f39ef01e59893121c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x4dbd846765cea50fc738c0a8fde5bae9d8a5f6c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x4f43b8f252887f814ed689346fdb5bd266394520` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x55bae6690d46ea94d7f05df7c80a85e322421fb6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x6229d78658305a301e177f9daea3a0799fd1528c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x623677be20a9cb9c274c69b00f9d63772d373cd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x641e72fea330a882a7f9f4d41f2400ca4a37d30c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x6a0e61c757e384eb1e4a2b94f7e02e68e4b4515e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x6cb730df6b3db5baac5fd96f50b04005c1b3a5f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x6d3c1a6fdf608015c2fad134f4db533d6e621283` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x71d390c243706b713b5d2b077e942223f7a55d00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x72b74498a400ef16c669d8a23d19e672846a8dcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x732088771cf528d29937c5aee0b14a29379934a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x76d33267ebbb0ba2f68e3c7a3c5e994c628f6926` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x787b6748d41b9a4cd88cec149ac6257647a9c4f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x7a0ebb40cff9990d7d0dc0b365a2d669e45296e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x8029306034a8d085cb5b5f3f5bb068692bba8261` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x8355b7251e88bfa35e0447709cd2b91cce35a091` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x87c7b54f0c7f39aec8628704001b9c377e274f00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x8908d99a4e2ff6b7bf4563593b02acbc7bbfabc1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x8d2ee82c4172b2138b06b8037d769cbfaf9c0274` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x9078dddea2f82c27791ef78a9ec9ab0f66bfb6f9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x90d04a6f89cd964fca8df3472ff6ec1d2c4082a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x92624870dc092c36943682375df8246bf126d410` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x936dac0eea5e4e90b8384b96d1aa6284ce106f71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x95d0294f089fb7c58b3d589bbd62c3b49cf7e89c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x9819891095f88249be0990afb8c93303115992db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x99b2949f4b12bf14f9ad66de374cd5a2bf6a0c15` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x9d4225505b9d4ece32866d8fa7639bad3a31f46f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0x9f967c614c9573cc4eabe68ae0354e5d11f7ec9d` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa1edaf03813e7f68d7e980f47a284b869581910d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa2f279160debac2260ffd9e7d43118c9c211683c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa321383e5888eb9c2a24e90feb0647ece82f056c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa490d80a80c8e547d040ce3abbdcc8ccad584e4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa5a8c6b6cb08db75f5d487f0838d0743871d80a7` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa65c9de776d1f30c095eff9c775e001a1d366df8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xa72b2b49788114cdca748449b49ae0087848192a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xaf48bd33916836f5a3dd8c9095692d240a6a2567` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xb1b96373b8bb7e3d0f66e1f94a135156663c516d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xb1dff6ce862273adca2b9efd96a8976764ac7414` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xb642d98ebde34ba8dcbc4b3b5010433245309d50` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xbc05fad306f233bb7cc739148a0c1bcf486c7df0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xbc33c283a37d46aba17bc5f8c27b27242688dec6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xbca3ddf5e3b3fc75831dd09f4bfc97b713d13823` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xc17e601791d3ef6c75042f2e055af7fad178c54b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xc1a74eac52a195e54e0cd672a9dab023292c6100` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xca3f0a0fce99c8aa19f46611a90c326dde2429df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xca583ccbdbe67a81851f652ad2e82896b6209a32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xccd55d27ae681682f5ed2b04ef21069d4ec24982` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xccf5c404d32eb6e777088ab13837a1b8dcba9328` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xce9cd5b4a2091fc725c699994b67b1c234b14bc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xd26d5015c57c197ae5e7bc866b49837d22364eab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xd74a28274c4b1a116add9857fc0e8f5e8fac2497` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xdad2dfe1450618e1c90c86bdb0895bcfcadd4df5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xdf0e56e890a9001152aff1fc4b6fe2ef618f66ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xdfc75aa0ceab89c40cd4b78e7f4179632fe06e93` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xe36d6585f0c200195b196c66644c519e7674b476` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xe43587386e6e8fa127dd008770cdc07de2df91e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xe64b6b463c3b3cb3475fb940b64ef6f946d6f460` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xe6b3490dc3c988abed988bcf9591848886c909b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xe7dc8cdb94f0a44a930294acc8f2f28dfd3cdeae` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xef4c0a58add0cbc8f2e4208bf8e1a693ceb0b069` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xf383ef2d31e1d4a19b3e04ca2937db6a8da9f229` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xf6b7a278affbc905b407e01893b287d516016ce0` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xf7ef82a521d6bd4b2cdaa3a1beb30fb724930651` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC1967Proxy<br>`0xfeddf0af6aa75dfc175bdab964d5a8f6683e1aaf` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626AssetManager<br>`0x33681a76efbc8e7c0a7a08b36b9d16c895f8d86f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626AssetManager<br>`0x4b9d6ad3a0efd9d52b3b54ac21cb6bb0d47609a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626AssetManager<br>`0x89f2c01103203b0c77019de493c8af2699e8ac12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x1d04a92400d0b07182b895619216ada309293b85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x1d878bc19bdb2d3d3eb6236def6add3461bdf113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x401fc54e9d7484349f8a7f19527e5a1f1f45be0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x4e069382ea544eda4fd47787da62137a2ca85fe2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x5a38cbdaaeb6f04c60f4fe8e21819d3eff6b351f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x7a95c454223f23e363bb00f7d6da287f345d06a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x92d4737a5ee924031d16baaada6eaab7d591a014` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0x9b0b4fedfce20f6452c2ec0b9da33cbb0ce01bb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0xc0cad6c4910aa0c4e72b657b9baf8cbf81e4ec76` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0xc493362da7a1b2e20b00717bd8e99dafa2e1cd16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626CashFlowLender<br>`0xccf28132db3024d6c19916640e655173b96c8373` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626PlusVaultAssetManager<br>`0x0a175e57deff6f5357a1ee047f63fdcf7bf411e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626PlusVaultAssetManager<br>`0xa2679feca2931eb13ad6926ddc0415b4c5632b7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | ERC4626PlusVaultAssetManager<br>`0xa5a2b09868ba5a95535824e727dbc4555c7a8d85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | EuroCashFlowLender<br>`0x31f1c2705a7994e74aa9a5d8a8c6fc8b330c3849` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | EuroCashFlowLender<br>`0x4d2da537e0c6c8c63f74c0563b14a8d2b6d835ae` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | EuroCashFlowLender<br>`0x747be075b8ed012659103905fb0096783c9af311` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | EuroCashFlowLender<br>`0x8d2ccbaf433306a57d668ec19b3ac570015eaace` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0x0096aff75e76648ca9fafbcbad77cc38dff9e59d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0x023c94de38d3b7b57e00045fdf8c9362f6be77c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0x0847308da19f826b2d7379b134d9a959245f55c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0x32ca53d87540dbb86731931365c2d5f872c3a70b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0x91d44ed99aba67fcf5f9f3da0648358a16dad830` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0xa60bcf11c5ddf0bcad0890252862d97f2660b1db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0xb37c4437ece439a71dbb764d7df14050fbafa197` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0xc4d328ac42d0cb88d960794fe3a6e4faad493e93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0xd76171900fc9e1bf6e9c79a243f507a2a69f088a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | FullSignedBucketRiskModule<br>`0xfc8199ce4e392e5bcd7ea57da3fc3a8eb7e7af2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | LPManualWhitelist<br>`0x5dff0f8f5b0713405978162b146db7d896bbb9be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | LPManualWhitelist<br>`0xccb8dcc5efcec39e8425d85cafed75a9bfc5cf6e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MerklRewardsInvestStrategy<br>`0xa637f498f73322dca6587189af8271b215ffedf5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MerklRewardsInvestStrategy<br>`0xa67c6b969b97c470f22b6792935200de829cfbf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MigrateAssetMSV<br>`0x5d35426db6db23bf09ea59bcac21f25e20c38cd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MigrateERC4626CFL<br>`0x7426feefd89a36237eeb53095cf64967d3c4924c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MigrateERC4626CFL<br>`0x81e9a64029e2b103d634a4fb829adcca90d84454` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MigrateERC4626CFL<br>`0xa53000ea6e0218c45a3c4eeaa2813ef75269af91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MigrateERC4626CFL<br>`0xfd82f676b0482eb8f29fdcc41d4166082242a589` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MultiRMCashFlowLender<br>`0x28d3e29c5e1d953acb7361aa1e3a1d9abedee14e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MultiRMCashFlowLender<br>`0xe98aaae0df8bcaf501c27373eb9c3eedde623e85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |
| candidate review | MultiStrategyERC4626<br>`0x0b351dfdbe5a1f329c2a1229708dc7b2e3a7ec0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x119f87114f49b5cb8638277c0452e70390603874` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Ensuro-Final-Report-2022-11-09.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-Final-Report-2022-11-09.pdf) | Quantstamp | Audit | 2022-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [SlowMistAuditReport-Ensuro-2021-09-29.pdf](https://github.com/ensuro/ensuro/blob/main/audits/SlowMistAuditReport-Ensuro-2021-09-29.pdf) | SlowMist | Audit | 2021-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |
| [DefiSafety.Process_Quality_Review.Ensuro.pdf](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety.Process_Quality_Review.Ensuro.pdf) | DefiSafety | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf) | Quantstamp | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 19 | high |
| [DefiSafety-93-badge.png](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety-93-badge.png) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13091] Quantstamp-Ensuro-Final-Report-2022-11-09.pdf — matched: Extracted from Quantstamp audit report for Ensuro. Scope includes all contracts listed in the file signatures and findings sections. Date from cover page: November 10th 2022.
- [13092] SlowMistAuditReport-Ensuro-2021-09-29.pdf — matched: Contracts extracted from visibility tables and code locations in the audit report. Audit date is the end date of the audit period (2021.09.03 - 2021.09.24).
- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf — no match: The document is a process quality review (PQR) for the Ensuro protocol, not a smart contract audit. It does not list specific contracts in scope. The date is extracted from the header: 'Date:18 Mar 2024'.
- [13094] Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf — matched: Scope section explicitly lists 'contracts/*' files included, excluding mocks. All contracts mentioned in findings and test suite are within scope.
- [13095] DefiSafety-93-badge.png — no match: The provided text is a GitHub page snippet showing a badge image file path, not an audit report. No contracts or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057c7d384ffc8fee977615e4bf9c31f5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa551285b49a29cbdbae7fc5c6a61fadc918ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f428de1143bd08eb20151559a221744249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b8b1467ce1a651767dcd498c607955a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f34d27b1d54defd4eb39799971e26d9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888b740031fa16e635244a6a33a5851980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d067f6698c8ffa03a551b68d45bc728e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b5be59ceae0f9e27455a998b4fdac9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da701e26631dde184da081395ace07f49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b700e557f3c314d5c50137d5d100b4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918bdc50e021d057145e17d3f31ac97f589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002dc3617e9e5c91d414a9f630b4165c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604937883777753fb2fc0cb4cdd951706107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5935861b28bbd19bc1335770250f050611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff4889db7439582e31596d857baf4edbf5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92ee7539d2fe38f68d593f1451fa88452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PriceRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | FlightDelayRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LiquidityThresholdAssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | ERC4626AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TimeScaled | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv2AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv3AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | SignedQuoteRiskModule | unmatched — not counted | — | mentioned in test results and findings | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | AaveAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | BaseAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057c7d384ffc8fee977615e4bf9c31f5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa551285b49a29cbdbae7fc5c6a61fadc918ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f428de1143bd08eb20151559a221744249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b8b1467ce1a651767dcd498c607955a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f34d27b1d54defd4eb39799971e26d9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888b740031fa16e635244a6a33a5851980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d067f6698c8ffa03a551b68d45bc728e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyNFT | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b5be59ceae0f9e27455a998b4fdac9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolConfig | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002dc3617e9e5c91d414a9f630b4165c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604937883777753fb2fc0cb4cdd951706107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5935861b28bbd19bc1335770250f050611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff4889db7439582e31596d857baf4edbf5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92ee7539d2fe38f68d593f1451fa88452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and visibility table | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b5be59ceae0f9e27455a998b4fdac9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057c7d384ffc8fee977615e4bf9c31f5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa551285b49a29cbdbae7fc5c6a61fadc918ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f428de1143bd08eb20151559a221744249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b8b1467ce1a651767dcd498c607955a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f34d27b1d54defd4eb39799971e26d9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888b740031fa16e635244a6a33a5851980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da701e26631dde184da081395ace07f49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b700e557f3c314d5c50137d5d100b4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918bdc50e021d057145e17d3f31ac97f589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002dc3617e9e5c91d414a9f630b4165c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604937883777753fb2fc0cb4cdd951706107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5935861b28bbd19bc1335770250f050611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff4889db7439582e31596d857baf4edbf5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92ee7539d2fe38f68d593f1451fa88452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Cooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullSignedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullTrustedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d067f6698c8ffa03a551b68d45bc728e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ETKLib | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IEToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ICooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ILPWhitelist | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyHolder | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPool | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPremiumsAccount | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IUnderwriter | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5fe11f30647899dca35f9f2f62b8c51856ae33e6` | CashFlowLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12a4f34d27b1d54defd4eb39799971e26d9025e7` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x176057c7d384ffc8fee977615e4bf9c31f5341c2` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cf13b8b1467ce1a651767dcd498c607955a7387` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54012f190d3facadd0f6b66897e94f08d812577b` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6192b45fe7ed857fb607c086eec69b1f237e4302` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bf86ad735d7a4ee52c9c2a8d9e8a275e70f7895` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a1e8bbb53b523003bf7300e859458a0a04abd6` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b2aed6e3526942bf7f9d886dafd9226a553bbdc` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c798aa7d4638626f15af8021f2df47571d0a811` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2153fee80004e22a13f8d4306bf559e5e4d4f0a9` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33918bdc50e021d057145e17d3f31ac97f589e1d` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09edb5935861b28bbd19bc1335770250f050611e` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x243604937883777753fb2fc0cb4cdd951706107b` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x251e9fc83cd14ea19c474ffad97b6ec3210397f2` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69dcc9cd82651bca30ca531f893aab4002adc033` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84e0beaecd2cf6e6a28946f78dd34e8454c020d5` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 35 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=6

Zero-match audit list:

- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf
- [13095] DefiSafety-93-badge.png

Fork inheritance lineage and inherited audits are included when available.
