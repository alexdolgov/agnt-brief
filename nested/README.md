# Agentic Audit Brief: Nested

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Nested (`nested`)
- Website: [https://nested.fi](https://nested.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 275 unique implementations (276 raw deployments)
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
- Outside the address book: 209 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 275 unique; 270 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/18
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 257
- Unique implementations: 275
- Raw deployments: 276
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
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x74afada131db545df782d196c8736d97593fd330`; bsc `0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | ⚠️ Unaudited |
| Withdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0384f3b95faa3c2f48c40f15fe8bd8cd1f1f8058` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (257)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a355d004f378eaca8c7caba8ca149b54cedd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1734a5eab695d9b7c678adaa9a479dbb88897660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27f80488078bc485c9cf5a989fcbab27d561ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c6e25b2b7cf95afd323905ecb4901eed31043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x606acc984223094f0ee3c2be64196b303763899f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6461410f4dfd09a80370daeaa8ec0bf35289d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6cbe14812b9d537878b975994948aeb917339331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74afada131db545df782d196c8736d97593fd330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85ead69b280c4d593e96d326eb3fde0d600b0ede` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fae1ac300eb2643120e1cca40c83b032f4a1637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94598f09fa38ccf3c619dcbf72b9935e5064f674` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ca5249e3b889191980c4cb8ad6ac55727d65a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93035edcc132fb266a6fa43b27220ded45eade6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf85848cd9877c5ea0d238cca32fe7806dce878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48fd73faf94fa1d2852e5474ea76af4299d4402` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb818de71b8acee27c17a40446012663d4c71b437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc106c292db0176be602d4d9b340473fecc99edf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d813e31558b45769b83e33fe10cdef76128ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdb714302a7ffcc9610610a01126e1257b90a67a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe24c8123c8054fb9e8c53496948c34ea59914cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d4c812eb4d249340d691ca373767736b75e911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1734a5eab695d9b7c678adaa9a479dbb88897660` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b2eda765282f6265101c0f72157d50f8f0eb815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3a506575bf5202ef846ce4c88eea8adfba63f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3d8a79ed1e21e6295a24dc4fe5462e8473666259` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40c6e25b2b7cf95afd323905ecb4901eed31043a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44a9fe115ef9d718821b62ece50607bcb334d29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61634a46e6e58581253452844bc0c82bda7d46a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x6692de0c00dbb510ecb569700a423f2668f308a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x743fdf479b8894fc6dd24f92823659934dd30d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x74afada131db545df782d196c8736d97593fd330` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86027f965539279cc3ac752ca5940b6cac6ebc99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9cf434dc3d2ac5f8d203e56c1320fd7b098de5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ee92a94a8ace98f36f19b35091c34e9d9bccd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5c5aeae9fb5424f9ab6d2e4c1c108f988ae3f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae5fab55c6aa6bba24eef3fb98c48a0b616b163d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd87c56d1698e52f6e3363b9ffd09b0afd46dda8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2271de54462d97551ab933c546a54a903eb02fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf81072908070a0f290ef149e3a93187ad1daf449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8639f6d597e1ae2b697e026218ed9bf47aefdd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0535f1f43ee274123291bbab284948caed46c65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08dab63cf6839b4fb4df48ddd50f03868431f2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b31b70d3879f8af5e5922930230793d9787a2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d320ac0b3475ef93cd41ea895b482484b538f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6b2575c11a32ede76f62b714fe8daf6360373b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12a355d004f378eaca8c7caba8ca149b54cedd54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1734a5eab695d9b7c678adaa9a479dbb88897660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27f80488078bc485c9cf5a989fcbab27d561ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3c3d80e93501e751e5b6f355f396e831f26989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31a2a9e625c111d98d74241c046c1117cc1d94b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3384527f59a483f2975b47ac2171a6499bcb13dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33b28a80b270fd96d96d1b9573b3c514b25b068c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36b54688d2f1e3e86b340d6071cc82c482249a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x412189291777c110882ab3b86f89d4e7dcb06203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42f93a591c2ef6ce52426a027f2529eef4738f5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47da55928d52fdd7584bb0fb80e5a0cf8c2fcedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49a1d717ad529eacac285f739b06ac44f037030b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57c7d068769546a1accde0d3f719f19bac461be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5eb0e26a66f0fa0e32a05585a2711c3b84cb53d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x618af9ef830c98f999e763dac36273a51a8f230c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6504e4bfae814ea988100be070ff05bf9e014d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x657d5487ef541afb024dc17e1ee3baa4cec796f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x659e59b13dfa339453a70969ab1594059b32aacf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cbe14812b9d537878b975994948aeb917339331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e2b0638963e0a0dddc343cbae74d809cf9be7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x743fdf479b8894fc6dd24f92823659934dd30d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75b03e73e80603f92a590c85f5bab79af863cbe5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8800e7ee18942c36abff9213a187147b0167fe32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b8664149ab4514749cd019cba8ecd2f4da49dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ee92a94a8ace98f36f19b35091c34e9d9bccd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa27ebbf168846c24cc7dc1f4ebff7d8495dae71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb665bb852b9e89dab71e77b167906c562b1cf78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb818de71b8acee27c17a40446012663d4c71b437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbde3b03d77f2fbb1e2f1c6e511e4f2370b1896ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc957425e9c058a5ab932bf9e3c110543d52c17f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd7249eba79d51bfd31d6e8d64c5794fab266ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd11cbde4513d2ccce81a84c183f98e6bba54fe90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd81b8221f57eb314ab9c6606f418653ccfc90eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda4d7ab60e0779b7ccb0e0b370a914dcc1ffe3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb714302a7ffcc9610610a01126e1257b90a67a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdea1688f693cf3f47c111b20d3ec61a64f6da81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2271de54462d97551ab933c546a54a903eb02fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7bb5de7fccf974ade2fee24f62d08572995d38d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecf79cb50fdcb4e39cf91089be31a7d581f57e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7d4c812eb4d249340d691ca373767736b75e911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a8e771aff5ea7c2fabd3953812368491e3ae99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0384f3b95faa3c2f48c40f15fe8bd8cd1f1f8058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03bd874355f88f8bbe6eba654d27857ce5e9e23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04a7307e94fd83b2fe88537729640ea7a0ad376b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0535f1f43ee274123291bbab284948caed46c65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08dab63cf6839b4fb4df48ddd50f03868431f2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b118ec0257142ff8c24e964e9eb6e0b67b26e70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0c8c9e75ccc490a0b861880b0ab4527e74f2cff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d320ac0b3475ef93cd41ea895b482484b538f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e6b2575c11a32ede76f62b714fe8daf6360373b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0fff7f99d2b32849848e31cb48090c5268e06f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12a355d004f378eaca8c7caba8ca149b54cedd54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1734a5eab695d9b7c678adaa9a479dbb88897660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbf77c872cc1d4789db760a83cc36cabf3aec90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27f80488078bc485c9cf5a989fcbab27d561ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a3c3d80e93501e751e5b6f355f396e831f26989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b2eda765282f6265101c0f72157d50f8f0eb815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3384527f59a483f2975b47ac2171a6499bcb13dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33ef81a50ab5c037ba76bcfb142d3a2d589b94dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a506575bf5202ef846ce4c88eea8adfba63f760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a558b641e9a32e066955ea4cfddc10db465ef74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42f93a591c2ef6ce52426a027f2529eef4738f5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x449d088c9f184af598fe72d26742a58a11c5200f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49a1d717ad529eacac285f739b06ac44f037030b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57c7d068769546a1accde0d3f719f19bac461be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb0e26a66f0fa0e32a05585a2711c3b84cb53d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x606acc984223094f0ee3c2be64196b303763899f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x657d5487ef541afb024dc17e1ee3baa4cec796f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x659e59b13dfa339453a70969ab1594059b32aacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x692cc1d1f14799fca1d22e4d9155081075fa7c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cbe14812b9d537878b975994948aeb917339331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e2b0638963e0a0dddc343cbae74d809cf9be7e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7350cd5b8112ea4f1065e9744e2cf8f43f479f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x743fdf479b8894fc6dd24f92823659934dd30d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x746909fb72e86c785311f10389f3cd9952631114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74afada131db545df782d196c8736d97593fd330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76a881d1f8e8c07ce83abb20ef2814f854e22f8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x859cf2328070b60f8d750fd937d806e82fdf4bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b266f1d7313cf09cae4d85ca72e3a3ebbceabc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97afd0347a5afca106deca06631f938c0fdd230c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ca5249e3b889191980c4cb8ad6ac55727d65a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9dfdb5c5728ae7d280773ebf84eb68553192733a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa27ebbf168846c24cc7dc1f4ebff7d8495dae71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8e8a4eb154d18b949f733ed6e5f094dba92bf46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab6d4fa2cb1900fa98e5225dff2f414bd28f9752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabad5f133372933af0bf26cb46273876f3bbf045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb48fd73faf94fa1d2852e5474ea76af4299d4402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc106c292db0176be602d4d9b340473fecc99edf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc75356cd56c17fa87a76e4328d026fcbd15a0817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc84e75f7b33588e2287be6c026e68028b8786991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc957425e9c058a5ab932bf9e3c110543d52c17f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd7249eba79d51bfd31d6e8d64c5794fab266ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6d813e31558b45769b83e33fe10cdef76128ffc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd75af988b2282c1b466c7640b01e4b89239a72d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd81b8221f57eb314ab9c6606f418653ccfc90eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb714302a7ffcc9610610a01126e1257b90a67a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe2271de54462d97551ab933c546a54a903eb02fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe8b1970566440a9518043a30953508fa9574e3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed06bb0381b1c9dd0b1dfbf03d7123c9e37fe367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed9f6ef06a9fc8f518e08d277d0d784678888605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7d4c812eb4d249340d691ca373767736b75e911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8a8e771aff5ea7c2fabd3953812368491e3ae99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xfd896db057f260adce7fd1fd48c6623e023406cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0b118ec0257142ff8c24e964e9eb6e0b67b26e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16320fb73dc458967ce898eb8d5cb4a5b3d32f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x31a2a9e625c111d98d74241c046c1117cc1d94b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fee75e278ee137f38abd1fc9daa60198a6c84de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40c6e25b2b7cf95afd323905ecb4901eed31043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61634a46e6e58581253452844bc0c82bda7d46a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x61c5fd807b0f3bde048926e802f8ab9da5eeda07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6229bfdcf4420edf9e9631ba348e2f0d515fc767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6504e4bfae814ea988100be070ff05bf9e014d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6692de0c00dbb510ecb569700a423f2668f308a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74afada131db545df782d196c8736d97593fd330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9b8664149ab4514749cd019cba8ecd2f4da49dbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa1c7efb17e7bf68c220ee6547f24234d7dcf4e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe24c8123c8054fb9e8c53496948c34ea59914cdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe3b822ef027bdbdee19c460d13f7d48f681c561b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe7bb5de7fccf974ade2fee24f62d08572995d38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed411e856fc65d3a7acbf62a5cab46b76a980795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf81072908070a0f290ef149e3a93187ad1daf449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd896db057f260adce7fd1fd48c6623e023406cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd05606300d4b1b36f2c89ad06c5074944cbad9` | ❓ Unverified |
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

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 243
- Live contracts: 0
- Unknown liveness contracts: 243
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=46, unverified unclassified=197

Showing first 200 of 243 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x606acc984223094f0ee3c2be64196b303763899f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x6cbe14812b9d537878b975994948aeb917339331` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x9ca5249e3b889191980c4cb8ad6ac55727d65a55` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xb818de71b8acee27c17a40446012663d4c71b437` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xdb714302a7ffcc9610610a01126e1257b90a67a1` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xe24c8123c8054fb9e8c53496948c34ea59914cdf` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x0fff7f99d2b32849848e31cb48090c5268e06f65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x449d088c9f184af598fe72d26742a58a11c5200f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x6692de0c00dbb510ecb569700a423f2668f308a4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xd75af988b2282c1b466c7640b01e4b89239a72d8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x0fff7f99d2b32849848e31cb48090c5268e06f65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x449d088c9f184af598fe72d26742a58a11c5200f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xd75af988b2282c1b466c7640b01e4b89239a72d8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x0c8c9e75ccc490a0b861880b0ab4527e74f2cff5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x0fff7f99d2b32849848e31cb48090c5268e06f65` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x25fd6e8940b6fd0a5ec3b1c45216a3eb2dcd707e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x3ee96e771d5e56b34245b023e8b31ffdf36dfafd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x449d088c9f184af598fe72d26742a58a11c5200f` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xd75af988b2282c1b466c7640b01e4b89239a72d8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xe2271de54462d97551ab933c546a54a903eb02fa` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xfd896db057f260adce7fd1fd48c6623e023406cd` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x0b118ec0257142ff8c24e964e9eb6e0b67b26e70` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x31a2a9e625c111d98d74241c046c1117cc1d94b0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x61c5fd807b0f3bde048926e802f8ab9da5eeda07` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x6504e4bfae814ea988100be070ff05bf9e014d50` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0x9b8664149ab4514749cd019cba8ecd2f4da49dbc` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xe3b822ef027bdbdee19c460d13f7d48f681c561b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| exact address book overlap | UnnamedContract<br>`0xe7bb5de7fccf974ade2fee24f62d08572995d38d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0fff7f99d2b32849848e31cb48090c5268e06f65` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x12a355d004f378eaca8c7caba8ca149b54cedd54` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x150fb0cfa5bf3d4023ba198c725b6dcbc1577f21` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1734a5eab695d9b7c678adaa9a479dbb88897660` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x27f80488078bc485c9cf5a989fcbab27d561ced9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x40c6e25b2b7cf95afd323905ecb4901eed31043a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6ba6461410f4dfd09a80370daeaa8ec0bf35289d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x74afada131db545df782d196c8736d97593fd330` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x76bc5affbc9dacbc1e6a18d7135def47605bae8e` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x85ead69b280c4d593e96d326eb3fde0d600b0ede` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x8fae1ac300eb2643120e1cca40c83b032f4a1637` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x94598f09fa38ccf3c619dcbf72b9935e5064f674` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa93035edcc132fb266a6fa43b27220ded45eade6` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xadf85848cd9877c5ea0d238cca32fe7806dce878` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xb48fd73faf94fa1d2852e5474ea76af4299d4402` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xc106c292db0176be602d4d9b340473fecc99edf6` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xd6d813e31558b45769b83e33fe10cdef76128ffc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xd9c7cd07f3435df70b3204e1612aebb1c374d1de` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf7d4c812eb4d249340d691ca373767736b75e911` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x13e98f9a3449c7372fc4538e531dca17b0ac2e0c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1734a5eab695d9b7c678adaa9a479dbb88897660` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x2b2eda765282f6265101c0f72157d50f8f0eb815` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3a506575bf5202ef846ce4c88eea8adfba63f760` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3d8a79ed1e21e6295a24dc4fe5462e8473666259` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x40c6e25b2b7cf95afd323905ecb4901eed31043a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x44a9fe115ef9d718821b62ece50607bcb334d29a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x61634a46e6e58581253452844bc0c82bda7d46a5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x743fdf479b8894fc6dd24f92823659934dd30d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x74afada131db545df782d196c8736d97593fd330` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x86027f965539279cc3ac752ca5940b6cac6ebc99` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9cf434dc3d2ac5f8d203e56c1320fd7b098de5dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9ee92a94a8ace98f36f19b35091c34e9d9bccd54` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa5c5aeae9fb5424f9ab6d2e4c1c108f988ae3f6e` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xae5fab55c6aa6bba24eef3fb98c48a0b616b163d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xd87c56d1698e52f6e3363b9ffd09b0afd46dda8e` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xdfcfe6ad28c18f4078b9f0d52017c406ec033064` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe2271de54462d97551ab933c546a54a903eb02fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf81072908070a0f290ef149e3a93187ad1daf449` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf8639f6d597e1ae2b697e026218ed9bf47aefdd8` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x04a7307e94fd83b2fe88537729640ea7a0ad376b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0535f1f43ee274123291bbab284948caed46c65d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x08dab63cf6839b4fb4df48ddd50f03868431f2c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0b31b70d3879f8af5e5922930230793d9787a2a7` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0d320ac0b3475ef93cd41ea895b482484b538f56` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0e6b2575c11a32ede76f62b714fe8daf6360373b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x12a355d004f378eaca8c7caba8ca149b54cedd54` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1734a5eab695d9b7c678adaa9a479dbb88897660` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x27f80488078bc485c9cf5a989fcbab27d561ced9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x2a3c3d80e93501e751e5b6f355f396e831f26989` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x31a2a9e625c111d98d74241c046c1117cc1d94b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3384527f59a483f2975b47ac2171a6499bcb13dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x33b28a80b270fd96d96d1b9573b3c514b25b068c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x36b54688d2f1e3e86b340d6071cc82c482249a4a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x412189291777c110882ab3b86f89d4e7dcb06203` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x42f93a591c2ef6ce52426a027f2529eef4738f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x47da55928d52fdd7584bb0fb80e5a0cf8c2fcedc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x49a1d717ad529eacac285f739b06ac44f037030b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x57c7d068769546a1accde0d3f719f19bac461be6` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x5eb0e26a66f0fa0e32a05585a2711c3b84cb53d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x618af9ef830c98f999e763dac36273a51a8f230c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6504e4bfae814ea988100be070ff05bf9e014d50` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x657d5487ef541afb024dc17e1ee3baa4cec796f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x659e59b13dfa339453a70969ab1594059b32aacf` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6cbe14812b9d537878b975994948aeb917339331` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6e2b0638963e0a0dddc343cbae74d809cf9be7e5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x743fdf479b8894fc6dd24f92823659934dd30d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x75b03e73e80603f92a590c85f5bab79af863cbe5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x8800e7ee18942c36abff9213a187147b0167fe32` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9b8664149ab4514749cd019cba8ecd2f4da49dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9ee92a94a8ace98f36f19b35091c34e9d9bccd54` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa27ebbf168846c24cc7dc1f4ebff7d8495dae71d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xb665bb852b9e89dab71e77b167906c562b1cf78b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xb818de71b8acee27c17a40446012663d4c71b437` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xbd847b0bd0f78f46176dbab7b187ce2934ad6171` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xbde3b03d77f2fbb1e2f1c6e511e4f2370b1896ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xc2733a17418529d1fc1fea682dce9cf3649d1fef` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xc957425e9c058a5ab932bf9e3c110543d52c17f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xcd7249eba79d51bfd31d6e8d64c5794fab266ee7` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xd11cbde4513d2ccce81a84c183f98e6bba54fe90` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xd81b8221f57eb314ab9c6606f418653ccfc90eb5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xda4d7ab60e0779b7ccb0e0b370a914dcc1ffe3bf` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xdb714302a7ffcc9610610a01126e1257b90a67a1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xdea1688f693cf3f47c111b20d3ec61a64f6da81f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe2271de54462d97551ab933c546a54a903eb02fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe7bb5de7fccf974ade2fee24f62d08572995d38d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xe8ec1a3a637c47d2a17378eb199b523bc2742272` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xecf79cb50fdcb4e39cf91089be31a7d581f57e5f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf7d4c812eb4d249340d691ca373767736b75e911` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf84d9a7ed9a885f5d81d6de6476b58682fc9a6d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xf8a8e771aff5ea7c2fabd3953812368491e3ae99` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0384f3b95faa3c2f48c40f15fe8bd8cd1f1f8058` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x03bd874355f88f8bbe6eba654d27857ce5e9e23c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x04a7307e94fd83b2fe88537729640ea7a0ad376b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0535f1f43ee274123291bbab284948caed46c65d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x08dab63cf6839b4fb4df48ddd50f03868431f2c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0b118ec0257142ff8c24e964e9eb6e0b67b26e70` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0d320ac0b3475ef93cd41ea895b482484b538f56` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0e6b2575c11a32ede76f62b714fe8daf6360373b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x0f0293b0976c076eb0dd8e81cb9dde1366fe7d77` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x12a355d004f378eaca8c7caba8ca149b54cedd54` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1734a5eab695d9b7c678adaa9a479dbb88897660` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1cbf77c872cc1d4789db760a83cc36cabf3aec90` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x1db81116467789b7dcc3b070ee8f5aa4d90d6940` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x27f80488078bc485c9cf5a989fcbab27d561ced9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x2a3c3d80e93501e751e5b6f355f396e831f26989` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x2b2eda765282f6265101c0f72157d50f8f0eb815` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x319acbcbf087f0ee74e5feffa10567c7d83f7683` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3384527f59a483f2975b47ac2171a6499bcb13dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x33ef81a50ab5c037ba76bcfb142d3a2d589b94dd` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3a506575bf5202ef846ce4c88eea8adfba63f760` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x3a558b641e9a32e066955ea4cfddc10db465ef74` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x42f93a591c2ef6ce52426a027f2529eef4738f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x49a1d717ad529eacac285f739b06ac44f037030b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x53b89bab5a8d589e5c3be4642a7128c3f27da790` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x57c7d068769546a1accde0d3f719f19bac461be6` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x5eb0e26a66f0fa0e32a05585a2711c3b84cb53d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x606acc984223094f0ee3c2be64196b303763899f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x657d5487ef541afb024dc17e1ee3baa4cec796f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x659e59b13dfa339453a70969ab1594059b32aacf` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x692cc1d1f14799fca1d22e4d9155081075fa7c31` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6bdc58d3287176b40ad2243ec0cf35f33f2119da` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6cbe14812b9d537878b975994948aeb917339331` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x6e2b0638963e0a0dddc343cbae74d809cf9be7e5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x7350cd5b8112ea4f1065e9744e2cf8f43f479f81` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x743fdf479b8894fc6dd24f92823659934dd30d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x746909fb72e86c785311f10389f3cd9952631114` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x74afada131db545df782d196c8736d97593fd330` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x76a881d1f8e8c07ce83abb20ef2814f854e22f8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x859cf2328070b60f8d750fd937d806e82fdf4bc2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x8792f0ee8e1dcfcdf69421fe98b9eb4752191fe5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x8b266f1d7313cf09cae4d85ca72e3a3ebbceabc4` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x97afd0347a5afca106deca06631f938c0fdd230c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9a065e500cdcd01c0a506b0eb1a8b060b0ce1379` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9ca5249e3b889191980c4cb8ad6ac55727d65a55` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0x9dfdb5c5728ae7d280773ebf84eb68553192733a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa27ebbf168846c24cc7dc1f4ebff7d8495dae71d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa8e8a4eb154d18b949f733ed6e5f094dba92bf46` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |
| unverified unclassified | UnnamedContract<br>`0xa91be36cc6ef0013046b0b0fd65fed842b11edf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd` |

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
| needs_review | 257 |

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
