# Agentic Audit Brief: Dinero (pxETH)

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

- Project: Dinero (pxETH) (`redacted`)
- Website: [https://dinero.xyz](https://dinero.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Dinero (pxETH). It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20permit (2), accesscontrol (1), erc165 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (2), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- apxETH (`0x9ba021b0a9b958b5e75ce9f6dff97c7ee52cb3e6`, chain 1)
- pxETH (`0x04c154b66cb340f3ae24111cc767e0184ed00cc6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 16 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 16
- Raw deployments: 16
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| apxETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391316 | `0x9ba021b0a9b958b5e75ce9f6dff97c7ee52cb3e6` | ⚠️ Unaudited |
| pxETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391315 | `0x04c154b66cb340f3ae24111cc767e0184ed00cc6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15f1203afb3ba2bff383dc0a3d5a781dedeb44fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177d685384aa1ac5aba41b7e649f9fa0be717fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd5b73d12cb23b2835c873e4faffe83bbcef208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218c927f9159aa2a485bbd164e70b6d0b7371e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f412f33d8dd91dc6a1c76901499d6c2b194a0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x440d08d85cb12352dabac2971de81e9be702d239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55769490c825ccb09b2a6ae955203fabf04857fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bf2419a33f82f4c1f075b4006d7fc4104c43868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df0e641fc9847c0c6fde39be6253045440c14d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0d7d79735e1c63333128149c7b616a0dc0bbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd615270ab3a7a3a262a4e49935d002278c76b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd664b74274dfeb538d9bac494f3a4760828b02b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd47203098d63db1cd6562ff8c5bad5a195eaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe463e93f599693669c24dcf6292653d28c7ff4e9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 0
- Unknown liveness contracts: 14
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=14

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x15f1203afb3ba2bff383dc0a3d5a781dedeb44fc` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x177d685384aa1ac5aba41b7e649f9fa0be717fdb` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x1cd5b73d12cb23b2835c873e4faffe83bbcef208` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x218c927f9159aa2a485bbd164e70b6d0b7371e63` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x2f412f33d8dd91dc6a1c76901499d6c2b194a0e0` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x440d08d85cb12352dabac2971de81e9be702d239` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x55769490c825ccb09b2a6ae955203fabf04857fd` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x5bf2419a33f82f4c1f075b4006d7fc4104c43868` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x6df0e641fc9847c0c6fde39be6253045440c14d3` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0x9e0d7d79735e1c63333128149c7b616a0dc0bbdb` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0xcd615270ab3a7a3a262a4e49935d002278c76b78` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0xd664b74274dfeb538d9bac494f3a4760828b02b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0xdfd47203098d63db1cd6562ff8c5bad5a195eaf4` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |
| unverified unclassified | UnnamedContract<br>`0xe463e93f599693669c24dcf6292653d28c7ff4e9` | non_address_book | unknown | unknown | unverified | n/a | `0xe8ea8990643a0431e4b28f7f7f6878aab88fe424` |

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
| needs_review | 16 |

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
