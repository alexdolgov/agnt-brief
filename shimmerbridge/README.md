# Agentic Audit Brief: ShimmerBridge

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

- Project: ShimmerBridge (`shimmerbridge`)
- Website: [https://shimmerbridge.org/](https://shimmerbridge.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, optimism, polygon
- Contract surface: 57 unique implementations (57 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $197,726.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ShimmerBridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 10)
- UnnamedContract (`0x68f180fcce6836688e9084f035309e29bf0a2095`, chain 10)
- UnnamedContract (`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`, chain 10)
- UnnamedContract (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- UnnamedContract (`0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d`, chain 56)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- UnnamedContract (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- UnnamedContract (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- UnnamedContract (`0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7`, chain 43114)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 20 of 57 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 57
- Raw deployments: 57
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OriginalTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c6d5a71fdd306329287a835e9b8edb7f0f17898` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392541 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392545 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392548 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392552 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392553 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392554 | `0x68f180fcce6836688e9084f035309e29bf0a2095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70429f78c2d7d1de6f89be421bce64ba876c325b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392555 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392566 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7950865a9140cb519342433146ed5b40c6f210f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392567 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947950bcc74888a40ffa2593c5798f11fc9124c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b726b1145a4773f68593cf171187d8ebe4d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3c817354e3855ef2b52d15ad2244793c50385a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6115445bff7b52feb98650c87f44907e58f802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392556 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392557 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392558 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392559 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392569 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392560 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392561 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392562 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392563 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6262bdac4369af889f6c18f7872de2fd0538eaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392564 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392565 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
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
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=36

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0x06b573c2bcd4dbd0c692727910f10d3912af330c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0x70429f78c2d7d1de6f89be421bce64ba876c325b` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x7950865a9140cb519342433146ed5b40c6f210f7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x947950bcc74888a40ffa2593c5798f11fc9124c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xa2b726b1145a4773f68593cf171187d8ebe4d495` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xdd3c817354e3855ef2b52d15ad2244793c50385a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | non_address_book | unknown | unknown | unverified | n/a | `0x970609ba2c160a1b491b90867681918bdc9773af` |
| unverified unclassified | UnnamedContract<br>`0xfb6115445bff7b52feb98650c87f44907e58f802` | non_address_book | unknown | unknown | unverified | n/a | `0xfc19e4ce0e0a27b09f2011ef0512669a0f76367a` |
| unverified unclassified | UnnamedContract<br>`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0x53eedc0c750c9ffd63782a1b215effcb704fd402` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0xae66c0564a6bb320514cd133ddc8281de59d94d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| unverified unclassified | UnnamedContract<br>`0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0x6262bdac4369af889f6c18f7872de2fd0538eaba` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| unverified unclassified | UnnamedContract<br>`0x7f2239511051b875ccf84dab02d5a307adcd51c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0xa3fa3d254bf6af295b5b22cc6730b04144314890` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| unverified unclassified | UnnamedContract<br>`0xba2a995bd4ab9e605454ccef88169352cd5f75a6` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| unverified unclassified | UnnamedContract<br>`0xd83d5c96bfb9e5f890e8be48165b13ddb0ecd2aa` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| unverified unclassified | UnnamedContract<br>`0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Shimmer Bridge_Zokyo_Jan19_2024.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zokyo-sec/audit-reports/main/Shimmer/Shimmer%20Bridge_Zokyo_Jan19_2024.pdf) | Zokyo | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21446] Shimmer Bridge_Zokyo_Jan19_2024.pdf — no match: The report is a penetration test of the Shimmer Bridge web application, not a smart contract audit. No smart contracts are listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [21446] Shimmer Bridge_Zokyo_Jan19_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
