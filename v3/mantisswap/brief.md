# Agentic Audit Brief: MantisSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: MantisSwap (`mantisswap`)
- Website: [https://mantissa.finance](https://mantissa.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: mode, polygon, polygon-zkevm
- Contract surface: 56 unique implementations (83 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $182,787.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MantisSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across mode, polygon, polygon-zkevm. Structural roles: 7 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (7), supporting (2), core (1)
- Contract kinds: contract (10)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GnosisSafeProxy (`0x56dc54ddc30bdc43db84b8e59087097805b95e71`, chain 137)
- MNT (`0xe92175ea10fc1f59f633c77153e81780a6eeae04`, chain 137)
- UnnamedContract (`0x12d41b6df938c739f00c392575e3fd9292d98215`, chain 1101)
- UnnamedContract (`0x375488f097176507e39b9653b88fdc52cde736bf`, chain 1101)
- UnnamedContract (`0x3b92b5e8e72a016991cc399241a6a4659f7073f4`, chain 1101)
- UnnamedContract (`0x4af97f73343b226c5a5872dcd2d1c4944bdb3e77`, chain 1101)
- UnnamedContract (`0x9b7bcea67049819f4b35e84468c5e87918aefe4b`, chain 1101)
- UnnamedContract (`0xfe825cc878b25420d4b5df5c68ddcde8bf3947a8`, chain 1101)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 11 of 56 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/22
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 56
- Raw deployments: 83
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 9.1% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterMantis | unknown | project_anchor | own_supporting | 1 | polygon | unit-388878 | 2 deployments: polygon `0x19400d6e8e7b6d34ffe756731c46e230f85bb32b`; polygon `0x2c1ded27522e317515e5b5e856de7293938b6d1e` | ✅ Audited |
| Pool | unknown | project_anchor | own_supporting | 1 | polygon | unit-388881 | 2 deployments: polygon `0x62ba5e1ab1fa304687f132f67e35bfc5247166ad`; polygon `0xbaef0174573e2705994f35490324f93c8aab8f66` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-388879 | `0x56dc54ddc30bdc43db84b8e59087097805b95e71` | ⚠️ Unaudited |
| LP | unknown | project_anchor | own_supporting | 3 | polygon | unit-388880 (3 proxies) | 4 deployments: polygon `0x4b3bfcaa4f8bd4a276b81c110640da634723e64b`; polygon `0x977e41e76dadd104128d016bcd7941546501906c`; polygon `0xe03aec0d08b3158350a9ab99f6cea7ba9513b889`; polygon `0xe8a1ead2f4c454e319b76fa3325b754c47ce1820` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd4cd95ee7fe89d0cd1982a7336634ec5cb400ca3` | ⚠️ Unaudited |
| MasterMantis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc` | ⚠️ Unaudited |
| MNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x1456ff0448122e11da73f0592c30331e325a3278`; polygon `0xaf30ce975fa38d421b3b1f09e91c5393d943333b`; polygon `0xe8fc92d1c2aef6ea37b2b9b6c9f4eac8f582cb7f` | ⚠️ Unaudited |
| MNT | unknown | project_anchor | own_supporting | 0 | polygon | unit-388877 | `0xe92175ea10fc1f59f633c77153e81780a6eeae04` | ⚠️ Unaudited |
| MNTS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e1bf91427e2b63c1dce474a64e8b8e75c9a0086` | ⚠️ Unaudited |
| MockString | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e593fb939edacb056cb08485c051572315448f0` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: polygon `0x69928a7a134f594179257b63b16e9662990c6906`; mode `0x20a5889c03d28c2f5efe569157ae291090dec13e` | ⚠️ Unaudited |
| PoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12e999fa8b464b123f5f9f91d64b4a286fa62098` | ⚠️ Unaudited |
| PoolHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2202d5a1edc43f590c65f97b5bbd83b84a8aa5bb` | ⚠️ Unaudited |
| PoolVolatile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe03aec0d08b3158350a9ab99f6cea7ba9513b889` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc`; mode `0x6962f8dd1d50f73c2ccff64d39b334b6afc29139` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x10a7d5276669cb5b286cdc35e9399f01ab0401c5`; polygon `0x64522cc5028d7dbc96727a10728029a01b9b734f`; polygon `0xbb919023638201bfa66157a7eba6302795a3ddd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x12d41b6df938c739f00c392575e3fd9292d98215`; polygon `0x153e43f5545a094c19c4dd290555ba04279c9cb9`; polygon `0x3b92b5e8e72a016991cc399241a6a4659f7073f4`; polygon `0x9b7bcea67049819f4b35e84468c5e87918aefe4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x20a5889c03d28c2f5efe569157ae291090dec13e`; polygon `0x714023acef728603686dd5b186ad1c7052dbc896` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2adedcfd726e03032ddef1241d5c8efad40c1f80`; polygon `0xfcd30228773edf22e3d2293dfdf013a626523130` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8997e7669da8451e356472cf3ef33dfbc9d7b448`; polygon `0xda4f88fd4b55d03433fa243d1f98f5618a82ba41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x967f594f73930a02817daf3112ccc7f2c611def8`; polygon `0xd4cd95ee7fe89d0cd1982a7336634ec5cb400ca3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 10 deployments: mode `0x12d41b6df938c739f00c392575e3fd9292d98215`; mode `0x153e43f5545a094c19c4dd290555ba04279c9cb9`; mode `0x4af97f73343b226c5a5872dcd2d1c4944bdb3e77`; mode `0x4b3bfcaa4f8bd4a276b81c110640da634723e64b`; mode `0x7bcad0e76c7623f352c311bba25d24fb16d73ccb`; mode `0x8997e7669da8451e356472cf3ef33dfbc9d7b448`; mode `0x967f594f73930a02817daf3112ccc7f2c611def8`; mode `0xa56b52d7a8f3cbb3b4261501c60a7ea95acaafb4`; mode `0xda4f88fd4b55d03433fa243d1f98f5618a82ba41`; mode `0xe8a1ead2f4c454e319b76fa3325b754c47ce1820` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0737ac52b53097b8605a8dd3a6062d1a74d4ceec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16f8c8a7bb3157a2db3f2139964e22ada4effd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x187b347da45494defa62c4eb1fdc22bcccfe3806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b4d155ebff3b3b76e47dd65a442b3490f336779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b99145fac25b86a81f4dc9fedaeb25aa93037c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2bca343d285aa6e38015ac2ba67e14e9198fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x472469469381f232fa3c0fa265e59e0831c4d512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4af97f73343b226c5a5872dcd2d1c4944bdb3e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f3fd20386bf6b68d00272853ef36cc20d0c4501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x586f03266f0fdf4b4a7d00ffca836a9d673cbe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6962f8dd1d50f73c2ccff64d39b334b6afc29139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b239927bb826cf79401bd0ae12e00bf42fcc5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c2ca2e6c1092f3c8f5f7b19575fcf5c2ede15fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc189491d95bb36d2c0a095e9aafdabeb4e561b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9c7ea75314f47dab32c5580466f0866a8b15a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdbd54ed1eddf3b8cbcecf4ca54565ccc95e3261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5ad5d55b8773e724b49b749e28c4daf17cebe73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4bb53292c83e35c1ecea0f49e7f0b735d39f7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8a8eaee4fbbbeb8e450d0cbf8054bae76813a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf45bf7d8934c898df2ad9c365eae4991b2dfd33d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388871 | `0x12d41b6df938c739f00c392575e3fd9292d98215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388872 | `0x375488f097176507e39b9653b88fdc52cde736bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388873 | `0x3b92b5e8e72a016991cc399241a6a4659f7073f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388874 | `0x4af97f73343b226c5a5872dcd2d1c4944bdb3e77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388875 | `0x9b7bcea67049819f4b35e84468c5e87918aefe4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388876 | `0xfe825cc878b25420d4b5df5c68ddcde8bf3947a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x16f8c8a7bb3157a2db3f2139964e22ada4effd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b4d155ebff3b3b76e47dd65a442b3490f336779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2c1ded27522e317515e5b5e856de7293938b6d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x62ba5e1ab1fa304687f132f67e35bfc5247166ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x714023acef728603686dd5b186ad1c7052dbc896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x977e41e76dadd104128d016bcd7941546501906c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbb919023638201bfa66157a7eba6302795a3ddd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf45bf7d8934c898df2ad9c365eae4991b2dfd33d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 66
- Live contracts: 8
- Unknown liveness contracts: 58
- Source-verified contracts: 33
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=24, contamination review=4, source verified unclassified=3, unverified unclassified=33

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| mode | candidate review | LP<br>`0xd4cd95ee7fe89d0cd1982a7336634ec5cb400ca3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | MasterMantis<br>`0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | Pool<br>`0x20a5889c03d28c2f5efe569157ae291090dec13e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | PoolVolatile<br>`0xe03aec0d08b3158350a9ab99f6cea7ba9513b889` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | ProxyAdmin<br>`0x6962f8dd1d50f73c2ccff64d39b334b6afc29139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | TransparentUpgradeableProxy<br>`0x153e43f5545a094c19c4dd290555ba04279c9cb9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | candidate review | TransparentUpgradeableProxy<br>`0xda4f88fd4b55d03433fa243d1f98f5618a82ba41` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x16f8c8a7bb3157a2db3f2139964e22ada4effd76` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x2b4d155ebff3b3b76e47dd65a442b3490f336779` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x2c1ded27522e317515e5b5e856de7293938b6d1e` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x62ba5e1ab1fa304687f132f67e35bfc5247166ad` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x714023acef728603686dd5b186ad1c7052dbc896` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0x977e41e76dadd104128d016bcd7941546501906c` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| mode | unverified unclassified | UnnamedContract<br>`0xbb919023638201bfa66157a7eba6302795a3ddd4` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | currently scope matched | TransparentUpgradeableProxy<br>`0x2c1ded27522e317515e5b5e856de7293938b6d1e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | currently scope matched | TransparentUpgradeableProxy<br>`0x62ba5e1ab1fa304687f132f67e35bfc5247166ad` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | LP<br>`0x977e41e76dadd104128d016bcd7941546501906c` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | MNTS<br>`0x6e1bf91427e2b63c1dce474a64e8b8e75c9a0086` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | Pool<br>`0x69928a7a134f594179257b63b16e9662990c6906` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | Pool<br>`0xbaef0174573e2705994f35490324f93c8aab8f66` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | ProxyAdmin<br>`0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x153e43f5545a094c19c4dd290555ba04279c9cb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x20a5889c03d28c2f5efe569157ae291090dec13e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x2adedcfd726e03032ddef1241d5c8efad40c1f80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x3b92b5e8e72a016991cc399241a6a4659f7073f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x4b3bfcaa4f8bd4a276b81c110640da634723e64b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x64522cc5028d7dbc96727a10728029a01b9b734f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x8997e7669da8451e356472cf3ef33dfbc9d7b448` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x967f594f73930a02817daf3112ccc7f2c611def8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x9b7bcea67049819f4b35e84468c5e87918aefe4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0xbb919023638201bfa66157a7eba6302795a3ddd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0xe03aec0d08b3158350a9ab99f6cea7ba9513b889` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0xe8a1ead2f4c454e319b76fa3325b754c47ce1820` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | contamination review | MasterMantis<br>`0x19400d6e8e7b6d34ffe756731c46e230f85bb32b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | contamination review | MockString<br>`0x7e593fb939edacb056cb08485c051572315448f0` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | contamination review | PoolHelper<br>`0x12e999fa8b464b123f5f9f91d64b4a286fa62098` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | contamination review | PoolHelper2<br>`0x2202d5a1edc43f590c65f97b5bbd83b84a8aa5bb` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | source verified unclassified | MNT<br>`0x1456ff0448122e11da73f0592c30331e325a3278` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | source verified unclassified | MNT<br>`0xaf30ce975fa38d421b3b1f09e91c5393d943333b` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | source verified unclassified | MNT<br>`0xe8fc92d1c2aef6ea37b2b9b6c9f4eac8f582cb7f` | non_address_book | unknown | unknown | verified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0737ac52b53097b8605a8dd3a6062d1a74d4ceec` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10a7d5276669cb5b286cdc35e9399f01ab0401c5` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12d41b6df938c739f00c392575e3fd9292d98215` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16f8c8a7bb3157a2db3f2139964e22ada4effd76` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x187b347da45494defa62c4eb1fdc22bcccfe3806` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2b4d155ebff3b3b76e47dd65a442b3490f336779` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2b99145fac25b86a81f4dc9fedaeb25aa93037c0` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2d2bca343d285aa6e38015ac2ba67e14e9198fe3` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x472469469381f232fa3c0fa265e59e0831c4d512` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4af97f73343b226c5a5872dcd2d1c4944bdb3e77` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4f3fd20386bf6b68d00272853ef36cc20d0c4501` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x586f03266f0fdf4b4a7d00ffca836a9d673cbe4b` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6962f8dd1d50f73c2ccff64d39b334b6afc29139` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x714023acef728603686dd5b186ad1c7052dbc896` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8b239927bb826cf79401bd0ae12e00bf42fcc5af` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8c2ca2e6c1092f3c8f5f7b19575fcf5c2ede15fe` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc189491d95bb36d2c0a095e9aafdabeb4e561b23` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc9c7ea75314f47dab32c5580466f0866a8b15a9c` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcdbd54ed1eddf3b8cbcecf4ca54565ccc95e3261` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd4cd95ee7fe89d0cd1982a7336634ec5cb400ca3` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5ad5d55b8773e724b49b749e28c4daf17cebe73` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xda4f88fd4b55d03433fa243d1f98f5618a82ba41` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe4bb53292c83e35c1ecea0f49e7f0b735d39f7fb` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe8a8eaee4fbbbeb8e450d0cbf8054bae76813a3a` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf45bf7d8934c898df2ad9c365eae4991b2dfd33d` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfcd30228773edf22e3d2293dfdf013a626523130` | non_address_book | unknown | unknown | unverified | n/a | `0x535a2b0c20dc6e37f61652e7e19e9d9884954c40` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-MantisSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd](https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13459] PeckShield-Audit-Report-MantisSwap-v1.0.pdf — matched: Contracts extracted from findings targets. No explicit scope table found, but contracts are clearly audited.
- [13460] omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd — matched: Extracted 10 contracts from the 'Contracts Assessed' table. Audit date is the latest commit date (August 12th 2023) from the revision table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | veMNT | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Marketplace | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded27522e317515e5b5e856de7293938b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-MantisSwap-v1.0.pdf | Rewarder | unmatched — not counted | — | Target in finding PVE-003 | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | LP | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x4b3bfcaa4f8bd4a276b81c110640da634723e64b` — deployed 2023-03-20 13:50:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe8a1ead2f4c454e319b76fa3325b754c47ce1820` — deployed 2023-03-20 13:50:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe03aec0d08b3158350a9ab99f6cea7ba9513b889` — deployed 2023-03-20 13:50:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MNTS | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Marketplace | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | MasterMantis | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2c1ded27522e317515e5b5e856de7293938b6d1e` — deployed 2023-03-20 13:49:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Pool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ba5e1ab1fa304687f132f67e35bfc5247166ad` — deployed 2023-03-20 13:50:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolHelper | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | PoolVolatile | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Rewarder | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | Vesting | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd | veMNT | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x4b3bfcaa4f8bd4a276b81c110640da634723e64b` | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe92175ea10fc1f59f633c77153e81780a6eeae04` | MNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 10 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
