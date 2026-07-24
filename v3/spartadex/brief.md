# Agentic Audit Brief: SpartaDex

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

- Project: SpartaDex (`spartadex`)
- Website: [https://spartadex.io/](https://spartadex.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, linea
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $144,171.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for SpartaDex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 24
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167538 | `0x0de811cfc8bbd855798a0da8f0fb893a20361626` | ⚠️ Unaudited |
| PaymentReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167542 | `0x933b0ea2048438c11d53dac32d283115d5245cb7` | ⚠️ Unaudited |
| Polis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167540 | `0x31449423737538cde5f60c5052f122d599471cb9` | ⚠️ Unaudited |
| PolisManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167544 | `0xebc1dd1f6560fc1045d30c0d0ac610c3336ff3de` | ⚠️ Unaudited |
| PolisMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167541 | `0x39fdd07893b8867be7b8ff02fe9b557ddc4fe17f` | ⚠️ Unaudited |
| Sparta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167539 | `0x11f98c7e42a367dab4f200d2fdc460fb445ce9a8` | ⚠️ Unaudited |
| SpartaAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167537 | `0x01b3646adb846061411da058757b944049075b22` | ⚠️ Unaudited |
| SpartaDexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | unit-167545 | `0x9e4fc4a5a0769ba74088856c229c4a1db2ea5a9e` | ⚠️ Unaudited |
| SpartaDexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | unit-167546 | `0xb64b15dfdfb9d3edacf9291b0e8a65fc52cf370b` | ⚠️ Unaudited |
| SpartaDexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | unit-167547 | `0xea2f47ac12e00e2fcc8f242561bc53bc288d399a` | ⚠️ Unaudited |
| StakedSparta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-167543 | `0xdeab92d6a3618f6d830c925d7ae8f1c87eecf01f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4922033d7f69aefce218032f2cdf5d700bbbd5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f5303d51a0b37d687a7ab228455062a3befb152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x525b69ef9ffc368a9a30632c5c20dd04efabfc30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64f03d946c91eea501ba33ea68fac20bd20df0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b9392d07fc8c8f82b1c03da8f662ec2867b0be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x89ae36e3b567b914a5e97e6488c6eb5b9c5d0231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e4fc4a5a0769ba74088856c229c4a1db2ea5a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea2f47ac12e00e2fcc8f242561bc53bc288d399a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf573695427f5afc3ef48a511c5097db936357fc7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfe8ec10fe07a6a6f4a2584f8cd9fe232930eaf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01b3646adb846061411da058757b944049075b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x11f98c7e42a367dab4f200d2fdc460fb445ce9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdeab92d6a3618f6d830c925d7ae8f1c87eecf01f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 11
- Live contracts: 0
- Unknown liveness contracts: 11
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=11

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4922033d7f69aefce218032f2cdf5d700bbbd5e8` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f5303d51a0b37d687a7ab228455062a3befb152` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x525b69ef9ffc368a9a30632c5c20dd04efabfc30` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64f03d946c91eea501ba33ea68fac20bd20df0c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79b9392d07fc8c8f82b1c03da8f662ec2867b0be` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e4fc4a5a0769ba74088856c229c4a1db2ea5a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xea2f47ac12e00e2fcc8f242561bc53bc288d399a` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf573695427f5afc3ef48a511c5097db936357fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| linea | unverified unclassified | UnnamedContract<br>`0x01b3646adb846061411da058757b944049075b22` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| linea | unverified unclassified | UnnamedContract<br>`0x11f98c7e42a367dab4f200d2fdc460fb445ce9a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |
| linea | unverified unclassified | UnnamedContract<br>`0xdeab92d6a3618f6d830c925d7ae8f1c87eecf01f` | non_address_book | unknown | unknown | unverified | n/a | `0x6bce94043eeebf0ec23c9b3d1238819eecefe278` |

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
| native | 11 |
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
