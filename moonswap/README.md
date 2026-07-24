# Agentic Audit Brief: Moonswap

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

- Project: Moonswap (`moonswap`)
- Website: [https://moonswap.fi/](https://moonswap.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonriver
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $105,949.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Moonswap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MoonLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-154233 | `0x0134eb236b47186021a50d25a51365ac77e39eb3` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-154234 | `0x98878b06940ae243284ca214f92bb71a2b032b8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0340bce99962573c45d27a95cd39c63bd7eeb1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x056973f631a5533470143bb7010c9229c19c04d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c10e603e21f765c50805ce019adc034ef07bb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1216624e9753f77dfcdedda7c2938d69076cbf9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1866be6a65a22a333136b720ba2906cb794d9494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d00a3fc0467d511d05aa37de5b70a5bc580023e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21a181922e6b7cc4aef7f6f28521ffff152065ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3ae63e34add2e67c036586cd6d93c4ff1d64f444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4b9c5198ad73f358041d60600f4cdc3d8671f9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4d476a6aac8b5a296a882b94254cd73ae37c6de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x537004440fffe1d4ae9f009031fc2b0385fca9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66136ab227b455ba05b316c30b63dbc112f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x73cfcafab984b846bf96e4122eeb10643cbf9e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x73f3bf53a3891feb06e3deed63c9231f336da003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x78aa55ce0b0dc7488d2c38bd92769f4d0c8196ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7963ff5f7b7bb4c459cb189bff036a0da43ec310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7bb6499326c6bdd2eed32c8483d38ae8a7374bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8090494302d4b3be0f51bce41fc164b1fc7e66dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x80f1336c2908b564ecb70516796fd19f16570fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x825adaea5fc56d93b348a48542749e59a340678a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8f367a53fb1ea5e9a08cee00eae27ed37f45188b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x938971c46566538c122eed41100b05bd8159ab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9702b462c188fe47196f864944cf392e6da0a419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9cfb3b437ba82c8d243d3e77e2858c46fa807663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8a6fd8d021d9e32e3318ffacdd94e8cda607831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8d3a6008f894682f681d1d0f3a09e4064393dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa91d6eea8530876fc4fce829d894fb7305296071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9f0c9263a20ce772c92f4e6196ee69b2ea565ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb26b39d502fa1eea8fc822ecdb1f9ba73809f1d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb37869cfca0117be335f77a9c7e5ff241713b172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb3fb48bf090bedff4f6f93ffb40221742e107db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb497c3e9d27ba6b1fea9f1b941d8c79e66cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc0755dfc279449384b4764e799d59c96fe9f0873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc08081a057287a8ead7751b6a37a101b12e501bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc4753f878ec4d06e4d02e539ff61c5818c9599b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcf9b646077f0ecc06ee0cfea99bf2900f332e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd3da6e6ee82b2c01b723854bfcc1fcdada92eb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd5cdf34a7eb986fa4bfa5313362c9259af802229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd8ef5f9e8d752eb8c76f1b6105cd48f8efab612a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdf53c48ed0690146b7d168984eb8632a73e350ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe3dedcf63940e5ebd8b72ea4f49616f440728cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeb47b10660aad38bd24fcb38f6afaa2090ef113c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf8595b8a096d2284c5b2ed08d0659396730f6048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfd9e186f03bb5b5e992de8704bff4a04d661022b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 44
- Live contracts: 0
- Unknown liveness contracts: 44
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=44

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0340bce99962573c45d27a95cd39c63bd7eeb1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x056973f631a5533470143bb7010c9229c19c04d2` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x0c10e603e21f765c50805ce019adc034ef07bb96` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x1216624e9753f77dfcdedda7c2938d69076cbf9c` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x1866be6a65a22a333136b720ba2906cb794d9494` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x1d00a3fc0467d511d05aa37de5b70a5bc580023e` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x21a181922e6b7cc4aef7f6f28521ffff152065ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x3ae63e34add2e67c036586cd6d93c4ff1d64f444` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x4b9c5198ad73f358041d60600f4cdc3d8671f9c9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x4d476a6aac8b5a296a882b94254cd73ae37c6de4` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x537004440fffe1d4ae9f009031fc2b0385fca9f1` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x66136ab227b455ba05b316c30b63dbc112f0a3b3` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x73cfcafab984b846bf96e4122eeb10643cbf9e18` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x73f3bf53a3891feb06e3deed63c9231f336da003` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x78aa55ce0b0dc7488d2c38bd92769f4d0c8196ff` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x7963ff5f7b7bb4c459cb189bff036a0da43ec310` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x7bb6499326c6bdd2eed32c8483d38ae8a7374bd5` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x8090494302d4b3be0f51bce41fc164b1fc7e66dc` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x80f1336c2908b564ecb70516796fd19f16570fc6` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x825adaea5fc56d93b348a48542749e59a340678a` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x8f367a53fb1ea5e9a08cee00eae27ed37f45188b` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x938971c46566538c122eed41100b05bd8159ab76` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x9702b462c188fe47196f864944cf392e6da0a419` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x9cfb3b437ba82c8d243d3e77e2858c46fa807663` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa8a6fd8d021d9e32e3318ffacdd94e8cda607831` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa8d3a6008f894682f681d1d0f3a09e4064393dab` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa91d6eea8530876fc4fce829d894fb7305296071` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa9f0c9263a20ce772c92f4e6196ee69b2ea565ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb26b39d502fa1eea8fc822ecdb1f9ba73809f1d9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb37869cfca0117be335f77a9c7e5ff241713b172` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb3fb48bf090bedff4f6f93ffb40221742e107db7` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb497c3e9d27ba6b1fea9f1b941d8c79e66cfc9d6` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xc0755dfc279449384b4764e799d59c96fe9f0873` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xc08081a057287a8ead7751b6a37a101b12e501bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xc4753f878ec4d06e4d02e539ff61c5818c9599b1` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xcf9b646077f0ecc06ee0cfea99bf2900f332e3ee` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xd3da6e6ee82b2c01b723854bfcc1fcdada92eb90` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xd5cdf34a7eb986fa4bfa5313362c9259af802229` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xd8ef5f9e8d752eb8c76f1b6105cd48f8efab612a` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xdf53c48ed0690146b7d168984eb8632a73e350ed` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xe3dedcf63940e5ebd8b72ea4f49616f440728cba` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xeb47b10660aad38bd24fcb38f6afaa2090ef113c` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xf8595b8a096d2284c5b2ed08d0659396730f6048` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xfd9e186f03bb5b5e992de8704bff4a04d661022b` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart Contract Security Audit Report- MoonSwap.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report-%20MoonSwap.pdf) | SlowMist | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21410] Smart Contract Security Audit Report- MoonSwap.pdf — no match: Contracts extracted from the 'Contracts Description' section (4.1) which lists all major contracts audited. Audit date found in section 5.1: 'AuditDate: September 09, 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Smart Contract Security Audit Report- MoonSwap.pdf | GovernorAlpha | unmatched — not counted | — | listed in contracts description table | no |
| Smart Contract Security Audit Report- MoonSwap.pdf | MoonToken | unmatched — not counted | — | listed in contracts description table | no |
| Smart Contract Security Audit Report- MoonSwap.pdf | Ownable | unmatched — not counted | — | listed in contracts description table | no |
| Smart Contract Security Audit Report- MoonSwap.pdf | MasterStar | unmatched — not counted | — | listed in contracts description table | no |
| Smart Contract Security Audit Report- MoonSwap.pdf | Migrator | unmatched — not counted | — | listed in contracts description table | no |
| Smart Contract Security Audit Report- MoonSwap.pdf | Timelock | unmatched — not counted | — | listed in contracts description table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21410] Smart Contract Security Audit Report- MoonSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
