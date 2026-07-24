# Agentic Audit Brief: Orderly Chain

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 6 audit(s)
- Eligible audit results: 18 (6 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Orderly Chain (`orderly-chain`)
- Website: [https://orderly.network/](https://orderly.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, berachain, bsc, ethereum, mode, orderly
- Contract surface: 101 unique implementations (101 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $205,250.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Orderly Chain in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x461c12fba639303da045255dd32eea7e38ac69b0`, chain 56)
- UnnamedContract (`0x6fb848801aca77e724a8ab22d0006cb317e69492`, chain 56)
- UnnamedContract (`0x14a6342a8c1ef9856898f510fcce377e46668f33`, chain 291)
- UnnamedContract (`0x173b47edbeca665125edc24c509bfe545cda60a9`, chain 291)
- UnnamedContract (`0x6f7a338f2aa472838defd3283eb360d4dff5d203`, chain 291)
- UnnamedContract (`0x7cc5b6433eb33164c88f6512f56c566cfc3420bf`, chain 291)
- UnnamedContract (`0xa0a07a78c7d31e6f8698f48fc9219f9a3030f38c`, chain 291)
- UnnamedContract (`0xa2ea0a58b083c492adc91a687fac8b53adb7c0fd`, chain 291)
- UnnamedContract (`0x816f722424b49cf1275cc86da9840fbd5a6167e9`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 9 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (27 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 9 of 101 unique; 92 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 10 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd4c63d2616a5201454168269031355f4764337` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x01a6810727db185bbf7f30ec158c3ac8b8112627` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x036cbd53842c5426634e7929541ec2318f3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a766d6bca1fd8fdb6c09b76084719cf94d041b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x09bc4e0d864854c6afb6eb9a9cdf58ac190d0df9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eac556c0c2321ba25b9dc01e4e3c95ad5cdcd2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d2fe3b2c7f1905a81e1aedd2edfa5fde94a801` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25eb1e506608ab7eb8f91802e1dae6963848ed25` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4ad1d479561064cd1c311004aca93d15041aec` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x31873b5804babe258d6ea008f55e08dd00b7d51e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x37f3e3cb84dea21d10cc8915889d3f3bfa6a1c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d61a2bbb737985d68809ab85ea59ad29882d99` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5425890298aed601595a70ab815c96711a31bc65` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bf771a65d057e778c5f0ed52a0003316f94322d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5fd84259d66cd46123540766be93dfe6d43130d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d918c08cfd9eeb11b3300e0566189fcb8df09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c14bf583c142b66ec59f8fc725b255e3a94baa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7246365db2faec60b8ef702ba2c8bbd5330e06f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7514e0ef065f154a7768f85c44a06eeb207c06e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x75faf114eafb1bdbe2f0316df893fd58ce46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858113629af263cc960ec0bd9934de9ab2e7a704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8677718760f058a20fa04613d6bf10ab306616c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8adcfaf1b64cc514524b80565bcc732273ddeafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dd844c209cb519ab85c5d8b5f0e3f254a8cdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa5512075be0faa7f207ae42e02f34de91e8256` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30644ca67e0a93805c443df4a6e1856d8bd815b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bb1f1aa238af13528965f069fd0a4f1595d8e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6c8f6245b67421302aae30aceb10e00c30f463` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xacab8129e2ce587fd203fd770ec9ecafa2c88080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf2036d5143219fa00ddd90e7a2dbf3e36dba050` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb483f9d0bd47371b54087983214887c3be103b92` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0031c46db3a30245400cf3095fdfbac064063dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8e38c1fd1422f49db592bae619080ea5deb50e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcecae061aa078e13b5e70d5f9ecee90a3f2b6aea` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7348975ae9334dbdcb944dda9163ba8406a0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf29fd7dfc51e428aa22e820af1d2b90ae22a0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe014a38501cf2b8139ded0b60ed4fbd02c113b59` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3a4d50b99758b5a07762b12a61f3832a63ae143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe8709025f99dd1b8533fb9b78ca879ee4ec7e70a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xef54c221fc94517877f0f40ecd71e0a3866d66c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd0cbed3f520cb59c6cf8ce428a44978c18f8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff2896077b6ff95379efa89ff903598190805ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0e5f3d16758984e668a3d76f0963710e775503` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd89a24390bfebba227c0e8bcd4447d0c3a84fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3398385c205c060ef54744ee817c1487e28a6616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250591 | `0x461c12fba639303da045255dd32eea7e38ac69b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250593 | `0x6fb848801aca77e724a8ab22d0006cb317e69492` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250595 | `0x8d0d000ee44948fc98c9b98a4fa4921476f08b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa032fe6c496732bdfc0d235066f55f171fa4aece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdffc9616d7939523ed07abe8d76e8afa0e85189` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250564 | `0x14a6342a8c1ef9856898f510fcce377e46668f33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250566 | `0x173b47edbeca665125edc24c509bfe545cda60a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250574 | `0x6f7a338f2aa472838defd3283eb360d4dff5d203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250576 | `0x7cc5b6433eb33164c88f6512f56c566cfc3420bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250579 | `0xa0a07a78c7d31e6f8698f48fc9219f9a3030f38c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | orderly | unit-250583 | `0xa2ea0a58b083c492adc91a687fac8b53adb7c0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2acec6d8aba90685927b61968d84cfff6192b32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6df6c0e70d6874a37084270de861d4be682f271b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8680ceabcb9b56913c519c069add6bc3494b7020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x885904d9cfece53fb5042530f780c5208078b2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb8161f28a5a38ce58f155d9a96bdac0104985fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ce92b23108cb4bdbf88788a3933546a85cd772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-250587 | `0xd988097fb8612cc24eec14542bc03424c656005f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf0f161fda2712db8b566946122a5af183995e2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09921dc010fed6b7fb26326837050e1d82507a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cbf5533ddb4934a38d6014e5b3dacc7114209e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x343ca787e960cb2cca0ce8cfb2f38c3739e28a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd49cfce2b13c43e7277928960ad2ee4046ed93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250589 | `0x816f722424b49cf1275cc86da9840fbd5a6167e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9281cbc1e37d3bcdb8baddfa4302b6eb5dad2672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2ea0a58b083c492adc91a687fac8b53adb7c0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcd624b451038206867c9d480e5556d75dac8c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc08ff3993e303e581c892f08732be4f4c7c8a154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca853e05d259704bfc4eaaabd8d64d24ec6bf817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6aa78b1759ebc9cceebc27e8b7c623bad530f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9e9ce622413124c014a05c4e8cdddcba1657841` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-250597 | `0x549943e04f40284185054145c6e4e9568c1d3241` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 33
- Live contracts: 0
- Unknown liveness contracts: 33
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=33

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09921dc010fed6b7fb26326837050e1d82507a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cbf5533ddb4934a38d6014e5b3dacc7114209e8` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x343ca787e960cb2cca0ce8cfb2f38c3739e28a1e` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3cd49cfce2b13c43e7277928960ad2ee4046ed93` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9281cbc1e37d3bcdb8baddfa4302b6eb5dad2672` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2ea0a58b083c492adc91a687fac8b53adb7c0fd` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbcd624b451038206867c9d480e5556d75dac8c1e` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc08ff3993e303e581c892f08732be4f4c7c8a154` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xca853e05d259704bfc4eaaabd8d64d24ec6bf817` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe6aa78b1759ebc9cceebc27e8b7c623bad530f04` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9e9ce622413124c014a05c4e8cdddcba1657841` | non_address_book | unknown | unknown | unverified | n/a | `0x43e3e4d002ba65c6a26d2e4c998b46e427370e6c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3398385c205c060ef54744ee817c1487e28a6616` | non_address_book | unknown | unknown | unverified | n/a | `0x29e37a9338618d9a8c3e82f529364575568726bb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa032fe6c496732bdfc0d235066f55f171fa4aece` | non_address_book | unknown | unknown | unverified | n/a | `0x29e37a9338618d9a8c3e82f529364575568726bb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdffc9616d7939523ed07abe8d76e8afa0e85189` | non_address_book | unknown | unknown | unverified | n/a | `0x29e37a9338618d9a8c3e82f529364575568726bb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b4ad1d479561064cd1c311004aca93d15041aec` | non_address_book | unknown | unknown | unverified | n/a | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8adcfaf1b64cc514524b80565bcc732273ddeafd` | non_address_book | unknown | unknown | unverified | n/a | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00` | non_address_book | unknown | unknown | unverified | n/a | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa30644ca67e0a93805c443df4a6e1856d8bd815b` | non_address_book | unknown | unknown | unverified | n/a | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| mode | unverified unclassified | UnnamedContract<br>`0x2acec6d8aba90685927b61968d84cfff6192b32c` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x6df6c0e70d6874a37084270de861d4be682f271b` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x8680ceabcb9b56913c519c069add6bc3494b7020` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x885904d9cfece53fb5042530f780c5208078b2bf` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0xb8161f28a5a38ce58f155d9a96bdac0104985fac` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0xc0ce92b23108cb4bdbf88788a3933546a85cd772` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0xf0f161fda2712db8b566946122a5af183995e2ed` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| mode | unverified unclassified | UnnamedContract<br>`0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a` | non_address_book | unknown | unknown | unverified | n/a | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Zenith_LayerZeroV2_04_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_LayerZeroV2_04_2025.pdf) | Zenith (Code4rena) | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Guardian_OFT_07_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_OFT_07_2024.pdf) | Guardian Audits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Guardian_07_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_07_2024.pdf) | Guardian Audits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Sherlock_08_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Sherlock_08_2024.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [audits.sherlock.xyz/contests/404](https://audits.sherlock.xyz/contests/404) | Sherlock (contest #404, 63,000 USDC) | Contest | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Guardian_10_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_10_2023.pdf) | Guardian Audits | Audit | 2023-10 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 39 | high |
| [Zellic_11_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zellic_11_2023.pdf) | Zellic | Audit | 2023-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 17 | high |
| [CertiK_09_2022.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/CertiK_09_2022.pdf) | CertiK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Halborn_07_2022.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Halborn_07_2022.pdf) | Halborn | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Independent Researcher_09_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Independent%20Researcher_09_2023.pdf) | Independent Researcher | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Guardian_Strategy_Vault_02_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Strategy_Vault_02_2025.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 10 | high |
| [Zellic_Strategy_Vault_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zellic_Strategy_Vault_03_2025.pdf) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 17 | high |
| [Zenith_Strategy_Vault_06_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_Strategy_Vault_06_2025.pdf) | Zenith (Code4rena) | Contest | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [Sherlock_Solana_Vault_10_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Sherlock_Solana_Vault_10_2024.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [OtterSec_Solana_Vault_11_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/OtterSec_Solana_Vault_11_2024.pdf) | OtterSec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Guardian_Solana_Staking_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Solana_Staking_03_2025.pdf) | Guardian Audits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [Zenith_Solana_Staking_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_Solana_Staking_03_2025.pdf) | Zenith (Code4rena) | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Guardian_Solana_Vault_11_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Solana_Vault_11_2025.pdf) | Guardian Audits | Audit | 2025-11 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21416] Zenith_LayerZeroV2_04_2025.pdf — no match: Scope includes contracts/* from two repositories (evm-cross-chain and cross-chain-v2) at specified commits. Contract names extracted from findings and file references.
- [21417] Guardian_OFT_07_2024.pdf — no match: Scope section mentions 'OFT and OFT adapter' as the audited contracts. Findings reference specific contract names: OFT.sol, OrderOFT, OrderAdapter, and several upgradable parent contracts.
- [21418] Guardian_07_2024.pdf — no match: Extracted contract names from the audit report's findings and scope sections. The report lists multiple contracts in scope, including OmnichainLedgerV1, ProxyLedger, LedgerOCCManager, OCCManager, and others. The audit date is explicitly stated as July 1, 2024.
- [21419] Sherlock_08_2024.pdf — no match: Extracted from the report header: 'Dates Audited: June20-June30, 2024' and 'Prepared on: August13, 2024'. The audit date is the end date of the audit period.
- [21420] audits.sherlock.xyz/contests/404 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [21421] Guardian_10_2023.pdf — matched: Extracted contract names from the Audit Scope & Methodology tables (pages 5-7) and the final report date from the cover page.
- [21422] Zellic_11_2023.pdf — matched: Scope section lists 20 contracts/programs. Audit date from cover page: November 9, 2023.
- [21423] CertiK_09_2022.pdf — no match: Extracted 9 files from the audit scope table plus 2 additional files mentioned in findings (account_deposit.rs and storage_management.rs). Audit date from cover page.
- [21424] Halborn_07_2022.pdf — no match: Scope section lists 9 Rust source files as contracts in scope. Audit date is end date of engagement: June 16th, 2022.
- [21425] Independent Researcher_09_2023.pdf — no match: The scope explicitly states 'the asset-manager contract will be audited'. No other contract names are mentioned in scope. The audit date is from the version history: '2.0 10/10/2023 Final version'.
- [21426] Guardian_Strategy_Vault_02_2025.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report lists multiple repositories and contracts in scope. The audit date is explicitly given as 'Final Report Date February 24th, 2025'.
- [21427] Zellic_Strategy_Vault_03_2025.pdf — matched: Extracted 19 contract names from scope tables and system design sections. Audit date from cover page.
- [21428] Zenith_Strategy_Vault_06_2025.pdf — matched: Extracted contract names from findings targets and scope section. Audit end date used as audit date.
- [21429] Sherlock_Solana_Vault_10_2024.pdf — no match: Extracted from report header: 'Date Audited: October15-October27,2024'. Contracts in scope are SolConnector (Solana connector on Ethereum side) and solana-vault (Solana program).
- [21430] OtterSec_Solana_Vault_11_2024.pdf — no match: Scope section explicitly lists two programs: sol-cc and solana-vault. Audit date is November 22nd, 2024 from the title.
- [21431] Guardian_Solana_Staking_03_2025.pdf — no match: Extracted contract names from the audit report's findings and scope description. The report covers two repositories: omnichain-ledger (Solidity contracts) and solana-proxy (Rust programs). The audit date is explicitly stated as 'Final Report Date March 21, 2025'.
- [21432] Zenith_Solana_Staking_03_2025.pdf — no match: Extracted contracts from scope tables and findings. Solana proxy files listed individually; combined as SolanaProxy for the program. CancelClaim inferred from fix.
- [21433] Guardian_Solana_Vault_11_2025.pdf — matched: Extracted contract names from findings and scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zenith_LayerZeroV2_04_2025.pdf | VaultCrossChainManagerUpgradeable | unmatched — not counted | — | mentioned in finding L-1 | no |
| Zenith_LayerZeroV2_04_2025.pdf | LedgerCrossChainManagerUpgradeable | unmatched — not counted | — | mentioned in findings L-1 and L-3 | no |
| Zenith_LayerZeroV2_04_2025.pdf | CrossChainRelayV2 | unmatched — not counted | — | mentioned in findings L-2, I-1, I-2 | no |
| Zenith_LayerZeroV2_04_2025.pdf | CrossChainRelayerV2 | unmatched — not counted | — | mentioned in findings I-1, I-2 | no |
| Guardian_OFT_07_2024.pdf | OFT | unmatched — not counted | — | mentioned in findings H-01 location | no |
| Guardian_OFT_07_2024.pdf | OrderOFT | unmatched — not counted | — | mentioned in findings H-02, M-02, L-01 | no |
| Guardian_OFT_07_2024.pdf | OrderAdapter | unmatched — not counted | — | mentioned in findings H-02, M-02, L-01 | no |
| Guardian_OFT_07_2024.pdf | OFTAdapterUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OFTCoreUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OFTUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OAppCoreUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OAppReceiverUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OAppSenderUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_OFT_07_2024.pdf | OAppUpgradable | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_07_2024.pdf | OmnichainLedgerV1 | unmatched — not counted | — | Listed in findings (e.g., C-02, H-02, H-03, M-04, L-01, L-04) | no |
| Guardian_07_2024.pdf | ProxyLedger | unmatched — not counted | — | Listed in findings (e.g., C-02, H-02, H-05, M-05, M-11, L-01, L-03, L-04, L-05, L-12, L-13) | no |
| Guardian_07_2024.pdf | LedgerOCCManager | unmatched — not counted | — | Listed in findings (e.g., C-04, H-04, L-01, L-06) | no |
| Guardian_07_2024.pdf | OCCManager | unmatched — not counted | — | Listed in findings (e.g., H-04, L-04, L-06, L-14) | no |
| Guardian_07_2024.pdf | VaultOCCManager | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps | no |
| Guardian_07_2024.pdf | LedgerAccessControl | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps | no |
| Guardian_07_2024.pdf | OCCAdapterDataLayout | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps | no |
| Guardian_07_2024.pdf | LzTestData | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps | no |
| Guardian_07_2024.pdf | ChainedEventIdCounter | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps | no |
| Guardian_07_2024.pdf | MerkleDistributor | unmatched — not counted | — | Mentioned in M-01 as upgradable contract without storage gaps and in L-17 | no |
| Guardian_07_2024.pdf | MerkleDistributorL1 | unmatched — not counted | — | Listed in findings (e.g., M-10, L-04, L-08, L-11) | no |
| Guardian_07_2024.pdf | Valor | unmatched — not counted | — | Listed in findings (e.g., C-05, H-01, M-03, M-08, L-07) | no |
| Guardian_07_2024.pdf | Staking | unmatched — not counted | — | Listed in findings (e.g., C-05, H-01) | no |
| Guardian_07_2024.pdf | Revenue | unmatched — not counted | — | Listed in findings (e.g., C-03, M-06, M-07, M-09, L-02) | no |
| Guardian_07_2024.pdf | Vesting | unmatched — not counted | — | Listed in findings (e.g., C-01, L-07, L-15) | no |
| Guardian_07_2024.pdf | LockedTokenVault | unmatched — not counted | — | Listed in findings (e.g., M-02, M-12, M-13, L-09) | no |
| Guardian_07_2024.pdf | OrderOFT | unmatched — not counted | — | Mentioned in H-05 as missing whenNotPaused | no |
| Guardian_07_2024.pdf | OrderAdapter | unmatched — not counted | — | Mentioned in H-05 as missing whenNotPaused | no |
| Sherlock_08_2024.pdf | OmnichainLedgerV1 | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock_08_2024.pdf | Valor | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock_08_2024.pdf | Staking | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock_08_2024.pdf | OCCManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock_08_2024.pdf | OrderToken | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_08_2024.pdf | OFTCoreUpgradeable | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_08_2024.pdf | OAppSenderUpgradeable | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_08_2024.pdf | LedgerOCCManager | unmatched — not counted | — | mentioned in findings | no |
| Guardian_10_2023.pdf | LedgerDataLayout | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | OperatorManagerDataLayout | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | OperatorManager | own contract | 0x7cc5b6… (selected) `0x7cc5b6433eb33164c88f6512f56c566cfc3420bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_10_2023.pdf | LedgerEvent | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LedgerCrossChainManager | own contract | 0xa0a07a… (selected) `0xa0a07a78c7d31e6f8698f48fc9219f9a3030f38c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_10_2023.pdf | OperatorManagerComponent | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LedgerComponent | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | Vault | own contract | 0x816f72… (selected) `0x816f722424b49cf1275cc86da9840fbd5a6167e9` — deployed 2023-10-19 05:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_10_2023.pdf | MarketManager | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | FeeManager | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LedgerError | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | VaultCrossChainManager | own contract | 0x6fb848… (selected) `0x6fb848801aca77e724a8ab22d0006cb317e69492` — deployed 2025-06-12 14:27:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_10_2023.pdf | Ledger | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | VaultManager | own contract | 0x14a634… (selected) `0x14a6342a8c1ef9856898f510fcce377e46668f33` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_10_2023.pdf | tUSDC | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | CrossChainMessageTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | EventTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | PerpTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | MarketTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | AccountTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | VaultTypes | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | MarketTypeHelper | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | AccountTypeHelper | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | AccountTypePositionHelper | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | SafeCastHelper | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | Signature | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | Utils | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | OrderlyCrossChain | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | CrossChainManager | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LZEndpointMock | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | BytesLib | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LzLib | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LzAppUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LzApp | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | ILayerZeroReceiver | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | ILayerZeroUserApplicationConfig | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | CrossChainRelayProxy | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | LedgerCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | OrderlyCrossChainMessage | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | CrossChainRelayUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | CrossChainManagerProxy | unmatched — not counted | — | listed in scope table | no |
| Guardian_10_2023.pdf | VaultCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Zellic_11_2023.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | Ledger | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | LedgerComponent | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | MarketManager | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | OperatorManager | own contract | 0x7cc5b6… (selected) `0x7cc5b6433eb33164c88f6512f56c566cfc3420bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic_11_2023.pdf | OperatorManagerComponent | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | VaultManager | own contract | 0x14a634… (selected) `0x14a6342a8c1ef9856898f510fcce377e46668f33` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic_11_2023.pdf | Vault | own contract | 0x816f72… (selected) `0x816f722424b49cf1275cc86da9840fbd5a6167e9` — deployed 2023-10-19 05:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic_11_2023.pdf | Signature | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | AccountTypeHelper | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | AccountTypePositionHelper | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | MarketTypeHelper | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | SafeCastHelper | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | CrossChainManagerProxy | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | CrossChainRelayProxy | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | CrossChainRelayUpgradeable | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | LedgerCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | VaultCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope | no |
| Zellic_11_2023.pdf | LzAppUpgradeable | unmatched — not counted | — | listed in scope | no |
| CertiK_09_2022.pdf | operator | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | approvers | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | contract | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | owner | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | contract_utils | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | types | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | event | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | lib | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | token_balance | unmatched — not counted | — | listed in scope table | no |
| CertiK_09_2022.pdf | account_deposit | unmatched — not counted | — | mentioned in finding SR0-01 | no |
| CertiK_09_2022.pdf | storage_management | unmatched — not counted | — | mentioned in findings SR0-01 and STO-01 | no |
| Halborn_07_2022.pdf | contract_utils | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | contract | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | event | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | lib | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | operator | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | owner | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | tests | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | token_balance | unmatched — not counted | — | listed in scope section | no |
| Halborn_07_2022.pdf | types | unmatched — not counted | — | listed in scope section | no |
| Independent Researcher_09_2023.pdf | asset-manager | unmatched — not counted | — | Scope section: 'the asset-manager contract will be audited' | no |
| Guardian_Strategy_Vault_02_2025.pdf | ProtocolVault | unmatched — not counted | — | Listed in scope and findings reference ProtocolVault.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | ProtocolVaultLedger | unmatched — not counted | — | Listed in scope and findings reference ProtocolVaultLedger.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | VaultCrossChainManager | own contract | 0x6fb848… (selected) `0x6fb848801aca77e724a8ab22d0006cb317e69492` — deployed 2025-06-12 14:27:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_Strategy_Vault_02_2025.pdf | VaultCrossChainManagerUpgradeable | unmatched — not counted | — | Listed in scope and findings reference VaultCrossChainManagerUpgradeable.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | Vault | own contract | 0x816f72… (selected) `0x816f722424b49cf1275cc86da9840fbd5a6167e9` — deployed 2023-10-19 05:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_Strategy_Vault_02_2025.pdf | VaultFactory | unmatched — not counted | — | Listed in scope and findings reference VaultFactory.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | LedgerImplC | unmatched — not counted | — | Listed in scope and findings reference LedgerImplC.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | LedgerImplB | unmatched — not counted | — | Listed in scope and findings reference LedgerImplB.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | LedgerCrossChainManagerUpgradeable | unmatched — not counted | — | Listed in scope and findings reference LedgerCrossChainManagerUpgradeable.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | CrossChainRelayUpgradeable | unmatched — not counted | — | Listed in scope and findings reference CrossChainRelayUpgradeable.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | OAppSenderUpgradeable | unmatched — not counted | — | Listed in scope and findings reference OAppSenderUpgradeable.sol | no |
| Guardian_Strategy_Vault_02_2025.pdf | DexVault | unmatched — not counted | — | Listed in scope and findings reference DexVault | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultFactory | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | ProtocolVaultLedger | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | ProtocolVault | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultCrossChainManager | own contract | 0x6fb848… (selected) `0x6fb848801aca77e724a8ab22d0006cb317e69492` — deployed 2025-06-12 14:27:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic_Strategy_Vault_03_2025.pdf | Signature | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultUtils | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | DecimalConverter | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | CrossChainStruct | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | LedgerStruct | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultStruct | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | LedgerCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | OrderlyProxy | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultCrossChainManagerUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | CrossChainRelayUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | OrderlyCrossChainMessage | unmatched — not counted | — | listed in scope table | no |
| Zellic_Strategy_Vault_03_2025.pdf | LedgerImplA | unmatched — not counted | — | described in System Design section | no |
| Zellic_Strategy_Vault_03_2025.pdf | VaultManager | own contract | 0x14a634… (selected) `0x14a6342a8c1ef9856898f510fcce377e46668f33` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic_Strategy_Vault_03_2025.pdf | Ledger | unmatched — not counted | — | described in System Design section | no |
| Zellic_Strategy_Vault_03_2025.pdf | LedgerImplC | unmatched — not counted | — | described in System Design section | no |
| Zenith_Strategy_Vault_06_2025.pdf | ProtocolVaultLedger | unmatched — not counted | — | Target in H-1 finding | no |
| Zenith_Strategy_Vault_06_2025.pdf | ProtocolVault | unmatched — not counted | — | Target in H-1 and L-1 findings | no |
| Zenith_Strategy_Vault_06_2025.pdf | Vault | own contract | 0x816f72… (selected) `0x816f722424b49cf1275cc86da9840fbd5a6167e9` — deployed 2023-10-19 05:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith_Strategy_Vault_06_2025.pdf | VaultAdapter | unmatched — not counted | — | Target in I-1 and I-2 findings | no |
| Zenith_Strategy_Vault_06_2025.pdf | VaultCrossChainManager | own contract | 0x6fb848… (selected) `0x6fb848801aca77e724a8ab22d0006cb317e69492` — deployed 2025-06-12 14:27:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith_Strategy_Vault_06_2025.pdf | Ledger | unmatched — not counted | — | Target in I-3 finding | no |
| Sherlock_Solana_Vault_10_2024.pdf | SolConnector | unmatched — not counted | — | mentioned in scope and finding M-1 | no |
| Sherlock_Solana_Vault_10_2024.pdf | solana-vault | unmatched — not counted | — | mentioned in scope and findings | no |
| OtterSec_Solana_Vault_11_2024.pdf | sol-cc | unmatched — not counted | — | listed in scope table as 'sol-cc' with description 'It sets up a connector to the Vault program deployed on Solana, built on the LayerZero OApp framework with upgradeable settings.' | no |
| OtterSec_Solana_Vault_11_2024.pdf | solana-vault | unmatched — not counted | — | listed in scope table as 'solana-vault' with description 'It sets up Orderly’s Vault on the Solana, built on the LayerZero OApp/OFT codebase within the Anchor framework.' | no |
| Guardian_Solana_Staking_03_2025.pdf | LedgerOApp | unmatched — not counted | — | Listed in findings (M-02, L-04, L-22, L-25, L-29) and scope mentions 'omnichain-ledger' repo. | no |
| Guardian_Solana_Staking_03_2025.pdf | LedgerOCCManager | unmatched — not counted | — | Listed in findings (M-02, L-01, L-03, L-12, L-16, L-21, L-23) and scope mentions 'omnichain-ledger' repo. | no |
| Guardian_Solana_Staking_03_2025.pdf | OmnichainLedgerV1 | unmatched — not counted | — | Mentioned in finding L-03 and L-09. | no |
| Guardian_Solana_Staking_03_2025.pdf | ProxyLedger | unmatched — not counted | — | Mentioned in findings L-04, L-19, L-27. | no |
| Guardian_Solana_Staking_03_2025.pdf | Staking | unmatched — not counted | — | Mentioned in findings L-10 and L-13. | no |
| Guardian_Solana_Staking_03_2025.pdf | OCCAdapterDataLayout | unmatched — not counted | — | Mentioned in finding L-23. | no |
| Guardian_Solana_Staking_03_2025.pdf | LzTestData | unmatched — not counted | — | Mentioned in finding L-23. | no |
| Guardian_Solana_Staking_03_2025.pdf | LedgerAccessControl | unmatched — not counted | — | Mentioned in finding L-23. | no |
| Guardian_Solana_Staking_03_2025.pdf | MerkleDistributor | unmatched — not counted | — | Mentioned in finding C-01. | no |
| Guardian_Solana_Staking_03_2025.pdf | OFTStore | unmatched — not counted | — | Mentioned in finding L-18. | no |
| Guardian_Solana_Staking_03_2025.pdf | send_request | unmatched — not counted | — | Listed in findings C-01, L-06, L-08, L-09, L-19. | no |
| Guardian_Solana_Staking_03_2025.pdf | send_claim | unmatched — not counted | — | Listed in findings M-01, L-06, L-08, L-11. | no |
| Guardian_Solana_Staking_03_2025.pdf | lz_receive | unmatched — not counted | — | Listed in findings M-03, L-26. | no |
| Guardian_Solana_Staking_03_2025.pdf | transfer_admin | unmatched — not counted | — | Listed in findings L-02, L-05. | no |
| Guardian_Solana_Staking_03_2025.pdf | set_backward_fee | unmatched — not counted | — | Listed in finding L-08. | no |
| Guardian_Solana_Staking_03_2025.pdf | set_delegate | unmatched — not counted | — | Listed in finding L-14. | no |
| Guardian_Solana_Staking_03_2025.pdf | set_oft_config | unmatched — not counted | — | Listed in finding L-18. | no |
| Guardian_Solana_Staking_03_2025.pdf | set_pause | unmatched — not counted | — | Listed in finding L-18. | no |
| Guardian_Solana_Staking_03_2025.pdf | set_peer_config | unmatched — not counted | — | Listed in findings L-20, L-28. | no |
| Guardian_Solana_Staking_03_2025.pdf | quote_claim | unmatched — not counted | — | Listed in finding L-15. | no |
| Guardian_Solana_Staking_03_2025.pdf | quote_send | unmatched — not counted | — | Listed in finding L-15. | no |
| Guardian_Solana_Staking_03_2025.pdf | init_proxy | unmatched — not counted | — | Listed in finding L-24. | no |
| Guardian_Solana_Staking_03_2025.pdf | send | unmatched — not counted | — | Listed in findings L-17, L-20. | no |
| Guardian_Solana_Staking_03_2025.pdf | OFT | unmatched — not counted | — | Mentioned in finding L-17 and L-26. | no |
| Zenith_Solana_Staking_03_2025.pdf | LedgerOApp | unmatched — not counted | — | listed in scope and findings | no |
| Zenith_Solana_Staking_03_2025.pdf | ProxyLedger | unmatched — not counted | — | listed in findings | no |
| Zenith_Solana_Staking_03_2025.pdf | Staking | unmatched — not counted | — | listed in findings | no |
| Zenith_Solana_Staking_03_2025.pdf | LedgerOCCManager | unmatched — not counted | — | listed in findings | no |
| Zenith_Solana_Staking_03_2025.pdf | SolanaProxy | unmatched — not counted | — | listed in scope files | no |
| Zenith_Solana_Staking_03_2025.pdf | SetPeerConfig | unmatched — not counted | — | listed in scope files and findings | no |
| Zenith_Solana_Staking_03_2025.pdf | SendClaim | unmatched — not counted | — | listed in scope files and findings | no |
| Zenith_Solana_Staking_03_2025.pdf | CancelClaim | unmatched — not counted | — | mentioned as resolved fix | no |
| Guardian_Solana_Vault_11_2025.pdf | ProtocolVault | unmatched — not counted | — | mentioned in findings H-01, L-01, L-04, L-05 | no |
| Guardian_Solana_Vault_11_2025.pdf | VaultCrossChainManager | own contract | 0x6fb848… (selected) `0x6fb848801aca77e724a8ab22d0006cb317e69492` — deployed 2025-06-12 14:27:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_Solana_Vault_11_2025.pdf | LedgerImplD | unmatched — not counted | — | mentioned in findings M-02, I-08, I-08 | no |
| Guardian_Solana_Vault_11_2025.pdf | OmnichainLedgerV2 | unmatched — not counted | — | mentioned in findings L-02, L-10, I-04, I-06 | no |
| Guardian_Solana_Vault_11_2025.pdf | MarketManager | unmatched — not counted | — | mentioned in finding L-03 | no |
| Guardian_Solana_Vault_11_2025.pdf | Vault | own contract | 0x816f72… (selected) `0x816f722424b49cf1275cc86da9840fbd5a6167e9` — deployed 2023-10-19 05:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_Solana_Vault_11_2025.pdf | ProxyLedger | unmatched — not counted | — | mentioned in finding L-06 | no |
| Guardian_Solana_Vault_11_2025.pdf | Signature | unmatched — not counted | — | mentioned in finding L-07 | no |
| Guardian_Solana_Vault_11_2025.pdf | LedgerOCCManager | unmatched — not counted | — | mentioned in findings L-08, L-11, L-13 | no |
| Guardian_Solana_Vault_11_2025.pdf | StakingValorRevenueImpl | unmatched — not counted | — | mentioned in finding I-09 | no |
| Guardian_Solana_Vault_11_2025.pdf | Vesting | unmatched — not counted | — | mentioned in findings L-12, L-14 | no |
| Guardian_Solana_Vault_11_2025.pdf | VestingView | unmatched — not counted | — | mentioned in finding L-14 | no |
| Guardian_Solana_Vault_11_2025.pdf | LedgerBaseLegacy | unmatched — not counted | — | mentioned in finding I-01 | no |
| Guardian_Solana_Vault_11_2025.pdf | VaultManager | own contract | 0x14a634… (selected) `0x14a6342a8c1ef9856898f510fcce377e46668f33` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Guardian_Solana_Vault_11_2025.pdf | DelegateSwapSignature | unmatched — not counted | — | mentioned in finding I-03 | no |
| Guardian_Solana_Vault_11_2025.pdf | ValorImpl | unmatched — not counted | — | mentioned in finding I-05 | no |
| Guardian_Solana_Vault_11_2025.pdf | ProtocolVaultLedger | unmatched — not counted | — | mentioned in findings I-07, I-09, L-04 | no |
| Guardian_Solana_Vault_11_2025.pdf | AccountTypePositionHelper | unmatched — not counted | — | mentioned in finding M-01 | no |
| Guardian_Solana_Vault_11_2025.pdf | RevenueImpl | unmatched — not counted | — | mentioned in finding L-01 | no |
| Guardian_Solana_Vault_11_2025.pdf | OCCManager | unmatched — not counted | — | mentioned in finding L-02 | no |
| Guardian_Solana_Vault_11_2025.pdf | DecompressorExtension | unmatched — not counted | — | mentioned in finding L-03 | no |
| Guardian_Solana_Vault_11_2025.pdf | LedgerCoreImpl | unmatched — not counted | — | mentioned in finding I-01 | no |
| Guardian_Solana_Vault_11_2025.pdf | EventTypes | unmatched — not counted | — | mentioned in findings I-02, I-04 | no |
| Guardian_Solana_Vault_11_2025.pdf | VaultTypes | unmatched — not counted | — | mentioned in findings I-02, I-04 | no |
| Guardian_Solana_Vault_11_2025.pdf | Ledger | unmatched — not counted | — | mentioned in findings I-03, I-06 | no |
| Guardian_Solana_Vault_11_2025.pdf | MarketTypeHelper | unmatched — not counted | — | mentioned in finding I-05 | no |
| Guardian_Solana_Vault_11_2025.pdf | VaultFactory | unmatched — not counted | — | mentioned in finding I-07 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 100 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 208 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=17, low=1
- Match method counts: unique_name=17

Zero-match audit list:

- [21416] Zenith_LayerZeroV2_04_2025.pdf
- [21417] Guardian_OFT_07_2024.pdf
- [21418] Guardian_07_2024.pdf
- [21419] Sherlock_08_2024.pdf
- [21420] audits.sherlock.xyz/contests/404
- [21423] CertiK_09_2022.pdf
- [21424] Halborn_07_2022.pdf
- [21425] Independent Researcher_09_2023.pdf
- [21429] Sherlock_Solana_Vault_10_2024.pdf
- [21430] OtterSec_Solana_Vault_11_2024.pdf
- [21431] Guardian_Solana_Staking_03_2025.pdf
- [21432] Zenith_Solana_Staking_03_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
