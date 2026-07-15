# Agentic Audit Brief: B.Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 1.3% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,754,312.88
- On-chain TVL (included contracts): $66.49
- TVL by chain: Ethereum $66.49

## Project Description

This brief describes the observed EVM deployment and audit surface for B.Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, ethereum, fantom. Structural roles: 6 core, 4 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (6), unclassified (4), supporting (1)
- Contract kinds: contract (11)
- Detected standards: ownable (5)
- Frameworks: openzeppelin (6), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 13 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

**BCdpManager** (`0x3f30c2...24bbed`, chain 1)
Origin: b.protocol (`0x3320f0...f7e147`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5cbe12...c86af2`, chain 1)
- UnnamedContract (`0x5eae77...5a094d`, chain 1)
- UnnamedContract (`0x896d8a...7dc20b`, chain 1)
- Arb (`0x12c60b...24329e`, chain 1)
- BAMM (`0x00ff66...a0849a`, chain 1)
- BAMM (`0x0a3096...034c41`, chain 42161)
- BAMM (`0x12c60b...24329e`, chain 42161)
- BAMM (`0xebf825...afe66b`, chain 42161)
- PBAMM (`0x54bc91...f6d972`, chain 1)
- UnnamedContract (`0x6d62d6...634d22`, chain 250)
- UnnamedContract (`0xedc790...138a3d`, chain 250)
- Vault (`0x7095f0...cf52c9`, chain 1)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 15 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/10
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $66.49
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $66.49 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 1 | 10.0% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BCdpManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-228683 | `0x3f30c2...24bbed` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-228687 | `0x7095f0...cf52c9` | ⚠️ Unaudited |
| Arb | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228682 | `0x12c60b...24329e` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228679 | `0x00ff66...a0849a` | ⚠️ Unaudited |
| BAMM | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-228681 | `0x0d3aba...a8c598` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228692 | `0x04208f...5eb719` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228693 | `0x0a3096...034c41` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228694 | `0x12c60b...24329e` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228695 | `0x240990...29b168` | ⚠️ Unaudited |
| BAMM | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228696 | `0xebf825...afe66b` | ⚠️ Unaudited |
| PBAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228684 | `0x54bc91...f6d972` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228685 | `0x5cbe12...c86af2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228686 | `0x5eae77...5a094d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228688 | `0x896d8a...7dc20b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228690 | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-228691 | `0xedc790...138a3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - Backstop Protocol [02.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Liquity_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [FPS_B.AMM_Rari_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2976] Audit Report - Backstop Protocol [02.10.2020].pdf — matched: All contracts listed in 'Audited Files' section are in scope.
- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf — no match: Scope explicitly mentions B.AMM Liquity-specific smart contracts in the repository, and findings reference BAMM.sol, crop.sol (CropJoin), and PriceFormula.sol.
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf — no match: Scope section lists three contracts: BAMM.sol, PriceFormula.sol, TokenAdapter.sol. Audit date is 2021/12/19 from the header.
- [2980] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.
- [14828] Audit Report - B-Protocol [16.02.2021].pdf — matched: All contracts listed in the 'Audited Files' section under 'contracts' folder.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpManager | own contract | BCdpManager (selected) `0x3f30c2...24bbed` — deployed 2020-10-17 22:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BCdpScoreConnector | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | LiquidationMachine | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Math | unmatched — not counted | — | listed in audited files | no |
| Audit Report - Backstop Protocol [02.10.2020].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Backstop Protocol [02.10.2020].pdf | BProxyActions | own contract | 0x5eae77… (selected) `0x5eae77...5a094d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b...24329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a3096...034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x240990...29b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf825...afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66...a0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f...5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | CropJoin | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Liquity_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope and findings | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | BAMM | ambiguous — not counted | BAMM (alternative) `0x12c60b...24329e` — deployed 2022-02-07 16:34:55+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x0a3096...034c41` — deployed 2022-02-07 16:55:03+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x240990...29b168` — deployed 2021-11-10 15:42:39+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0xebf825...afe66b` — deployed 2022-02-07 16:45:33+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x00ff66...a0849a` — deployed 2022-01-24 13:32:56+03 — liveness: live (current_address_book_code)<br>BAMM (alternative) `0x04208f...5eb719` — deployed 2021-11-21 12:56:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | PriceFormula | unmatched — not counted | — | listed in scope | no |
| FPS_B.AMM_Rari_Assessment_FINAL.pdf | TokenAdapter | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BErc20 | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsBToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BEther | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | BComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Pool | own contract | 0x5cbe12… (selected) `0x5cbe12...c86af2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - B-Protocol [16.02.2021].pdf | Registry | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Import | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsCToken | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsComptroller | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | Avatar | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | AbsAvatarBase | unmatched — not counted | — | listed in scope | no |
| Audit Report - B-Protocol [16.02.2021].pdf | IBTokenScore | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7095f0...cf52c9` | Vault | core_logic | $66.49 | Verified native implementation with $66.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12c60b...24329e` | Arb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00ff66...a0849a` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x04208f...5eb719` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a3096...034c41` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12c60b...24329e` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x240990...29b168` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xebf825...afe66b` | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54bc91...f6d972` | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 29 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=5

Zero-match audit list:

- [2978] FPS_B.AMM_Liquity_Assessment_FINAL.pdf
- [2979] FPS_B.AMM_Rari_Assessment_FINAL.pdf

Fork inheritance lineage and inherited audits are included when available.
