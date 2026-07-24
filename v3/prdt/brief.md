# Agentic Audit Brief: PRDT

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: PRDT (`prdt`)
- Website: [https://prdt.finance](https://prdt.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 60 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $389,889.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for PRDT in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 60
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CPredictionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24992f91cfaaae97cf0b09057a4c40dc644b0368` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x00199e444155f6a06d74cf36315419d39b874f5c`; bsc `0xba01605f5d5fa3cf88573dab77bc21d664c55648` | ⚠️ Unaudited |
| PRDTFrontendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301ab4a9bb432a1e034a4b92894d675e2e0ad4c2` | ⚠️ Unaudited |
| PRDTMultipleU_V0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7529b5550bbba74c095069dc5b370e460edb5a88` | ⚠️ Unaudited |
| PRDTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x854b5f2bfcc5b7cd05d6259cf5d035af57cfa301` | ⚠️ Unaudited |
| PredictionsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35af667afd82de3c224fcfca9a66d32b586f6d60` | ⚠️ Unaudited |
| ProBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9c8c0a04354f41b985c10daf7db30bc66998f5` | ⚠️ Unaudited |
| ProBalanceSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3992a99134ae42b3be566b8b802388bf1785e0fb` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd9632d09518d940e307580dd1d7b4abd22a77dd4` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd9632d09518d940e307580dd1d7b4abd22a77dd4` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xd9632d09518d940e307580dd1d7b4abd22a77dd4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f4b6ad980f208b24092fda86000bcfa9a597218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4459fed7dc091524b4c074aaaa9036d993b54945` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-251776 | `0x49efb44831ad88a9cffb183d48c0c60bf4028da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f8a1dcc0105a171cbec1c939eeb0ed97bb4535d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69d04c52c510369377103564ac07a09186fc4c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b22b7dabe2a77502e284ea1d8369382e4b5fd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9eb8725726855ff001f54e8e8901ff2ff80c57e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8a18583aba578c139b26c8297f8b49d31766621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb53fea7a6811445a7a971de4fc9a965392082e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x062eb9830d1f1f0c64ac598ec7921f0cbd6d4841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c4a24dbb85316c14f0ea553bbc16c6893fd5878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1391974118347ed488c8b0c58db9ea4872af9986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c195481806f222c1401d7bf76fc818e2442f105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c5507774b33ad68298821740233d3559b628793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cc71a5339a479cab3674926bfe9a6902cd0b8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d7d08bb15950a127471a69eedbbf9cc8ccd4b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24898ce1501ac65810650cf735a6fb097e8e8d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3fc376530ac35d37dd1fa794f922e0f30cbb2c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4af6850b0d6dc2cc6118d959b3b0b9a4553c486b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x541e2066ac425241d829ee86219763bdd9c4c2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59e0ad27d0f58a15128051caa1d2917aa71ab864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e72b91e673f659efb3e41e17e4d1e0854891fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f62b71460e83fc27d207075a09b595d63911b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x764c3ea13e7457261e5c1aad597f281f3e738240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7782d49c9c95ae38f24db461b8b7a88777309692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77ac66724067935dd379bbb4a15bacaa062498b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x821001e0113dd4c3251c65d5dfe8969c5f8c3434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8251e5ebc2d2c20f6a116144800d569faf75d746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8278e97922530711a9a7b4e3686005df1ae436e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88fb11a38c17dfa171d3ccc724c2eb55d169cd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91a594537da938292f396fdd07b34c654164a7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94569954a6b28b02cfb1364c68b909819d08f928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f9564be7b566dfe4b091a83a591752102af3f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa020df28d0c418d355448f5c2bcf3040c6aa32da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa389795f945c6aae4ef4f2f44db0c5845792b45b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa76a852c7a72a2d5edb0d33f5da0ddfb29ea6f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaed03de5cbccb3a5c717dbda5e164204b7a78d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb01ab9180022cce43961f009f10936f5d8543335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb35a6e1a32d333eeaa7176c365138b65408e30c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4cb2cb6afe4614d36b04bdd331e683dd5f53f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc41d1f159edc2cabed5d4c4d1485eaa37413cff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9d85f6e807eaf4f3826d1967d7d646c1c6c2e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd71b0366cd2f2e90dd1f80a1f0ea540f73ac0ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe656ebf0ee62660d34ea1b8c13d18ba83832c283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea5d84b6562581dfad3496dde529bed27c616640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf48d84b7698b9e83b6a1de9d3f5175b33bb70123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa6784481dd70a16e6faece211e54a30bfce28e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfad9e4240e3f4b41c5928e7c7c0e1bb263d5e815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe572c3c80e03ef9f5565088e6b2bba638bdcfa9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 49
- Live contracts: 0
- Unknown liveness contracts: 49
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=49

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x2f4b6ad980f208b24092fda86000bcfa9a597218` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x4459fed7dc091524b4c074aaaa9036d993b54945` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x5f8a1dcc0105a171cbec1c939eeb0ed97bb4535d` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x69d04c52c510369377103564ac07a09186fc4c3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x8b22b7dabe2a77502e284ea1d8369382e4b5fd26` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x9eb8725726855ff001f54e8e8901ff2ff80c57e1` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xba01605f5d5fa3cf88573dab77bc21d664c55648` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xd8a18583aba578c139b26c8297f8b49d31766621` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xeb53fea7a6811445a7a971de4fc9a965392082e5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x062eb9830d1f1f0c64ac598ec7921f0cbd6d4841` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x0c4a24dbb85316c14f0ea553bbc16c6893fd5878` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x1391974118347ed488c8b0c58db9ea4872af9986` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x1c195481806f222c1401d7bf76fc818e2442f105` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x1c5507774b33ad68298821740233d3559b628793` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x1cc71a5339a479cab3674926bfe9a6902cd0b8d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x1d7d08bb15950a127471a69eedbbf9cc8ccd4b24` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x24898ce1501ac65810650cf735a6fb097e8e8d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x3fc376530ac35d37dd1fa794f922e0f30cbb2c46` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x4af6850b0d6dc2cc6118d959b3b0b9a4553c486b` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x541e2066ac425241d829ee86219763bdd9c4c2a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x59e0ad27d0f58a15128051caa1d2917aa71ab864` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x6e72b91e673f659efb3e41e17e4d1e0854891fa4` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x6f62b71460e83fc27d207075a09b595d63911b24` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x764c3ea13e7457261e5c1aad597f281f3e738240` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x7782d49c9c95ae38f24db461b8b7a88777309692` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x77ac66724067935dd379bbb4a15bacaa062498b2` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x821001e0113dd4c3251c65d5dfe8969c5f8c3434` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x8251e5ebc2d2c20f6a116144800d569faf75d746` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x8278e97922530711a9a7b4e3686005df1ae436e8` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x88fb11a38c17dfa171d3ccc724c2eb55d169cd81` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x91a594537da938292f396fdd07b34c654164a7fd` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0x94569954a6b28b02cfb1364c68b909819d08f928` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0x9f9564be7b566dfe4b091a83a591752102af3f33` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xa020df28d0c418d355448f5c2bcf3040c6aa32da` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xa389795f945c6aae4ef4f2f44db0c5845792b45b` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xa76a852c7a72a2d5edb0d33f5da0ddfb29ea6f7a` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xaed03de5cbccb3a5c717dbda5e164204b7a78d66` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xb01ab9180022cce43961f009f10936f5d8543335` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xb35a6e1a32d333eeaa7176c365138b65408e30c5` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xb4cb2cb6afe4614d36b04bdd331e683dd5f53f97` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xc41d1f159edc2cabed5d4c4d1485eaa37413cff5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xc9d85f6e807eaf4f3826d1967d7d646c1c6c2e8f` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xd71b0366cd2f2e90dd1f80a1f0ea540f73ac0ef6` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xe656ebf0ee62660d34ea1b8c13d18ba83832c283` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xea5d84b6562581dfad3496dde529bed27c616640` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xf48d84b7698b9e83b6a1de9d3f5175b33bb70123` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xfa6784481dd70a16e6faece211e54a30bfce28e1` | non_address_book | unknown | unknown | unverified | n/a | `0x6a8ca267546cd553972fcb6a0f5cbfab28ec4308` |
| unverified unclassified | UnnamedContract<br>`0xfad9e4240e3f4b41c5928e7c7c0e1bb263d5e815` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |
| unverified unclassified | UnnamedContract<br>`0xfe572c3c80e03ef9f5565088e6b2bba638bdcfa9` | non_address_book | unknown | unknown | unverified | n/a | `0xae0e08e578423510b1af0ec8cb610396a3bc68ca` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/prdt-finance](https://skynet.certik.com/projects/prdt-finance) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20970] skynet.certik.com/projects/prdt-finance — no match: Only one contract file explicitly listed in the audit section: PRDTPrediction.sol. The report is a Skynet project insight page, not a full audit report, but the audit section mentions 'Audited Files/SHA256' with that file. Date extracted from 'Last Audit was delivered on 4/11/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/prdt-finance | PRDTPrediction | unmatched — not counted | — | listed in Audited Files/SHA256 section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20970] skynet.certik.com/projects/prdt-finance

Fork inheritance lineage and inherited audits are included when available.
