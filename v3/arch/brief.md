# Agentic Audit Brief: Arch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 88.8% over 90 days

## Project Overview

- Project: Arch (`arch`)
- Website: [https://www.arch.finance](https://www.arch.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 18 unique implementations (21 raw deployments)
- Coverage basis: 1/18 confirmed own live verified implementations (5.6%); conservative 5.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $214,722.06
- On-chain TVL (included contracts): $153,736.71
- TVL by chain: Polygon $142,673.39 | Ethereum $11,063.32

## Project Description

This brief describes the observed EVM deployment and audit surface for Arch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across ethereum, polygon. Structural roles: 20 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (20), unclassified (1)
- Contract kinds: contract (21)
- Detected standards: erc20 (6), erc20permit (6)
- Frameworks: openzeppelin (11), solmate (5), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 21 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

**SetToken** (`0x0d20e8...7f8951`, chain 1)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- Chamber (`0x103bb3...a2e16b`, chain 1)
- Chamber (`0xe15a66...7263cf`, chain 1)
- Chamber (`0x8f0d56...1dbc23`, chain 137)
- Chamber (`0xafb6e8...1e9f3c`, chain 137)
- Chamber (`0xf401e2...7a1545`, chain 137)
- FxERC20 (`0x027af1...997d5a`, chain 137)
- FxERC20 (`0xab1b16...06c187`, chain 137)
- SetToken (`0xe8e848...67e601`, chain 1)
- SetToken (`0x6ca9c8...ff7d3b`, chain 137)
- UChildERC20Proxy (`0x9a41e0...1ec0c4`, chain 137)
- UChildERC20Proxy (`0xbcd2c5...35406a`, chain 137)
- UniswapV2Pair (`0xee875e...7481ca`, chain 137)
- UniswapV3Pool (`0x01f40d...dd21ea`, chain 1)
- UniswapV3Pool (`0x247027...bb10f2`, chain 1)
- UniswapV3Pool (`0x6147c5...0db0b5`, chain 1)
- UniswapV3Pool (`0xbb9300...0822a4`, chain 1)
- UniswapV3Pool (`0x39baac...63edb9`, chain 137)
- UniswapV3Pool (`0x538b2b...8ebf9d`, chain 137)
- UniswapV3Pool (`0xb485c3...def211`, chain 137)
- UniswapV3Pool (`0xefba86...67ed02`, chain 137)

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/18 (5.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/18
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $153,736.71
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $153,736.71 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 5.6% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Chamber | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379543 | `0xe15a66...7263cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FxERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-379545 | 2 deployments: polygon `0x027af1...997d5a`; polygon `0xab1b16...06c187` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | ethereum | unit-379538 | 3 deployments: ethereum `0x0d20e8...7f8951`; ethereum `0xe8e848...67e601`; polygon `0x6ca9c8...ff7d3b` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-379556 | `0x9a41e0...1ec0c4` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-379557 | `0xbcd2c5...35406a` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379554 | `0xefba86...67ed02` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379541 | `0x6147c5...0db0b5` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379552 | `0xb485c3...def211` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379537 | `0x01f40d...dd21ea` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379546 | `0x39baac...63edb9` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-379547 | `0x538b2b...8ebf9d` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379542 | `0xbb9300...0822a4` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379540 | `0x247027...bb10f2` | ⚠️ Unaudited |
| Chamber | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379539 | `0x103bb3...a2e16b` | ⚠️ Unaudited |
| Chamber | unknown | project_anchor | own_supporting | 0 | polygon | unit-379549 | `0x8f0d56...1dbc23` | ⚠️ Unaudited |
| Chamber | unknown | project_anchor | own_supporting | 0 | polygon | unit-379551 | `0xafb6e8...1e9f3c` | ⚠️ Unaudited |
| Chamber | unknown | project_anchor | own_supporting | 0 | polygon | unit-379555 | `0xf401e2...7a1545` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | polygon | unit-379553 | `0xee875e...7481ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Chambers-audit-report.pdf](https://arch-document.s3.amazonaws.com/Chambers-audit-report.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12672] Chambers-audit-report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Chambers-audit-report.pdf | ArrayUtils | unmatched — not counted | — | — | no |
| Chambers-audit-report.pdf | Chamber | own contract | Chamber (selected) `0xe15a66...7263cf` — deployed 2023-02-21 22:06:11+03 — liveness: live (code_present_context)<br>Chamber (alternative) `0xafb6e8...1e9f3c` — deployed 2023-04-29 00:37:57+03 — liveness: live (current_address_book_code)<br>Chamber (alternative) `0x103bb3...a2e16b` — deployed 2023-04-20 01:17:35+03 — liveness: live (code_present_context)<br>Chamber (alternative) `0x8f0d56...1dbc23` — deployed 2023-04-29 00:40:57+03 — liveness: live (current_address_book_code)<br>Chamber (alternative) `0xf401e2...7a1545` — deployed 2023-04-29 00:39:05+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-02-21 was 20d from audit; next candidate 78d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Chambers-audit-report.pdf | ChamberGod | unmatched — not counted | — | — | no |
| Chambers-audit-report.pdf | IssuerWizard | unmatched — not counted | — | — | no |
| Chambers-audit-report.pdf | RebalancerWizard | unmatched — not counted | — | — | no |
| Chambers-audit-report.pdf | StreamingFeeWizard | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x027af1...997d5a` | FxERC20 | token | $126,370.79 | Verified native implementation with $126,370.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d20e8...7f8951` | SetToken | token | $11,060.29 | Verified native implementation with $11,060.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9a41e0...1ec0c4` | UChildERC20 | token | $9,491.53 | Verified native implementation with $9,491.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbcd2c5...35406a` | UChildERC20 | token | $6,624.97 | Verified native implementation with $6,624.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x103bb3...a2e16b` | Chamber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8f0d56...1dbc23` | Chamber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xafb6e8...1e9f3c` | Chamber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf401e2...7a1545` | Chamber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 9 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: temporal_name=1

Fork inheritance lineage and inherited audits are included when available.
