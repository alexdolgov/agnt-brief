# Agentic Audit Brief: Blur

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ethereum
- Contract surface: 28 unique implementations (33 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,582,183.00
- On-chain TVL (included contracts): $42,555,522.90
- TVL by chain: Ethereum $42,555,522.90

## Project Description

This brief describes the observed EVM deployment and audit surface for Blur. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...1887ac`, chain 1)
- UnnamedContract (`0x294693...98a20b`, chain 1)
- BlurSwap (`0x39da41...d0d541`, chain 1)
- BlurToken (`0x5283d2...208b44`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 28 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 28
- Raw deployments: 33
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $42,555,522.90
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlurToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230705 | `0x5283d2...208b44` | ⚠️ Unaudited |
| BlurAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xee90e5...9833e1`; ethereum `0xf2d15c...6bce25` | ⚠️ Unaudited |
| BlurGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7967b...845810` | ⚠️ Unaudited |
| BlurSwap | proxy | project_anchor | own_supporting | 1 | ethereum | unit-230706 | `0x39da41...d0d541` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be718...e4be3f` | ⚠️ Unaudited |
| TokenLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x00a644...2663df`; ethereum `0x3f1be7...7db647`; ethereum `0x581e27...f3fb26`; ethereum `0x5a9c32...66422a`; ethereum `0xc75ade...800f53` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230703 | `0x000000...1887ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019d24...62e900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f6d7...eea7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7e05...8bb68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259064...325eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f180...90d087` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230704 | `0x294693...98a20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa4af...747f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a574b...054d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545e06...478e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561106...5bf5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ab8c...331651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b692...94a40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9670af...a6894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b5850...056dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdbf8...a3bdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc82bf6...99d152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf39f1...2da4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5996d...189c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe596a0...ff66de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cf0d...4de58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb6ae1...223fd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022](https://dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022) | Dedaub | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [code4rena.com/reports/2022-10-blur](https://code4rena.com/reports/2022-10-blur) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view](https://drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view](https://drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21286] dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 — no match: All contracts listed in the scope section of the audit report.
- [21287] code4rena.com/reports/2022-10-blur — no match: Scope section states 10 smart contracts, but only 4 are explicitly named in the report text. Additional contracts are inferred from file paths mentioned in findings and gas optimizations.
- [21288] drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view — no match: Scope section lists 'Blur - Blend Security Audit' as target. Contracts identified: Blend (main contract) and BlurPool (external contract used). No file paths provided.
- [21289] drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view — no match: Scope section lists 'Blur | Blend Security Audit' as target, but no specific file paths. Contract names extracted from findings: Blend and BlurPool.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Exchange | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | FeeMechanism | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Registry | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | ProxyRegistry | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | AuthenticatedProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnableDelegateProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnedUpgradeabilityStorage | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Proxy | ambiguous — not counted | BlurSwap (proxy) (alternative) `0x39da41...d0d541` — deployed 2022-07-27 01:31:27+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | TokenRecipient | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | TokenTransferProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | ERC1967 | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | GaugeStorage | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | LiquidityGaugeFactory | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | LiquidityGauge | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Minter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-blur | BlurExchange | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | ExecutionDelegate | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | PolicyManager | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | StandardPolicyERC1155 | unmatched — not counted | — | mentioned in high risk finding | no |
| code4rena.com/reports/2022-10-blur | EIP712 | unmatched — not counted | — | mentioned in gas optimizations and low risk | no |
| code4rena.com/reports/2022-10-blur | MerkleVerifier | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | ReentrancyGuarded | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | OrderStructs | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | IBlurExchange | unmatched — not counted | — | mentioned in low risk | no |
| code4rena.com/reports/2022-10-blur | IExecutionDelegate | unmatched — not counted | — | implied by usage | no |
| code4rena.com/reports/2022-10-blur | IPolicyManager | unmatched — not counted | — | implied by usage | no |
| code4rena.com/reports/2022-10-blur | ERC1967Proxy | unmatched — not counted | — | mentioned in low risk | no |
| drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view | Blend | unmatched — not counted | — | Main contract audited, mentioned throughout report | no |
| drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view | BlurPool | unmatched — not counted | — | Mentioned in findings as contract used by Blend | no |
| drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view | Blend | unmatched — not counted | — | Main contract audited, mentioned throughout report | no |
| drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view | BlurPool | unmatched — not counted | — | Mentioned in BLEND-001 as contract with deposit/transferFrom functions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5283d2...208b44` | BlurToken | token | $42,555,522.90 | Verified native implementation with $42,555,522.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39da41...d0d541` | BlurSwap | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 31 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [21286] dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022
- [21287] code4rena.com/reports/2022-10-blur
- [21288] drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view
- [21289] drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view

Fork inheritance lineage and inherited audits are included when available.
