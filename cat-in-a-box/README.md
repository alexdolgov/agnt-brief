# Agentic Audit Brief: Cat in a Box

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

- Project: Cat in a Box (`cat-in-a-box`)
- Website: [https://catinabox.finance/](https://catinabox.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $152,170.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Cat in a Box in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- boxsteth (`0x7690202e2c2297bcd03664e31116d1dffe7e3b73`, chain 1)
- catinaboxcdp (`0x7f0a0c7149a46bf943ccd412da687144b49c6014`, chain 1)
- catinaboxcdp1point1 (`0x6ffd098e92b606b2947b89a08911c00ca06890fa`, chain 1)
- feeSplitStaking (`0x320c871b6f7721083604ffdd8070e64c1d3c5d7c`, chain 1)
- feeSplitToken (`0xe4b91faf8810f8895772e7ca065d4cb889120f94`, chain 1)
- GnosisSafeProxy (`0x98e6475c01d018ae78c02ef48738f687538226af`, chain 1)
- psmstart (`0x24146d1b3339cf76b455dc42e71ea5cdff4ae0d7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 7 of 14 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 14
- Raw deployments: 14
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
| boxsteth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381620 | `0x7690202e2c2297bcd03664e31116d1dffe7e3b73` | ⚠️ Unaudited |
| catinaboxcdp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381622 | `0x7f0a0c7149a46bf943ccd412da687144b49c6014` | ⚠️ Unaudited |
| catinaboxcdp1point1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381618 | `0x6ffd098e92b606b2947b89a08911c00ca06890fa` | ⚠️ Unaudited |
| feeSplitStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381616 | `0x320c871b6f7721083604ffdd8070e64c1d3c5d7c` | ⚠️ Unaudited |
| feeSplitToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381626 | `0xe4b91faf8810f8895772e7ca065d4cb889120f94` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381628 | `0x98e6475c01d018ae78c02ef48738f687538226af` | ⚠️ Unaudited |
| psmstart | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381614 | `0x24146d1b3339cf76b455dc42e71ea5cdff4ae0d7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e63d4e8bee70e26cffee2fcd50f71870c50dc50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39980c30b6977944b183b9f06e762a0f8e235d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646f46cdc7b1b8a6c6b5e0ea996b3b4424df3da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797ed3317ef4a738ef418cdc716d2610e311f673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932705a4c7f0a0aafef48dd00a77c9d2cebfd29d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-381624 | `0xae7ab96520de3a18e5e111b5eaab095312d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12bceb3336599d4c6fd022a3aafaed284102212` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 0
- Unknown liveness contracts: 6
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=6

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1e63d4e8bee70e26cffee2fcd50f71870c50dc50` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |
| unverified unclassified | UnnamedContract<br>`0x39980c30b6977944b183b9f06e762a0f8e235d03` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |
| unverified unclassified | UnnamedContract<br>`0x646f46cdc7b1b8a6c6b5e0ea996b3b4424df3da0` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |
| unverified unclassified | UnnamedContract<br>`0x797ed3317ef4a738ef418cdc716d2610e311f673` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |
| unverified unclassified | UnnamedContract<br>`0x932705a4c7f0a0aafef48dd00a77c9d2cebfd29d` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |
| unverified unclassified | UnnamedContract<br>`0xe12bceb3336599d4c6fd022a3aafaed284102212` | non_address_book | unknown | unknown | unverified | n/a | `0x56c40ade4c96800b13e20a71ff60c4005f0bcf8e` |

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
| needs_review | 14 |

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
