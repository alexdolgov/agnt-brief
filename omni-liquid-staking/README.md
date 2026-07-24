# Agentic Audit Brief: Omni Liquid Staking

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Omni Liquid Staking (`omni-liquid-staking`)
- Website: [https://omni.ls/](https://omni.ls/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonbeam, moonriver
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $178,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Omni Liquid Staking in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 61
- Raw deployments: 61
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
| MoonbeamSlpx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-157998 | `0x0e13c5327914929b62a1809f62ad044c4be0a29d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-157996 | `0x051713fd66845a13bf23baca008c5c22c27ccb58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-157999 | `0x20ae8a2aa8ccb2a096a8b3510c5c15854a5f74a1` | ⚠️ Unaudited |
| XC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | unit-157995 | `0xffffffff15e1b7e3df971dd813bc394deb899abf` | ⚠️ Unaudited |
| XcmOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | unit-157997 | `0x0b8e6d7974b4f8e23ac520e786b4cb5f120399b1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xef81930aa8ed07c17948b2e26b7bfaf20144ef2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf1d4797e51a4640a76769a50b57abe7479add3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff166f84967f054ae95ab5764c38cf3aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff1b4bb1ac5749f73d866ffc91a3432c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff2e1d1ac9ea1686255befe995b31abc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff30478fafbe935e466da114e14fb3563d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff31d724194b6a76e1d639c8787e16796b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff345dc44ddae98df024eb494321e73fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff3afcd2cad6174387df17180a0362e592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff43b4560bc0c451a3386e082bff50ac90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff43e0d9b84010b1b67ba501bc81e33c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff44bd9d2ffee20b25d1cf9e78edb6eae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff52c56a9257bb97f4b2b6f7b2d624ecda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5d5deb44bf7278dee5381beb24cb6573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5da2d7214d268375cf8fb1715705fdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5e90e365edca87fb4c8306df1e91464f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff644a12f6f01b754987d175f5a780a75b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6807d5082ff2f6f86bde409245e2d953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6a3977d5b65d1044fd744b14d9cef932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6af229ae7f0f4e0188157e189a487d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6c57e17d210df507c82807149ffd70b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff71815ab6142e0e20c7259126c6b40612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff7bc304425217b49e9598415c514ae81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff86829afe1521ad2296719df3ace8ded7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8a9736b44ebf188972725bed67bf694e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8cda1707baf23834d211b08726b1e499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8f6267e040d8a0638c576dfba4f0f6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff9664be0234ea4dc64558f695c4f2a9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff99dabe1a8de0ea22baa6fd48fde96f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff9de12e6658c49b4834f9278f6a39f5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa608ec1332131289cbd8a97a0bb3d90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa893ad19e540e172c10d78d4d479b5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa9cfffa9834235fe53f4733f1b8b28d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffabe9934e61db3b11be4251e6e869cf59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffaff6df83d0a1935dda2e5f1f402c0c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffd58f77e6693cfb99ebe273d73c678dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffda2a05fb50e7ae99275f4341aed43379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffdd704e8e824a5eec47de88f5b9e13588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffec4908b74688a01374f789b48e9a3eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0b3429d5ea397504766a9208caa354c9e14f4fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x335459f95cbc08a27d7f52b578f31134ecbb8b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4238ea4adfa2bd6a5fc9b5e245dc1900cf0258aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5539ca52f475c2483d87f0bea52fc54e19fe6667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x558de0e24956a634735914b1ea252c4c2214124c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x682d05cd8d96b9904ec2b1b97bd1eb640b10fc2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x6b0a44c64190279f7034b77c13a566e914fe5ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7746ef546d562b443ae4b4145541a3b1a3d75717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8dd0bd3d5c7b19543faabb97b443ce476932b7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x95a4d4b345c551a9182289f9dd7a018b7fd0f940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9c014e406bfc0755d9329b2d3081323153beb906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb922dc02c04a12ae59336140824641e29dac2860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc5b754cd3af4c43b861d783c023690c24f2af324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc8d12ff866411ea1d09509ec94763e380e8f9764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc96a881ddc4c60d3f791f36d774cb7e4187c2132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcc8340b9add52db21ab7ad3a648745b42176ace8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdf2217c883c01b027d71b801bb484d851bbe92bd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=2, unverified unclassified=52

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x682d05cd8d96b9904ec2b1b97bd1eb640b10fc2d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| exact address book overlap | UnnamedContract<br>`0x6b0a44c64190279f7034b77c13a566e914fe5ec4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xffffffff166f84967f054ae95ab5764c38cf3aed` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff1b4bb1ac5749f73d866ffc91a3432c47` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff2e1d1ac9ea1686255befe995b31abc96` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff30478fafbe935e466da114e14fb3563d` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff31d724194b6a76e1d639c8787e16796b` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff345dc44ddae98df024eb494321e73fcc` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff3afcd2cad6174387df17180a0362e592` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff43b4560bc0c451a3386e082bff50ac90` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff43e0d9b84010b1b67ba501bc81e33c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff44bd9d2ffee20b25d1cf9e78edb6eae3` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff52c56a9257bb97f4b2b6f7b2d624ecda` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff5d5deb44bf7278dee5381beb24cb6573` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff5da2d7214d268375cf8fb1715705fdc6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff5e90e365edca87fb4c8306df1e91464f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff644a12f6f01b754987d175f5a780a75b` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff6807d5082ff2f6f86bde409245e2d953` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff6a3977d5b65d1044fd744b14d9cef932` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff6af229ae7f0f4e0188157e189a487d59` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff6c57e17d210df507c82807149ffd70b2` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff71815ab6142e0e20c7259126c6b40612` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff7bc304425217b49e9598415c514ae81b` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff86829afe1521ad2296719df3ace8ded7` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff8a9736b44ebf188972725bed67bf694e` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff8cda1707baf23834d211b08726b1e499` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff8f6267e040d8a0638c576dfba4f0f6d6` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff9664be0234ea4dc64558f695c4f2a9ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff99dabe1a8de0ea22baa6fd48fde96f6c` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffff9de12e6658c49b4834f9278f6a39f5d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffa608ec1332131289cbd8a97a0bb3d90f` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffa893ad19e540e172c10d78d4d479b5cf` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffa9cfffa9834235fe53f4733f1b8b28d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffabe9934e61db3b11be4251e6e869cf59` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffaff6df83d0a1935dda2e5f1f402c0c45` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffd58f77e6693cfb99ebe273d73c678dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffda2a05fb50e7ae99275f4341aed43379` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffdd704e8e824a5eec47de88f5b9e13588` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0xffffffffec4908b74688a01374f789b48e9a3eab` | non_address_book | unknown | unknown | unverified | n/a | `0x6d6f646c666f7267617373740000000000000000` |
| unverified unclassified | UnnamedContract<br>`0x0b3429d5ea397504766a9208caa354c9e14f4fed` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x335459f95cbc08a27d7f52b578f31134ecbb8b16` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x4238ea4adfa2bd6a5fc9b5e245dc1900cf0258aa` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x5539ca52f475c2483d87f0bea52fc54e19fe6667` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x558de0e24956a634735914b1ea252c4c2214124c` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x7746ef546d562b443ae4b4145541a3b1a3d75717` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x8dd0bd3d5c7b19543faabb97b443ce476932b7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x95a4d4b345c551a9182289f9dd7a018b7fd0f940` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0x9c014e406bfc0755d9329b2d3081323153beb906` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xb922dc02c04a12ae59336140824641e29dac2860` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xc5b754cd3af4c43b861d783c023690c24f2af324` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xc8d12ff866411ea1d09509ec94763e380e8f9764` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xc96a881ddc4c60d3f791f36d774cb7e4187c2132` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xcc8340b9add52db21ab7ad3a648745b42176ace8` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |
| unverified unclassified | UnnamedContract<br>`0xdf2217c883c01b027d71b801bb484d851bbe92bd` | non_address_book | unknown | unknown | unverified | n/a | `0x4597c97a43dfbb4a398e2b16aa9ce61f90d801dd` |

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
| standard_library | 2 |
| needs_review | 56 |

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
