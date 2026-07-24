# Agentic Audit Brief: Volmex

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Volmex (`volmex`)
- Website: [https://volmex.finance/](https://volmex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 13 unique implementations (15 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $133,075.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Volmex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TransparentUpgradeableProxy (`0x054fbebd2cb17205b57fb56a426ccc54caabfabc`, chain 1)
- TransparentUpgradeableProxy (`0x187922d4235d10239b2c6ccb2217ada724f56dda`, chain 1)
- TransparentUpgradeableProxy (`0x1bb632a08936e17ee3971e6eeb824910567e120b`, chain 1)
- TransparentUpgradeableProxy (`0x3ceea6a3c98c2489b09b820f62fe568b5e21e797`, chain 1)
- TransparentUpgradeableProxy (`0xa57fc404f69fce71ca26e26f0a4df7f35c8cd5c3`, chain 1)
- VolmexPositionToken (`0x2590f1fd14ef8bb0a46c7a889c4cbc146510f9c3`, chain 1)
- VolmexPositionToken (`0x3a707d56d538e85b783e8ce12b346e7fb6511f90`, chain 1)
- VolmexPositionToken (`0x51b0bcbeff204b39ce792d1e16767fe6f7631970`, chain 1)
- VolmexPositionToken (`0xc53342fd7575f572b0ff4569e31941a5b821ac76`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 13 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 13
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VolmexIndexFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-396348 | `0x3ceea6a3c98c2489b09b820f62fe568b5e21e797` | ⚠️ Unaudited |
| VolmexPositionToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396342 | `0x2590f1fd14ef8bb0a46c7a889c4cbc146510f9c3` | ⚠️ Unaudited |
| VolmexPositionToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396344 | `0x3a707d56d538e85b783e8ce12b346e7fb6511f90` | ⚠️ Unaudited |
| VolmexPositionToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396345 | `0x51b0bcbeff204b39ce792d1e16767fe6f7631970` | ⚠️ Unaudited |
| VolmexPositionToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396346 | `0xc53342fd7575f572b0ff4569e31941a5b821ac76` | ⚠️ Unaudited |
| VolmexProtocol | unknown | project_anchor | own_supporting | 2 | ethereum | unit-396347 (2 proxies) | 2 deployments: ethereum `0x187922d4235d10239b2c6ccb2217ada724f56dda`; ethereum `0xa57fc404f69fce71ca26e26f0a4df7f35c8cd5c3` | ⚠️ Unaudited |
| VolmexProtocolWithPrecision | unknown | project_anchor | own_supporting | 2 | ethereum | unit-396349 (2 proxies) | 2 deployments: ethereum `0x054fbebd2cb17205b57fb56a426ccc54caabfabc`; ethereum `0x1bb632a08936e17ee3971e6eeb824910567e120b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1108bf25284fa4d634ff66cbd006d633a8fc0967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abcfc3aabb0a45550d154ea2439ada14879a8a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x873484f654a7203296931f529680449e8a642898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c89185c0fdf4d73c559d683e0ac1ad8ff010d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf87072ac4722431861837492edf7adbfec0efa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8058751d7b1a44c2a44801e0a8e5843f7708876` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 0
- Unknown liveness contracts: 6
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=6

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x1108bf25284fa4d634ff66cbd006d633a8fc0967` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3abcfc3aabb0a45550d154ea2439ada14879a8a1` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x873484f654a7203296931f529680449e8a642898` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1c89185c0fdf4d73c559d683e0ac1ad8ff010d7` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf87072ac4722431861837492edf7adbfec0efa9` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8058751d7b1a44c2a44801e0a8e5843f7708876` | non_address_book | unknown | unknown | unverified | n/a | `0x85671317830357f40188aa6a55e96a3338eb4d7d` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

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
