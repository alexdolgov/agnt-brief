# Agentic Audit Brief: Suzaku

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Suzaku (`suzaku`)
- Website: [https://www.suzaku.network/](https://www.suzaku.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 1/24 confirmed own live verified implementations (4.2%); conservative 4.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,010,414.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Suzaku. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across avalanche. Structural roles: 15 core, 8 supporting, 2 unclassified. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: core (15), supporting (8), unclassified (2)
- Contract kinds: contract (25)
- Detected standards: erc20 (9), ownable (7), erc165 (5), accesscontrol (2), erc1967proxy (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (16), permit2 (9)
- Upgradeable-pattern rows: 16

## Fork Lineage

This project reuses audited code from **Symbiotic** (`symbiotic`) in the DefaultCollateral subsystem.
2 audits inherited from `symbiotic`, scoped to that subsystem.

Total inherited audits: 2. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

8 of 26 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

**DefaultCollateral** (`0x0cec09...aaf9af`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x1d8bd3...5fef62`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x203e91...19df0d`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x51111e...fd634d`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0x8f1dea...caee5f`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xa53e12...7d4c41`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xc96d49...8dce5a`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DefaultCollateral** (`0xe3c983...93d5b7`, chain 43114)
Origin: mantle-restaking (`0x475d3e...7c304a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x093783...47bc69`, chain 43114)
- UnnamedContract (`0xc9a25f...2471a2`, chain 43114)
- UnnamedContract (`0xdc1c44...0da403`, chain 43114)
- AvalancheL1Middleware (`0x941130...f0dc34`, chain 43114)
- DefaultCollateralFactory (`0xe52966...41a93c`, chain 43114)
- DelegatorFactory (`0x657741...c8c2be`, chain 43114)
- L1Registry (`0xaa59b1...746110`, chain 43114)
- L1RestakeDelegator (`0xd90a72...3273ef`, chain 43114)
- LSTWrapperFactory (`0xd096f4...535a77`, chain 43114)
- OperatorL1OptInService (`0x48a990...1fa574`, chain 43114)
- OperatorRegistry (`0xcccb4e...36936e`, chain 43114)
- OperatorVaultOptInService (`0xe437b5...92da47`, chain 43114)
- PoASecurityModule (`0x01daeb...56fafd`, chain 43114)
- SlasherFactory (`0x2eb000...5f4415`, chain 43114)
- SuzakuToken (`0x451532...f6f5ef`, chain 43114)
- TransparentUpgradeableProxy (`0xcff0fc...fa8ac7`, chain 43114)
- VaultFactory (`0x3e669b...75694a`, chain 43114)
- VaultHelper (`0x9985e0...1bf970`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (24 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/24 (4.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/24
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 2 (0 direct, 2 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 4.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 4.2% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DefaultCollateralFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393598 | `0xe52966...41a93c` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AvalancheL1Middleware | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393574 | `0x941130...f0dc34` | ⚠️ Unaudited |
| BalancerValidatorManager | governance | project_anchor | own_supporting | 1 | avalanche | unit-393603 | `0xcff0fc...fa8ac7` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393555 | `0x0cec09...aaf9af` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393557 | `0x1d8bd3...5fef62` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393559 | `0x203e91...19df0d` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393568 | `0x51111e...fd634d` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393572 | `0x8f1dea...caee5f` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393578 | `0xa53e12...7d4c41` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393582 | `0xc96d49...8dce5a` | ⚠️ Unaudited |
| DefaultCollateral | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393594 | `0xe3c983...93d5b7` | ⚠️ Unaudited |
| DelegatorFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393571 | `0x657741...c8c2be` | ⚠️ Unaudited |
| L1Registry | registry | project_anchor | own_supporting | 0 | avalanche | unit-393580 | `0xaa59b1...746110` | ⚠️ Unaudited |
| L1RestakeDelegator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393590 | `0xd90a72...3273ef` | ⚠️ Unaudited |
| LSTWrapperFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393588 | `0xd096f4...535a77` | ⚠️ Unaudited |
| OperatorL1OptInService | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393566 | `0x48a990...1fa574` | ⚠️ Unaudited |
| OperatorRegistry | registry | project_anchor | own_supporting | 0 | avalanche | unit-393586 | `0xcccb4e...36936e` | ⚠️ Unaudited |
| OperatorVaultOptInService | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-393596 | `0xe437b5...92da47` | ⚠️ Unaudited |
| PoASecurityModule | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393551 | `0x01daeb...56fafd` | ⚠️ Unaudited |
| RewardsNativeToken | unknown | project_anchor | own_supporting | 1 | avalanche | unit-393600 | `0x0f388c...dbcb00` | ⚠️ Unaudited |
| SlasherFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393561 | `0x2eb000...5f4415` | ⚠️ Unaudited |
| SuzakuToken | token | project_anchor | own_supporting | 0 | avalanche | unit-393564 | `0x451532...f6f5ef` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-393562 | `0x3e669b...75694a` | ⚠️ Unaudited |
| VaultHelper | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-393576 | `0x9985e0...1bf970` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393553 | `0x093783...47bc69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393584 | `0xc9a25f...2471a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-393592 | `0xdc1c44...0da403` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Inherited from Symbiotic — forked code, scoped to DefaultCollateral | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Statemind_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Inherited from Symbiotic — forked code, scoped to DefaultCollateral | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29668] ChainSecurity_DefaultCollateral.pdf — matched: Scope section explicitly lists four contracts in src/contracts/ directory. Audit date is May 14, 2024 from cover page.
- [29670] Statemind_DefaultCollateral.pdf — no match: Scope section explicitly lists four files: Factory.sol, DefaultBond.sol, DefaultBondFactory.sol, Permit2Lib.sol. Audit date inferred from timeline '26-04-2024 - 01-05-2024' using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateral | ambiguous — not counted | DefaultCollateral (alternative) `0x8f1dea...caee5f` — deployed 2024-10-18 23:29:10+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x1d8bd3...5fef62` — deployed 2024-10-15 15:23:53+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x51111e...fd634d` — deployed 2026-01-21 14:31:36+03 — liveness: live (code_present_context)<br>DefaultCollateral (alternative) `0xa53e12...7d4c41` — deployed 2024-09-30 12:29:04+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0xc96d49...8dce5a` — deployed 2025-07-29 17:59:56+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x203e91...19df0d` — deployed 2024-09-30 12:25:41+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0xe3c983...93d5b7` — deployed 2024-09-30 12:23:24+03 — liveness: live (current_address_book_code)<br>DefaultCollateral (alternative) `0x0cec09...aaf9af` — deployed 2024-11-18 19:40:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateralFactory | own contract | DefaultCollateralFactory (selected) `0xe52966...41a93c` — deployed 2024-09-30 12:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope table (diff only) | no |
| Statemind_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBond | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBondFactory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x941130...f0dc34` | AvalancheL1Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0cec09...aaf9af` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1d8bd3...5fef62` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x203e91...19df0d` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x51111e...fd634d` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8f1dea...caee5f` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa53e12...7d4c41` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc96d49...8dce5a` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe3c983...93d5b7` | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x657741...c8c2be` | DelegatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xaa59b1...746110` | L1Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd90a72...3273ef` | L1RestakeDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd096f4...535a77` | LSTWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x48a990...1fa574` | OperatorL1OptInService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcccb4e...36936e` | OperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe437b5...92da47` | OperatorVaultOptInService | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x01daeb...56fafd` | PoASecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0f388c...dbcb00` | RewardsNativeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2eb000...5f4415` | SlasherFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x451532...f6f5ef` | SuzakuToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3e669b...75694a` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9985e0...1bf970` | VaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [29670] Statemind_DefaultCollateral.pdf

Fork inheritance lineage and inherited audits are included when available.
