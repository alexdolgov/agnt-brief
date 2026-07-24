# Agentic Audit Brief: MorpheusAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 18 (1 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: MorpheusAI (`morpheusai`)
- Website: [https://mor.org](https://mor.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, base-sepolia, ethereum
- Contract surface: 113 unique implementations (184 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,900,852.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for MorpheusAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, base-sepolia, ethereum. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0eb467381abbc5b71f275df0c8a4e0ed8561f46f`, chain 8453)
- LumerinDiamond (`0x6abe1d282f72b474e54527d93b979a4f64d3030a`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 107 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 38
- Confirmed-live implementations: 3 of 113 unique; 110 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/67
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 113
- Raw deployments: 184
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 9 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 1.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MOROFT | unknown | project_anchor | own_supporting | 0 | base | unit-389462 | `0x7431ada8a591c955a994a21710752ef9b882b8e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Builders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79`; arbitrum `0x969c0f87623dc33010b4069fea48316ba2e45382` | ⚠️ Unaudited |
| BuildersTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0xe5e06c8a6c9938873b20efc1af3a0254cc57c5ca`; arbitrum `0x232c15275affa0ee944f6894d57e013647416aa1` | ⚠️ Unaudited |
| BuildersTreasuryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9eba628581896ce086cb8f1a513ea6097a8fc561`; base `0xe71eb0b69bbd4207e2cb10df929d1311d2ad57e5` | ⚠️ Unaudited |
| BuildersTreasuryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x031075f7a853e8d4bf0b525466a78374afaa9308`; arbitrum `0xcbe3d2c3ade62cf7aa396e8ca93d2a8bff96e257` | ⚠️ Unaudited |
| BuildersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6db545f73e32a0ba6f100803a2f0dce044101dbc`; arbitrum `0xa8603114c7bce3a622f2d36286b29c6f51c14fe6` | ⚠️ Unaudited |
| BuildersV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2388bef44cd71f18e984b8dbe88e1db717f298ab`; arbitrum `0xccc06767533563fbdcff2e1800e4a266fbd01532` | ⚠️ Unaudited |
| BuildersV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18faef315b40a6d9cf49628f1133b1aa507513b0`; base `0x42bb446eae6dca7723a9ebdb81ea88afe77ef4b9` | ⚠️ Unaudited |
| BuildersV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6cce082851add4c535352f596662521b4de4750e`; arbitrum `0xc0ed68f163d44b6e9985f0041fdf6f67c6bcff3f` | ⚠️ Unaudited |
| ChainLinkDataConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x18faef315b40a6d9cf49628f1133b1aa507513b0`; ethereum `0x2265ae4127a49218c1c562cb16822971f295ed50`; ethereum `0xd182263d06fdc463c96190005d6359cc3d3bbc5e` | ⚠️ Unaudited |
| DelegateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b48365e33802943b5d98954efabd366f04ff924`; base `0x3b51989212bedab926794d6bf8e9e991218cf116` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x281bc6f84952abe53f6921dcd76c879d3c4b6375`; base `0x6ad6efba31cb05df2aa96aab03d2237746830193` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8aac72b616420a7a9d76b11b56d841d2f5b66aac`; base `0xe1641453e8e437493a2127bc62d51d3dfbaf5a91` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x136538a0d320a29e29fe661fb893714a0ecea76a`; arbitrum `0x37b94bd80b6012fb214bb6790b31a5c40d6eb7a5` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x345b8b23c38f70f1d77560c60493bb583f012cb0`; arbitrum `0xe9d4b4eb60d16c90280ef93a823f373518462d83` | ⚠️ Unaudited |
| DepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x3b51989212bedab926794d6bf8e9e991218cf116`; ethereum `0x47176b2af9885dc6c4575d4efd63895f7aaa4790`; ethereum `0x6cce082851add4c535352f596662521b4de4750e`; ethereum `0x9380d72abbd6e0cc45095a2ef8c2ca87d77cb384`; ethereum `0xccc06767533563fbdcff2e1800e4a266fbd01532`; ethereum `0xdb10daef167ea2233ba6811457dd24d676fbd670`; ethereum `0xde283f8309fd1aa46c95d299f6b8310716277a42` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x24c09a0c047e8a439f26682ea51c7157b3ccc20b`; ethereum `0x2e1ff173085a5ef12046c27e442f12f79a0092b7` | ⚠️ Unaudited |
| DistributionExt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6948b5f0bc85caf60859da2222a5483a84d44f97`; ethereum `0x6cfe1ddfd88890e08276c7fa9d6dca1ca4a224a9` | ⚠️ Unaudited |
| DistributionToArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc281724c309118110d5d4073ff3cb732144eaf57` | ⚠️ Unaudited |
| DistributionToArbV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb3af6505b343a206a39666884c25a07e36b6d0` | ⚠️ Unaudited |
| DistributionToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383ebffd2e6a956242392581d73f60dfb4d4f18e` | ⚠️ Unaudited |
| DistributionToBaseV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6db545f73e32a0ba6f100803a2f0dce044101dbc` | ⚠️ Unaudited |
| DistributionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bf07f9c4316d461db35b2435f1bec21c783294` | ⚠️ Unaudited |
| DistributionV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaddd7bbedd9dd2e72649217ea784069821f44ab9` | ⚠️ Unaudited |
| DistributionV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68b9d05add55769b1e4808a74b616fa37f6da294` | ⚠️ Unaudited |
| DistributionV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1292bed7df044c03d8f2cc6cb13d0bd6c96720a` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b660ab78f3ac743953f9e68630a2d66e7b45f64` | ⚠️ Unaudited |
| DistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x52f76e8be3dfabcc3b0ded02882a22be47dade03`; ethereum `0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33e689846b1f143793c9d270a26016615a1cae83`; ethereum `0x55daa99a07f5deabdcd94d0c5a592661b82613eb` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e1ff173085a5ef12046c27e442f12f79a0092b7`; base `0x845fbb4b3e2207bf03087b8b94d2430ab11088ee` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8739402c1ee1868dfe92fda76f74ecfaaf51ff0e`; arbitrum `0xc03d87085e254695754a74d2cf76579e167eb895` | ⚠️ Unaudited |
| L1ArbSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1588b245a3502a86fdbf0a0f51abac3bbd2e90c` | ⚠️ Unaudited |
| L1BaseSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8882edd2b7bad22d1968327fa19e17608a1331` | ⚠️ Unaudited |
| L1FactoryToArb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x969c0f87623dc33010b4069fea48316ba2e45382`; ethereum `0xf6c6b6c659132ae691b6b2b3498bac66bf64954c` | ⚠️ Unaudited |
| L1FactoryToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c`; ethereum `0xa03ea65026def258272ec4d063db49b853d7f116` | ⚠️ Unaudited |
| L1Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe`; ethereum `0x845fbb4b3e2207bf03087b8b94d2430ab11088ee` | ⚠️ Unaudited |
| L1SenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc54ca13a75b24630070e73173cc2f35d66515a` | ⚠️ Unaudited |
| L1SenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2efd4430489e1a05a89c2f51811ac661b7e5ff84`; ethereum `0x50e80ea310269c547b64cc8b8a606be0ec467d1f` | ⚠️ Unaudited |
| L1SenderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6fd2674e13a42e588f83ae74e5f22a4ee24ed75a`; ethereum `0xa775b4781f2bad0829dd69c146b41f5798dfb78a` | ⚠️ Unaudited |
| L2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd4a8eccbe696295e68572a98b1aa70aa9277d427`; base `0xe50009c299fd3952564debd773b6e07f450d76af` | ⚠️ Unaudited |
| L2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c`; arbitrum `0xa03ea65026def258272ec4d063db49b853d7f116` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x19eef40a364f754ee77cdfba0995a3fbf1e6495d`; base `0xb69dbf7c9ab4597d3b3bc284cc8771d580299bad` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x47176b2af9885dc6c4575d4efd63895f7aaa4790`; arbitrum `0x9cbceaeb45e566a95a4a755b1a526874163d41c7` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2efd4430489e1a05a89c2f51811ac661b7e5ff84`; arbitrum `0x845fbb4b3e2207bf03087b8b94d2430ab11088ee`; arbitrum `0xd4a8eccbe696295e68572a98b1aa70aa9277d427` | ⚠️ Unaudited |
| L2MessageReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ec51d81a30aa8449cb0b72d4c1b27062956d699` | ⚠️ Unaudited |
| L2TokenReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe`; arbitrum `0x24c09a0c047e8a439f26682ea51c7157b3ccc20b`; arbitrum `0x383ebffd2e6a956242392581d73f60dfb4d4f18e` | ⚠️ Unaudited |
| L2TokenReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27353ffadfd53538e8bdf81be7041c56ce2d5ae4`; arbitrum `0x47176b2af9885dc6c4575d4efd63895f7aaa4790` | ⚠️ Unaudited |
| L2TokenReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2e1ff173085a5ef12046c27e442f12f79a0092b7`; arbitrum `0x9eba628581896ce086cb8f1a513ea6097a8fc561` | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0e2bb6facf982ecb26bd448a758811a5cf37ee9a`; ethereum `0x14a623403b26fdf24503685894425ac0a068478c`; ethereum `0x2388bef44cd71f18e984b8dbe88e1db717f298ab`; ethereum `0x37b94bd80b6012fb214bb6790b31a5c40d6eb7a5`; ethereum `0x3a16730c7d512cdb5c00447af468b36f4bf33303`; ethereum `0x7431ada8a591c955a994a21710752ef9b882b8e3`; ethereum `0x9cbceaeb45e566a95a4a755b1a526874163d41c7`; ethereum `0xc6eaf7b4c7cddec02f25e260f8541d453a72584d`; ethereum `0xfb1a7d49ceb0ee8c929d67eb9762366506a4825c`; base `0x2265ae4127a49218c1c562cb16822971f295ed50`; base `0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a`; arbitrum `0x39e6264cfba1f1c83a0bef6f3f6fa055e34d792a`; arbitrum `0x9380d72abbd6e0cc45095a2ef8c2ca87d77cb384` | ⚠️ Unaudited |
| LockMultiplierMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x345b8b23c38f70f1d77560c60493bb583f012cb0`; base `0x98c204b36b779617913f7e0d932e06f4a0d36843`; arbitrum `0xde283f8309fd1aa46c95d299f6b8310716277a42` | ⚠️ Unaudited |
| LumerinDiamond | unknown | project_anchor | own_supporting | 0 | base | unit-389461 | `0x6abe1d282f72b474e54527d93b979a4f64d3030a` | ⚠️ Unaudited |
| Marketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5b660ab78f3ac743953f9e68630a2d66e7b45f64`; arbitrum `0xc371404682a2e02c3b46814261bee615e57f48a8` | ⚠️ Unaudited |
| ModelRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0xb7994de339aee515c9b2792831cd83f3c9d8df87`; arbitrum `0x2e96cef46d2a82e63570b538ef4ab697a09a3996` | ⚠️ Unaudited |
| MOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0x98e3cfbdb9707df6107cb1a7bd03036052eaa20e`; arbitrum `0x7431ada8a591c955a994a21710752ef9b882b8e3` | ⚠️ Unaudited |
| MOR20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2efd4430489e1a05a89c2f51811ac661b7e5ff84`; arbitrum `0xfe8882edd2b7bad22d1968327fa19e17608a1331` | ⚠️ Unaudited |
| MOROFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xcbb8f1bda10b9696c57e13bc128fe674769dcec0`; arbitrum `0x092baadb7def4c3981454dd9c0a0d7ff07bcfc86`; arbitrum `0x3c3a26c978bf6af40d7c1a36e9cbd3c1c055786e` | ⚠️ Unaudited |
| ProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe30279b79392aeff7fdf1883c23d52eba9d88a75` | ⚠️ Unaudited |
| ProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8621e6b808a3d925533446b767b7bca6accb62a2`; arbitrum `0xde819aaee474626e3f34ef0263373357e5a6c71b` | ⚠️ Unaudited |
| ProvidersDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x031075f7a853e8d4bf0b525466a78374afaa9308`; arbitrum `0xaddd7bbedd9dd2e72649217ea784069821f44ab9` | ⚠️ Unaudited |
| ReferrerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x62496604116c5172435adbd928edbf36ca7cdfbd`; ethereum `0x98c204b36b779617913f7e0d932e06f4a0d36843`; ethereum `0x9a397c638bd9611539e7992b32e206102e6d2965` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7994de339aee515c9b2792831cd83f3c9d8df87`; ethereum `0xe30279b79392aeff7fdf1883c23d52eba9d88a75` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4de9d52a6a951c2dc7b22805eeec2bc41404909d`; base `0xdc99a8596e395e52aba2bd08c623e1e428dc3980` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x281bc6f84952abe53f6921dcd76c879d3c4b6375`; arbitrum `0x6ad6efba31cb05df2aa96aab03d2237746830193` | ⚠️ Unaudited |
| SessionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x174852b955544986215f45d9ce161d5b35401578`; base `0x3ec0d950abb82e0eb9b86f5cf244b34912a871d6`; arbitrum `0xab493d93bd9c93c7590865df82f4e09f3df96d4c` | ⚠️ Unaudited |
| StETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79` | ⚠️ Unaudited |
| WETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52d00439eadfc53d0005dcaf1914baf9015f82fe` | ⚠️ Unaudited |
| WStETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bb446eae6dca7723a9ebdb81ea88afe77ef4b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389460 | `0x0eb467381abbc5b71f275df0c8a4e0ed8561f46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x01df19c61a757d5455036436b332b15bf12f9e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x03d78aff51f8e18c95039278f58e1d0ec8af5c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x04aca9d9944cbebf42297b307cb2e97bc51a35a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x05bffa864b11e8cd33367a4e95d75309b76434eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0a1ab1dad0e8a30760fd7f94b58a3fb280fe0c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0a30d107afbeb2ff5fcd8d31427e7c99aec6d980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x10777866547c53cbd69b02c5c76369d7e24e7b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x208eaed75a12c35625708140c99a614fc45bf780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x22565a2f3a2059f674a013f16d903ca406411abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x253fffd43056180015481807edc72ed0b75872d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x362cc346fbdb79636260ea149954104048e74785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3b002e1754518ffebe23c8b406a283d70118495e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4f8607458e7fd72d8d800f1945bd65831a8bf1de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-389464 | `0x5c80ddd187054e1e4abbffcd750498e81d34ffa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x62fe6960c4e3842961617223e7bb98c9582cf90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x66362e99aab3af7fa2f59f1d5eef2b3ff83804ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x66ffee434d733b5f395525d858ca6770f2f64d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6bf01f56ad0968ed8f5b47ec221cd9093c96feb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6c3401d71ced4b4fefd1033ea5f83e9b3e7e4381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-389465 | `0x6e4d0b775e3c3b02683a6f277ac80240c4aff930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x814448c80b4762294baaed0af390f10ccc4d0dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x86426874b7bb78c2cb4774182e60b73fe9414bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x88fd5da36e595a8a4ffd2052703fc10bcb8102ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x926993cf1ffe3978500d95db591ac7a58d33c772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x93b7ba0c22977bdd58935bd849f3e129579dcedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x950655e4d62598e58db24235c925dacb3ef783a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x98a1af57f0780180e046d9e10e9ba6cbc2c2b0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xa2ea62c727d4c90d1eacc6c296f8c7f82ba103fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xa830fa3291abce53403a454947108042fb222bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xada08ff9e0318dfff0d02668c2815d0e5fcc1bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb1c94b22aaff49ad03cd4ee48f303d56eb1bfc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbc0b53a618e7f83baf30e53c195cd9c44083f936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcc48cb2dba21a5d36c16f6f64e5b5e138ea1ba13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xdbb66eb9f4d737b49ae5cd4de25e6c8da8b034f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xde2d1d0fa9191e509789e2f5a3ce59d40aae1498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf0df480882200454f3d7f552eb3e996e4fedc3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf0f40e7763d97481fca3a1b163e1cf4c781a9254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf5213b3433cae7f7b926f18fe8dfe903f814a3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf658a69ec7caa997b8a1fd23e19b832f93e19836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf6fe5a0aba653118acc9c7a7fac0c960936effde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfc78d02e01b6efbe0ccbe28e4d93b60cb6f1f033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfe19bc99b7d8e63e59b64c80c8f0bdc7f22b249b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfe6caa984d060e82384c82eacfd31edc03a95da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xff4503b3a6f415b57f1bf2aefb1c4e3692979f92` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 163
- Live contracts: 1
- Unknown liveness contracts: 162
- Source-verified contracts: 121
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=89, contamination review=6, source verified unclassified=25, unverified unclassified=42

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | MOROFT<br>`0x7431ada8a591c955a994a21710752ef9b882b8e3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DepositPool<br>`0xdb10daef167ea2233ba6811457dd24d676fbd670` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | Distribution<br>`0x24c09a0c047e8a439f26682ea51c7157b3ccc20b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionToArb<br>`0xc281724c309118110d5d4073ff3cb732144eaf57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionToArbV5<br>`0xefb3af6505b343a206a39666884c25a07e36b6d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionToBase<br>`0x383ebffd2e6a956242392581d73f60dfb4d4f18e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionToBaseV5<br>`0x6db545f73e32a0ba6f100803a2f0dce044101dbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionV2<br>`0x31bf07f9c4316d461db35b2435f1bec21c783294` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionV3<br>`0xaddd7bbedd9dd2e72649217ea784069821f44ab9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionV4<br>`0x68b9d05add55769b1e4808a74b616fa37f6da294` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DistributionV5<br>`0xc1292bed7df044c03d8f2cc6cb13d0bd6c96720a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x2e1ff173085a5ef12046c27e442f12f79a0092b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x2efd4430489e1a05a89c2f51811ac661b7e5ff84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x33e689846b1f143793c9d270a26016615a1cae83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x3b51989212bedab926794d6bf8e9e991218cf116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x47176b2af9885dc6c4575d4efd63895f7aaa4790` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x6cce082851add4c535352f596662521b4de4750e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x845fbb4b3e2207bf03087b8b94d2430ab11088ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x9380d72abbd6e0cc45095a2ef8c2ca87d77cb384` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xb7994de339aee515c9b2792831cd83f3c9d8df87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xccc06767533563fbdcff2e1800e4a266fbd01532` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xde283f8309fd1aa46c95d299f6b8310716277a42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | FeeConfig<br>`0x55daa99a07f5deabdcd94d0c5a592661b82613eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L1Sender<br>`0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L1SenderV2<br>`0x50e80ea310269c547b64cc8b8a606be0ec467d1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x0e2bb6facf982ecb26bd448a758811a5cf37ee9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x14a623403b26fdf24503685894425ac0a068478c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x2388bef44cd71f18e984b8dbe88e1db717f298ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x37b94bd80b6012fb214bb6790b31a5c40d6eb7a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x3a16730c7d512cdb5c00447af468b36f4bf33303` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x9cbceaeb45e566a95a4a755b1a526874163d41c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0xc6eaf7b4c7cddec02f25e260f8541d453a72584d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ReferrerLib<br>`0x62496604116c5172435adbd928edbf36ca7cdfbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ReferrerLib<br>`0x98c204b36b779617913f7e0d932e06f4a0d36843` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | RewardPool<br>`0xe30279b79392aeff7fdf1883c23d52eba9d88a75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | StETHMock<br>`0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | WStETHMock<br>`0x42bb446eae6dca7723a9ebdb81ea88afe77ef4b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | Builders<br>`0x7ec3dda3e83ddd4b9f2cfcff0a5213bb8cf31b79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | BuildersV2<br>`0x6db545f73e32a0ba6f100803a2f0dce044101dbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | BuildersV3<br>`0x2388bef44cd71f18e984b8dbe88e1db717f298ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DelegateFactory<br>`0x3b51989212bedab926794d6bf8e9e991218cf116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DelegateFactory<br>`0x6ad6efba31cb05df2aa96aab03d2237746830193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DelegateFactory<br>`0x8aac72b616420a7a9d76b11b56d841d2f5b66aac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DelegateFactory<br>`0xe1641453e8e437493a2127bc62d51d3dfbaf5a91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x281bc6f84952abe53f6921dcd76c879d3c4b6375` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x845fbb4b3e2207bf03087b8b94d2430ab11088ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xb69dbf7c9ab4597d3b3bc284cc8771d580299bad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xe50009c299fd3952564debd773b6e07f450d76af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | FeeConfig<br>`0x2e1ff173085a5ef12046c27e442f12f79a0092b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2Factory<br>`0xd4a8eccbe696295e68572a98b1aa70aa9277d427` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2MessageReceiver<br>`0x19eef40a364f754ee77cdfba0995a3fbf1e6495d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2MessageReceiver<br>`0x47176b2af9885dc6c4575d4efd63895f7aaa4790` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2TokenReceiver<br>`0x6b1a3d8f84094667e38247d6fca6f814e11ae9fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x2265ae4127a49218c1c562cb16822971f295ed50` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LockMultiplierMath<br>`0x98c204b36b779617913f7e0d932e06f4a0d36843` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ModelRegistry<br>`0xb7994de339aee515c9b2792831cd83f3c9d8df87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | MOR<br>`0x98e3cfbdb9707df6107cb1a7bd03036052eaa20e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ProviderRegistry<br>`0xe30279b79392aeff7fdf1883c23d52eba9d88a75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ProvidersDelegate<br>`0x031075f7a853e8d4bf0b525466a78374afaa9308` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | RewardPool<br>`0x4de9d52a6a951c2dc7b22805eeec2bc41404909d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | SessionRouter<br>`0x174852b955544986215f45d9ce161d5b35401578` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | SessionRouter<br>`0x3ec0d950abb82e0eb9b86f5cf244b34912a871d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | Builders<br>`0x969c0f87623dc33010b4069fea48316ba2e45382` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | BuildersV2<br>`0xa8603114c7bce3a622f2d36286b29c6f51c14fe6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | BuildersV3<br>`0xccc06767533563fbdcff2e1800e4a266fbd01532` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | DelegateFactory<br>`0x136538a0d320a29e29fe661fb893714a0ecea76a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x281bc6f84952abe53f6921dcd76c879d3c4b6375` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x2e1ff173085a5ef12046c27e442f12f79a0092b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x37b94bd80b6012fb214bb6790b31a5c40d6eb7a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x47176b2af9885dc6c4575d4efd63895f7aaa4790` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x845fbb4b3e2207bf03087b8b94d2430ab11088ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xc03d87085e254695754a74d2cf76579e167eb895` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ERC1967Proxy<br>`0xd4a8eccbe696295e68572a98b1aa70aa9277d427` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | FeeConfig<br>`0x8739402c1ee1868dfe92fda76f74ecfaaf51ff0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2Factory<br>`0xa03ea65026def258272ec4d063db49b853d7f116` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2MessageReceiver<br>`0x2efd4430489e1a05a89c2f51811ac661b7e5ff84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2MessageReceiver<br>`0x9cbceaeb45e566a95a4a755b1a526874163d41c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2TokenReceiver<br>`0x24c09a0c047e8a439f26682ea51c7157b3ccc20b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2TokenReceiver<br>`0x383ebffd2e6a956242392581d73f60dfb4d4f18e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2TokenReceiverV2<br>`0x27353ffadfd53538e8bdf81be7041c56ce2d5ae4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | L2TokenReceiverV2<br>`0x9eba628581896ce086cb8f1a513ea6097a8fc561` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LinearDistributionIntervalDecrease<br>`0x39e6264cfba1f1c83a0bef6f3f6fa055e34d792a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LockMultiplierMath<br>`0xde283f8309fd1aa46c95d299f6b8310716277a42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | LumerinDiamond<br>`0xde819aaee474626e3f34ef0263373357e5a6c71b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | MOROFT<br>`0x3c3a26c978bf6af40d7c1a36e9cbd3c1c055786e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | ProvidersDelegate<br>`0xaddd7bbedd9dd2e72649217ea784069821f44ab9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | RewardPool<br>`0x6ad6efba31cb05df2aa96aab03d2237746830193` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| candidate review | SessionRouter<br>`0xab493d93bd9c93c7590865df82f4e09f3df96d4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | Delegation<br>`0x345b8b23c38f70f1d77560c60493bb583f012cb0` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | Marketplace<br>`0x5b660ab78f3ac743953f9e68630a2d66e7b45f64` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | Delegation<br>`0xe9d4b4eb60d16c90280ef93a823f373518462d83` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | Marketplace<br>`0xc371404682a2e02c3b46814261bee615e57f48a8` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | ModelRegistry<br>`0x2e96cef46d2a82e63570b538ef4ab697a09a3996` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| contamination review | ProviderRegistry<br>`0x8621e6b808a3d925533446b767b7bca6accb62a2` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | DistributionExt<br>`0x6948b5f0bc85caf60859da2222a5483a84d44f97` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | DistributorV2<br>`0x52f76e8be3dfabcc3b0ded02882a22be47dade03` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0x6cfe1ddfd88890e08276c7fa9d6dca1ca4a224a9` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0x6fd2674e13a42e588f83ae74e5f22a4ee24ed75a` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0x890bfa255e6ee8db5c67ab32dc600b14ebc4546c` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0x969c0f87623dc33010b4069fea48316ba2e45382` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L1ArbSender<br>`0xc1588b245a3502a86fdbf0a0f51abac3bbd2e90c` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L1BaseSender<br>`0xfe8882edd2b7bad22d1968327fa19e17608a1331` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L1FactoryToArb<br>`0xf6c6b6c659132ae691b6b2b3498bac66bf64954c` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L1FactoryToBase<br>`0xa03ea65026def258272ec4d063db49b853d7f116` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L1SenderV3<br>`0xa775b4781f2bad0829dd69c146b41f5798dfb78a` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersTreasury<br>`0xe5e06c8a6c9938873b20efc1af3a0254cc57c5ca` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersTreasuryV2<br>`0xe71eb0b69bbd4207e2cb10df929d1311d2ad57e5` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersV4<br>`0x18faef315b40a6d9cf49628f1133b1aa507513b0` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0x9eba628581896ce086cb8f1a513ea6097a8fc561` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | MOR20Deployer<br>`0x2efd4430489e1a05a89c2f51811ac661b7e5ff84` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersTreasury<br>`0x232c15275affa0ee944f6894d57e013647416aa1` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersTreasuryV2<br>`0x031075f7a853e8d4bf0b525466a78374afaa9308` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | BuildersV4<br>`0x6cce082851add4c535352f596662521b4de4750e` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0xc0ed68f163d44b6e9985f0041fdf6f67c6bcff3f` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | ERC1967Proxy<br>`0xcbe3d2c3ade62cf7aa396e8ca93d2a8bff96e257` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | L2MessageReceiverV2<br>`0x7ec51d81a30aa8449cb0b72d4c1b27062956d699` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | MOR20Deployer<br>`0xfe8882edd2b7bad22d1968327fa19e17608a1331` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| source verified unclassified | WETHMock<br>`0x52d00439eadfc53d0005dcaf1914baf9015f82fe` | non_address_book | unknown | unknown | verified | n/a | `0x040ef6fb6592a70291954e2a6a1a8f320ff10626` |
| unverified unclassified | UnnamedContract<br>`0x01df19c61a757d5455036436b332b15bf12f9e74` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x03d78aff51f8e18c95039278f58e1d0ec8af5c4b` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x04aca9d9944cbebf42297b307cb2e97bc51a35a9` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x05bffa864b11e8cd33367a4e95d75309b76434eb` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x0a1ab1dad0e8a30760fd7f94b58a3fb280fe0c45` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x0a30d107afbeb2ff5fcd8d31427e7c99aec6d980` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x10777866547c53cbd69b02c5c76369d7e24e7b10` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x208eaed75a12c35625708140c99a614fc45bf780` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x22565a2f3a2059f674a013f16d903ca406411abd` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x253fffd43056180015481807edc72ed0b75872d4` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x362cc346fbdb79636260ea149954104048e74785` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x3b002e1754518ffebe23c8b406a283d70118495e` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x4f8607458e7fd72d8d800f1945bd65831a8bf1de` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x62fe6960c4e3842961617223e7bb98c9582cf90a` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x66362e99aab3af7fa2f59f1d5eef2b3ff83804ff` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x66ffee434d733b5f395525d858ca6770f2f64d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x6bf01f56ad0968ed8f5b47ec221cd9093c96feb7` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x6c3401d71ced4b4fefd1033ea5f83e9b3e7e4381` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x814448c80b4762294baaed0af390f10ccc4d0dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x86426874b7bb78c2cb4774182e60b73fe9414bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x88fd5da36e595a8a4ffd2052703fc10bcb8102ac` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x926993cf1ffe3978500d95db591ac7a58d33c772` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x93b7ba0c22977bdd58935bd849f3e129579dcedf` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x950655e4d62598e58db24235c925dacb3ef783a3` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0x98a1af57f0780180e046d9e10e9ba6cbc2c2b0be` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xa2ea62c727d4c90d1eacc6c296f8c7f82ba103fc` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xa830fa3291abce53403a454947108042fb222bc6` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xada08ff9e0318dfff0d02668c2815d0e5fcc1bc0` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xb1c94b22aaff49ad03cd4ee48f303d56eb1bfc37` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xbc0b53a618e7f83baf30e53c195cd9c44083f936` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xcc48cb2dba21a5d36c16f6f64e5b5e138ea1ba13` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xdbb66eb9f4d737b49ae5cd4de25e6c8da8b034f9` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xde2d1d0fa9191e509789e2f5a3ce59d40aae1498` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xf0df480882200454f3d7f552eb3e996e4fedc3b4` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xf0f40e7763d97481fca3a1b163e1cf4c781a9254` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xf5213b3433cae7f7b926f18fe8dfe903f814a3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xf658a69ec7caa997b8a1fd23e19b832f93e19836` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xf6fe5a0aba653118acc9c7a7fac0c960936effde` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xfc78d02e01b6efbe0ccbe28e4d93b60cb6f1f033` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xfe19bc99b7d8e63e59b64c80c8f0bdc7f22b249b` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xfe6caa984d060e82384c82eacfd31edc03a95da4` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |
| unverified unclassified | UnnamedContract<br>`0xff4503b3a6f415b57f1bf2aefb1c4e3692979f92` | non_address_book | unknown | unknown | unverified | n/a | `0x19ec1e4b714990620edf41fe28e9a1552953a7f4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena x Morpheus Capital V2 Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Code4rena%20x%20Morpheus%20Capital%20V2%20Audit%20Report.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [MOR20 Contracts | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR20%20Contracts%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Morpheus Capital V2 Zenith Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Morpheus%20Capital%20V2%20Zenith%20Audit%20Report.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Morpheus BuildersV2 Audit Report | Trust Security.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Builders/Morpheus%20BuildersV2%20Audit%20Report%20%7C%20Trust%20Security.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Morpheus Lumerin Audit Report 1 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%201%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Morpheus Lumerin Audit Report 2 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%202%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Morpheus Lumerin Audit Report 3 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%203%20%7C%20Renascence.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Distribution V1 Audit | Community.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Audit%20%7C%20Community.md) | yAudit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Distribution V1 Public Bug Bounty | Code Hawks.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Public%20Bug%20Bounty%20%7C%20Code%20Hawks.md) | Cyfrin | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Distribution V2 Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V2%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Distribution V3 (Capital Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Capital%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Distribution V3 (Code Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Code%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Distribution V4 (Claim Lock) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V4%20(Claim%20Lock)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Distribution V5 (Referral Program) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V5%20(Referral%20Program)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [L2TokenReceiverV2 Audit (Final) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Final)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [L2TokenReceiverV2 Audit (Initial) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Initial)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Dynamic%20Minter%20Security%20Audit%20(Wormhole)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [MOR Token Contract | OpenZepellin.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Token%20Contract%20%7C%20OpenZepellin.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12357] Code4rena x Morpheus Capital V2 Audit Report.pdf — no match: Scope section states 6 smart contracts; extracted from file paths and findings. Audit date range Aug 15-25, 2025; end date used.
- [12358] MOR20 Contracts | Renascence.pdf — no match: Extracted from audit report text. Scope section lists Repository, CommitHash, MitigationHash, Date. Contracts mentioned in findings and centralization risks.
- [12359] Morpheus Capital V2 Zenith Audit Report.pdf — no match: Scope explicitly lists 'contracts/capital-protocol/* (except DistributionV6.sol)'. All contracts referenced in findings are within that directory. Audit dates: July 22 to July 25, 2025.
- [12360] Morpheus BuildersV2 Audit Report | Trust Security.pdf — no match: Two contracts in scope: BuildersV2.sol and BuilderSubnets.sol. Audit date from document versioning (0.4 21/03/25).
- [12361] Morpheus Lumerin Audit Report 1 | Renascence.pdf — no match: Scope explicitly lists four contracts: ModelRegistry.sol, ProviderRegistry.sol, Marketplace.sol, SessionRouter.sol. Audit date from cover page: August 8, 2024.
- [12362] Morpheus Lumerin Audit Report 2 | Renascence.pdf — no match: Extracted 7 contracts from scope and findings. Audit date from cover page.
- [12363] Morpheus Lumerin Audit Report 3 | Renascence.pdf — no match: Scope explicitly lists ModelRegistry.sol, ProviderRegistry.sol, Marketplace.sol, SessionRouter.sol. ProvidersDelegate.sol and DelegateFactory.sol are audited in findings.
- [12364] Distribution V1 Audit | Community.md — no match: No explicit scope section found; contracts extracted from findings referencing specific files.
- [12365] Distribution V1 Public Bug Bounty | Code Hawks.md — no match: Extracted from contest summary dates: Jan 30th, 2024 - Feb 3rd, 2024. End date used.
- [12366] Distribution V2 Audit | Renascence.pdf — no match: Extracted contracts from scope table and findings context. Audit date from cover page.
- [12367] Distribution V3 (Capital Staking) Audit | Renascence.pdf — no match: Only DistributionV2 contract is in scope; the report mentions DistributionV2.sol as the audited contract.
- [12368] Distribution V3 (Code Staking) Audit | Renascence.pdf — no match: Scope table lists 'Contract Smart Contracts' with DistributionV3.sol and IDistributionV3.sol implied by findings. Audit date from cover page and overview section.
- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf — no match: No specific contract names or scope section found in the report. The report mentions 'SmartContracts' as a repository but does not list individual contract names.
- [12370] Distribution V5 (Referral Program) Audit | Renascence.pdf — no match: Audit report for DistributionContractV5. Referral Program (PR15|PR46) Version 2.0. Scope includes DistributionV5 and DistributionV4 contracts from SmartContracts and MOR20 repositories.
- [12371] L2TokenReceiverV2 Audit (Final) | Renascence.pdf — no match: Only one contract in scope: L2TokenReceiverV2. Audit date from cover page.
- [12372] L2TokenReceiverV2 Audit (Initial) | Renascence.pdf — no match: Only one contract in scope: L2TokenReceiverV2. Audit date from cover page: April 10, 2024.
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf — no match: Only one contract name found; no file paths or addresses provided.
- [12374] MOR Token Contract | OpenZepellin.pdf — matched: Only one contract in scope: MOROFT.sol. Audit date from title line.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code4rena x Morpheus Capital V2 Audit Report.pdf | ChainLinkDataConsumer | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | Distributor | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | DepositPool | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | RewardPool | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | L1SenderV2 | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope and findings reference | no |
| MOR20 Contracts | Renascence.pdf | Factory | unmatched — not counted | — | Listed in scope and findings (M-1, M-3, I-2) | no |
| MOR20 Contracts | Renascence.pdf | L1Factory | unmatched — not counted | — | Listed in scope and findings (M-3) | no |
| MOR20 Contracts | Renascence.pdf | L2Factory | unmatched — not counted | — | Listed in scope and findings (M-3) | no |
| MOR20 Contracts | Renascence.pdf | Distribution | unmatched — not counted | — | Listed in scope and findings (M-2) | no |
| MOR20 Contracts | Renascence.pdf | FeeConfig | unmatched — not counted | — | Listed in scope and findings (L-1, I-1, I-3, I-4, I-5) | no |
| MOR20 Contracts | Renascence.pdf | FreezableBeaconProxy | unmatched — not counted | — | Listed in scope and findings (M-3, L-2) | no |
| MOR20 Contracts | Renascence.pdf | L1Sender | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | L2MessageReceiver | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | L2TokenReceiver | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | MOR20 | unmatched — not counted | — | Mentioned in centralization risks (MOR20.updateMinter()) | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | DepositPool | unmatched — not counted | — | Listed in scope as part of contracts/capital-protocol/* (except DistributionV6.sol) and referenced in findings C-1, M-1, L-3, L-4. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | Distributor | unmatched — not counted | — | Listed in scope and referenced in findings C-1, H-1, M-2, L-2, I-2. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | ChainLinkDataConsumer | unmatched — not counted | — | Referenced in finding L-1. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | LinearDistributionIntervalDecrease | unmatched — not counted | — | Referenced in findings L-2 and I-1. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | RewardPool | unmatched — not counted | — | Referenced in findings I-1 and throughout the report. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | ReferrerLib | unmatched — not counted | — | Referenced in finding L-4. | no |
| Morpheus BuildersV2 Audit Report | Trust Security.pdf | BuildersV2 | unmatched — not counted | — | listed in scope | no |
| Morpheus BuildersV2 Audit Report | Trust Security.pdf | BuilderSubnets | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | ModelRegistry | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | ProviderRegistry | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | Marketplace | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | SessionRouter | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ModelRegistry | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | Marketplace | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | SessionRouter | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ModelStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ProviderStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | StatsStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ModelRegistry.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ProviderRegistry.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | Marketplace.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | SessionRouter.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ProvidersDelegate.sol | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | DelegateFactory.sol | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | Distribution | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L1Sender | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L2MessageReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L2TokenReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | LinearDistributionIntervalDecrease | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | MOR | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | Distribution | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | L1Sender | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | DistributionV2 | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | WStETHMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | StETHMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | SwapRouterMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | NonfungiblePositionManagerMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | MOR | unmatched — not counted | — | mentioned in findings as reward token | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | L2TokenReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V2 Audit | Renascence.pdf | Distribution | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L1Sender | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L2TokenReceiver | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L2MessageReceiver | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | LinearDistributionIntervalDecrease | unmatched — not counted | — | listed in findings | no |
| Distribution V2 Audit | Renascence.pdf | IDistribution | unmatched — not counted | — | listed in findings | no |
| Distribution V2 Audit | Renascence.pdf | IL2MessageReceiver | unmatched — not counted | — | listed in findings | no |
| Distribution V3 (Capital Staking) Audit | Renascence.pdf | DistributionV2 | unmatched — not counted | — | listed in scope table and findings context | no |
| Distribution V3 (Code Staking) Audit | Renascence.pdf | DistributionV3 | unmatched — not counted | — | listed in scope table and findings context | no |
| Distribution V3 (Code Staking) Audit | Renascence.pdf | IDistributionV3 | unmatched — not counted | — | listed in findings context | no |
| Distribution V5 (Referral Program) Audit | Renascence.pdf | DistributionV5 | unmatched — not counted | — | mentioned in findings context and scope | no |
| Distribution V5 (Referral Program) Audit | Renascence.pdf | DistributionV4 | unmatched — not counted | — | mentioned in finding L-1 context | no |
| L2TokenReceiverV2 Audit (Final) | Renascence.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope and findings | no |
| L2TokenReceiverV2 Audit (Initial) | Renascence.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope table and mentioned throughout report | no |
| MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf | MorpheusAIsDynamicMinter | unmatched — not counted | — | listed in scope as project name and repository name | no |
| MOR Token Contract | OpenZepellin.pdf | MOROFT | own contract | MOROFT (selected) `0x7431ada8a591c955a994a21710752ef9b882b8e3` — deployed 2024-05-27 10:14:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x6abe1d282f72b474e54527d93b979a4f64d3030a` | LumerinDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 71 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16, low=1, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [12357] Code4rena x Morpheus Capital V2 Audit Report.pdf
- [12358] MOR20 Contracts | Renascence.pdf
- [12359] Morpheus Capital V2 Zenith Audit Report.pdf
- [12360] Morpheus BuildersV2 Audit Report | Trust Security.pdf
- [12361] Morpheus Lumerin Audit Report 1 | Renascence.pdf
- [12362] Morpheus Lumerin Audit Report 2 | Renascence.pdf
- [12363] Morpheus Lumerin Audit Report 3 | Renascence.pdf
- [12364] Distribution V1 Audit | Community.md
- [12365] Distribution V1 Public Bug Bounty | Code Hawks.md
- [12366] Distribution V2 Audit | Renascence.pdf
- [12367] Distribution V3 (Capital Staking) Audit | Renascence.pdf
- [12368] Distribution V3 (Code Staking) Audit | Renascence.pdf
- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf
- [12370] Distribution V5 (Referral Program) Audit | Renascence.pdf
- [12371] L2TokenReceiverV2 Audit (Final) | Renascence.pdf
- [12372] L2TokenReceiverV2 Audit (Initial) | Renascence.pdf
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf

Fork inheritance lineage and inherited audits are included when available.
