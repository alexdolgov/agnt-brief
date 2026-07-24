# Agentic Audit Brief: Rank Trading

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rank Trading (`rank-trading`)
- Website: [https://rank.trading/](https://rank.trading/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 30 unique implementations (45 raw deployments)
- Coverage basis: 2/12 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,804,906.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rank Trading. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across bsc. Structural roles: 8 supporting, 4 core. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (12), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (12), chainlink (11), openzeppelin-upgradeable (11), solady (11), uniswap-v3 (11)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RankFactory (`0x1563c9837f9b71ba6f69342276deda6158447227`, chain 56)
- RankFactory (`0x185f8bc81fc95bcdb8ebd8a7c4429a461931c82e`, chain 56)
- RankFactory (`0x276ee92c144a7fbe0931813cc7bb30d388a17eb8`, chain 56)
- RankFactory (`0x6e9d30690e433503d3db7001610f60290a286a3f`, chain 56)
- RankFactory (`0x7cd6ead7e0834ae8bc393ba4c933bb9e80e7dc19`, chain 56)
- RankFactory (`0x8e9fc089c7ef09cd1c8bfc7ffdf5fa00e1a90601`, chain 56)
- RankFactory (`0x95defc7388038fe97512f355686f060fa2b573f3`, chain 56)
- RankFactory (`0xab5389b054b763f9d86be0381bd6c7385e40e452`, chain 56)
- RankFactory (`0xcbabba2af00eb3c0f4ae98d14ffeb07587b5a679`, chain 56)
- RankFactory (`0xf86ada1552817637ec843a4c5eb915fc125b70db`, chain 56)
- RankStrategy (`0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd`, chain 56)
- RankToken (`0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/12 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 12 of 30 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/24
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 30
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 8.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RankStrategy | unknown | project_anchor | own_supporting | 0 | bsc | unit-266968 | `0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd` | ✅ Audited |
| RankToken | token | project_anchor | own_supporting | 0 | bsc | unit-266964 | `0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Erc20Simple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d322eb2f7149de1613f4310a73254abd08a9cc5` | ⚠️ Unaudited |
| ExposedV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x15022f35ce0837b3b524ec699ec8258a8fd23a54`; bsc `0x6c7a2ffc82c4ccd0102cb40f9b5759efa9873f9c`; bsc `0xc98f2aef92a02d3e2bcdf7522c087e851fcaa232` | ⚠️ Unaudited |
| FeeResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9b5f4b3d4796bf57dd9f23af09f310e19b4b21f` | ⚠️ Unaudited |
| FullRangeConvertor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x247358c446bf11ae2b54b96faf0e04c8089d538c`; bsc `0x4a8d60103ea88b4584e40106b776a4a1ab83a953`; bsc `0x955faea11db78851d14c8c74d0d7d6eea3c91db5` | ⚠️ Unaudited |
| FullRangeConvertorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xf678750ec4b7b8c9b2f414913de5b3781055cd71`; bsc `0xf8ec48e0022f4b59f120579dba3b472580c51066` | ⚠️ Unaudited |
| MigrateV3NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2df9b322666f89418d4b5b0432aef891128620ab`; bsc `0x51907a3be2b15b209c299d4b14f00e09caba3201`; bsc `0x6113e8ce378521e3ed8de36910d7f4d50e7892c5`; bsc `0x8a3c8be23f0c7674609894bb08368698b954d88c`; bsc `0xe4c7d00a8123cc61206c540bd2caa6924d13a52c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e155e6d6548b409b324eca1e2e59f0940c357cd` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266957 | `0x1563c9837f9b71ba6f69342276deda6158447227` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266958 | `0x185f8bc81fc95bcdb8ebd8a7c4429a461931c82e` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266959 | `0x276ee92c144a7fbe0931813cc7bb30d388a17eb8` | ⚠️ Unaudited |
| RankFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-266960 | `0x6e9d30690e433503d3db7001610f60290a286a3f` | ⚠️ Unaudited |
| RankFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-266961 | `0x7cd6ead7e0834ae8bc393ba4c933bb9e80e7dc19` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266962 | `0x8e9fc089c7ef09cd1c8bfc7ffdf5fa00e1a90601` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266963 | `0x95defc7388038fe97512f355686f060fa2b573f3` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266965 | `0xab5389b054b763f9d86be0381bd6c7385e40e452` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266966 | `0xcbabba2af00eb3c0f4ae98d14ffeb07587b5a679` | ⚠️ Unaudited |
| RankFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-266967 | `0xf86ada1552817637ec843a4c5eb915fc125b70db` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2a7af3387843e4ba9008a162e0f610d5df96ec5` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd6a07b8065f9e8386a9a5bba6a754a10a9cd1074` | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xac03f882a41553fb2d519b35874b0a551977b9d9`; bsc `0xfe88dab083964c56429baa01f37ec2265abf1557` | ⚠️ Unaudited |
| UNCX_ProofOfReservesUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0a188696d962f975250818ba028fb07f7b7eb41a`; bsc `0x0d29598ec01fa03665feead91d4fb423f393886c`; bsc `0x54460a2c022dbb80b290599156bfd735e04de1df`; bsc `0x7f5c649856f900d15c83741f45ae46f5c6858234`; bsc `0x94da79cfcaba608a1c86aca73f80918bead4bc10`; bsc `0xda9b1416452b78c82afd4eb2a42edf809c99b57f` | ⚠️ Unaudited |
| UNCX_ProofOfReservesV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1f7f21e2ea80ab110d0f95faa64655688341990` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d413f87dc653fe98f8913d7925a4882b9ad7a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x582c5ae03f55a3eb5e79f8d3e2cf9712c331a3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb8b00d4018ad6031e28a44bf74616014bfb62ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd041c5d24491dff050f40fab5d485530ebe441c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2b1c19dc746331829918fe3517a40935ebb53f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0c497ea0264f939d1d795a7a521faeca1200ec3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 30
- Live contracts: 3
- Unknown liveness contracts: 27
- Source-verified contracts: 27
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=2, contamination review=3, source verified unclassified=21, unverified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | source verified unclassified | ProxyAdmin<br>`0x9e155e6d6548b409b324eca1e2e59f0940c357cd` | non_address_book | unknown | unknown | verified | n/a | `0x34620e566226109d9180c9622d50927c39fe7dab` |
| bsc | source verified unclassified | StakingPool<br>`0xb2a7af3387843e4ba9008a162e0f610d5df96ec5` | non_address_book | unknown | unknown | verified | n/a | `0x34620e566226109d9180c9622d50927c39fe7dab` |
| bsc | currently scope matched | RankStrategy<br>`0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x43c553727425985327ebfc6ddb07729e05004f0f` |
| bsc | candidate review | RankFactory<br>`0x6e9d30690e433503d3db7001610f60290a286a3f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x43c553727425985327ebfc6ddb07729e05004f0f` |
| bsc | candidate review | RankFactory<br>`0x7cd6ead7e0834ae8bc393ba4c933bb9e80e7dc19` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x43c553727425985327ebfc6ddb07729e05004f0f` |
| bsc | contamination review | ExposedV3Math<br>`0x15022f35ce0837b3b524ec699ec8258a8fd23a54` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | contamination review | FullRangeConvertor<br>`0x247358c446bf11ae2b54b96faf0e04c8089d538c` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | contamination review | MigrateV3NFT<br>`0x2df9b322666f89418d4b5b0432aef891128620ab` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | Erc20Simple<br>`0x7d322eb2f7149de1613f4310a73254abd08a9cc5` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | ExposedV3Math<br>`0x6c7a2ffc82c4ccd0102cb40f9b5759efa9873f9c` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | ExposedV3Math<br>`0xc98f2aef92a02d3e2bcdf7522c087e851fcaa232` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | FeeResolver<br>`0xe9b5f4b3d4796bf57dd9f23af09f310e19b4b21f` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | FullRangeConvertor<br>`0x4a8d60103ea88b4584e40106b776a4a1ab83a953` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | FullRangeConvertor<br>`0x955faea11db78851d14c8c74d0d7d6eea3c91db5` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | FullRangeConvertorV2<br>`0xf678750ec4b7b8c9b2f414913de5b3781055cd71` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | MigrateV3NFT<br>`0x51907a3be2b15b209c299d4b14f00e09caba3201` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | MigrateV3NFT<br>`0x6113e8ce378521e3ed8de36910d7f4d50e7892c5` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | MigrateV3NFT<br>`0x8a3c8be23f0c7674609894bb08368698b954d88c` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | MigrateV3NFT<br>`0xe4c7d00a8123cc61206c540bd2caa6924d13a52c` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_LiquidityLocker_UniV3<br>`0xac03f882a41553fb2d519b35874b0a551977b9d9` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0x0a188696d962f975250818ba028fb07f7b7eb41a` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0x0d29598ec01fa03665feead91d4fb423f393886c` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0x54460a2c022dbb80b290599156bfd735e04de1df` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0x7f5c649856f900d15c83741f45ae46f5c6858234` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0x94da79cfcaba608a1c86aca73f80918bead4bc10` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesUniV3<br>`0xda9b1416452b78c82afd4eb2a42edf809c99b57f` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | source verified unclassified | UNCX_ProofOfReservesV2_UniV3<br>`0xf1f7f21e2ea80ab110d0f95faa64655688341990` | non_address_book | unknown | unknown | verified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d413f87dc653fe98f8913d7925a4882b9ad7a36` | non_address_book | unknown | unknown | unverified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb8b00d4018ad6031e28a44bf74616014bfb62ec` | non_address_book | unknown | unknown | unverified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0c497ea0264f939d1d795a7a521faeca1200ec3` | non_address_book | unknown | unknown | unverified | n/a | `0x692c7972cd975ef122f3d0fab5718f8a167075c6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashlock.com/audits/rank-trading](https://hashlock.com/audits/rank-trading) | unknown | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/02/RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2836] hashlock.com/audits/rank-trading — no match: The provided text is a marketing page for Hashlock's audit services, not the actual audit report. No contract names or scope details are present. The date 'January 2025' is extracted as the last day of the month.
- [2837] RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf — matched: Three contracts explicitly listed in scope table on page 7. Audit date given as 'January, 2025' which maps to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf | RankFactory | ambiguous — not counted | RankFactory (alternative) `0xf86ada1552817637ec843a4c5eb915fc125b70db` — deployed 2025-08-07 10:30:38+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x276ee92c144a7fbe0931813cc7bb30d388a17eb8` — deployed 2025-08-01 17:46:44+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x6e9d30690e433503d3db7001610f60290a286a3f` — deployed 2025-04-09 11:18:34+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0xcbabba2af00eb3c0f4ae98d14ffeb07587b5a679` — deployed 2025-08-01 17:58:27+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x7cd6ead7e0834ae8bc393ba4c933bb9e80e7dc19` — deployed 2025-04-29 15:25:39+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0xab5389b054b763f9d86be0381bd6c7385e40e452` — deployed 2025-07-29 12:27:02+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x95defc7388038fe97512f355686f060fa2b573f3` — deployed 2025-08-01 18:00:20+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x1563c9837f9b71ba6f69342276deda6158447227` — deployed 2025-08-01 17:56:36+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x185f8bc81fc95bcdb8ebd8a7c4429a461931c82e` — deployed 2025-07-29 12:26:26+03 — liveness: live (current_address_book_code)<br>RankFactory (alternative) `0x8e9fc089c7ef09cd1c8bfc7ffdf5fa00e1a90601` — deployed 2025-07-29 12:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf | RankStrategy | own contract | RankStrategy (selected) `0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd` — deployed 2025-04-09 11:18:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf | RankToken | own contract | RankToken (selected) `0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952` — deployed 2025-05-31 10:57:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x1563c9837f9b71ba6f69342276deda6158447227` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x185f8bc81fc95bcdb8ebd8a7c4429a461931c82e` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x276ee92c144a7fbe0931813cc7bb30d388a17eb8` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6e9d30690e433503d3db7001610f60290a286a3f` | RankFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7cd6ead7e0834ae8bc393ba4c933bb9e80e7dc19` | RankFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8e9fc089c7ef09cd1c8bfc7ffdf5fa00e1a90601` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x95defc7388038fe97512f355686f060fa2b573f3` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xab5389b054b763f9d86be0381bd6c7385e40e452` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcbabba2af00eb3c0f4ae98d14ffeb07587b5a679` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf86ada1552817637ec843a4c5eb915fc125b70db` | RankFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [2836] hashlock.com/audits/rank-trading

Fork inheritance lineage and inherited audits are included when available.
