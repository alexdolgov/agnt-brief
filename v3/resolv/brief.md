# Agentic Audit Brief: Resolv

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium
- Contract surface: 22 unique implementations (32 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,707,596.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Resolv. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium. Structural roles: 14 core, 6 supporting, 4 infra. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (14), supporting (6), infra (4)
- Contract kinds: contract (24)
- Detected standards: pausable (11), ownable (9), accesscontrol (7), erc165 (7), erc1967proxy (6), erc20 (6), erc20permit (4)
- Frameworks: openzeppelin (24), openzeppelin-upgradeable (16), layerzero (2)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BlueprintByResolv (`0x2e1e87...f7059e`, chain 42161)
- ExternalRequestsManager (`0x10f4d4...dfc872`, chain 1)
- RLP Soneium (`0x35533f...16868b`, chain 1868)
- TheCounter (`0xa27a69...e55861`, chain 1)
- TheCounter (`0xc7ab90...1eafa0`, chain 1)
- TransparentUpgradeableProxy (`0x1202f5...c75055`, chain 1)
- TransparentUpgradeableProxy (`0x0a3d84...cc5c48`, chain 999)
- TransparentUpgradeableProxy (`0x0ad339...394a77`, chain 999)
- TransparentUpgradeableProxy (`0x46c1c1...caeaab`, chain 999)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 8453)
- TransparentUpgradeableProxy (`0xb67675...135ba1`, chain 8453)
- TransparentUpgradeableProxy (`0xc31389...aa5fdc`, chain 8453)
- TransparentUpgradeableProxy (`0x2492d0...0a79e9`, chain 42161)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 42161)
- TransparentUpgradeableProxy (`0x66cfbd...8e2254`, chain 42161)
- TransparentUpgradeableProxy (`0x2492d0...0a79e9`, chain 80094)
- TransparentUpgradeableProxy (`0x35e5db...e8a4b9`, chain 80094)
- USR Soneium (`0xb1b385...99f15c`, chain 1868)
- UsrExternalRequestsManager (`0xac85ef...a95f2e`, chain 1)
- wstUSR Soneium (`0x2a52b2...9e5699`, chain 1868)

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (18 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/19
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 22
- Raw deployments: 32
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 10.5% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391462 | `0x6c8984...10aab4` | ✅ Audited |
| WstUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391460 | `0x1202f5...c75055` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391451 | `0x10f4d4...dfc872` | ⚠️ Unaudited |
| HeyMintERC721AReference | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391467 | `0x2e1e87...f7059e` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391463 | `0xfe4bce...2e5e23` | ⚠️ Unaudited |
| ResolvToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391461 | `0x259338...f768a1` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | bsc | unit-391469 (3 proxies) | 3 deployments: bsc `0x2492d0...0a79e9`; bsc `0x35e5db...e8a4b9`; bsc `0x425481...a55429` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | bsc | unit-391468 | `0xda6cef...c6b360` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | hyperliquid | unit-391474 (3 proxies) | 3 deployments: hyperliquid `0x0a3d84...cc5c48`; hyperliquid `0x0ad339...394a77`; hyperliquid `0x46c1c1...caeaab` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | base | unit-391471 (2 proxies) | 2 deployments: base `0x35e5db...e8a4b9`; base `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | base | unit-391472 | `0xb67675...135ba1` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-391465 (2 proxies) | 2 deployments: arbitrum `0x2492d0...0a79e9`; arbitrum `0x35e5db...e8a4b9` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391466 | `0x66cfbd...8e2254` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | berachain | unit-391470 (2 proxies) | 2 deployments: berachain `0x2492d0...0a79e9`; berachain `0x35e5db...e8a4b9` | ⚠️ Unaudited |
| SimpleToken | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391464 (2 proxies) | 2 deployments: ethereum `0x4956b5...528f96`; ethereum `0x66a1e3...f3e110` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391454 | `0xa27a69...e55861` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391456 | `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 3 | plasma | unit-391473 (3 proxies) | 3 deployments: plasma `0x2a52b2...9e5699`; plasma `0x35533f...16868b`; plasma `0xb1b385...99f15c` | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391455 | `0xac85ef...a95f2e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RLP Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391458 | `0x35533f...16868b` | ❓ Unverified |
| USR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391459 | `0xb1b385...99f15c` | ❓ Unverified |
| wstUSR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391457 | `0x2a52b2...9e5699` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | n/a | matched | 2 | 2 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3993] 2024.12.02 - Final - Resolv Core Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | StUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6c8984...10aab4` — deployed 2024-06-02 21:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | WstUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1202f5...c75055` — deployed 2024-08-21 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x10f4d4...dfc872` | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe4bce...2e5e23` | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x259338...f768a1` | ResolvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2492d0...0a79e9` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xda6cef...c6b360` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4956b5...528f96` | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa27a69...e55861` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7ab90...1eafa0` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac85ef...a95f2e` | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
