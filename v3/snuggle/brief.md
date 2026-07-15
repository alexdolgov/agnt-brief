# Agentic Audit Brief: Snuggle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 14/14 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,426,344.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Snuggle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 11 supporting, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (3), ownable2step (2)
- Frameworks: openzeppelin (11), uniswap-v3 (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02415b...0224c0`, chain 8453)
- UnnamedContract (`0xd3923b...6b7470`, chain 8453)
- AerodromePositionAdapter (`0xe3efa7...f79589`, chain 8453)
- AerodromeRewardAdapter (`0xcb16cb...d77306`, chain 8453)
- FeeTransferHelper (`0x613ba8...28b1f3`, chain 8453)
- KeepersHelper (`0x60431b...563345`, chain 8453)
- PancakeSwapPositionAdapter (`0x0c0ba0...1b39e5`, chain 8453)
- PancakeSwapRewardAdapter (`0x63de14...18b1cf`, chain 8453)
- ProxyAdmin (`0x269dc2...cca86f`, chain 8453)
- ReferralTracker (`0x2536a7...68d9ee`, chain 8453)
- SnuggleRebalanceLib (`0xf84b57...1dcddc`, chain 8453)
- SnuggleVaultAdminSatellite (`0x5a332c...e4d271`, chain 8453)
- StakingManager (`0x3f928d...a270c1`, chain 8453)
- TreasurySplitter (`0x93d0d1...a9ec12`, chain 8453)
- UniswapV3Adapter (`0xf757c9...f33010`, chain 8453)
- ViewHelper (`0x298028...976a1c`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/14 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 14/14
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 100.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromePositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392628 | `0xe3efa7...f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392626 | `0xcb16cb...d77306` | ✅ Audited |
| FeeTransferHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392623 | `0x613ba8...28b1f3` | ✅ Audited |
| KeepersHelper | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392622 | `0x60431b...563345` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392616 | `0x0c0ba0...1b39e5` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392624 | `0x63de14...18b1cf` | ✅ Audited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-392618 | `0x269dc2...cca86f` | ✅ Audited |
| ReferralTracker | unknown | project_anchor | own_supporting | 0 | base | unit-392617 | `0x2536a7...68d9ee` | ✅ Audited |
| SnuggleRebalanceLib | unknown | project_anchor | own_supporting | 0 | base | unit-392630 | `0xf84b57...1dcddc` | ✅ Audited |
| SnuggleVaultAdminSatellite | core_logic | project_anchor | own_supporting | 0 | base | unit-392621 | `0x5a332c...e4d271` | ✅ Audited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-392620 | `0x3f928d...a270c1` | ✅ Audited |
| TreasurySplitter | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392625 | `0x93d0d1...a9ec12` | ✅ Audited |
| UniswapV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-392629 | `0xf757c9...f33010` | ✅ Audited |
| ViewHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392619 | `0x298028...976a1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392615 | `0x02415b...0224c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392627 | `0xd3923b...6b7470` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [www.snuggle.fi/security](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | n/a | matched | 15 | 0 | 0 | 1 | n/a |
| [valvessecurity.com](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3119] Abyss.pdf — no match: Scope table lists 5 source files. Audit dates: 10/11/2025 to 12/11/2025, so end date is 2025-11-12.
- [3121] www.snuggle.fi/security — matched: No reason recorded
- [11989] valvessecurity.com — no match: The document appears to be a marketing page for Valves Security, not an actual audit report. Only one contract name (VaultAudit) is mentioned in a code example, but no formal scope section or audit date is present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Abyss.pdf | vault | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | vault_registry | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | fee_manager | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | constants | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | protocol_config | unmatched — not counted | — | listed in scope table | no |
| www.snuggle.fi/security | AdminSatellite | own contract | SnuggleVaultAdminSatellite (selected) `0x5a332c...e4d271` — deployed 2026-02-16 00:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromePositionAdapter | own contract | AerodromePositionAdapter (selected) `0xe3efa7...f79589` — deployed 2026-02-16 00:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromeRewardAdapter | own contract | AerodromeRewardAdapter (selected) `0xcb16cb...d77306` — deployed 2026-02-16 00:08:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | FeeTransferHelper | own contract | FeeTransferHelper (selected) `0x613ba8...28b1f3` — deployed 2026-02-16 00:07:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | KeepersHelper V3 | own contract | KeepersHelper (selected) `0x60431b...563345` — deployed 2026-02-16 16:29:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapPositionAdapter | own contract | PancakeSwapPositionAdapter (selected) `0x0c0ba0...1b39e5` — deployed 2026-02-16 00:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapRewardAdapter | own contract | PancakeSwapRewardAdapter (selected) `0x63de14...18b1cf` — deployed 2026-02-16 00:08:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ProxyAdmin | own contract | ProxyAdmin (selected) `0x269dc2...cca86f` — deployed 2026-02-16 00:07:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ReferralTracker | own contract | ReferralTracker (selected) `0x2536a7...68d9ee` — deployed 2026-02-16 00:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleRebalanceLib | own contract | SnuggleRebalanceLib (selected) `0xf84b57...1dcddc` — deployed 2026-02-16 00:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleVault | unmatched — not counted | — | — | no |
| www.snuggle.fi/security | SnuggleVault Implementation | own contract | 0x02415b… (selected) `0x02415b...0224c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | StakingManager | own contract | StakingManager (selected) `0x3f928d...a270c1` — deployed 2026-02-16 00:07:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | TreasurySplitter | own contract | TreasurySplitter (selected) `0x93d0d1...a9ec12` — deployed 2026-02-16 00:07:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | UniswapV3Adapter | own contract | UniswapV3Adapter (selected) `0xf757c9...f33010` — deployed 2026-02-16 00:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ViewHelper | own contract | ViewHelper (selected) `0x298028...976a1c` — deployed 2026-02-16 00:08:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| valvessecurity.com | VaultAudit | unmatched — not counted | — | Mentioned in code snippet as VaultAudit.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=15

Zero-match audit list:

- [3119] Abyss.pdf
- [11989] valvessecurity.com

Fork inheritance lineage and inherited audits are included when available.
