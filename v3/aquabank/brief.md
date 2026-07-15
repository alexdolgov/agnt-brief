# Agentic Audit Brief: AquaBank

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: AquaBank (`aquabank`)
- Website: [https://aquabank.io/](https://aquabank.io/)
- Lifecycle: active (Tier 0, 35.6% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $750,199.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for AquaBank in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...a9012a`, chain 43114)
- UnnamedContract (`0x038dbe...44f73d`, chain 43114)
- UnnamedContract (`0x152b9d...943e50`, chain 43114)
- UnnamedContract (`0x3c5940...5b83b7`, chain 43114)
- UnnamedContract (`0x49d5c2...c10bab`, chain 43114)
- UnnamedContract (`0x970223...f4a8c7`, chain 43114)
- UnnamedContract (`0xb97ef9...c48a6e`, chain 43114)
- UnnamedContract (`0xd211b1...c679d5`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xb02304a6040afbb62c9fc7741780727b73b18a2a) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-379211 | `0xd211b1...c679d5` | ❓ Unverified |
| Proxy (impl: 0xb2cc1202d56e7053e857fac263d12d508f508f89) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-379212 | `0x3c5940...5b83b7` | ❓ Unverified |
| Proxy (impl: 0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678) | proxy | project_anchor | own_supporting | 1 | avalanche | unit-379214 | `0x038dbe...44f73d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379206 | `0x000000...a9012a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379207 | `0x152b9d...943e50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379208 | `0x49d5c2...c10bab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379209 | `0x970223...f4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-379210 | `0xb97ef9...c48a6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ab/audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [www.cyberscope.io/audits/ab](https://www.cyberscope.io/audits/ab) | Cyberscope | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12669] audit.pdf — no match: No reason recorded
- [12670] www.cyberscope.io/audits/ab — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | BankMinting | unmatched — not counted | — | — | no |
| audit.pdf | BankStaking | unmatched — not counted | — | — | no |
| audit.pdf | BankStructs | unmatched — not counted | — | — | no |
| audit.pdf | BankToken | unmatched — not counted | — | — | no |
| audit.pdf | BenqiMinting | unmatched — not counted | — | — | no |
| audit.pdf | BenqiStaking | unmatched — not counted | — | — | no |
| audit.pdf | EulerMinting | unmatched — not counted | — | — | no |
| audit.pdf | EulerStaking | unmatched — not counted | — | — | no |
| audit.pdf | IBankMinting | unmatched — not counted | — | — | no |
| audit.pdf | IBankStaking | unmatched — not counted | — | — | no |
| audit.pdf | IBankToken | unmatched — not counted | — | — | no |
| audit.pdf | IComptrollerRewards | unmatched — not counted | — | — | no |
| audit.pdf | IEulerDistributor | unmatched — not counted | — | — | no |
| audit.pdf | IEulerEToken | unmatched — not counted | — | — | no |
| audit.pdf | IQiErc20 | unmatched — not counted | — | — | no |
| audit.pdf | StandardProxy | unmatched — not counted | — | — | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| audit.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankStructs | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BankToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BenqiMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | BenqiStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | EulerMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | EulerStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankMinting | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankStaking | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IBankToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IComptrollerRewards | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IEulerDistributor | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IEulerEToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | IQiErc20 | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | StandardProxy | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | TransferHelper | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/ab | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 36 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12669] audit.pdf
- [12670] www.cyberscope.io/audits/ab

Fork inheritance lineage and inherited audits are included when available.
