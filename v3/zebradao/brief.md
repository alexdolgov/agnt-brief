# Agentic Audit Brief: ZebraDAO

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

- Project: ZebraDAO (`zebradao`)
- Website: [https://zebradao.finance/](https://zebradao.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 16 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $401,169.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for ZebraDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 16
- Raw deployments: 21
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
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x798937a81cea1cc124545210b6b45719516b3e42`; base `0xc5a8410519e9daeb7b4e47d92e0fe60f684d14ee` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2029935c53e28a7c481d50dbd16d0570cf6f9494`; base `0x8b51143530a92f703c954ab0d261ef688d9d93f1` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4b20dbdd4d5a7a762f788796df5e0487007c6b36`; base `0xfc7492553bab57c8f1f58d5bb04825c89cd79feb` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42b4a20d0b381ad9539a2f01f346245abbed4ed` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbea1d596ae022fae90d84ffaf0907e38a25ed6e7`; base `0xf82f6878f12fd10ee08a8fa9ff286de3b83a71ff` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe779696e43df41c23c1a4d190ac8144c4250199d` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4da03b673e9b3a21e76ab389c6cf145bfb7b7e05` | ⚠️ Unaudited |
| StakedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0b42a3d7290a94df04cf4193f62856950a5f5f89`; base `0x5e615b527df06cb1272b22f43e2716101ca90e78` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5366523cb3dcefb854eb81913fef1abf8cb11378` | ⚠️ Unaudited |
| Token | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263664 | `0xf0ce1d83b5fc9c67f157d8b97fd09e2cf8af899e` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15682f9a45a2eaff039a5884105b8139c3b4f9c7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5346fa63509ed9deef2795ed62f5cc84a5f2ab00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x622086b9945f4df9e305c0bbce5df185a1ad4577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3bc013f09c8bca4b52a7d29c236352021f7a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdebd38133a19aaf213836cf4b1c81a5013321fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7576878421ba6d0f5f6e13979fd96994a3fa8b8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 10
- Live contracts: 0
- Unknown liveness contracts: 10
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=10

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x2029935c53e28a7c481d50dbd16d0570cf6f9494` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0x5346fa63509ed9deef2795ed62f5cc84a5f2ab00` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0x5e615b527df06cb1272b22f43e2716101ca90e78` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0x622086b9945f4df9e305c0bbce5df185a1ad4577` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0x9e3bc013f09c8bca4b52a7d29c236352021f7a96` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0xbdebd38133a19aaf213836cf4b1c81a5013321fc` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0xc5a8410519e9daeb7b4e47d92e0fe60f684d14ee` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0xe7576878421ba6d0f5f6e13979fd96994a3fa8b8` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0xf82f6878f12fd10ee08a8fa9ff286de3b83a71ff` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |
| unverified unclassified | UnnamedContract<br>`0xfc7492553bab57c8f1f58d5bb04825c89cd79feb` | non_address_book | unknown | unknown | unverified | n/a | `0xd818ea2af0778652f825a40f3fa91d5eaac1802f` |

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
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

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
