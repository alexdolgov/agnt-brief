# Agentic Audit Brief: SeaFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SeaFi (`seafi`)
- Website: [https://seafi.app](https://seafi.app)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $212,279.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for SeaFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x36213ca1483869c5616be738bf8da7c9b34ace8d`, chain 43114)
- UnnamedContract (`0xdf34022e8a280fc79499ca560439bb6f9797ebd8`, chain 43114)

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
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 21 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
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
| VestingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32c8d08c742711342d19d7b3fa53286ae51104a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x031b3b4bfebdbfbecc20c41bd058e3b81666894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33ac720581be0d97cce8ddf5215880d55b61a67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34eca8850d520f489925566bcc11204b50fb2e31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392156 | `0x36213ca1483869c5616be738bf8da7c9b34ace8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44eb633fe497db34bee8273ca46f7a67e3ed356b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49f7d324c3d94c40e4e2259d3af8051ad8193477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51365665c4874ddfbd4cbc6068e5dd0408cdb7b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x717bc02f7271651fb096a33dc1bc0c2a6c94dcd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79eff504e1a163082ae82b6aaca0b433ed8fb09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e8af339e70851b000c2d84f75461a89cb32f302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fc78abacf1360a771fe82a6bd7b735db3c1e135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9428b75c87f1c827d0b0bc94932d17057b7c7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4e7f5d360314816bb0d26c36491b4f9c9a2f9e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd00ebc28da5035e64cf08ab8c080e3549daa1a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392158 | `0xdf34022e8a280fc79499ca560439bb6f9797ebd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe44284021a42fcf3aabdc8154e5cd2bb277fb830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec9b86e6d3cee1159e791fd6c6b31a19d13d2972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1fa6f960a7b7e54362efc20708edff55988fcde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbbe6987786001907b1cbbca5e87923bb79ca811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc9a172207bb8ce39500fe39ebdaf7427fd435e7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 18
- Live contracts: 0
- Unknown liveness contracts: 18
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=18

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x031b3b4bfebdbfbecc20c41bd058e3b81666894e` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x33ac720581be0d97cce8ddf5215880d55b61a67b` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x34eca8850d520f489925566bcc11204b50fb2e31` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x44eb633fe497db34bee8273ca46f7a67e3ed356b` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x49f7d324c3d94c40e4e2259d3af8051ad8193477` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x51365665c4874ddfbd4cbc6068e5dd0408cdb7b3` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x717bc02f7271651fb096a33dc1bc0c2a6c94dcd0` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x79eff504e1a163082ae82b6aaca0b433ed8fb09e` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x9e8af339e70851b000c2d84f75461a89cb32f302` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0x9fc78abacf1360a771fe82a6bd7b735db3c1e135` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xa9428b75c87f1c827d0b0bc94932d17057b7c7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xc4e7f5d360314816bb0d26c36491b4f9c9a2f9e2` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xdd00ebc28da5035e64cf08ab8c080e3549daa1a7` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xe44284021a42fcf3aabdc8154e5cd2bb277fb830` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xec9b86e6d3cee1159e791fd6c6b31a19d13d2972` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xf1fa6f960a7b7e54362efc20708edff55988fcde` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xfbbe6987786001907b1cbbca5e87923bb79ca811` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |
| unverified unclassified | UnnamedContract<br>`0xfc9a172207bb8ce39500fe39ebdaf7427fd435e7` | non_address_book | unknown | unknown | unverified | n/a | `0xcafea1a2c9f4af0aaf1d5c4913cb8ba4bf0f9842` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GGP Vault Audit Feb 19 2024.pdf](https://github.com/SeaFi-Labs/GGP-Vault/blob/main/audits/GGP%20Vault%20Audit%20Feb%2019%202024.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [GGP-Vault Audit Report Ethan Cemer.pdf](https://github.com/SeaFi-Labs/GGP-Vault/blob/main/audits/GGP-Vault%20Audit%20Report%20Ethan%20Cemer.pdf) | Ethan Cemer | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24379] GGP Vault Audit Feb 19 2024.pdf — no match: The report focuses on a single contract, GGPVault.sol, which is an ERC4626 vault. No other contracts are explicitly listed in scope.
- [24380] GGP-Vault Audit Report Ethan Cemer.pdf — no match: Only one contract (ggpVault) is explicitly mentioned in the report. No formal scope table or file listing is provided; the contract is referenced in findings and architecture description.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GGP Vault Audit Feb 19 2024.pdf | GGPVault | unmatched — not counted | — | Listed in scope as the primary contract under review; referenced in findings context. | no |
| GGP-Vault Audit Report Ethan Cemer.pdf | ggpVault | unmatched — not counted | — | Listed in scope context and findings sections (e.g., ggpVault.sol#depositYield) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [24379] GGP Vault Audit Feb 19 2024.pdf
- [24380] GGP-Vault Audit Report Ethan Cemer.pdf

Fork inheritance lineage and inherited audits are included when available.
