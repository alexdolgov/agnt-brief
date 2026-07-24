# Agentic Audit Brief: CORE Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: CORE Bridge (`core-bridge`)
- Website: [https://bridge.coredao.org/bridge](https://bridge.coredao.org/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 62 unique implementations (65 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,738,707.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CORE Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, optimism, polygon. Structural roles: 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (4)
- Contract kinds: contract (4)
- Detected standards: ownable (4)
- Frameworks: openzeppelin (4), layerzero (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x29d096cd18c0da7500295f082da73316d704031a`, chain 10)
- UnnamedContract (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 56)
- UnnamedContract (`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`, chain 56)
- UnnamedContract (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- OriginalTokenBridge (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 1)
- OriginalTokenBridge (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 137)
- OriginalTokenBridge (`0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879`, chain 8453)
- OriginalTokenBridge (`0x29d096cd18c0da7500295f082da73316d704031a`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (20 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 62 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 62
- Raw deployments: 65
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OriginalTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2`; ethereum `0xa4218e1f39da4aadac971066458db56e901bcbde`; polygon `0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2`; polygon `0xa4218e1f39da4aadac971066458db56e901bcbde` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-233325 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-233335 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | base | unit-233364 | `0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-233337 | `0x29d096cd18c0da7500295f082da73316d704031a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233324 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233326 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233327 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233328 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233329 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-233330 | `0x29d096cd18c0da7500295f082da73316d704031a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233331 | `0x68f180fcce6836688e9084f035309e29bf0a2095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70429f78c2d7d1de6f89be421bce64ba876c325b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233332 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233349 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-233351 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233353 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7950865a9140cb519342433146ed5b40c6f210f7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-233355 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947950bcc74888a40ffa2593c5798f11fc9124c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b726b1145a4773f68593cf171187d8ebe4d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4218e1f39da4aadac971066458db56e901bcbde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233357 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3c817354e3855ef2b52d15ad2244793c50385a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6115445bff7b52feb98650c87f44907e58f802` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233333 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233334 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233336 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-233360 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-233362 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233338 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233340 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233342 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d096cd18c0da7500295f082da73316d704031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233343 | `0x50b7545627a5162f82a992c33b87adc75187b218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6262bdac4369af889f6c18f7872de2fd0538eaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233345 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233347 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba2a995bd4ab9e605454ccef88169352cd5f75a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd83d5c96bfb9e5f890e8be48165b13ddb0ecd2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 36
- Live contracts: 0
- Unknown liveness contracts: 36
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=4, unverified unclassified=32

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x6262bdac4369af889f6c18f7872de2fd0538eaba` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xba2a995bd4ab9e605454ccef88169352cd5f75a6` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd83d5c96bfb9e5f890e8be48165b13ddb0ecd2aa` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f2239511051b875ccf84dab02d5a307adcd51c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3fa3d254bf6af295b5b22cc6730b04144314890` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4218e1f39da4aadac971066458db56e901bcbde` | non_address_book | unknown | unknown | unverified | n/a | `0x4a8a8503360f3e44c945f34c7003b17827064e90` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | non_address_book | unknown | unknown | unverified | n/a | `0x970609ba2c160a1b491b90867681918bdc9773af` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe9e7cea3dedca5984780bafc599bd69add087d56` | non_address_book | unknown | unknown | unverified | n/a | `0xf07c30e4cd6cfff525791b4b601bd345bded7f47` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7950865a9140cb519342433146ed5b40c6f210f7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x947950bcc74888a40ffa2593c5798f11fc9124c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2b726b1145a4773f68593cf171187d8ebe4d495` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd3c817354e3855ef2b52d15ad2244793c50385a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb6115445bff7b52feb98650c87f44907e58f802` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| ethereum | source verified unclassified | OriginalTokenBridge<br>`0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2` | non_address_book | unknown | unknown | verified | n/a | `0x4a8a8503360f3e44c945f34c7003b17827064e90` |
| ethereum | source verified unclassified | OriginalTokenBridge<br>`0xa4218e1f39da4aadac971066458db56e901bcbde` | non_address_book | unknown | unknown | verified | n/a | `0x4a8a8503360f3e44c945f34c7003b17827064e90` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| optimism | unverified unclassified | UnnamedContract<br>`0x06b573c2bcd4dbd0c692727910f10d3912af330c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| optimism | unverified unclassified | UnnamedContract<br>`0x70429f78c2d7d1de6f89be421bce64ba876c325b` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| optimism | unverified unclassified | UnnamedContract<br>`0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| polygon | source verified unclassified | OriginalTokenBridge<br>`0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2` | non_address_book | unknown | unknown | verified | n/a | `0x4a8a8503360f3e44c945f34c7003b17827064e90` |
| polygon | source verified unclassified | OriginalTokenBridge<br>`0xa4218e1f39da4aadac971066458db56e901bcbde` | non_address_book | unknown | unknown | verified | n/a | `0x4a8a8503360f3e44c945f34c7003b17827064e90` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x29d096cd18c0da7500295f082da73316d704031a` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
