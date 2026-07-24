# Agentic Audit Brief: GAIB

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: GAIB (`gaib`)
- Website: [https://aid.gaib.ai](https://aid.gaib.ai)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, sei
- Contract surface: 104 unique implementations (109 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,855,599.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GAIB. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, bsc, ethereum, sei. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x52323f33551188f170d8de14fe8d8423a839629d`, chain 1)
- UnnamedContract (`0xb3b3c527ba57cd61648e2ec2f5e006a0b390a9f8`, chain 1)
- UnnamedContract (`0xe2e1424687eb676b3807693cbb439362b8ea908e`, chain 1)
- UnnamedContract (`0x81c1fba2c7df54ac76de5ebe373e89bcad3b8632`, chain 8453)
- UnnamedContract (`0x04dfa27c7d1ade09ddfccfa233fb3c8490ca2b18`, chain 42161)
- ERC1967Proxy (`0x18f52b3fb465118731d9e0d276d4eb3599d57596`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 6 of 104 unique; 98 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 104
- Raw deployments: 109
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d00499079d7145163a213ab1443056cce6b0f77` | ⚠️ Unaudited |
| AIDAlphaMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410c19f3f80b64c7486ae34890ee9251d0696433` | ⚠️ Unaudited |
| AIDollarAlphaCUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54` | ⚠️ Unaudited |
| AIDollarAlphaUSBD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34713d215b51325188fe1e4d4128be6e8aaa87ce` | ⚠️ Unaudited |
| AIDollarAlphaUSD1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42` | ⚠️ Unaudited |
| AIDollarAlphaUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eceb13815b0363398e5e863363c55b84c036402` | ⚠️ Unaudited |
| AIDollarAlphaUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9` | ⚠️ Unaudited |
| AIDollarAlphaUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc45e7027a0489fe6c2e4a0735097d8e6952a340` | ⚠️ Unaudited |
| AIDollarAlphaUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d976f56343e33a6a4d6e26af7d59358d1359dd4` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55e2c23ab6adc12accf1075b91c174ee0102` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386684 | `0x18f52b3fb465118731d9e0d276d4eb3599d57596` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c9b5e8f039381d1da79b94a206af8bc076c043` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392` | ⚠️ Unaudited |
| GAIBVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2511dcaa7073c4057a5eea4286c3883198cde60f` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sei | n/a | `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14219845c6b7984aa5ec0a39754dcc327169de32` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35533f54740f1f1aa4179e57ba37039dfa16868b` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5b703465234f97c5a7b17b602c6224a08031e` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x093285c34515c01a55e15a25812bcf87e7ab0dc6`; ethereum `0x40b988e4ee43351c679291b868fa35dc4caa0580` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0da21d330f3f75d730a1b5f1535ca75061cabf61`; ethereum `0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75ec066efb238cf211baa73b28db539541493c70`; ethereum `0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f45180d6ffd0435d8dd695fd01320e6999c261c`; ethereum `0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xacb7027f271b03b502d65feba617a0d817d62b8e`; ethereum `0xc657b23d01907e3af6f8678d47467b3865428691` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0x9151434b16b9763660705744891fa906f660ecc5` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6` | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a93414f88f597922a9829df5f7c94b81bc46f64` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a7b7915980ed34fde6e239618fadcf67897c37` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b09f8b6096039aa0d62a5cee8dff7f95791c04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234c908e749961d0329a0ed5916d55a99d1ad06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2718729fb710cf17fcc9293214c575c58526b654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c304726220aafbe262aef4b540f4d3472fa4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31319866778a5223633bd745780bb6d59406371e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e75c28bd271d98be680690d46e27e3a060b8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0403c5471c57a723c41140bb4d968331d6e678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4956b52ae2ff65d74ca2d61207523288e4528f96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386679 | `0x52323f33551188f170d8de14fe8d8423a839629d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5daa068b9592781ad49235838fdd38e2d162084b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac1f64931e0fd9582a095090fab2e838904dbaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8848b79b507b2c316dc4b090cb9b2a962aedeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ade71febab1337ce08062fe5208a611ee6e86e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960348123bbc7a6ce14ac3a5ebbb466cc8ac6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a074c1ac759b10c8630b71aa017004c3e091b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f805fc8679e5f81a0683c3203ad48417efdad12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb2c15fde49d1a4294740acb650de94184e66b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386680 | `0xb3b3c527ba57cd61648e2ec2f5e006a0b390a9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2213e9a4515174d433cd75cc2695043c85e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1062547981471b821755c13cafa0f13d099705a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386681 | `0xe2e1424687eb676b3807693cbb439362b8ea908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54daa2dfb835d3b7bf0133c329d6292d31f0320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc45e7027a0489fe6c2e4a0735097d8e6952a340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386683 | `0x81c1fba2c7df54ac76de5ebe373e89bcad3b8632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386682 | `0x04dfa27c7d1ade09ddfccfa233fb3c8490ca2b18` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 62
- Live contracts: 0
- Unknown liveness contracts: 62
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=62

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x234c908e749961d0329a0ed5916d55a99d1ad06c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x2718729fb710cf17fcc9293214c575c58526b654` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x30c304726220aafbe262aef4b540f4d3472fa4a0` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0x31319866778a5223633bd745780bb6d59406371e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x31e75c28bd271d98be680690d46e27e3a060b8f0` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x3d0403c5471c57a723c41140bb4d968331d6e678` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x40b988e4ee43351c679291b868fa35dc4caa0580` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x4956b52ae2ff65d74ca2d61207523288e4528f96` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5daa068b9592781ad49235838fdd38e2d162084b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6ac1f64931e0fd9582a095090fab2e838904dbaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8848b79b507b2c316dc4b090cb9b2a962aedeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0x8ade71febab1337ce08062fe5208a611ee6e86e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x960348123bbc7a6ce14ac3a5ebbb466cc8ac6df6` | non_address_book | unknown | unknown | unverified | n/a | `0xfefe66b655c0785237bf3364d93684062f76d767` |
| unverified unclassified | UnnamedContract<br>`0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x9a074c1ac759b10c8630b71aa017004c3e091b9b` | non_address_book | unknown | unknown | unverified | n/a | `0xfefe66b655c0785237bf3364d93684062f76d767` |
| unverified unclassified | UnnamedContract<br>`0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x9f805fc8679e5f81a0683c3203ad48417efdad12` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xad55aebc9b8c03fc43cd9f62260391c13c23e7c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfefe66b655c0785237bf3364d93684062f76d767` |
| unverified unclassified | UnnamedContract<br>`0xadb2c15fde49d1a4294740acb650de94184e66b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb1b385542b6e80f77b94393ba8342c3af699f15c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbb2213e9a4515174d433cd75cc2695043c85e32c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc657b23d01907e3af6f8678d47467b3865428691` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xd1062547981471b821755c13cafa0f13d099705a` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf54daa2dfb835d3b7bf0133c329d6292d31f0320` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |
| unverified unclassified | UnnamedContract<br>`0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xdc45e7027a0489fe6c2e4a0735097d8e6952a340` | non_address_book | unknown | unknown | unverified | n/a | `0x3885be006eba7a7f5d555b4f78f237536700d1b1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://docs.gaib.ai/products/gaib-products/audit.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Audit & compliance](https://gaib.gitbook.io/gaib-docs/track-record-and-pipeline/trust-and-compliance/audit-and-compliance.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17247] Audits — no match: Only contract names inferred from report titles; no explicit scope section or file paths found.
- [17248] Audit & compliance — no match: The document is a general compliance and underwriting process description for GAIB, not a smart contract audit report. No contracts, source files, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audits | AIDaVault | unmatched — not counted | — | mentioned in audit report title | no |
| Audits | AID | unmatched — not counted | — | mentioned in audit report title | no |
| Audits | sAID | unmatched — not counted | — | mentioned in audit report title | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [17247] Audits
- [17248] Audit & compliance

Fork inheritance lineage and inherited audits are included when available.
