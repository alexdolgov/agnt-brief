# Agentic Audit Brief: PumpSpace

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: PumpSpace (`pumpspace`)
- Website: [https://pumpspace.io/](https://pumpspace.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,115,249.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for PumpSpace in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Aqua V3 StakingViewerUtil (`0xb13b85...61c7c1`, chain 43114)
- AquaTokenList (`0xa18eef...587504`, chain 43114)
- BoostViewer (`0x0ae704...bc0bd5`, chain 43114)
- KRILL StakingViewer (`0xe27f44...6b9378`, chain 43114)
- PairViewer (`0xdd5bc0...1ff955`, chain 43114)
- PEARL StakingViewer (`0x1b5e29...7da81f`, chain 43114)
- SHELL StakingViewer (`0x0c2e7b...16e493`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
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
| Aqua V3 StakingViewerUtil | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391220 | `0xb13b85...61c7c1` | ❓ Unverified |
| AquaTokenList | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391219 | `0xa18eef...587504` | ❓ Unverified |
| BoostViewer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391215 | `0x0ae704...bc0bd5` | ❓ Unverified |
| KRILL StakingViewer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391224 | `0xe27f44...6b9378` | ❓ Unverified |
| PairViewer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391222 | `0xdd5bc0...1ff955` | ❓ Unverified |
| PEARL StakingViewer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391217 | `0x1b5e29...7da81f` | ❓ Unverified |
| Pump launchpad and migration proxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391214 | `0x096f6d...10140c` | ❓ Unverified |
| SHELL StakingViewer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391216 | `0x0c2e7b...16e493` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dexAudit.pdf](https://github.com/cyberscope-io/audits/blob/main/pumpspace/dexAudit.pdf) | Cyberscope | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [www.cyberscope.io/audits/pumpspace](https://www.cyberscope.io/audits/pumpspace?assessmentIndex=1) | Cyberscope | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/pumpspace/audit.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2666] dexAudit.pdf — no match: No reason recorded
- [2667] www.cyberscope.io/audits/pumpspace — no match: No reason recorded
- [2668] audit.pdf — no match: Audit report for PUMPSPACE, dated January 2025. Source files explicitly listed: Router.sol, Pair.sol, Migrator.sol, Factory.sol, structs/PumpStructs.sol, and MemeToken (tokens/MemeToken.sol). PumpStructs is a struct file, not a contract, so excluded. MemeToken is included as a contract.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dexAudit.pdf | DexERC20 | unmatched — not counted | — | — | no |
| dexAudit.pdf | DexFactory | unmatched — not counted | — | — | no |
| dexAudit.pdf | DexPair | unmatched — not counted | — | — | no |
| dexAudit.pdf | DexRouter | unmatched — not counted | — | — | no |
| dexAudit.pdf | DexToken | unmatched — not counted | — | — | no |
| dexAudit.pdf | Errors | unmatched — not counted | — | — | no |
| dexAudit.pdf | IDexERC20 | unmatched — not counted | — | — | no |
| dexAudit.pdf | IDexPair | unmatched — not counted | — | — | no |
| dexAudit.pdf | IDexRouter | unmatched — not counted | — | — | no |
| dexAudit.pdf | Keeper | unmatched — not counted | — | — | no |
| dexAudit.pdf | MasterChef | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | CustomSwapLibrary | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | CustomUQ112x112 | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | Factory | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | IPumpFactory | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | IPumpMigrator | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | IPumpPair | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | IPumpRouter | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | MemeToken | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | Migrator | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | OwnableUpgradeable | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | Pair | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | PumpStructs | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | Router | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | StandardProxy | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | TransferUtil | unmatched — not counted | — | — | no |
| www.cyberscope.io/audits/pumpspace | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| audit.pdf | Router | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | Factory | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | Pair | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | Migrator | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | MemeToken | unmatched — not counted | — | listed in Source Files table as MemeToken | no |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2666] dexAudit.pdf
- [2667] www.cyberscope.io/audits/pumpspace
- [2668] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
