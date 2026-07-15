# Agentic Audit Brief: Sushi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, mantle, optimism, polygon
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $84,599,022.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sushi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, ethereum, mantle, optimism, polygon, polygon-zkevm. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12bb16...3195d7`, chain 1)
- UnnamedContract (`0x44d097...47c54f`, chain 1)
- UnnamedContract (`0x51b0ef...81ce73`, chain 1)
- UnnamedContract (`0x53954a...2ac516`, chain 1)
- UnnamedContract (`0x655edc...ee4b77`, chain 1)
- UnnamedContract (`0x6e3fb8...0c2449`, chain 1)
- UnnamedContract (`0x84f462...9ae1b9`, chain 1)
- UnnamedContract (`0xcc1253...9218a7`, chain 1)
- UnnamedContract (`0xd04544...27436e`, chain 1)
- UnnamedContract (`0xe7b0ce...9d216c`, chain 1)
- UnnamedContract (`0x5130f6...20ed40`, chain 10)
- UnnamedContract (`0x55f7c1...7fcfad`, chain 10)
- UnnamedContract (`0xac2b3f...cc74cb`, chain 10)
- UnnamedContract (`0xdbd4ff...2db7db`, chain 10)
- UnnamedContract (`0xf33141...2af3eb`, chain 10)
- UnnamedContract (`0x4715cc...c9e561`, chain 137)
- UnnamedContract (`0x681107...e3d521`, chain 137)
- UnnamedContract (`0x6bfce6...3ae3b8`, chain 137)
- UnnamedContract (`0xd01e35...de8eed`, chain 137)
- UnnamedContract (`0xf33141...2af3eb`, chain 137)
- UnnamedContract (`0x769728...f590c5`, chain 5000)
- UnnamedContract (`0x41c536...c1f834`, chain 8453)
- UnnamedContract (`0xb32d85...41247c`, chain 8453)
- UnnamedContract (`0x4c16dd...9bb08a`, chain 42161)
- UnnamedContract (`0x769728...f590c5`, chain 42161)
- UnnamedContract (`0x93a594...d4eb98`, chain 42161)
- UnnamedContract (`0x9e233d...cc106e`, chain 42161)
- UnnamedContract (`0xb87392...7873df`, chain 42161)
- UnnamedContract (`0xe7b0ce...9d216c`, chain 42161)
- SushiBar (`0x879824...ff4272`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 100.0% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SushiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257535 | `0x879824...ff4272` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257528 | `0x12bb16...3195d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257529 | `0x44d097...47c54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257530 | `0x51b0ef...81ce73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257531 | `0x53954a...2ac516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257532 | `0x655edc...ee4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257533 | `0x6e3fb8...0c2449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257534 | `0x84f462...9ae1b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257536 | `0xcc1253...9218a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257537 | `0xd04544...27436e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257538 | `0xe7b0ce...9d216c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257539 | `0x5130f6...20ed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257540 | `0x55f7c1...7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257541 | `0xac2b3f...cc74cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257542 | `0xdbd4ff...2db7db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257543 | `0xf33141...2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257546 | `0x4715cc...c9e561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257547 | `0x681107...e3d521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257548 | `0x6bfce6...3ae3b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257549 | `0xd01e35...de8eed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257550 | `0xf33141...2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257557 | `0x769728...f590c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257559 | `0x41c536...c1f834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257560 | `0xb32d85...41247c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257551 | `0x4c16dd...9bb08a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257552 | `0x769728...f590c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257553 | `0x93a594...d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257554 | `0x9e233d...cc106e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257555 | `0xb87392...7873df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257556 | `0xe7b0ce...9d216c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SushiSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SushiSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13952] PeckShield-Audit-Report-SushiSwap-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Address | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | MasterChef | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Migrator | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiBar | own contract | SushiBar (selected) `0x879824...ff4272` — deployed 2020-09-05 16:05:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiMaker | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Timelock | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
