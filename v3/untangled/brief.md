# Agentic Audit Brief: Untangled

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Untangled (`untangled`)
- Website: [https://untangled.finance/](https://untangled.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, celo, polygon
- Contract surface: 24 unique implementations (29 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $302,785.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Untangled. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, celo, polygon. Structural roles: 3 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (3), erc4626 (3)
- Frameworks: openzeppelin (5), axelar (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ModuleFactory (`0x974e1f...a0bc9e`, chain 137)
- ModuleFactory (`0xbdc819...8f6155`, chain 42220)
- Vault (`0x3f48e0...553e32`, chain 137)
- Vault (`0x4a3f7d...7d31a9`, chain 42161)
- Vault (`0x2a68c9...51343f`, chain 42220)
- VaultFactory (`0x73eacd...d8dbb6`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 7 of 24 unique; 17 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 24
- Raw deployments: 29
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GlobalPriceValuation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xd28a91...1b2019`; polygon `0xe9e02e...763bad` | ⚠️ Unaudited |
| Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x48b38b...cf6bff`; polygon `0xfa171a...6a5036` | ⚠️ Unaudited |
| ModuleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dcc7a...6ba4c2` | ⚠️ Unaudited |
| ModuleFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-395346 | `0x974e1f...a0bc9e` | ⚠️ Unaudited |
| ModuleFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-395350 | `0xbdc819...8f6155` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a3f7d...7d31a9` | ⚠️ Unaudited |
| StableCoinOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x320f08...be501d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x237f75...7247d6`; polygon `0x2d4500...20cd3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd216cb...a58850`; polygon `0xf2742c...34b62c` | ⚠️ Unaudited |
| ValuationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10761d...5d72d9` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x02c25a...b38a48`; polygon `0xf532b7...3d4c0d` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-395345 | `0x3f48e0...553e32` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-395347 | `0x4a3f7d...7d31a9` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | celo | unit-395348 | `0x2a68c9...51343f` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-395344 | `0x256288...6be45b` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49421f...00d627` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-395349 | `0x73eacd...d8dbb6` | ⚠️ Unaudited |
| WithdrawModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa40173...8393a5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04d5b4...0636fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08ce5e...73604f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ef0f6...b920f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4eda56...baf02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a805e...320a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95b304...16cf4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Untangled_FInance_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Untangle_Protocol_Audit/Untangled_FInance_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Octo_Lend_Report_ba51eb961d.pdf](https://strapi-rv-bucket-01.s3.us-east-2.amazonaws.com/Octo_Lend_Report_ba51eb961d.pdf) | Runtime Verification | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [VAR-Untangled-250508-vaults-V2.pdf](https://veridise.com/wp-content/uploads/2025/07/VAR-Untangled-250508-vaults-V2.pdf) | Veridise | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14062] Untangled_FInance_Audit_Report.pdf — no match: Extracted contract names from source file paths in findings and access control sections. Audit date from cover page.
- [14063] Octo_Lend_Report_ba51eb961d.pdf — no match: Extracted contract names from scope section and file paths. The audit report date is explicitly stated as 'Delivered: March 20, 2026' on the cover page.
- [14064] VAR-Untangled-250508-vaults-V2.pdf — no match: Scope section 3.3 explicitly lists 6 smart contract files and 2 backend modules. Audit date is May 22, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Untangled_FInance_Audit_Report.pdf | Pool | unmatched — not counted | — | Source in finding 5.1.1 | no |
| Untangled_FInance_Audit_Report.pdf | UniqueIdentity | unmatched — not counted | — | Source in finding 5.1.2 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationManager | unmatched — not counted | — | Source in findings 5.1.3, 5.2.1, 5.3.2, 5.3.3, 5.4.2, 5.4.3 | no |
| Untangled_FInance_Audit_Report.pdf | MintedNormalTGE | unmatched — not counted | — | Source in findings 5.3.1, 5.4.5, 5.4.6 | no |
| Untangled_FInance_Audit_Report.pdf | NoteTokenFactory | unmatched — not counted | — | Source in finding 5.3.3 | no |
| Untangled_FInance_Audit_Report.pdf | TokenGenerationEventFactory | unmatched — not counted | — | Source in finding 5.3.3 | no |
| Untangled_FInance_Audit_Report.pdf | LoanKernel | unmatched — not counted | — | Source in finding 5.3.4 | no |
| Untangled_FInance_Audit_Report.pdf | NoteToken | unmatched — not counted | — | Source in finding 5.3.5 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationPool | unmatched — not counted | — | Mentioned in Access Control Analysis section 7.1 | no |
| Untangled_FInance_Audit_Report.pdf | NoteTokenVault | unmatched — not counted | — | Mentioned in Access Control Analysis section 7.3 | no |
| Untangled_FInance_Audit_Report.pdf | ProxyAdmin | unmatched — not counted | — | Source in finding 5.4.4 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationManagerBase | unmatched — not counted | — | Mentioned in finding 5.4.3 as abstract contract in same file | no |
| Octo_Lend_Report_ba51eb961d.pdf | LendingMarket | unmatched — not counted | — | Scope section: './contracts/lending-market: Contains the implementation of the lending market contract' | no |
| Octo_Lend_Report_ba51eb961d.pdf | CollateralVault | unmatched — not counted | — | Scope section: './contracts/collateral-vault: Implements a tokenized vault' | no |
| Octo_Lend_Report_ba51eb961d.pdf | VaultClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| Octo_Lend_Report_ba51eb961d.pdf | MarketClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| Octo_Lend_Report_ba51eb961d.pdf | InterestRateModelClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| VAR-Untangled-250508-vaults-V2.pdf | error.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | lib.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | offer.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | redeem_request.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | storage_types.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | vault.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | pricing.ts | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | asset.ts | unmatched — not counted | — | listed in scope section 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x974e1f...a0bc9e` | ModuleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3f48e0...553e32` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4a3f7d...7d31a9` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2a68c9...51343f` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x256288...6be45b` | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [14062] Untangled_FInance_Audit_Report.pdf
- [14063] Octo_Lend_Report_ba51eb961d.pdf
- [14064] VAR-Untangled-250508-vaults-V2.pdf

Fork inheritance lineage and inherited audits are included when available.
