# Agentic Audit Brief: OPINION

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: OPINION (`opinion`)
- Website: [https://app.opinion.trade](https://app.opinion.trade)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,084,612.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OPINION. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 2 supporting, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1155 (1), erc165 (1)
- Frameworks: openzeppelin (2), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x38869b...43b526`, chain 56)
- ConditionalTokens (`0xad1a38...10d774`, chain 56)
- CTFExchangeFeeManager (`0xc9063d...5d7c36`, chain 56)
- MultiSend (`0x998739...8f9eda`, chain 56)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 4 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ScaleBit | Tier 2 | 1 | 33.3% | 2025-10 |
| unknown | Tier 2 | 1 | 33.3% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConditionalTokens | token | project_anchor | own_supporting | 0 | bsc | unit-390225 | `0xad1a38...10d774` | ✅ Audited |
| CTFExchangeFeeManager | governance | project_anchor | own_supporting | 0 | bsc | unit-390226 | `0xc9063d...5d7c36` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiSend | unknown | project_anchor | own_supporting | 0 | bsc | unit-390224 | `0x998739...8f9eda` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390223 | `0x38869b...43b526` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [opinion-v1-scalebit.pdf](https://static.opinion.trade/opinion-v1-scalebit.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [opinion-v1-zellic.pdf](https://static.opinion.trade/opinion-v1-zellic.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [opinion-v2-scalebit.pdf](https://static.opinion.trade/opinion-v2-scalebit.pdf) | ScaleBit | Audit | 2025-10 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 23 | n/a |
| [opn-token-scalebit.pdf](https://static.opinion.trade/opn-token-scalebit.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [opn-token-pashov.pdf](https://static.opinion.trade/opn-token-pashov.pdf) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2178] opinion-v1-scalebit.pdf — matched: No reason recorded
- [2179] opinion-v1-zellic.pdf — no match: Extracted contract names from scope table and detailed findings. Audit date from cover page.
- [2180] opinion-v2-scalebit.pdf — matched: No reason recorded
- [2181] opn-token-scalebit.pdf — no match: No reason recorded
- [2182] opn-token-pashov.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| opinion-v1-scalebit.pdf | AssetOperations | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Assets | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Auth | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | BaseExchange | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | CTFExchange | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | CalculatorHelper | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | ConditionalTokens | own contract | ConditionalTokens (selected) `0xad1a38...10d774` — deployed 2025-10-15 19:04:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| opinion-v1-scalebit.pdf | Fees | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Hashing | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | NonceManager | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | OLABFactoryHelper | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | OLABProxyLib | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | OLABSafeLib | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | OrderStructs | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Pausable | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Registry | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Signatures | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | Trading | unmatched — not counted | — | — | no |
| opinion-v1-scalebit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| opinion-v1-zellic.pdf | VotingV2 | unmatched — not counted | — | Listed in scope table as part of prediction-market-smart-contract-v2 repository; detailed findings target VotingV2 | no |
| opinion-v1-zellic.pdf | DynamicArray | unmatched — not counted | — | Detailed findings target DynamicArray library | no |
| opinion-v1-zellic.pdf | Staker | unmatched — not counted | — | Detailed findings target Staker contract | no |
| opinion-v1-zellic.pdf | VoterRegistrar | unmatched — not counted | — | Detailed findings target VoterRegistrar contract | no |
| opinion-v1-zellic.pdf | ERC20Snapshot | unmatched — not counted | — | Detailed findings target ERC20Snapshot contract | no |
| opinion-v1-zellic.pdf | OptimisticOracleV3 | unmatched — not counted | — | Detailed findings target OptimisticOracleV3 contract | no |
| opinion-v1-zellic.pdf | ConditionalTokenSettler | unmatched — not counted | — | Threat model section includes module ConditionalTokenSettler.sol | no |
| opinion-v2-scalebit.pdf | AssetOperations | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Assets | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Auth | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | CTFExchangeFeeManager | own contract | CTFExchangeFeeManager (selected) `0xc9063d...5d7c36` — deployed 2025-11-13 02:55:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| opinion-v2-scalebit.pdf | CTFExchangeGateway | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | CTFExecutionEngine | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | CalculatorHelper | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Fees | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Hashing | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | NonceManager | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | OLABFactoryHelper | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | OLABProxyLib | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | OLABSafeLib | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | OrderStructs | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Pausable | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | ReferralManager | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | ReferralStructs | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Registry | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Signatures | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | SignerManager | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | Trading | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | UserTierManager | unmatched — not counted | — | — | no |
| opinion-v2-scalebit.pdf | UserTierStructs | unmatched — not counted | — | — | no |
| opn-token-scalebit.pdf | OpinionToken | unmatched — not counted | — | — | no |
| opn-token-pashov.pdf | OpinionToken.sol | unmatched — not counted | — | — | no |
| opn-token-pashov.pdf | OpinionToken.ts | unmatched — not counted | — | — | no |
| opn-token-pashov.pdf | layerzero.config.ts | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 52 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Zero-match audit list:

- [2179] opinion-v1-zellic.pdf
- [2181] opn-token-scalebit.pdf
- [2182] opn-token-pashov.pdf

Fork inheritance lineage and inherited audits are included when available.
