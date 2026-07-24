# Agentic Audit Brief: Arbitrove

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

- Project: Arbitrove (`arbitrove`)
- Website: [https://nitrocartel.finance](https://nitrocartel.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $432,772.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Arbitrove. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x254eaede62ad856ff892379a1a547213a355afdb`, chain 42161)
- UnnamedContract (`0x72f9b18f1091b1f8a0981afe44ad0123ae32524a`, chain 42161)
- UnnamedContract (`0x97893012fbe4ff00dfb18871e7dd7f6394711150`, chain 42161)
- UnnamedContract (`0x9d4903f755fc12cded3012686c2064e98b84e6b7`, chain 42161)
- UnnamedContract (`0xb49b6a3fd1f4bb510ef776de7a88a9e65904478a`, chain 42161)
- ArbitroveGovernanceToken (`0x982239d38af50b0168da33346d85fb12929c4c07`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 6 of 9 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| ArbitroveGovernanceToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-379253 | `0x982239d38af50b0168da33346d85fb12929c4c07` | ⚠️ Unaudited |
| NitroPassport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x348fdfe2c35934a96c1353185f09d0f9efbada86` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379243 | `0x254eaede62ad856ff892379a1a547213a355afdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379245 | `0x72f9b18f1091b1f8a0981afe44ad0123ae32524a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8637885f4eb8b15fa0dd31578c7b71792cf12dfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379247 | `0x97893012fbe4ff00dfb18871e7dd7f6394711150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c624d48ba675525fc88635eafc3753bb98d5d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379249 | `0x9d4903f755fc12cded3012686c2064e98b84e6b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379251 | `0xb49b6a3fd1f4bb510ef776de7a88a9e65904478a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 2
- Live contracts: 0
- Unknown liveness contracts: 2
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x8637885f4eb8b15fa0dd31578c7b71792cf12dfd` | non_address_book | unknown | unknown | unverified | n/a | `0x734601d2179f740e936b4bf7522444dee4c7c145` |
| unverified unclassified | UnnamedContract<br>`0x98c624d48ba675525fc88635eafc3753bb98d5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x734601d2179f740e936b4bf7522444dee4c7c145` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [- [Audit]()](https://docs.arbitrove.finance/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19447] - [Audit]() — no match: The provided text is a documentation index page that mentions an audit by Bipole Labs but does not list any specific contracts in scope. The link to the PDF may contain the actual scope, but it is not accessible in the given text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x982239d38af50b0168da33346d85fb12929c4c07` | ArbitroveGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [19447] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
