# Agentic Audit Brief: Almanak

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: Almanak (`almanak`)
- Website: [https://almanak.co](https://almanak.co)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, linea, mantle, monad, optimism, plasma, polygon, sonic, x-layer
- Contract surface: 299 unique implementations (299 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $498,889.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Almanak in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 296 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (296 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 296
- Unique implementations: 299
- Raw deployments: 299
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlmanakToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-121384 | `0xdefa1d21c5f1cbeac00eeb54b44c7d86467cc3a3` | ⚠️ Unaudited |
| AlmanakTokenL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-121385 | `0xdefa1d21c5f1cbeac00eeb54b44c7d86467cc3a3` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-121386 | `0x5a97b0b97197299456af841f8605543b13b12ee3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (296)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x000000000004444c5dc75cb358380d2e3de08a90` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x04b7fa1e727d7290d6e24fa9b426d0c940283a95` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1376913337cec523b4ddead8a60edb1fa43ff1e3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1a6fcc85557bc4fb7b534ed835a03ef056552d52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x263833d47ea3fa4a30f269323aba6a107f9eb14c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2a01eb9496094da03c4e364def50f5ad1280ad72` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x34280882267ffa6383b363e278b027be083bbe3b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b3fb9c57858ef816833dc91565efcd85d96f634` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3fa58b74e9a8ea8768eb33c8453e9c2ed089a40a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4095f064b8d3c3548a3bebfd0bbfd04750e30077` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x48f7e36eb6b826b2df4b2e630b62cd25e89e40e2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x52f0e24d1c21c8a0cb1e5a5dd6198556bd9e1203` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x54586be62e3c3580375ae3723c145253060ca0c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5d916980d5ae1737a8330bf24df812b2911aae25` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x61025e2b0122ac8be4e37365a4003d87ad888cc3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x66a1096c6366b2529274df4f5d8247827fe4cea8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x66a9893cc07d91d95644aedd05d03f95e1dba8af` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7b4eb56e7cd4b454ba8ff71e4518426369a138a3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7ffe42c4a5deea5b0fec41c94c136cf115597227` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x808507121b80c02388fad14726482e061b8da827` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x873cd44b860dedfe139f93e12a4acca0926ffb87` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9994e35db50125e0df82e4c2dde62496ce330999` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9c0174fe7748f318dcb7300b93b170b6026280b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae78736cd615f374d3085123a210448e74fc6393` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb253eff1104802b97ac7e3ac9fdd73aece295a2c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbe9895146f7af43049ca1c1ae358b0541ea49704` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbf5495efe5db9ce00f80364c8b423567e58d2110` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcbc72d92b2dc8187414f6734718563898740c0bc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdddd770badd886df3864029e4b377b5f6a2b6b83` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe00bd3df25fb187d6abbb620b3dfd19839947b81` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe8483517077afa11a9b07f849cee2552f040d7b2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfafb71f2fe9a4330c34a192812f36d8d6f07f095` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x1f3131a13296fb91c90870043742c3cdbff1a8d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x3c3ea4b57a46241e54610e5f022e5c45859a1017` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x9a13f98cb987694c9f086b1f5eb990eea8264ec3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x9bcef72be871e61ed4fbbc7630889bee758eb81d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xc18a3169788f4f75a170290584eca6395c75ecdb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xd81eb3728a631871a7ebbad631b5f424909f0c77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x1906c1d672b88cd1b9ac7593301ca990f94eae07` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2700adb035f82a11899ce1d3f1bf8451c296eabb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x28e2ea090877bf75740558f6bfb36a5ffee9e9df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x39bc1bfda2130d6bb6dbefd366939b4c7aa7c697` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x6807dc923806fe8fd134338eabca509979a7e0cb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x78d78e420da98ad378d7799be8f4af69033eb077` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x7a4a5c919ae2541aed11041a1aeee68f1287f95b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x7b8a01b39d58278b5de7e48c8449c9f4f5170613` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x80ce46449df1c977f6ba60495125ce282f83ddfb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x9f75dd27d6664c475b90e105573e550ff69437b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xb971ef87ede563556b2ed4b1c0b0019111dd85d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xc90df74a7c16245c5f5c5870327ceb38fe5d5328` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xd13dd3d6e93f276fafc9db9e6bb47c1180aee0c4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xdb1d10011ad0ff90774d0c6bb92e5c5c8b4461f7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x1095692a6237d83c6a72f3f5efedb9a670c49223` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x15b4e0ee3dc3d20d9d261da2d3e0d2a86a6a6291` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x1bf0c2541f820e775182832f06c0b7fc27a25f67` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x1dc2444b54945064c131145cd6b8701e3454c63a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x1ec2ebf4f37e7363fdfe3551602425af0b3ceef9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x2d9c3a9e67c966c711208cc78b34fb9e9f8db589` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x5ea1bd7974c8a611cbab0bdcafcb1d9cc9b3ba5a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x624d826c5233a7426c98d1be789e70583a296b24` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x67366782805870060151383f4bbff9dab53e5cd6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x8f3cf7ad23cd3cadbd9735aff958023239c6a063` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xb023e699f5a33916ea823a16485e259257ca8bd1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xb3d5c3dfc3a7aebff71895a7191796bffc2c81b9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xe675a2161d4a6e2de2eed70ac98eebf257fbf0b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x00000000efe302beaa2b3e6e1b18d08d69a9012a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x0555e30da8f98308edb960aa94c0db47230d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x09475a3d6ea8c314c592b1a3799bde044e2f400f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x10aeaf63194db8d453d4d85a06e5efe1dd0b5417` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x204faca1764b154221e35c0d20abb3c525710498` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x3bd359c1119da7da1d913d1c4d2b7c461115433a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x661e93cca42afacb172121ef892830ca3b70f08d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x7197e214c0b767cfb76fb734ab638e2c192f4e53` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x754704bc059f8c67012fed69bc8a327a5aafb603` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0x82b684483e844422fd339df0b67b3b111f02c66e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xbb16f6b3c5422209ee1d9b0f63761f159c136694` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xd18b7ec58cdf4876f6afebd3ed1730e4ce10414b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xd5d960e8c380b724a48ac59e2dff1b2cb4a1eaee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xda77cf67ffeecc7fc64a4767837d1ffead1bc73c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xee8c0e9f1bffb4eb878d8f15f368a02a35481242` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | monad | n/a | `0xfe31f71c1b106eac32f1a19239c9a9a72ddfb900` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x0013acc071f732fd6bf8210ab46a3794a7d8945e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x0ab3ae25c42a2f3748a018556989355d568fa6d6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x5362dbb1e601abf3a4c14c22ffeda64042e5eaa3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x6047828dc181963ba44974801ff68e538da5eaf9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0xc0a344397cfa89df1e1d3e4fb330834d789cf2cd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0xd63f7658c66b2934bd234d79d06aef5290734b30` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x315e413a11ab0df498ef83873012430ca36638ae` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x4ae46a509f6b1d9056937ba4500cb143933d2dc8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x4f0c28f5926afda16bf2506d5d9e57ea190f9bca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x5a77f1443d16ee5761d310e38b62f77f726bc71c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x6c505c31714f14e8af2a03633eb2cdfb4959138f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x74b7f16337b8972027f6196a17a631ac6de26d22` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x91fc11136d5615575a0fc5981ab5c0c54418e2c6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0x976183ac3d09840d243a88c0268badb3b3e3259f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xb7c00000bcdeef966b20b3d884b98e64d2b06b4f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xde6539018b095353a40753dc54c91c68c9487d4e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xe3f3caefdd7180f884c01e57f65df979af84f116` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xe538905cf8410324e03a5a23c1c177a474d59b2b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xe7b000003a45145decf8a28fc755ad5ec5ea025a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | n/a | `0xea034fb02eb1808c2cc3adbc15f447b93cbe08e1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x09bc4e0d864854c6afb6eb9a9cdf58ac190d0df9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x0d922fb1bc191f64970ac40376643808b4b74df9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x201eba5cc46d216ce6dc03f6a759e8e766e956ae` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x218bf598d1453383e2f4aa7b14ffb9bfb102d637` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x25780dc8fc3cfbd75f33bfdab65e969b603b2035` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x319b69888b0d11cec22caa5034e25fffbdc88421` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x458f293454fe0d67ec0655f3672301301dd51422` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x47a063cfda980532267970d478ec340c0f80e8df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x487c5c669d9eee6057c44973207101276cf73b68` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x5911cb3633e764939edc2d92b7e1ad375bb57649` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x738fd6d10bcc05c230388b4027cad37f82fe2af2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xa35ae21a593cb06959978e20b33db34163166c79` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xc4aadc921e1cdb66c5300bc158a313292923c0cb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xcad502bb55d1a3f79952f969bff3f011cf30a94a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xdd489c75be1039ec7d843a6ac2fd658350b067cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | n/a | `0xfc421ad3c883bf9e7c4f42de845c4e4405799e73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x0d5e0f971ed27fbff6c2837bf31316121532048d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x23055618898e202386e6c13955a58d3c68200bfb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x2626664c2603336e57b271c5c0b26f421741e481` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x2cc0fc26ed4563a5ce5e8bdcfe1a2878676ae156` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x2d8a3c5677189723c4cb8873cfc9c8976fdf38ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x33128a8fc17869897dce68ed026d694621f6fdfd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x46415998764c29ab2a25cbea6254146d50d22687` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x4756c26e01e61c7c2f86b10f4316e179db8f9425` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x498581ff718922c3f8e6a244956af099b2652b2b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x6ff5693b99212da76ad316178a184ab56d299b43` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x81e80a50e56d10c501ff17b5fe2f662bd9ea4590` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xa238dd80c259a72e81d7e4664a9801593f98d1c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xa3c0c9b65bad0b08107aa264b0f3db444b867a71` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xb4205a645c7e920bd8504181b1d7f2c5c955c3e7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xd7a1aba119a236fea5bbc5cac6836465cbe9289a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | n/a | `0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x0cb289e9df2d0dcfe13732638c89655fb80c2be2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x17bac5f906c9a0282ac06a59958d85796c831f24` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x1dd4b13fcae900c60a350589be8052959d2ed27b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x6100e367285b01f48d07953803a2d8dca5d19873` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x925a2a7214ed92428b5b1b090f80b25700095e12` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xbe45f6f17b81571fc30253bdae0a2a6f7b04d60f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xc0f6a41a9837c4d824bc8d346341db77e634ae69` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xff3ccc1245d59b21b6ec4a597557e748f8311e8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x08a152834de126d2ef83d612ff36e4523fd0017f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x09400d9db990d5ed3f35d7be61dfaeb900af03c9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x0ccb4faa6f1f1b30911619f1184082ab4e25813c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x1c3fa76e6e1088bce750f23a5bfcffa1efef6a41` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x1cbba6346f110c8a5ea739ef2d1eb182990e4eb2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x1fa4431bc113d308bee1d46b0e98cb805fb48c13` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x1fd95db7b7c0067de8d45c0cb35d59796adfd187` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x248c35760068ce009a13076d573ed3497a47bcd4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x2fcb47b58350cd377f94d3821e7373df60bd9ced` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x360e68faccca8ca495c1b759fd9eee466db9fb32` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x3972c00f7ed4885e145823eb7c655375d275a1c5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x470fbc46bcc0f16532691df360a07d8bf5ee0789` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x47c031236e19d024b42f8ae6780e44a573170703` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x55391d178ce46e7ac8eaaea50a72d1a5a8a622da` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x63dc80ee90f26363b3fcd609007cc9e14c8991be` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x66f30587fb8d4206918deb78eca7d5ebbafd06da` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x6853ea96ff216fab11d2d930ce3c508556a4bdc4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x69fa688f1dc47d4b5d8029d5a35fb7a548310654` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x6c247b1f6182318877311737bac0844baa518f5e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x70d95587d40a2caf56bd97485ab3eec10bee6336` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x7452c558d45f8afc8c83dae62c3f8a5be19c71f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x76fd297e2d437cd7f76d50f01afe6160f86e9990` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x794a61358d6845594f94dc1db02a252b5b4814ad` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x7f1fa204bb700853d36994da19f830b6ad18455c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x88193fcb705d29724a40bb818ecaa47dd5f014d9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x888888888889758f76e7103c6cbf23abbf58f946` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x8e02a9b9cc29d783b2fcb71c3a72651b591cae31` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x952083cde7aaa11ab8449057f7de23a970aa8472` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xa51afafe0263b40edaef0df8781ea9aa03e381a3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xb56c2f0b653b2e0b10c9b928c8580ac5df02c7c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xb56e5e2eb50cf5383342914b0c85fe62dbd861c8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xc25cef6061cf5de5eb761b50e4743c1f5d7e5407` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xd88f38f930b7952f2db2432cb002e7abbf3dd869` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xd9535bb5f58a1a75032416f2dfe7880c30575a41` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xf78452e0f5c0b95fc5dc8353b8cd1e06e53fa25b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xf97f4df75117a78c1a5a0dbb814af92458539fb4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xfd70de6b91282d8017aa4e741e9ae325cab992d8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x06380c0e0912312b5150364b9dc4542ba0dbbc85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x152b9d0fdc40c096757f570a51e494bd4b943e50` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x50b7545627a5162f82a992c33b87adc75187b218` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x5947bb275c521040051d82396192181b413227a3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x62cb8740e6986b29dc671b2eb596676f60590a5b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x655c406ebfa14ee2006250925e54ec43ad184f8b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x740b1c1de25031c31ff4fc9a62f554a55cdc1bad` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x820f5ffc5b525cd4d88cd91acf2c28f16530cc68` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x8f550e53dfe96c055d5bdb267c21f268fcaf63b2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x913c1f46b48b3ed35e7dc3cf754d4ae8499f31cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb74b1f14d2754acfcbbe1a221023a5cf50ab8acd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb7e69749e3d2edd90ea59a4932efea2d41e245d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xbb00ff08d01d300023c629e8ffffcb65a5a578ce` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xbe0f5544ec67e9b3b2d979aaa43f18fd87e6257f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xbe40675bb704506a3c2ccfb762dcfd1e979845c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xc3c9e198c735a4b97e3e683f391ccbdd60b69286` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xd3d60d22d415ad43b7e64b510d86a30f19b1b12c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xd586e7f844cea2f87f50152665bcbc2c279d8d70` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xebd36016b3ed09d4693ed4251c67bd858c3c7c9c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | n/a | `0xfb02132333a79c8b5bd0b64e3abcca5f7faf2937` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x42be4d6527829fefa1493e1fb9f3676d2425c3c1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x47cd4b507b81cb831669c71c7077f4daf6762ff4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0x4af15ec2a0bd43db75dd04e62faa3b8ef36b00d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xa219439258ca9da29e9cc4ce5596924745e12b93` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xc47b8c00b0f69a36fa203ffeac0334874574a8ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xcfdada7dcd2e785cf706badbc2b8af5084d595e9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x4300000000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x4300000000000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x549feb8c9bd4c12ad2ab27022da12492ac452b66` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x6cdcd65e03c1cec3730aeecd45bc140d57a25c77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x792edade80af5fc680d96a2ed80a44247d2cf6fd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0xb218e4f7cf0533d4696fdfc419a0023d33345f28` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 0
- Live contracts: 0
- Unknown liveness contracts: 0
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: none

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 296 |

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
