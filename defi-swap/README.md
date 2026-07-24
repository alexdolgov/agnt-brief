# Agentic Audit Brief: Defi Swap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Defi Swap (`defi-swap`)
- Website: [https://crypto.com/defi/swap](https://crypto.com/defi/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $834,677.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Defi Swap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x9deb29c9a4c7a88a3c0257393b7f3335338d9a9d`, chain 1)
- UnnamedContract (`0xceb90e4c17d626be0facd78b79c9c87d7ca181b3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 24 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CroToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3c6eec8408bded9000da65afdb8a8fda99e253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b684808c9d3088ff752716c079b43082b514a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18aa23094fffd53ddda35208d5033c9b108ac1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26388d599a677c6a8bcc4c113f0a34e6ced9493d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bd1ea9101f927243f5cee1f29b12c8538812e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321106e51b78e0e9cebcfec63c5250f0f3ccb82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x458e60e21abace06585d4b4f2013691235888804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f2bc163c8758d7f88771496f7b0afde767045f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3c00df848e7f2f798593531ebd733a2cdd1f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aba3e56aeb3b95ad64161103d793fac5f6ce4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742bbea377ed35323fca5a07c879cfbe59f7fa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914a8825b29a04ae687625ecda20b67abd0b58b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bf605b392284634f8502bece9d2a2fc802f2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9622893210588ff15525ea364f3c44695fd467e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383692 | `0x9deb29c9a4c7a88a3c0257393b7f3335338d9a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa114f0ad22276431a6e6c55c7896ef8554b40004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62b9ad920bd84c32777b3d5ae34472f24e052a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad4efe99679caa3c20e128809ac9d4d106b39a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5d32babe28229071bd143b82bd98c690f6f22c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383693 | `0xceb90e4c17d626be0facd78b79c9c87d7ca181b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb1e533c60c54a3d45c6e1baef9ceb9ce934156f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0323c1dc40417d186231c55548bdfc31293b7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2efc10fad9bccc7059f8933e0bf473d7b2b0e7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 21
- Live contracts: 0
- Unknown liveness contracts: 21
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=21

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a3c6eec8408bded9000da65afdb8a8fda99e253` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b684808c9d3088ff752716c079b43082b514a00` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18aa23094fffd53ddda35208d5033c9b108ac1d3` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26388d599a677c6a8bcc4c113f0a34e6ced9493d` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bd1ea9101f927243f5cee1f29b12c8538812e7c` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x321106e51b78e0e9cebcfec63c5250f0f3ccb82b` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x458e60e21abace06585d4b4f2013691235888804` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f2bc163c8758d7f88771496f7b0afde767045f3` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b3c00df848e7f2f798593531ebd733a2cdd1f58` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6aba3e56aeb3b95ad64161103d793fac5f6ce4f7` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x742bbea377ed35323fca5a07c879cfbe59f7fa75` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x914a8825b29a04ae687625ecda20b67abd0b58b1` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95bf605b392284634f8502bece9d2a2fc802f2f8` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9622893210588ff15525ea364f3c44695fd467e7` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa114f0ad22276431a6e6c55c7896ef8554b40004` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa62b9ad920bd84c32777b3d5ae34472f24e052a5` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad4efe99679caa3c20e128809ac9d4d106b39a83` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5d32babe28229071bd143b82bd98c690f6f22c6` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb1e533c60c54a3d45c6e1baef9ceb9ce934156f` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0323c1dc40417d186231c55548bdfc31293b7e8` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef2efc10fad9bccc7059f8933e0bf473d7b2b0e7` | non_address_book | unknown | unknown | unverified | n/a | `0x546553718b1b255742566f10a34d86fc22f02b1f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [swap-protocol-audit.pdf](https://crypto.com/defi/swap-protocol-audit.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13004] swap-protocol-audit.pdf — no match: Contracts explicitly mentioned in project structure and code overview sections. Audit date found in AuditResult section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| swap-protocol-audit.pdf | CroDefiSwapRouter | unmatched — not counted | — | mentioned in project structure | no |
| swap-protocol-audit.pdf | CroDefiSwapFactory | unmatched — not counted | — | listed in code overview and findings | no |
| swap-protocol-audit.pdf | CroDefiSwapPair | unmatched — not counted | — | mentioned in project structure and code overview | no |
| swap-protocol-audit.pdf | CroDefiSwapERC20 | unmatched — not counted | — | listed in code overview | no |
| swap-protocol-audit.pdf | SafeMath | unmatched — not counted | — | listed in code overview | no |
| swap-protocol-audit.pdf | Math | unmatched — not counted | — | listed in code overview | no |
| swap-protocol-audit.pdf | UQ112x112 | unmatched — not counted | — | listed in code overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13004] swap-protocol-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
