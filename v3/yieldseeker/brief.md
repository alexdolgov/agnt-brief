# Agentic Audit Brief: YieldSeeker

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: YieldSeeker (`yieldseeker`)
- Website: [https://yieldseeker.xyz](https://yieldseeker.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 8/14 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,287,639.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldSeeker. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 11 supporting, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (3)
- Contract kinds: contract (14)
- Detected standards: accesscontrol (5), erc165 (5), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- YieldSeekerAaveV3Adapter (`0x2d04c5...36baeb`, chain 8453)
- YieldSeekerAdapterRegistry (`0x4a5c3c...189cf0`, chain 8453)
- YieldSeekerAdminTimelock (`0x8e074b...e23bab`, chain 8453)
- YieldSeekerAerodromeCLSwapAdapter (`0x94565f...c6b0c4`, chain 8453)
- YieldSeekerAerodromeV2SwapAdapter (`0xa3c922...1d020f`, chain 8453)
- YieldSeekerAgentWalletFactory (`0x9c7410...c95130`, chain 8453)
- YieldSeekerAgentWalletV1 (`0x324034...e05051`, chain 8453)
- YieldSeekerCompoundV2Adapter (`0x3f7de8...d5366a`, chain 8453)
- YieldSeekerCompoundV3Adapter (`0x66621c...9b3ad0`, chain 8453)
- YieldSeekerERC4626Adapter (`0x3bf2b1...f12ad7`, chain 8453)
- YieldSeekerFeeTracker (`0x26f4bb...c957db`, chain 8453)
- YieldSeekerMerklAdapter (`0xda7ac0...2bfc0c`, chain 8453)
- YieldSeekerSwapSellPolicy (`0x1ce58b...9cf3ec`, chain 8453)
- YieldSeekerUniswapV3SwapAdapter (`0x4ad957...840b58`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/14 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/14
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 8 | 57.1% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| YieldSeekerAdapterRegistry | adapter | project_anchor | own_supporting | 0 | base | unit-397625 | `0x4a5c3c...189cf0` | ✅ Audited |
| YieldSeekerAdminTimelock | governance | project_anchor | own_supporting | 0 | base | unit-397628 | `0x8e074b...e23bab` | ✅ Audited |
| YieldSeekerAgentWalletFactory | registry | project_anchor | own_supporting | 0 | base | unit-397630 | `0x9c7410...c95130` | ✅ Audited |
| YieldSeekerCompoundV2Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397624 | `0x3f7de8...d5366a` | ✅ Audited |
| YieldSeekerCompoundV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397627 | `0x66621c...9b3ad0` | ✅ Audited |
| YieldSeekerERC4626Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397623 | `0x3bf2b1...f12ad7` | ✅ Audited |
| YieldSeekerFeeTracker | unknown | project_anchor | own_supporting | 0 | base | unit-397620 | `0x26f4bb...c957db` | ✅ Audited |
| YieldSeekerMerklAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397632 | `0xda7ac0...2bfc0c` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| YieldSeekerAaveV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397621 | `0x2d04c5...36baeb` | ⚠️ Unaudited |
| YieldSeekerAerodromeCLSwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397629 | `0x94565f...c6b0c4` | ⚠️ Unaudited |
| YieldSeekerAerodromeV2SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397631 | `0xa3c922...1d020f` | ⚠️ Unaudited |
| YieldSeekerAgentWalletV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397622 | `0x324034...e05051` | ⚠️ Unaudited |
| YieldSeekerSwapSellPolicy | unknown | project_anchor | own_supporting | 0 | base | unit-397619 | `0x1ce58b...9cf3ec` | ⚠️ Unaudited |
| YieldSeekerUniswapV3SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397626 | `0x4ad957...840b58` | ⚠️ Unaudited |

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
| [20260305-nethermind.pdf](https://github.com/tokenpage/yieldseeker-contracts/blob/main/audits/20260305-nethermind.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | matched | 8 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14223] 20260305-nethermind.pdf — matched: Extracted 25 contract names from the 'Audited Files' table in Section 2. The audit date is the final report date: March 05, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20260305-nethermind.pdf | AgentWalletV1 | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | FeeTracker | own contract | YieldSeekerFeeTracker (selected) `0x26f4bb...c957db` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | IAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AgentWalletFactory | own contract | YieldSeekerAgentWalletFactory (selected) `0x9c7410...c95130` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | AdapterRegistry | own contract | YieldSeekerAdapterRegistry (selected) `0x4a5c3c...189cf0` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | AdminTimelock | own contract | YieldSeekerAdminTimelock (selected) `0x8e074b...e23bab` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | IAgentWallet | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAdapterRegistry | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAgentWallet | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKErrors | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKMerklAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKBaseVaultAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKCompoundV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKZeroXAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKCompoundV2Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKERC4626Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAaveV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | MerklAdapter | own contract | YieldSeekerMerklAdapter (selected) `0xda7ac0...2bfc0c` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | CompoundV2Adapter | own contract | YieldSeekerCompoundV2Adapter (selected) `0x3f7de8...d5366a` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | ERC4626Adapter | own contract | YieldSeekerERC4626Adapter (selected) `0x3bf2b1...f12ad7` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | CompoundV3Adapter | own contract | YieldSeekerCompoundV3Adapter (selected) `0x66621c...9b3ad0` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2d04c5...36baeb` | YieldSeekerAaveV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x94565f...c6b0c4` | YieldSeekerAerodromeCLSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa3c922...1d020f` | YieldSeekerAerodromeV2SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x324034...e05051` | YieldSeekerAgentWalletV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1ce58b...9cf3ec` | YieldSeekerSwapSellPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4ad957...840b58` | YieldSeekerUniswapV3SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
