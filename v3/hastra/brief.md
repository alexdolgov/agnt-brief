# Agentic Audit Brief: Hastra

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Hastra (`hastra`)
- Website: [https://hastra.io/](https://hastra.io/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 11 unique implementations (20 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $407,592,146.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hastra. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum. Structural roles: 7 unclassified, 3 core, 2 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (7), core (3), infra (2)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (5), accesscontrol (3), erc165 (3), pausable (3), erc20 (2), erc20permit (2), erc4626 (2)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 5

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 12; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 11
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoStakingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241742 | 2 deployments: ethereum `0x609a62efe553ec177c0472625bbf89725bd10b2b`; ethereum `0x997e2efbce91d170b00ea402e35a66c887ee1da9` | ⚠️ Unaudited |
| FeedVerifier | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241744 | 2 deployments: ethereum `0xbc6023cb49f8e8ca6cef563d5fd97ba4c6a5d937`; ethereum `0xdf4ab20fa7752be52e41e42f1fd667f37964d6a3` | ⚠️ Unaudited |
| HastraAutoNavEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c331b892f193fcdbb9f9c2f227fe56c6169f443`; ethereum `0xd524523e56fce26eb427301aee6c82b66129bc75` | ⚠️ Unaudited |
| HastraAutoNavEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x748d0731738e68c7e2d693ccae56c82fd7b14da3`; ethereum `0xc38479c4f1155a6b3d839f33f70d4a9923e24af3` | ⚠️ Unaudited |
| HastraNavEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241740 | 2 deployments: ethereum `0x1376de100324d42337f1a2c08351d7242f30c3a7`; ethereum `0xfed839b6ba09c1abf4c768aba0eca50746e4eca9` | ⚠️ Unaudited |
| HastraSMBNavEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9fd0b0ef9fb4591a7c315bc19f0fb29a9edb019e`; ethereum `0xbea0bfc28861eb1d0832a9d5689aa7c558e9d76d` | ⚠️ Unaudited |
| SMBStakingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241741 | 2 deployments: ethereum `0x49c62f9c3d7d401a7933e2484ae88c70c9c59bec`; ethereum `0xbd49537cc9105e8c1651ed12b94cd9a3d79bf3d9` | ⚠️ Unaudited |
| StakingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241743 | 2 deployments: ethereum `0x19ebb35279a16207ec4ba82799cc64715065f7f6`; ethereum `0x90fd843c68db38e2de0618acbb39341cba5a5abd` | ⚠️ Unaudited |
| YieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241745 | 2 deployments: ethereum `0x6ad038ca6c04e885630851278ca0a856ad9a66cc`; ethereum `0xda962f7a0308e9d4f2f60c5aab94f173c26d1a1d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5a1634a86e9b7bfef33f0f3f3ea3b1abbc4cc85f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf](https://hastra.io/Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13220] Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf — no match: The report explicitly states the audit scope as the Hastra vault-mint and vault-stake Solana programs. The date is from the 'Last updated' field.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf | vault-mint | unmatched — not counted | — | mentioned as a Solana program in scope | no |
| Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf | vault-stake | unmatched — not counted | — | mentioned as a Solana program in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13220] Hastra_vault-mint_&_vault-stake_Solana_Programs_Summary_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
