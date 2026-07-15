# Agentic Audit Brief: Hypersurface

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

- Project: Hypersurface (`hypersurface`)
- Website: [https://app.hypersurface.io](https://app.hypersurface.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, hyperliquid
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,590,605.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hypersurface. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across base, hyperliquid. Structural roles: 5 unclassified, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: unclassified (5), core (3)
- Contract kinds: contract (8)
- Detected standards: ownable (3), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2), chainlink (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06d44b...df26c1`, chain 999)
- UnnamedContract (`0x7d2e4b...1c6e35`, chain 999)
- UnnamedContract (`0x84d4c4...0c54ab`, chain 999)
- UnnamedContract (`0xf07739...0e3749`, chain 999)
- MarginPool (`0x9aba7a...fb3103`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (6 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HedgedPool | unknown | project_anchor | own_supporting | 1 | base | unit-387328 | `0x688939...8df56d` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MarginPool | core_logic | project_anchor | own_supporting | 0 | base | unit-387324 | `0x9aba7a...fb3103` | ⚠️ Unaudited |
| MMTradeHelper | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387330 | `0x5d2cbe...10269d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387333 | `0x0095ac...ad196f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387331 | `0xa8c940...b5313c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-387329 | `0x135fed...6679d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x64049338da0b7358336d6ad81afddd9c1d353d33) | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387332 | `0x06d44b...df26c1` | ❓ Unverified |
| Proxy (impl: 0xf61f55ddc42bb1d6e08a04e22c78eed7d1e37e3e) | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-387334 | `0xf07739...0e3749` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-387325 | `0x7d2e4b...1c6e35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-387326 | `0x84d4c4...0c54ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audited by Simply Staking](https://github.com/SimplyStaking/security-audit-reports) | Simply Staking | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hypersurface-audit-v1.0.pdf](https://github.com/SimplyStaking/security-audit-reports/blob/main/Hypersurface/hypersurface-audit-v1.0.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17461] Audited by Simply Staking — no match: The provided text is a GitHub repository page with no audit report content, only repository metadata and navigation elements.
- [17462] hypersurface-audit-v1.0.pdf — matched: Extracted contract names from findings sections and file paths. Audit date from cover page: 13/10/25 - 17/10/25, used end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hypersurface-audit-v1.0.pdf | HedgedPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x688939...8df56d` — deployed 2025-10-09 11:35:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hypersurface-audit-v1.0.pdf | HedgedPoolLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | UniswapOrdersLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | OrderUtil | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | TradeExecutor | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | LpManager | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | HyperliquidHedger | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Controller | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | ControllerLib | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Lens | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | FeeCollector | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | AddressBook | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | OtokenFactory | unmatched — not counted | — | Listed in scope and findings | no |
| hypersurface-audit-v1.0.pdf | Whitelist | unmatched — not counted | — | Listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x9aba7a...fb3103` | MarginPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5d2cbe...10269d` | MMTradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [17461] Audited by Simply Staking

Fork inheritance lineage and inherited audits are included when available.
