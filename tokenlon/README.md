# Agentic Audit Brief: Tokenlon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Tokenlon (`tokenlon`)
- Website: [https://tokenlon.im](https://tokenlon.im)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 57 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $29,972,190.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Tokenlon in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 56 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 57
- Raw deployments: 61
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
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
| AMMWrapperWithPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a14347083b80e5216ca31350a2d21702ac3650d` | ⚠️ Unaudited |
| DelayedMultiSig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9afc226dc049b99342ad6774eeb08bfa2f874465` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3557bd3d422300198719710cc3f00194e1c20a46` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xbf03bcb67333610b7f90df58c7e435691b0af355` | ⚠️ Unaudited |
| Lon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000095413afc295d19edeb1ad7b71c952` | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000006a0403952389b70d8ee4e45479023db` | ⚠️ Unaudited |
| MiningTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6921efc261070a0d5c96911c102cbf1045e4` | ⚠️ Unaudited |
| PMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d90113a1e286a5ab3e496fbd1853f265e5913c6` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x74379cec6a2c9fde0537e9d9346222a724a278e4`; ethereum `0x929cf614c917944dd278bc2134714eaa4121bc6a`; ethereum `0xb6bc1a713e4b11fa31480d31c825dcfd7e8fabfd`; ethereum `0xc348314f74b043ff79396e14116b6f19122d69f4` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55d31f68975e446a40a2d02ffa4b0e1bfb233c2f`; ethereum `0x7924a818013f39cf800f5589ff1f1f0def54f31f` | ⚠️ Unaudited |
| UserProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03f34be1bf910116595db1b11e9d1b2ca5d59659` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b32a653754945666cfca91168bb207323dfe67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x080bf510fcbf18b91105470639e9561022937712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b3cb3256c347491aecd3e3d887d277fa90246f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11be6f5520fee8e867e20af9c9d2c8a09b909b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17992e4ffb22730138e4b62aaa6367fa9d3699a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a286652288691d086006b81655e4efa895df84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x208e41fb445f1bb1b6780d58356e81405f3e6127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2240dab907db71e64d3e0dba4800c83b5c502d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x224221a1431faa24a4455dcbe0cd4f75845c3430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa4d866f26eac1c17f03f4a3e1a98b775930a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33355bad54c33131ed8ba899f8e521cfd0d6b46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3517b88c19508c08650616019062b898ab65ed29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c68dfc45dc92c9c605d92b49858073e10b857a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x413ecce5d56204962090eef1dead4c0a247e289b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b12004b031f13caa8a28e2049f74f3d77653369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cec337a013a53ed8e318f204e7cc12406ffc246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f833a24e1f95d70f028921e27040ca56e09ab0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5468a1dc173652ee28d249c271fa9933144746b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9cc14a1d36e6ff13fc6efa9e9326fcd12e7903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74c3ca9431c009dc35587591dc90780078174f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76481caa104b5f6bccb540dae4cefaf1c398ebea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7afc2d5107af94c462a194d2c21b5bdd238709d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eefbd48fd63d441ec7435d024ec7c5131019add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89062f9dd198bcefb07417e488a6be71c1c9f1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a13e81fa50eca62fdec7f5d16e513a86e95481b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a42d311d282bfcaa5133b2de0a8bcdbecea3073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a491b95b24382fce96be36a4efc3dae5e9a3a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9463e518dea6810309563c81d5266c1b1d149138` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258783 | `0x95e6f48254609a6ee006f7d493c8e5fb97094cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9648b119f442a3a096c0d5a1f8a0215b46dbb547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa09329c6003c9a5402102e226417738ee22cf1f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1074ea92135393e695f67fbd82b097a70296086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14857e8930acd9a882d33ec20559beb5479c8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3856622276a64fee0f17f67329fac24368d4aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc9d99f139f6dbba907a5a2f5d4f67918e416a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e8424911435b9d88dbc95209c5c6b894b7dc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd98edf47faf15ad17baea52bda8ebaa212b1822a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4587cb17d2a1829512e2cfec621f8066290e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffe798c7172dd6deb32baee68af322e8f495ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25ff902295bc085bd548955b0595b518d4c46d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef701d5389ae74503d633396c4d654eabedc9d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefc70a1b18c432bdc64b596838b4d138f6bc6cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf406173c7c5ab2938d0cd4bf93e35635da514728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88506b0f1d30056b9e5580668d5875b9cd30f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd6c2d2499b1331101726a8ac68ccc9da3fab54f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 44
- Live contracts: 0
- Unknown liveness contracts: 44
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=44

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x11be6f5520fee8e867e20af9c9d2c8a09b909b83` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c68dfc45dc92c9c605d92b49858073e10b857a6` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d9cc14a1d36e6ff13fc6efa9e9326fcd12e7903` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74c3ca9431c009dc35587591dc90780078174f8a` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89062f9dd198bcefb07417e488a6be71c1c9f1c3` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a42d311d282bfcaa5133b2de0a8bcdbecea3073` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1074ea92135393e695f67fbd82b097a70296086` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf406173c7c5ab2938d0cd4bf93e35635da514728` | non_address_book | unknown | unknown | unverified | n/a | `0x2870719cef30785261ede70d7bdaaba0a772cf6f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07b32a653754945666cfca91168bb207323dfe67` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x080bf510fcbf18b91105470639e9561022937712` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b3cb3256c347491aecd3e3d887d277fa90246f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17992e4ffb22730138e4b62aaa6367fa9d3699a6` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x208e41fb445f1bb1b6780d58356e81405f3e6127` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2240dab907db71e64d3e0dba4800c83b5c502d4e` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33355bad54c33131ed8ba899f8e521cfd0d6b46f` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3517b88c19508c08650616019062b898ab65ed29` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f833a24e1f95d70f028921e27040ca56e09ab0b` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5468a1dc173652ee28d249c271fa9933144746b1` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76481caa104b5f6bccb540dae4cefaf1c398ebea` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7afc2d5107af94c462a194d2c21b5bdd238709d6` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7eefbd48fd63d441ec7435d024ec7c5131019add` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a13e81fa50eca62fdec7f5d16e513a86e95481b` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9463e518dea6810309563c81d5266c1b1d149138` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa09329c6003c9a5402102e226417738ee22cf1f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa14857e8930acd9a882d33ec20559beb5479c8a6` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3856622276a64fee0f17f67329fac24368d4aae` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4e8424911435b9d88dbc95209c5c6b894b7dc2f` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc4587cb17d2a1829512e2cfec621f8066290e6a` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdffe798c7172dd6deb32baee68af322e8f495ce0` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef701d5389ae74503d633396c4d654eabedc9d78` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefc70a1b18c432bdc64b596838b4d138f6bc6cad` | non_address_book | unknown | unknown | unverified | n/a | `0x2d7dc2ef7c6f6a2cbc3dba4db97b2ddb40e20713` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a286652288691d086006b81655e4efa895df84d` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x224221a1431faa24a4455dcbe0cd4f75845c3430` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26fa4d866f26eac1c17f03f4a3e1a98b775930a3` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x413ecce5d56204962090eef1dead4c0a247e289b` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b12004b031f13caa8a28e2049f74f3d77653369` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cec337a013a53ed8e318f204e7cc12406ffc246` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a491b95b24382fce96be36a4efc3dae5e9a3a56` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9648b119f442a3a096c0d5a1f8a0215b46dbb547` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc9d99f139f6dbba907a5a2f5d4f67918e416a91` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd98edf47faf15ad17baea52bda8ebaa212b1822a` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe25ff902295bc085bd548955b0595b518d4c46d2` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf88506b0f1d30056b9e5580668d5875b9cd30f23` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd6c2d2499b1331101726a8ac68ccc9da3fab54f` | non_address_book | unknown | unknown | unverified | n/a | `0xdef3a34689fb7506e75b581c6cde664c9560ca11` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-TokenlonV5-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 11 | high |
| [PeckShield-Audit-TokenlonV5-v1.0rc.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0rc.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 13 | high |
| [Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5893] PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf — no match: Contracts extracted from findings targets and scope description. No explicit scope table, but contracts are clearly identified as audited targets.
- [5894] PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf — no match: Audit report for Tokenlon (Multicall). Scope mentioned as 'multicall support in Tokenlon' but specific contracts UserProxy and LimitOrder are identified as targets in findings.
- [5895] PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf — no match: No explicit scope table; contracts extracted from findings targets and code listings. Audit date from cover page.
- [5896] PeckShield-Audit-TokenlonV5-v1.0.pdf — no match: Extracted contract names from findings targets and code snippets. No explicit scope table found, but contracts are clearly audited targets.
- [5897] PeckShield-Audit-TokenlonV5-v1.0rc.pdf — no match: Extracted contract names from findings sections where they are explicitly mentioned as targets. No explicit scope table was found, but the report consistently refers to these contracts as audited targets.
- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope section explicitly lists 7 contracts. Audit period ends 14/07/2023.
- [15516] Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf — no match: No reason recorded
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope section explicitly lists RFQv2.sol as the audited contract. Additional contracts are referenced in findings as part of the codebase.
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope explicitly lists RFQv2.sol; TokenCollector.sol is mentioned in findings as a contract with issues.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | ILimitOrder | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | LimitOrder | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | LimitOrderLibEIP712 | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | TransparentUpgradeableProxyImpl | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | UserProxy | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf | LimitOrder | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf | UserProxy | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | AllowanceTarget | unmatched — not counted | — | Target in finding PVE-003; code listing 3.3 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | PMM | unmatched — not counted | — | Target in finding PVE-004; code listing 3.5 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | Spender | unmatched — not counted | — | Target in finding PVE-001 and PVE-002; mentioned in code listings | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | AMMWrapper | unmatched — not counted | — | Listed in findings targets (PVE-001, PVE-005, PVE-006) and described in report. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | AllowanceTarget | unmatched — not counted | — | Listed in finding PVE-009 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | EmergencyRecipient | unmatched — not counted | — | Mentioned in finding PVE-002 as dedicated contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | Lon | unmatched — not counted | — | Mentioned in finding PVE-002 as example contract with emergencyWithdraw. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | PMM | unmatched — not counted | — | Listed in findings targets (PVE-005) and described in report. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | PermanentStorage | unmatched — not counted | — | Listed in finding PVE-008 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | Spender | unmatched — not counted | — | Listed in finding PVE-009 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | StakingRewards | unmatched — not counted | — | Listed in finding PVE-004 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | TreasuryVester | unmatched — not counted | — | Mentioned in TreasuryVesterFactory code snippet. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | TreasuryVesterFactory | unmatched — not counted | — | Mentioned in finding PVE-003 as example of unused code. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | UserProxy | unmatched — not counted | — | Mentioned in findings PVE-003 and PVE-007. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | AMMWrapper | unmatched — not counted | — | Listed in findings (PVE-001, PVE-005, PVE-006, etc.) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | AllowanceTarget | unmatched — not counted | — | Listed in finding PVE-009 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | EmergencyRecipient | unmatched — not counted | — | Listed in finding PVE-002 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | LONStaking | unmatched — not counted | — | Listed in findings (PVE-010, PVE-011) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | Lon | unmatched — not counted | — | Listed in finding PVE-002 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | PMM | unmatched — not counted | — | Listed in findings (PVE-005, PVE-007) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | PermanentStorage | unmatched — not counted | — | Listed in finding PVE-008 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | RewardDistributor | unmatched — not counted | — | Listed in findings (PVE-012, PVE-013) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | Spender | unmatched — not counted | — | Listed in finding PVE-009 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | StakingRewards | unmatched — not counted | — | Listed in findings (PVE-003, PVE-004) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | TreasuryVester | unmatched — not counted | — | — | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | TreasuryVesterFactory | unmatched — not counted | — | Listed in finding PVE-003 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | UserProxy | unmatched — not counted | — | Listed in findings (PVE-003, PVE-007) and described as a target contract. | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | AllowanceTarget | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | CoordinatedTaker | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | GenericSwap | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | LimitOrderSwap | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | RFQ | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | SmartOrderStrategy | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | UniAgent | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | AllowanceTarget | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LibBytes | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LibUniswapV3 | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LimitOrder | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Multicall | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | PermanentStorage | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Proxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | ProxyPermanentStorage | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Spender | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Tokenlon | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UniswapV3PathLib | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UpgradeableProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UserProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | RFQv2 | unmatched — not counted | — | listed in scope and findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | BaseLibEIP712 | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | TokenCollector | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | Offer | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | RFQOrder | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | Asset | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf | RFQv2 | unmatched — not counted | — | listed in scope section and findings | no |
| Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf | TokenCollector | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5893] PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf
- [5894] PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf
- [5895] PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf
- [5896] PeckShield-Audit-TokenlonV5-v1.0.pdf
- [5897] PeckShield-Audit-TokenlonV5-v1.0rc.pdf
- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf
- [15516] Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf

Fork inheritance lineage and inherited audits are included when available.
