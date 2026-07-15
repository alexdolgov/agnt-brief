# Agentic Audit Brief: 9inch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 9inch (`9inch`)
- Website: [https://www.9inch.io/](https://www.9inch.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $758,684.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for 9inch in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0x46f6e9...9b7894`, chain 1)
- UnnamedContract (`0x4ac429...e864e2`, chain 1)
- UnnamedContract (`0x6b1754...271d0f`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xa88260...e6d68a`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 26 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
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
| BBC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015628...a32436` | ⚠️ Unaudited |
| BulkTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2a60...91b55c` | ⚠️ Unaudited |
| CakeFlexiblePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf598b...e4432f` | ⚠️ Unaudited |
| CakePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c58c...69c24e` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fefd0...50561f` | ⚠️ Unaudited |
| NineInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8b9b...4937a2` | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4443...ca7ced` | ⚠️ Unaudited |
| NineInchBuyAndBurnUpgradeableV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88eed3...647197` | ⚠️ Unaudited |
| NineInchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbae5c...dd56d8` | ⚠️ Unaudited |
| NineInchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa79882...8264eb` | ⚠️ Unaudited |
| NineInchSpotLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545792...02ab21` | ⚠️ Unaudited |
| NineInchSpotLimitV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b17d...6aaa8e` | ⚠️ Unaudited |
| PoorPleb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9565c2...7bcfd0` | ⚠️ Unaudited |
| Pulsedoge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ada2...3919a8` | ⚠️ Unaudited |
| TokenFlexiblePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0022e0...7538f2` | ⚠️ Unaudited |
| TokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664e78...251059` | ⚠️ Unaudited |
| VotePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28bda9...410099` | ⚠️ Unaudited |
| WhereDidTheETHGo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde0220...3a6be4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225335 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225336 | `0x46f6e9...9b7894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225337 | `0x4ac429...e864e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225338 | `0x6b1754...271d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225339 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225340 | `0xa88260...e6d68a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225341 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225342 | `0xdac17f...831ec7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://747412000-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fi561wEeRIxQAdQvqesSN%2Fuploads%2FGFbpzbdkGxdzisBY66rU%2FDedaub%209inch%20-%20Sep%20'23.pdf) | Dedaub | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [- [Security Audits]()](https://9inch.gitbook.io/9inch-gitbook/security-audits.md) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19373] Rendered PDF capture — no match: Scope explicitly lists four contracts under contracts/pool/ directory.
- [19374] - [Security Audits]() — no match: The provided text is a fragment of a documentation index page with a link to a file, but no actual audit report content or contract names are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | CakeFlexiblePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | CakePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TokenFlexiblePool | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TokenPool | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [19373] Rendered PDF capture
- [19374] - [Security Audits]()

Fork inheritance lineage and inherited audits are included when available.
