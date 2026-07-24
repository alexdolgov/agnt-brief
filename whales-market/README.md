# Agentic Audit Brief: Whales Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Whales Market (`whales-market`)
- Website: [https://whales.market/](https://whales.market/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta-pacific, merlin, mode
- Contract surface: 134 unique implementations (138 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $654,440.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Whales Market in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ecdb32e59e948c010a189a0798c674a2d0c6603`, chain 1)
- UnnamedContract (`0x7a560269480ef38b885526c8bbecdc4686d8bf7a`, chain 169)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 132 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 2 of 134 unique; 132 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 134
- Raw deployments: 138
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x193aaa7e9f358b7e52c978bf560f28f2b62aecbf`; ethereum `0x717e35b0316829923c82540656ab841e58e7176d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1311d574598b516b3b050e77ab9e424867cf9d4d`; bsc `0x51422e0f2b2d15e682adaec9b60ae23f1f770131` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x47d7c164834ccae520be78f9cb032d6d03fdc9bf`; arbitrum `0xf56153c7f7923936e5e823035b739f4753e948ca` | ⚠️ Unaudited |
| MappingLog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a286c70830f2b35b1bc530e62769393c78810a` | ⚠️ Unaudited |
| PreMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | ⚠️ Unaudited |
| PreMarketMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31847b4f5cce05fa29038e914f5fdd952f136290` | ⚠️ Unaudited |
| PreMarketMode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xed66dbd66ecbd215827eea1eea896ccc2e09e79c` | ⚠️ Unaudited |
| PremarketOFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20c453e643badb04072ca2a94eef965a58968940` | ⚠️ Unaudited |
| PreMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12617f31a29dccff3790e4767239a7b00928d43b`; ethereum `0x919f2936d0de29f56d723db1d35ec239b397083d` | ⚠️ Unaudited |
| VCDeal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b416aa811bd8396f516be8833b9683524c5b25c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12398fa5f473a5243c0c7f72908552ffbc66021e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12975a1f5f2e884db06154b6aa5439b06dc126bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396625 | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23fbb02e83bce558b890ef94cf7eb09ffcf8fa2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2729be55bb6f3a1cf97c5d3fc95ac7d4ec8592cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7ffb39ba1c2960e0f37bcb25e8a3245635d113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5b692833b8e2df711fbcfdfdf330c9aad0c088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4225c565f8976566c990d3c1ff4ad43886ddf6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b0aa2ce35dcf354b2142f699964d6b32f677b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68259b457163366a8b8d88890e36418f081c524b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb877bf8953ceb50cd43b2e2006f781d02cc8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c4f7a49c4bf807d8ce71594ffaf2c56ee34c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9736fd85044566e9ef1df983b22b8ccbb9a12ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bf68453e313ed4c5e160cf019addaff4294c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90bd9616b8348778640b1c42698c86cb34f7aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31001123abc70d284d0701947dee422ac1362ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50e3a74b873046340076d7a933fdbdb7b456237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7b4bd3bc2123d26832a446050666cf49d9945d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcdd5c70ec598ca27f7de0852b634fb0dfeab3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd333dff015508dd26532d5b7b1cd10ff9b622326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd376f41dfecbe080c5c26cfd3c0f1143b1b92d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70467a876370f394529ff871e8897b4e680e51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93d91f4690dcea06597e776d34d806e3f43ffd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaab6aac6d0e970c3ca7f38a0fd5ca671b02f28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee8c39e57c23f4024525d21e5ad0534040b8f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf116bedfbb389a5e7929355e2fa2f3420d5f9146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56153c7f7923936e5e823035b739f4753e948ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb22cd3a5d63419c227fa83055b60996984d6a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b493ab0bafc263eaa38fc6a03d20a50952e82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23fbb02e83bce558b890ef94cf7eb09ffcf8fa2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bdc3c5de3f9978653c8a4540e572c9729abaf72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47d7c164834ccae520be78f9cb032d6d03fdc9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x493616f462d2842b095dd7afc0ee946c010e1f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a2ddd2909e0069f63d3ba7fae030bef57bfa1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x629714b20f99277c4fde0e1540e995915c7da8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b66949609fd4c323b5d4d7978393d7b3be49e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ebbafce4944ba8e0934117b006db9f659423943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fbe7963883005df0f073eb806af01bf38397c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8218d590c0fec45fff01eb0103c49fd6b6568f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f62dfed9438449fb3e4081445b6744938b2f736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91ad17337ecccfbe8366a9e6873b886ef6fa5804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac28c9ccc5ba83708116232ed0d4860fe1fbcf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1b6c873ae61929c60041fcf809b6fd39a489186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc54f7758aed101c92403955b49ee4046864c2ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc99f71424286548b15e5691a8c6f8f156c761a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd35d5a47bb35f4e2d0a1d2427567c731f14f1bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd36d8815defd9e44b831929812080ad8a4adf11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd72474d912dbcb22e62702a79168c903fc68becc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4803bc1ff5d8521f410f2fa70f6271754ac0667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec839588fd671dc6623419247e394da448c65b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf116bedfbb389a5e7929355e2fa2f3420d5f9146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf34e419215b762365aeac778ef13798a0c0f9cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf56153c7f7923936e5e823035b739f4753e948ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf847ed50ec3b795c41c7563bfe585ea776ca6869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa2f04306c9ca94ea771bc88e2b039ddc209fdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x068ddb8356167158f470365050d967fd1faf4398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x231c9bd15657dfa6977a1b8c76737c81e3c61a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2b88cd6a99e2db51fba811bfc27e85c8a68b763e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x31847b4f5cce05fa29038e914f5fdd952f136290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x629714b20f99277c4fde0e1540e995915c7da8fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-396627 | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x86564f771f6543d0e78c40d989a71d8c65df09a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xec839588fd671dc6623419247e394da448c65b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfb22cd3a5d63419c227fa83055b60996984d6a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b416aa811bd8396f516be8833b9683524c5b25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12617f31a29dccff3790e4767239a7b00928d43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1609db018e803538f0af39b19df3f39401fb55b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x231c9bd15657dfa6977a1b8c76737c81e3c61a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b204192d39f57f84869a0421be4c385a5bd3c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x356d2db104e2c38dd3c942d4ce796bf77d5d9bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47f7a6742b3f56b8c528c2af89931c9dcfa0cd57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x493616f462d2842b095dd7afc0ee946c010e1f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a38c1e59391b3ffb4daa3ae46853bf2dcc576f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68259b457163366a8b8d88890e36418f081c524b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6eb877bf8953ceb50cd43b2e2006f781d02cc8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f8ce5794892edade934b0327ad954d25c2b83ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x717e35b0316829923c82540656ab841e58e7176d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c64f62694b9294ab40211e51bae5ae819d1cd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa851329c2cc214ed7ef4fd7341fb1aed8456170c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7b4bd3bc2123d26832a446050666cf49d9945d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc54f7758aed101c92403955b49ee4046864c2ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc745b12c7ff97c8c02d5ad5bb769b26f5729c395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccea50edbe6ce8f8eaac84591e7c66008993ef6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd333dff015508dd26532d5b7b1cd10ff9b622326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4891fde5c257b2ef955da3bc31553c439b474d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc48f41f4299728b6858e08f5cc36c096264dd49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf02eeab3cdf6efe6b7cf2eb3a354dca92a23092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe013e8025e5b5d893751e61832b173fdb0d9fbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec839588fd671dc6623419247e394da448c65b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf847ed50ec3b795c41c7563bfe585ea776ca6869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x31847b4f5cce05fa29038e914f5fdd952f136290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068ddb8356167158f470365050d967fd1faf4398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33f077f81f6f6af17388a0c2fd567c4e88fe75ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43b0aa2ce35dcf354b2142f699964d6b32f677b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x497438c4c05dfe42ffd05bbf52229dc7a7a6666b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a2ddd2909e0069f63d3ba7fae030bef57bfa1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71fbe7963883005df0f073eb806af01bf38397c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8543983449450e06a94edfef35447fd1b4141cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86564f771f6543d0e78c40d989a71d8c65df09a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa34f40eda50848f70dfc5e7866af903c757da491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd35d5a47bb35f4e2d0a1d2427567c731f14f1bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd61a5d617572e611351f922920bbf90a383cec6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed69a48eeed5ffd927cddb2ea3441ebbfe2804f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf21b4146f28f42d5ec8d6b7d549d6fbe97cea41b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 124
- Live contracts: 0
- Unknown liveness contracts: 124
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=124

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x068ddb8356167158f470365050d967fd1faf4398` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33f077f81f6f6af17388a0c2fd567c4e88fe75ef` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43b0aa2ce35dcf354b2142f699964d6b32f677b6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x497438c4c05dfe42ffd05bbf52229dc7a7a6666b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a2ddd2909e0069f63d3ba7fae030bef57bfa1ef` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x71fbe7963883005df0f073eb806af01bf38397c7` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8543983449450e06a94edfef35447fd1b4141cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86564f771f6543d0e78c40d989a71d8c65df09a0` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa34f40eda50848f70dfc5e7866af903c757da491` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd35d5a47bb35f4e2d0a1d2427567c731f14f1bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd61a5d617572e611351f922920bbf90a383cec6b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xed69a48eeed5ffd927cddb2ea3441ebbfe2804f3` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf21b4146f28f42d5ec8d6b7d549d6fbe97cea41b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf56153c7f7923936e5e823035b739f4753e948ca` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x0b416aa811bd8396f516be8833b9683524c5b25c` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x12617f31a29dccff3790e4767239a7b00928d43b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x1609db018e803538f0af39b19df3f39401fb55b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x231c9bd15657dfa6977a1b8c76737c81e3c61a83` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x2b204192d39f57f84869a0421be4c385a5bd3c74` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x356d2db104e2c38dd3c942d4ce796bf77d5d9bba` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x47f7a6742b3f56b8c528c2af89931c9dcfa0cd57` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x493616f462d2842b095dd7afc0ee946c010e1f23` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x4a38c1e59391b3ffb4daa3ae46853bf2dcc576f3` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x68259b457163366a8b8d88890e36418f081c524b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x6eb877bf8953ceb50cd43b2e2006f781d02cc8ed` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x6f8ce5794892edade934b0327ad954d25c2b83ad` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x717e35b0316829923c82540656ab841e58e7176d` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0x9c64f62694b9294ab40211e51bae5ae819d1cd8b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xa851329c2cc214ed7ef4fd7341fb1aed8456170c` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xb7b4bd3bc2123d26832a446050666cf49d9945d8` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xc54f7758aed101c92403955b49ee4046864c2ed0` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xc745b12c7ff97c8c02d5ad5bb769b26f5729c395` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xccea50edbe6ce8f8eaac84591e7c66008993ef6a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xd333dff015508dd26532d5b7b1cd10ff9b622326` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xd4891fde5c257b2ef955da3bc31553c439b474d7` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xdc48f41f4299728b6858e08f5cc36c096264dd49` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xdf02eeab3cdf6efe6b7cf2eb3a354dca92a23092` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xe013e8025e5b5d893751e61832b173fdb0d9fbc6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xec839588fd671dc6623419247e394da448c65b23` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| base | unverified unclassified | UnnamedContract<br>`0xf847ed50ec3b795c41c7563bfe585ea776ca6869` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19b493ab0bafc263eaa38fc6a03d20a50952e82c` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x23fbb02e83bce558b890ef94cf7eb09ffcf8fa2d` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3bdc3c5de3f9978653c8a4540e572c9729abaf72` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47d7c164834ccae520be78f9cb032d6d03fdc9bf` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x493616f462d2842b095dd7afc0ee946c010e1f23` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51422e0f2b2d15e682adaec9b60ae23f1f770131` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5a2ddd2909e0069f63d3ba7fae030bef57bfa1ef` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x629714b20f99277c4fde0e1540e995915c7da8fc` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b66949609fd4c323b5d4d7978393d7b3be49e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ebbafce4944ba8e0934117b006db9f659423943` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71fbe7963883005df0f073eb806af01bf38397c7` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8218d590c0fec45fff01eb0103c49fd6b6568f65` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f62dfed9438449fb3e4081445b6744938b2f736` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x91ad17337ecccfbe8366a9e6873b886ef6fa5804` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac28c9ccc5ba83708116232ed0d4860fe1fbcf65` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1b6c873ae61929c60041fcf809b6fd39a489186` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc54f7758aed101c92403955b49ee4046864c2ed0` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc99f71424286548b15e5691a8c6f8f156c761a84` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd35d5a47bb35f4e2d0a1d2427567c731f14f1bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd36d8815defd9e44b831929812080ad8a4adf11b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd72474d912dbcb22e62702a79168c903fc68becc` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4803bc1ff5d8521f410f2fa70f6271754ac0667` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xec839588fd671dc6623419247e394da448c65b23` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf116bedfbb389a5e7929355e2fa2f3420d5f9146` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf34e419215b762365aeac778ef13798a0c0f9cb2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf56153c7f7923936e5e823035b739f4753e948ca` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf847ed50ec3b795c41c7563bfe585ea776ca6869` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa2f04306c9ca94ea771bc88e2b039ddc209fdd6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12398fa5f473a5243c0c7f72908552ffbc66021e` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12975a1f5f2e884db06154b6aa5439b06dc126bb` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23fbb02e83bce558b890ef94cf7eb09ffcf8fa2d` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2729be55bb6f3a1cf97c5d3fc95ac7d4ec8592cc` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a7ffb39ba1c2960e0f37bcb25e8a3245635d113` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e5b692833b8e2df711fbcfdfdf330c9aad0c088` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4225c565f8976566c990d3c1ff4ad43886ddf6c6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43b0aa2ce35dcf354b2142f699964d6b32f677b6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68259b457163366a8b8d88890e36418f081c524b` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb877bf8953ceb50cd43b2e2006f781d02cc8ed` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x717e35b0316829923c82540656ab841e58e7176d` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86c4f7a49c4bf807d8ce71594ffaf2c56ee34c00` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x919f2936d0de29f56d723db1d35ec239b397083d` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9736fd85044566e9ef1df983b22b8ccbb9a12ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6bf68453e313ed4c5e160cf019addaff4294c41` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa90bd9616b8348778640b1c42698c86cb34f7aab` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb31001123abc70d284d0701947dee422ac1362ff` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb50e3a74b873046340076d7a933fdbdb7b456237` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7b4bd3bc2123d26832a446050666cf49d9945d8` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb6d9ab968bb5c2b0c9165d5ca7c767cd29567c4` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcdd5c70ec598ca27f7de0852b634fb0dfeab3b5` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd333dff015508dd26532d5b7b1cd10ff9b622326` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd376f41dfecbe080c5c26cfd3c0f1143b1b92d22` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd70467a876370f394529ff871e8897b4e680e51a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd93d91f4690dcea06597e776d34d806e3f43ffd8` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeaab6aac6d0e970c3ca7f38a0fd5ca671b02f28f` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee8c39e57c23f4024525d21e5ad0534040b8f901` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf116bedfbb389a5e7929355e2fa2f3420d5f9146` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf56153c7f7923936e5e823035b739f4753e948ca` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb22cd3a5d63419c227fa83055b60996984d6a45` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x068ddb8356167158f470365050d967fd1faf4398` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x231c9bd15657dfa6977a1b8c76737c81e3c61a83` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x2b88cd6a99e2db51fba811bfc27e85c8a68b763e` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x31847b4f5cce05fa29038e914f5fdd952f136290` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x629714b20f99277c4fde0e1540e995915c7da8fc` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0x86564f771f6543d0e78c40d989a71d8c65df09a0` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xec839588fd671dc6623419247e394da448c65b23` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| manta-pacific | unverified unclassified | UnnamedContract<br>`0xfb22cd3a5d63419c227fa83055b60996984d6a45` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| mode | unverified unclassified | UnnamedContract<br>`0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| mode | unverified unclassified | UnnamedContract<br>`0x31847b4f5cce05fa29038e914f5fdd952f136290` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| mode | unverified unclassified | UnnamedContract<br>`0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |
| mode | unverified unclassified | UnnamedContract<br>`0xa9e4e7fae0ac237961fbe65f78483bf3a9ba58b2` | non_address_book | unknown | unknown | unverified | n/a | `0x914b776bf3c8915fd47fd31b960f5f3990aa35b3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf](https://1927385578-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fx6BD7DBdJOnjDJswNoq9%2Fuploads%2FFRidwsyZAo0bejXHjYHq%2FPeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf?alt=media&token=fc4571bf-8a93-49da-a492-a573b1022ce8) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [docs.whales.market/additional-documents/contract-audits](https://docs.whales.market/additional-documents/contract-audits) | PeckShield | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21353] spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf — no match: The report does not list individual contract names; only the overall project 'Whales Market' is mentioned as the target. The findings reference specific files (e.g., create_offer.rs, fill_offer_buy.rs) but these are not explicitly listed as contracts in scope.
- [21354] docs.whales.market/additional-documents/contract-audits — no match: The provided text is a table of contents and metadata for an audit report, not the full report. No specific contract names are listed in the scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf | Whales Market | unmatched — not counted | — | listed in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21353] spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf
- [21354] docs.whales.market/additional-documents/contract-audits

Fork inheritance lineage and inherited audits are included when available.
