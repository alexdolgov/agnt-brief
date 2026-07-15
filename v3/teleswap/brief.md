# Agentic Audit Brief: TeleSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: TeleSwap (`teleswap`)
- Website: [https://teleswap.xyz](https://teleswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon, unichain
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $242,282.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for TeleSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x93ad6c...217d3b`, chain 1)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 10)
- UnnamedContract (`0x45e4d5...279a96`, chain 130)
- UnnamedContract (`0x93ad6c...217d3b`, chain 137)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 8453)
- UnnamedContract (`0xec4a7d...5e9d52`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258272 | `0x93ad6c...217d3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-258274 | `0xec4a7d...5e9d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-258276 | `0x45e4d5...279a96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258278 | `0x93ad6c...217d3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258282 | `0xec4a7d...5e9d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258280 | `0xec4a7d...5e9d52` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Bitcoin-EVM.pdf](https://github.com/TeleportDAO/audits/blob/main/reports/Quantstamp-Bitcoin-EVM.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14003] Quantstamp-Bitcoin-EVM.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Bitcoin-EVM.pdf | BitcoinHelper | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | BitcoinRelay | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCBurnRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCExchangeRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CCTransferRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | CollateralPoolFactory | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | Context | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | ERC20 | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantPool | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | InstantRouter | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLib | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | LockersLogic | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | PriceProxy | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | SafeMath | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TeleBTC | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | TypedMemView | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | UniswapV2Connector | unmatched — not counted | — | — | no |
| Quantstamp-Bitcoin-EVM.pdf | WETH | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 20 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14003] Quantstamp-Bitcoin-EVM.pdf

Fork inheritance lineage and inherited audits are included when available.
