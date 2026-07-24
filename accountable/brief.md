# Agentic Audit Brief: Accountable

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Accountable (`accountable`)
- Website: [https://accountable.capital/](https://accountable.capital/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $404,307,089.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Accountable in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountableFixedTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120141 | `0x00e8fe8dc7e96dbc021b843ee8411f95c0890e4c` | ⚠️ Unaudited |
| AccountableOpenTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120149 | `0x616eca2310eb1a0bd620afbf916314f3702dd3b6` | ⚠️ Unaudited |
| AccountableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120143 | `0x1e05bedb3ea09a145bae551ec93b49385ba689da` | ⚠️ Unaudited |
| AsyncVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120151 | `0x859a15b7c2b4fd0641424342130f2b073a115dc4` | ⚠️ Unaudited |
| AtomicBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120146 | `0x35c7171db2bd8164a36c3ae93ef9d4fb4cc08777` | ⚠️ Unaudited |
| DVNPublisherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-120158 | `0x0a2a9ecf70e6fec00a53d3ec000ac97f260d9f86` | ⚠️ Unaudited |
| DVNPublisherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120144 | `0x24c27ea8965c70670857e9ec9f18e9eab7607c42` | ⚠️ Unaudited |
| EarlyExitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120155 | `0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9` | ⚠️ Unaudited |
| EarlyExitOpenTerm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120150 | `0x66d6c3f32676a31f1b2e14f6bf6da9fc8d8e819c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-120156 | `0x59b0b84371bb3261fad538c512efffc414cc1725` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120142 | `0x0d2c8f073c354e5b1306be1a31c36158bbfc225b` | ⚠️ Unaudited |
| FixedTermFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120145 | `0x2a7f22f81a3d301b8f0eaf4f09a78558c91fc69a` | ⚠️ Unaudited |
| GlobalRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-120157 | `0x6436e1f2edc981b69a3b0f396924cec01dc617af` | ⚠️ Unaudited |
| HelloAccountable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120152 | `0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9` | ⚠️ Unaudited |
| HypernativePauseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120148 | `0x4e22a922002494e0f016e96289e946b9f32dcc07` | ⚠️ Unaudited |
| OpenTermFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120147 | `0x4927ce3402035b801a1beddc498b7fb2fe9ea181` | ⚠️ Unaudited |
| RewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120154 | `0xa0ae7ec6f93e55160f3f79840068549e8ca031ef` | ⚠️ Unaudited |
| YieldStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-120153 | `0x9f1eb2be7b6a7e611c270bbdb0a3358786769518` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ff52949a311cb05191a4f6bd6b93d11ebd06f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06d13e462a78132ed78d4c0906ff81c3cfa41e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a252daf27cc7d5be92f81739ba274b205771d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e503d4b0d463855e819d7201f6bd2604d423c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3c90758a0c04edd544248b38c257a1d4d6fda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7a48c19b358083b0818dc589c5e151f69260c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f12a4f960faec311db695c6bb891ce28d668ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25cf00fce3368b7145a5ccc2989233dfdcde9c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f278d98caeab97d2f2aee809915c2ff79a5b767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5cac28cf80d465d7c8d67a49c8e36710a4b83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x333a12e2b519da16ebe75012d54574c16ef4463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39948942f375aa50e3df485b16b520491191a3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d83e8d579ec3b5911f29e02c70f4130092edd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647c9584072a4f1c96d5f82a7133af5642f39402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8a37841316f94856af4409e4101c10527dd6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecdab6fceb475d4f091267428e069506396d4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fd9e510aa905f2d2ae717645eb45da2349f4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787b96f872e96b52ea29ffee5765df09d3f15dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x831d06ce29df7aa3701bae5d75658ad590efe70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b4138fbafe5306889120fc701087331076ed81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2af6538ac78d62fcf954ae2c83a2b4eb5c7121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987aa3966d93b5e82cb68dc56ed19700ffd44c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa330bef5d7e1b5c059d24cf0251ef41556312470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabcce3f78a591c1c734cb16b6ea56dff3985953c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2d9cb2a162b5593f1983352a05f7051c5b6df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1a9fb0035d02f3b9ad8a0c1c377483e82ac7941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4082b8126af8b5345cfb159ac5d4b4f05f54bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4d9f56b0650ca8f896579f8e76ecf26dcb62fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1726348ab8b0f7bb065ac8bb7e2d0734d00d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa433003c9f8abed1537826fe74c21df2762454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0f778b51bf9751bbccbf4e78a107026adadbe43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a6e882cbb0269e15649bc6441a3f65f663425a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f11ca9baec586cc49bd7e5b0e6b47f1baf9734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7c08f9c7f9b9bc0022e90869ef59fd72598be08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a53e724ea9cb041e30f0243e3c84bdea238dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd291c33001bc676fc39d83c5dc1d9d53ffc55f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac0e7effb16b249d1bb672d25d7827481be2081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5ed0a8eefbe3053b84499892fafae82be781d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf251a8700b22c8d1ddb2cdebe82bb53583e115a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c2cee56d648b1238f5eb8340c1ed5b5c398be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdcd086a3eeffe334579be6da64a55b20ed30b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd1aef95e7f58441b368a54b4a48fcbb4d959cd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 42
- Live contracts: 0
- Unknown liveness contracts: 42
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=42

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x01ff52949a311cb05191a4f6bd6b93d11ebd06f4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06d13e462a78132ed78d4c0906ff81c3cfa41e12` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a252daf27cc7d5be92f81739ba274b205771d24` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x333a12e2b519da16ebe75012d54574c16ef4463f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39948942f375aa50e3df485b16b520491191a3f4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c8a37841316f94856af4409e4101c10527dd6c1` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70fd9e510aa905f2d2ae717645eb45da2349f4b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae2d9cb2a162b5593f1983352a05f7051c5b6df4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1a9fb0035d02f3b9ad8a0c1c377483e82ac7941` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd4d9f56b0650ca8f896579f8e76ecf26dcb62fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe1726348ab8b0f7bb065ac8bb7e2d0734d00d0e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2a6e882cbb0269e15649bc6441a3f65f663425a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6f11ca9baec586cc49bd7e5b0e6b47f1baf9734` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0a53e724ea9cb041e30f0243e3c84bdea238dfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdac0e7effb16b249d1bb672d25d7827481be2081` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf251a8700b22c8d1ddb2cdebe82bb53583e115a5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8c2cee56d648b1238f5eb8340c1ed5b5c398be3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc83ff5d65a7454adbaffd6ddc5695d978e1d50d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e503d4b0d463855e819d7201f6bd2604d423c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13f12a4f960faec311db695c6bb891ce28d668ae` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f5cac28cf80d465d7c8d67a49c8e36710a4b83b` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62d83e8d579ec3b5911f29e02c70f4130092edd1` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x647c9584072a4f1c96d5f82a7133af5642f39402` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ecdab6fceb475d4f091267428e069506396d4d1` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84b4138fbafe5306889120fc701087331076ed81` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e2af6538ac78d62fcf954ae2c83a2b4eb5c7121` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x987aa3966d93b5e82cb68dc56ed19700ffd44c13` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabcce3f78a591c1c734cb16b6ea56dff3985953c` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfa433003c9f8abed1537826fe74c21df2762454` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7c08f9c7f9b9bc0022e90869ef59fd72598be08` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5ed0a8eefbe3053b84499892fafae82be781d52` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdcd086a3eeffe334579be6da64a55b20ed30b53` | non_address_book | unknown | unknown | unverified | n/a | `0xd6e677392016c2eb7663da524c34bca5dba6127a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f3c90758a0c04edd544248b38c257a1d4d6fda6` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f7a48c19b358083b0818dc589c5e151f69260c0` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25cf00fce3368b7145a5ccc2989233dfdcde9c24` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f278d98caeab97d2f2aee809915c2ff79a5b767` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x787b96f872e96b52ea29ffee5765df09d3f15dda` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x831d06ce29df7aa3701bae5d75658ad590efe70f` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa330bef5d7e1b5c059d24cf0251ef41556312470` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4082b8126af8b5345cfb159ac5d4b4f05f54bc5` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0f778b51bf9751bbccbf4e78a107026adadbe43` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd291c33001bc676fc39d83c5dc1d9d53ffc55f7a` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffd1aef95e7f58441b368a54b4a48fcbb4d959cd` | non_address_book | unknown | unknown | unverified | n/a | `0xf11f92a8afa56ae1cdd935010a6ea24a2d8bf010` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Accountable_Cyfrin_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FN3QdwjHBJzlR6pAaE0Df%2FAccountable_Cyfrin_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Accountable_Cyfrin_FV_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2Fyfhc5ZX1wP4SN63N3RNG%2FAccountable_Cyfrin_FV_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Accountable_Quantstamp_2025-10-28.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FI1lzu3fVUD8alRDbl00g%2FAccountable_Quantstamp_2025-10-28.pdf) | Quantstamp | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Accountable_Cyfrin_2026-01-23.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FJH8JekBJPbpro4UZLYy8%2FAccountable_Cyfrin_2026-01-23.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Accountable_Cyfrin_pr50_2026-01-30.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FXRzqYVrIbUsdL6pomQzE%2FAccountable_Cyfrin_pr50_2026-01-30.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19392] Accountable_Cyfrin_2025-10-16.pdf — no match: All contracts listed in the 'Audit Scope' section of the report.
- [19393] Accountable_Cyfrin_FV_2025-10-16.pdf — no match: No explicit scope section; contracts inferred from report body. Date is 'October 2025' -> last day of month.
- [19394] Accountable_Quantstamp_2025-10-28.pdf — no match: Extracted 17 contract names from the scope section and file listings. Audit date from timeline: 2025-10-16 through 2025-10-28, using end date.
- [19395] Accountable_Cyfrin_2026-01-23.pdf — no match: All contracts listed in the Audit Scope section of the report.
- [19396] Accountable_Cyfrin_pr50_2026-01-30.pdf — no match: All contracts listed in the Audit Scope section (page 3) are included. The audit date is from the cover page: January 30, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Accountable_Cyfrin_2025-10-16.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AsyncVaultFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | StrategyFactoryBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | Rewards | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | RewardsDistributorStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2025-10-16.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableVault | unmatched — not counted | — | Mentioned in Issue #4: 'In AccountableVault.sol (which is inherited by the AccountableAsyncRedeemVault...' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | Mentioned in Issue #4 and Issue #24: 'Missing controller validation in AccountableAsyncRedeemVault::requestRedeem' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | Mentioned in Issue #9: 'AccountableWithdrawalQueue can deadlock at the head...' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | FixedTerm | unmatched — not counted | — | Mentioned in 'Formal Verification Approach': 'The verification environment tests both FixedTerm and OpenTerm strategy implementations.' | no |
| Accountable_Cyfrin_FV_2025-10-16.pdf | OpenTerm | unmatched — not counted | — | Mentioned in 'Formal Verification Approach': 'The verification environment tests both FixedTerm and OpenTerm strategy implementations.' | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AsyncVaultFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | StrategyFactoryBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Quantstamp_2025-10-28.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccessBase | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | Authorizable | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FixedTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | OpenTermFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | RewardsFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | GlobalRegistry | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | GlobalRegistryStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | Rewards | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | RewardsDistributorMerkle | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | FixedTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | OpenTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | StrategyStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableVault | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_2026-01-23.pdf | AccountableWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AtomicBatcher | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | DVNPublisherFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | YieldStrategyFactory | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | DVNPublisher | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableYield | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | YieldStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableFixedTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableOpenTerm | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | AccountableStrategy | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | OpenTermStorage | unmatched — not counted | — | listed in scope | no |
| Accountable_Cyfrin_pr50_2026-01-30.pdf | StrategyStorage | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 73 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19392] Accountable_Cyfrin_2025-10-16.pdf
- [19393] Accountable_Cyfrin_FV_2025-10-16.pdf
- [19394] Accountable_Quantstamp_2025-10-28.pdf
- [19395] Accountable_Cyfrin_2026-01-23.pdf
- [19396] Accountable_Cyfrin_pr50_2026-01-30.pdf

Fork inheritance lineage and inherited audits are included when available.
