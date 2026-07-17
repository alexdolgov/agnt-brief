# Agentic Audit Brief: Nested

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Nested (`nested`)
- Website: [https://nested.fi](https://nested.fi)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 79 unique implementations (79 raw deployments)
- Coverage basis: 4/5 confirmed own live verified implementations (80.0%); conservative 80.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,324.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nested. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, avalanche, bsc, ethereum, optimism, polygon. Structural roles: 3 supporting, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: supporting (3), core (2)
- Contract kinds: contract (5)
- Detected standards: ownable (3)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FlatOperator (`0x2a3c3d80e93501e751e5b6f355f396e831f26989`, chain 42161)
- NestedReserve (`0x0535f1f43ee274123291bbab284948caed46c65d`, chain 1)
- OperatorResolver (`0x04a7307e94fd83b2fe88537729640ea7a0ad376b`, chain 1)
- ZeroExOperator (`0x1db81116467789b7dcc3b070ee8f5aa4d90d6940`, chain 1)
- ZeroExStorage (`0xa19d093d24d345fa25424d15202cab00a5fabe65`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/5 (80.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 61 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 79 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/18
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 80.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 22.2% | 2022-06 |
| Red4Sec | Tier 2 | 3 | 16.7% | 2021-11 |
| PeckShield | Tier 2 | 1 | 5.6% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NestedReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248875 | `0x0535f1f43ee274123291bbab284948caed46c65d` | ✅ Audited |
| OperatorResolver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248873 | `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` | ✅ Audited |
| ZeroExOperator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248877 | `0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` | ✅ Audited |
| ZeroExStorage | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248879 | `0xa19d093d24d345fa25424d15202cab00a5fabe65` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CREATE3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55de7264fc5c847065c69a6240d3a6c05db97eb9` | ⚠️ Unaudited |
| FeeSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27f80488078bc485c9cf5a989fcbab27d561ced9` | ⚠️ Unaudited |
| FlatOperator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248881 | `0x2a3c3d80e93501e751e5b6f355f396e831f26989` | ⚠️ Unaudited |
| NestedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | ⚠️ Unaudited |
| NestedAssetBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b2eda765282f6265101c0f72157d50f8f0eb815` | ⚠️ Unaudited |
| NestedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c457862a844f41381c5429b1cb6394192b8ed81` | ⚠️ Unaudited |
| NestedRecords | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x27f80488078bc485c9cf5a989fcbab27d561ced9` | ⚠️ Unaudited |
| OperatorScripts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c457862a844f41381c5429b1cb6394192b8ed81` | ⚠️ Unaudited |
| OwnerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x022f65aa70af76167dfa328fe27eecbe4162af49` | ⚠️ Unaudited |
| SingleCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78a7207f221b1f376a73f52dd27087b7708d829a` | ⚠️ Unaudited |
| TimelockControllerEmergency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e04e8127cf11db51d4c8841f71833af1231ebcc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x74afada131db545df782d196c8736d97593fd330` | ⚠️ Unaudited |
| Withdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0384f3b95faa3c2f48c40f15fe8bd8cd1f1f8058` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x606acc984223094f0ee3c2be64196b303763899f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6cbe14812b9d537878b975994948aeb917339331` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ca5249e3b889191980c4cb8ad6ac55727d65a55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb818de71b8acee27c17a40446012663d4c71b437` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdb714302a7ffcc9610610a01126e1257b90a67a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe24c8123c8054fb9e8c53496948c34ea59914cdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x6692de0c00dbb510ecb569700a423f2668f308a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0c8c9e75ccc490a0b861880b0ab4527e74f2cff5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe2271de54462d97551ab933c546a54a903eb02fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xfd896db057f260adce7fd1fd48c6623e023406cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0b118ec0257142ff8c24e964e9eb6e0b67b26e70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x31a2a9e625c111d98d74241c046c1117cc1d94b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x61c5fd807b0f3bde048926e802f8ab9da5eeda07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6504e4bfae814ea988100be070ff05bf9e014d50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9b8664149ab4514749cd019cba8ecd2f4da49dbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa1c7efb17e7bf68c220ee6547f24234d7dcf4e52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe3b822ef027bdbdee19c460d13f7d48f681c561b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe7bb5de7fccf974ade2fee24f62d08572995d38d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena_Nested_Analysis_Report_2021_12.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2021_12.pdf) | Code4rena | Contest | 2021-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 11 | high |
| [Code4rena_Nested_Analysis_Report_2022_04.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2022_04.pdf) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 6 | high |
| [Code4rena_Nested_Analysis_Report_2022_06.md](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Code4rena_Nested_Analysis_Report_2022_06.md) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [PeckShield-Audit-Report-Nested-v1.0.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/PeckShield-Audit-Report-Nested-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [Red4Sec_Nested_Security_Audit_Report_v3.pdf](https://github.com/NestedFinance/nested-core-lego/blob/master/audits/Red4Sec_Nested_Security_Audit_Report_v3.pdf) | Red4Sec | Audit | 2021-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24296] Code4rena_Nested_Analysis_Report_2021_12.pdf — matched: Extracted contract names from findings and scope description. The report states 29 smart contracts in scope but only lists a subset by name. Audit date from report header.
- [24297] Code4rena_Nested_Analysis_Report_2022_04.pdf — matched: Scope section states 10 smart contracts, but only 8 distinct contract names were extracted from the report text. The report mentions '10 smart contracts' but does not list all by name. Extracted names from findings and scope description.
- [24298] Code4rena_Nested_Analysis_Report_2022_06.md — matched: Scope section states 18 smart contracts; extracted all contract names from file paths and references in the report.
- [24299] PeckShield-Audit-Report-Nested-v1.0.pdf — matched: Extracted contract names from findings targets and code snippets. No explicit scope table, but contracts are clearly audited.
- [24300] Red4Sec_Nested_Security_Audit_Report_v3.pdf — matched: Scope section lists repository URL and commit hashes; contract names extracted from findings and file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code4rena_Nested_Analysis_Report_2021_12.pdf | NestedFactory | unmatched — not counted | — | mentioned in findings and scope | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | FeeSplitter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | NestedAsset | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | NestedRecords | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | OperatorResolver | own contract | OperatorResolver (selected) `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` — deployed 2022-04-09 21:54:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | NestedReserve | own contract | NestedReserve (selected) `0x0535f1f43ee274123291bbab284948caed46c65d` — deployed 2022-04-09 21:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | NestedBuybacker | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | ZeroExOperator | own contract | ZeroExOperator (selected) `0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` — deployed 2022-04-09 21:55:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | ZeroExStorage | own contract | ZeroExStorage (selected) `0xa19d093d24d345fa25424d15202cab00a5fabe65` — deployed 2022-04-09 21:55:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | ExchangeHelpers | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | OperatorHelpers | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | MixinOperatorResolver | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | DummyRouter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | WETHMock | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2021_12.pdf | INestedToken | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | NestedFactory | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | NestedRecords | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | MixinOperatorResolver | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | OperatorResolver | own contract | OperatorResolver (selected) `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` — deployed 2022-04-09 21:54:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | NestedReserve | own contract | NestedReserve (selected) `0x0535f1f43ee274123291bbab284948caed46c65d` — deployed 2022-04-09 21:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | FeeSplitter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | OwnableProxyDelegation | unmatched — not counted | — | mentioned in findings | no |
| Code4rena_Nested_Analysis_Report_2022_04.pdf | IWETH | unmatched — not counted | — | mentioned in findings as interface | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | NestedFactory | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | ParaswapOperator | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | Withdrawer | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | YearnCurveVaultOperator | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | BeefyVaultOperator | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | BeefyZapBiswapLPVaultOperator | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | BeefyZapUniswapLPVaultOperator | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | BeefyVaultStorage | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | YearnVaultStorage | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | TimelockControllerEmergency | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | OwnerProxy | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | OwnableProxyDelegation | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | MixinOperatorResolver | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | OperatorResolver | own contract | OperatorResolver (selected) `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` — deployed 2022-04-09 21:54:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena_Nested_Analysis_Report_2022_06.md | OperatorScripts | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | StakingLPVaultHelpers | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | CurveHelpers | unmatched — not counted | — | listed in scope | no |
| Code4rena_Nested_Analysis_Report_2022_06.md | ExchangeHelpers | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | NestedFactory | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004, PVE-006 | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | NestedRecords | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | NestedReserve | own contract | NestedReserve (selected) `0x0535f1f43ee274123291bbab284948caed46c65d` — deployed 2022-04-09 21:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Nested-v1.0.pdf | NestedBuybacker | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | ExchangeHelpers | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | FeeSplitter | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-006 | no |
| PeckShield-Audit-Report-Nested-v1.0.pdf | NestedAsset | unmatched — not counted | — | Mentioned in NestedFactory::create() | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | NestedAsset | unmatched — not counted | — | Referenced in scope and findings (NFSC01, NFSC02). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | NestedRecords | unmatched — not counted | — | Referenced in scope and findings (NFSC01, NFSC03, NFSC04). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | FeeSplitter | unmatched — not counted | — | Referenced in scope and findings (NFSC01, NFSC04, NFSC06, NFSC07). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | NestedFactory | unmatched — not counted | — | Referenced in scope and findings (NFSC02, NFSC03, NFSC04, NFSC11). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | NestedReserve | own contract | NestedReserve (selected) `0x0535f1f43ee274123291bbab284948caed46c65d` — deployed 2022-04-09 21:54:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | NestedBuybacker | unmatched — not counted | — | Referenced in scope and findings (NFSC04, NFSC12). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | MixinOperatorResolver | unmatched — not counted | — | Referenced in scope and findings (NFSC04, NFSC11). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | OperatorResolver | own contract | OperatorResolver (selected) `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` — deployed 2022-04-09 21:54:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | ExchangeHelpers | unmatched — not counted | — | Referenced in scope and findings (NFSC11). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | SynthetixStorage | unmatched — not counted | — | Referenced in scope and findings (NFSC04). | no |
| Red4Sec_Nested_Security_Audit_Report_v3.pdf | ZeroExStorage | own contract | ZeroExStorage (selected) `0xa19d093d24d345fa25424d15202cab00a5fabe65` — deployed 2022-04-09 21:55:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x2a3c3d80e93501e751e5b6f355f396e831f26989` | FlatOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=11

Fork inheritance lineage and inherited audits are included when available.
