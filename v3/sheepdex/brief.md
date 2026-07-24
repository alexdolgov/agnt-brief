# Agentic Audit Brief: SheepDex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SheepDex (`sheepdex`)
- Website: [https://sheepdex.org/](https://sheepdex.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 62 unique implementations (62 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $372,735.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SheepDex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SPCToken (`0x6a428ff9bfec2c8f676b8c905d49146c6106af90`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 62 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/16
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 62
- Raw deployments: 62
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 6.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SPCToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-392401 | `0x6a428ff9bfec2c8f676b8c905d49146c6106af90` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41d534cc6c03a05b539e0fefca5b31846b8f4201` | ⚠️ Unaudited |
| MigrationToken2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x102ddeb4cfa109b88cc7794e3299da49fe0947f9` | ⚠️ Unaudited |
| NFTPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x199ddb7b7b85f57832fdc081604405a0f3b1ca8b` | ⚠️ Unaudited |
| Operatable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0dbd3bd77559db7b7b6c8a4da5411a6d3eceaa` | ⚠️ Unaudited |
| PositionReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542bb4c30059dec4a9dff9533e901ef6cd84b7da` | ⚠️ Unaudited |
| PositionView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0052afdcf83e66ffcde46b96ebd56163ed56cde` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265d79926f406b97887bb3edc59db66e07f17d51` | ⚠️ Unaudited |
| SpcDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17fa4d6c9e34d4a5c9e331b7925bd49980851bed` | ⚠️ Unaudited |
| SPCTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3a8df6bf63a505fada1bca5710e20325a989ff` | ⚠️ Unaudited |
| SpeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x571521f8c16f3c4ed5f2490f19187ba7a5a3cbdf` | ⚠️ Unaudited |
| SwapDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c0c5c2722d511205d1a290490ebaf9940941e5` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58469aee3436a000698d0a8e648f5d14f31ee019` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48886f3cfa0c7bca0672bbfa4bee5d6d63dad319` | ⚠️ Unaudited |
| TestCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0235d8b9f6e5c4f85ed93ba6a09512ad9a5e7ea6` | ⚠️ Unaudited |
| vSpcToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d52d502a1526ecd49744610f9461b4c69950c3f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x010b0c7ea24897c7495518a58a3310cf86a247dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x045f0b1708170d42a003ea89182e58fa1df76aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aa4196e8161f705cb33ff6e8f07beee5cd08537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e895f8fe7f2509521c2ae30441eec60084ddc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152c83622bf40cad6645ca08d9696ddde954c7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e9dbb1684c5dc68184e7ab8e8587b755fdb00bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3348ad21dcd335b93be71316ed956aff3132fb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f4f052687e765a147f2571257e01faeb355c817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4db327dbe3fb5aa5d512b9336b46614062fe3a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57f1d703f793522b5c7c641df20f25d57fa45fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5d40ecc786b2490a2d10a7795107e94feed091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fbe54c589d3ac30dcd8fdd4fcb84c1b43f1f552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72e3ebeaa5d6871d3f0c840f9a38273e572c7773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x754ca67efd5951960c43dd78063277ec50a86628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76beb8586b785ef23d09c732309581a36ccf45ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aba42caf3aed34c2838d707a295e016af04dc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e65ad65f07e211998893b7e4a9db26582c1dc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f59da9e1a85907b8ac5754889607523117ebf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x846e8588bf7254da3f997b4ce02349965967805f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d6aa4d0cec1b49a1f738a7c6ebd7c1aaafafc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x923f3e64fc753c55fe4efda86f1fd7b75ca02c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x940342b10d73f8a00b672e23accce6bd0587c458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95c883ae92fb3d8595274a1ff169527edb252b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9746db2cd555936856c3c55f950db766d6ceecbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x981feb80c7074726e1931617d588ad5adb75cb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5c2093d9fa80b40f670dfb193c007fc0239e4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa99a11eed48d0e9f06d29e3714e7c1fc849c4dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacf93576f2e686ce9d52b913e41e0126e35a8fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadc086794800c845231cb674b7b404c214f2fc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae24796bc6862a4f69f4aa2ebf0660ad4abf17f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7c9a08805fd1c082d2e5caaeb7e507de79bcd04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8b5caf2cae79a4a327c5d396c88faa8c5c869f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc923424f6f59595e3b82c56fc796bbfa3af6f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdb3901b757489ba992c6edf098798a05ffd5e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe5d0726e16e167e04bec0861ad716980e09ade3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67a54d5e08e59fb70dd29d81350c6ff4562d544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc683562b5138c721d179dd391c21e9e5bb6808da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7daad52155fd4353b86d6b4c5d32d6b65672f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc962fe3dbb0e9f243638e7da2253525b60b1b1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd87782a717f40542e18c61ebb7210d3132e17d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe085261c499777dd3410b97d61dc7e76a7b7a337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf29852f5de1958cadfa3879712b724cf1c2ac81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf312943df52cd3daf40ef12d87570de63e4bb9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf371c22d0cb213758d094a4124e3db923b75dffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd06304910f08ad7dbc4aceddda4caee402c3a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd183c0ddc6bcb611984b0f0a869fa21f21ca667` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 46
- Live contracts: 0
- Unknown liveness contracts: 46
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=46

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x010b0c7ea24897c7495518a58a3310cf86a247dc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x045f0b1708170d42a003ea89182e58fa1df76aec` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x0aa4196e8161f705cb33ff6e8f07beee5cd08537` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x0e895f8fe7f2509521c2ae30441eec60084ddc8a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x152c83622bf40cad6645ca08d9696ddde954c7df` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x2e9dbb1684c5dc68184e7ab8e8587b755fdb00bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x3348ad21dcd335b93be71316ed956aff3132fb21` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x3f4f052687e765a147f2571257e01faeb355c817` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x4db327dbe3fb5aa5d512b9336b46614062fe3a6b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x57f1d703f793522b5c7c641df20f25d57fa45fb7` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x5e5d40ecc786b2490a2d10a7795107e94feed091` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x6fbe54c589d3ac30dcd8fdd4fcb84c1b43f1f552` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x72e3ebeaa5d6871d3f0c840f9a38273e572c7773` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x754ca67efd5951960c43dd78063277ec50a86628` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x76beb8586b785ef23d09c732309581a36ccf45ac` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x7aba42caf3aed34c2838d707a295e016af04dc5e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x7e65ad65f07e211998893b7e4a9db26582c1dc3d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x7f59da9e1a85907b8ac5754889607523117ebf21` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x846e8588bf7254da3f997b4ce02349965967805f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x8d6aa4d0cec1b49a1f738a7c6ebd7c1aaafafc34` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x923f3e64fc753c55fe4efda86f1fd7b75ca02c02` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x940342b10d73f8a00b672e23accce6bd0587c458` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x95c883ae92fb3d8595274a1ff169527edb252b25` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x9746db2cd555936856c3c55f950db766d6ceecbc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0x981feb80c7074726e1931617d588ad5adb75cb36` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xa5c2093d9fa80b40f670dfb193c007fc0239e4f8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xa99a11eed48d0e9f06d29e3714e7c1fc849c4dcf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xacf93576f2e686ce9d52b913e41e0126e35a8fbb` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xadc086794800c845231cb674b7b404c214f2fc2f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xae24796bc6862a4f69f4aa2ebf0660ad4abf17f4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xb7c9a08805fd1c082d2e5caaeb7e507de79bcd04` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xb8b5caf2cae79a4a327c5d396c88faa8c5c869f1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xbc923424f6f59595e3b82c56fc796bbfa3af6f89` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xbdb3901b757489ba992c6edf098798a05ffd5e98` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xbe5d0726e16e167e04bec0861ad716980e09ade3` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xc67a54d5e08e59fb70dd29d81350c6ff4562d544` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xc683562b5138c721d179dd391c21e9e5bb6808da` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xc7daad52155fd4353b86d6b4c5d32d6b65672f6f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xc962fe3dbb0e9f243638e7da2253525b60b1b1ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xcd87782a717f40542e18c61ebb7210d3132e17d8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xe085261c499777dd3410b97d61dc7e76a7b7a337` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xf29852f5de1958cadfa3879712b724cf1c2ac81f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xf312943df52cd3daf40ef12d87570de63e4bb9f1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xf371c22d0cb213758d094a4124e3db923b75dffc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xfd06304910f08ad7dbc4aceddda4caee402c3a30` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |
| unverified unclassified | UnnamedContract<br>`0xfd183c0ddc6bcb611984b0f0a869fa21f21ca667` | non_address_book | unknown | unknown | unverified | n/a | `0xcf631c586ed40007ac21a53cd49405a66e94750a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SheepDEX-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SheepDEX-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [skynet.certik.com/projects/sheepdex](https://skynet.certik.com/projects/sheepdex) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21439] PeckShield-Audit-Report-SheepDEX-v1.0.pdf — matched: Audit report explicitly lists contracts in scope: SwapMining, PositionReward, TokenReward, SPCTimeLock, SPCToken, SwapRouter. RewardPool is explicitly excluded. Audit date is November 4, 2021 from cover page.
- [21441] skynet.certik.com/projects/sheepdex — no match: Extracted from Audited Files section; date from 'Last Audit was delivered on 1/5/2022' and 'Revised on 1/5/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SwapMining | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | PositionReward | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-004, PVE-005, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | TokenReward | unmatched — not counted | — | Listed in scope description and findings (PVE-001, PVE-006, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SPCTimeLock | unmatched — not counted | — | Listed in findings (PVE-002, PVE-007) | no |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SPCToken | own contract | SPCToken (selected) `0x6a428ff9bfec2c8f676b8c905d49146c6106af90` — deployed 2021-12-23 11:36:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SheepDEX-v1.0.pdf | SwapRouter | unmatched — not counted | — | Listed in findings (PVE-007) | no |
| skynet.certik.com/projects/sheepdex | DelegateERC20 | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/sheepdex | SpcDAO | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Zero-match audit list:

- [21441] skynet.certik.com/projects/sheepdex

Fork inheritance lineage and inherited audits are included when available.
