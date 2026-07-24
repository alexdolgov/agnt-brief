# Agentic Audit Brief: Pell Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Pell Network (`pell-network`)
- Website: [https://pell.network/](https://pell.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ailayer, arbitrum, base, bsc, ethereum, hashkey, mantle, merlin, scroll
- Contract surface: 65 unique implementations (67 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $217,858.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Pell Network in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x230b442c0802fe83daf3d2656aadfd16ca1e1f66`, chain 56)
- UnnamedContract (`0x230b442c0802fe83daf3d2656aadfd16ca1e1f66`, chain 8453)

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 65
- Raw deployments: 67
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52537f1a015ab9785dd48a9e553f593157a98bf1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0584f8a92af95e9e441142f9e2f0b5999bd61390` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4` | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00b67e4805138325ce871d5e27dc15f994681bc1`; ethereum `0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x230b442c0802fe83daf3d2656aadfd16ca1e1f66`; ethereum `0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631ae97e24f9f30150d31d958d37915975f12ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0afade16bfd2e7f5515634f2d0e3cd03c845ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f083eafcbba2e126ad9757639c3a1e25a061a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68ac746490049fb7484bfa759c6aeec1dce0870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5346e7cdf1dcbbe06aa93bd0415c7ba337b6bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf464ecc9a295edd53c1c3832fc41c2bc394a474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf05a5afc180dbb10a3e1dd29235a6151e6088cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00b67e4805138325ce871d5e27dc15f994681bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030e0e759c468e72357b27a0e477fc7e5f7dc419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0584f8a92af95e9e441142f9e2f0b5999bd61390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0774d79d8d7d4160a3cfcb5d218a724a829d562b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f6b05eb565cb596952e991db4614a29f80e7d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x212bab76a06e80258a05fbdcc2ccbc140eb8228b` | ❓ Unverified |
| UnnamedContract | unknown | unclassified_address_book | needs_review (excluded) | 0 | bsc | unit-390710 | `0x230b442c0802fe83daf3d2656aadfd16ca1e1f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25b737513fd2588f2b0ffc8dee06d2b999f7e595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4282868539c7e22b9bc9248fd7c8196cdaeeef13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4642de2853a9f9db3080f51cda267f1e9c900971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52537f1a015ab9785dd48a9e553f593157a98bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57bf5b3492fef24a4f883135cb2aad27ce227183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f42e359cc166d79e0468f3439f952c115984286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x631ae97e24f9f30150d31d958d37915975f12ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b5a0afeda7710dc9821855e7efd3d435ce21487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f0afade16bfd2e7f5515634f2d0e3cd03c845ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ff890b47ebaa297d1aa2ace17f1e989462eb5fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c4c79bcec66cf7d0e7ed54fd56483438882c505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8765318db5488762ba6f6967394e4e130b2a0040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f083eafcbba2e126ad9757639c3a1e25a061a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93c76cc2b322e66c99ac482a6bae9b34bf49f67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad92cedf3a75611e369abda28f099f09802d2a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcf40bf27188d4d981a6063196e875245628463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf464ecc9a295edd53c1c3832fc41c2bc394a474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe049552410c7a533dd1eaedae20b527a51d343e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf05a5afc180dbb10a3e1dd29235a6151e6088cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00b67e4805138325ce871d5e27dc15f994681bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0584f8a92af95e9e441142f9e2f0b5999bd61390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c` | ❓ Unverified |
| UnnamedContract | unknown | unclassified_address_book | needs_review (excluded) | 0 | base | unit-390711 | `0x230b442c0802fe83daf3d2656aadfd16ca1e1f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52537f1a015ab9785dd48a9e553f593157a98bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 52
- Live contracts: 0
- Unknown liveness contracts: 52
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=52

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x631ae97e24f9f30150d31d958d37915975f12ed8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x6f0afade16bfd2e7f5515634f2d0e3cd03c845ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8f083eafcbba2e126ad9757639c3a1e25a061a08` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xa68ac746490049fb7484bfa759c6aeec1dce0870` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xc5346e7cdf1dcbbe06aa93bd0415c7ba337b6bc0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xcf464ecc9a295edd53c1c3832fc41c2bc394a474` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xf05a5afc180dbb10a3e1dd29235a6151e6088cc8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x00b67e4805138325ce871d5e27dc15f994681bc1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x030e0e759c468e72357b27a0e477fc7e5f7dc419` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x0774d79d8d7d4160a3cfcb5d218a724a829d562b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x1f6b05eb565cb596952e991db4614a29f80e7d71` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x212bab76a06e80258a05fbdcc2ccbc140eb8228b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x25b737513fd2588f2b0ffc8dee06d2b999f7e595` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x4282868539c7e22b9bc9248fd7c8196cdaeeef13` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x4642de2853a9f9db3080f51cda267f1e9c900971` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x52537f1a015ab9785dd48a9e553f593157a98bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x57bf5b3492fef24a4f883135cb2aad27ce227183` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x5f42e359cc166d79e0468f3439f952c115984286` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x631ae97e24f9f30150d31d958d37915975f12ed8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x6b5a0afeda7710dc9821855e7efd3d435ce21487` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x6f0afade16bfd2e7f5515634f2d0e3cd03c845ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x6ff890b47ebaa297d1aa2ace17f1e989462eb5fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x7c4c79bcec66cf7d0e7ed54fd56483438882c505` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8765318db5488762ba6f6967394e4e130b2a0040` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8f083eafcbba2e126ad9757639c3a1e25a061a08` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x93c76cc2b322e66c99ac482a6bae9b34bf49f67e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xad92cedf3a75611e369abda28f099f09802d2a5e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xbcf40bf27188d4d981a6063196e875245628463f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xcf464ecc9a295edd53c1c3832fc41c2bc394a474` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xe049552410c7a533dd1eaedae20b527a51d343e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xf05a5afc180dbb10a3e1dd29235a6151e6088cc8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x00b67e4805138325ce871d5e27dc15f994681bc1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x2d5718eaa54e5b2db5c54bb9ac10dceb01b54a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x2dfc08f4fad29761adf4cd9f1918296dc6f305c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x52537f1a015ab9785dd48a9e553f593157a98bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x8e9432e6dc7b0a1f9e8a84614502ce303b948a87` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0x92d374dd17f8416c8129f5efa81f28e0926a60b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |
| unverified unclassified | UnnamedContract<br>`0xf5a3ee38ed6a60fb9632f2e894421ce84a6a78b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2d72888e96ed3027a4bed955f4dd144fcc4c2e3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-PellNetwork-v1.0.pdf](https://github.com/0xPellNetwork/restaking-contracts/blob/main/audits/PeckShield-Audit-Report-PellNetwork-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20922] PeckShield-Audit-Report-PellNetwork-v1.0.pdf — no match: Extracted contract names from findings sections. No explicit scope table listing all contracts, but the report mentions these contracts as targets. Audit date from cover page and 'Latest Audit Report' field.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-PellNetwork-v1.0.pdf | StrategyManagerV2 | unmatched — not counted | — | mentioned in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-PellNetwork-v1.0.pdf | DelegationManagerV2 | unmatched — not counted | — | mentioned in findings PVE-001, PVE-004 | no |
| PeckShield-Audit-Report-PellNetwork-v1.0.pdf | StrategyBase | unmatched — not counted | — | mentioned in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20922] PeckShield-Audit-Report-PellNetwork-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
