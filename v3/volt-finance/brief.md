# Agentic Audit Brief: Volt Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Volt Finance (`volt-finance`)
- Website: [https://voltswap.finance](https://voltswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $250,637.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Volt Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base. Structural roles: 17 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: unclassified (17)
- Contract kinds: contract (11), abstract (6)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BribeFactory (`0x722ccb55ab1752796cf34c12d1ea7083158ecaf9`, chain 8453)
- ControllerUpgradeable (`0x8170b318b359d85f1c91970a140d756dcd106713`, chain 8453)
- ControllerUpgradeable Impl (`0xdb8e585e8a9a7dd00e201dc288e1f7b08fd34eef`, chain 8453)
- GaugeFactory (`0x5abeaf061f81bf966f7ac9bb2ad16bf9e421cca2`, chain 8453)
- MinterUpgradeable (`0x87ae7d4853febd2c3450e6d85c5233aa9e7186a5`, chain 8453)
- MinterUpgradeable Impl (`0x86fddc06abb5b0a0f2cbcc133880a55f80038cb8`, chain 8453)
- Multicall2 (`0x96ffa1203e4479f6656a21e5f00eec284dad7141`, chain 8453)
- ProxyAdmin (`0x54d5ea62d3745831192ea9c2c03b520edc312b79`, chain 8453)
- SolidlyLibrary (`0xb407883637ef802b6d17fb65c722090933e18f26`, chain 8453)
- veBOLT (`0x61e2c1608b1caa59136bcb7845637858d216c3b9`, chain 8453)
- VeDistUpgradeable (`0xcb793ffd789470ab8da3653a3fcc91aaa55e9114`, chain 8453)
- VeDistUpgradeable Impl (`0x67355688b9ec9ec4a3178f022997f0dc3474d51a`, chain 8453)
- VeUpgradeable Impl (`0x93de053520d42b3f74281852bd56f232a4e643da`, chain 8453)
- VoltFactory (`0x2a5478be24f9e536ccb91dbf650efd6ce6c00398`, chain 8453)
- VoltRouter01 (`0x682521e88cc71a8d49a3635bab4468ad7cd7d208`, chain 8453)
- VoltVoterUpgradeable (`0x6eec5ff9736e619c376bd866ddf5937f3efbd4ca`, chain 8453)
- VoltVoterUpgradeable Impl (`0xb14900cc638f84a3e4f167a2776502c7bcd42cdd`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (16 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 17 of 20 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BOLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-396368 | `0x863656e346d8a42ec7caaad606611b6fd8916f32` | ⚠️ Unaudited |
| BribeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396366 | `0x722ccb55ab1752796cf34c12d1ea7083158ecaf9` | ⚠️ Unaudited |
| ControllerUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396367 | `0x8170b318b359d85f1c91970a140d756dcd106713` | ⚠️ Unaudited |
| ControllerUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396377 | `0xdb8e585e8a9a7dd00e201dc288e1f7b08fd34eef` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396360 | `0x5abeaf061f81bf966f7ac9bb2ad16bf9e421cca2` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396370 | `0x87ae7d4853febd2c3450e6d85c5233aa9e7186a5` | ⚠️ Unaudited |
| Multicall2 | unknown | project_anchor | own_supporting | 0 | base | unit-396372 | `0x96ffa1203e4479f6656a21e5f00eec284dad7141` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-396359 | `0x54d5ea62d3745831192ea9c2c03b520edc312b79` | ⚠️ Unaudited |
| SolidlyLibrary | unknown | project_anchor | own_supporting | 0 | base | unit-396375 | `0xb407883637ef802b6d17fb65c722090933e18f26` | ⚠️ Unaudited |
| veBOLT | unknown | project_anchor | own_supporting | 0 | base | unit-396361 | `0x61e2c1608b1caa59136bcb7845637858d216c3b9` | ⚠️ Unaudited |
| VeDistUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396376 | `0xcb793ffd789470ab8da3653a3fcc91aaa55e9114` | ⚠️ Unaudited |
| VeDistUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396362 | `0x67355688b9ec9ec4a3178f022997f0dc3474d51a` | ⚠️ Unaudited |
| VeUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396371 | `0x93de053520d42b3f74281852bd56f232a4e643da` | ⚠️ Unaudited |
| VoltFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396358 | `0x2a5478be24f9e536ccb91dbf650efd6ce6c00398` | ⚠️ Unaudited |
| VoltRouter01 | unknown | project_anchor | own_supporting | 0 | base | unit-396363 | `0x682521e88cc71a8d49a3635bab4468ad7cd7d208` | ⚠️ Unaudited |
| VoltVoterUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396364 | `0x6eec5ff9736e619c376bd866ddf5937f3efbd4ca` | ⚠️ Unaudited |
| VoltVoterUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396374 | `0xb14900cc638f84a3e4f167a2776502c7bcd42cdd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MinterUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396369 | `0x86fddc06abb5b0a0f2cbcc133880a55f80038cb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-396365 | `0x71e60281614222354c6078625c73cec13a0dccab` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-396373 | `0xa023e6f6b4862ea38cbe45e377abd908abab2f82` | ❓ Unverified |

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
| needs_review | 20 |

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
