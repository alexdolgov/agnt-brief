# Agentic Audit Brief: GoldFinger

## Export Authority

- Production state: **published scope**
- Raw selected rows: 20 across 8 audit(s)
- Eligible audit results: 9 (8 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: GoldFinger (`goldfinger`)
- Website: [https://goldfinger.finance/en](https://goldfinger.finance/en)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 13 unique implementations (19 raw deployments)
- Coverage basis: 7/7 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,884,814.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GoldFinger. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across bsc. Structural roles: 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), supporting (3)
- Contract kinds: contract (8)
- Detected standards: ownable (8), pausable (8), erc20 (3), erc20permit (3)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ARTToken (`0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424`, chain 56)
- ARTToken (`0xb8a1ed561c914f22bd69b0bb4558ad5a89feaae1`, chain 56)
- ARTVault (`0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef`, chain 56)
- GFDistributor (`0x92558bda86a95cdbff7bdebfe5c2ba7723154079`, chain 56)
- GFPriceOracle (`0x2c1bd629a23322bd54d403c9139743795903b4f4`, chain 56)
- GFRegistry (`0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a`, chain 56)
- GFStaking (`0x93639cc0b46b1f640a10efb6be1d634c7c867e1e`, chain 56)
- GFToken (`0x6db461da03b8ad06319ff2af985e1c8dfcc004e0`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/7 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 13 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/12
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 19
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 9 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidProof | Tier 2 | 7 | 58.3% | 2025-11 |
| unknown | Tier 2 | 1 | 8.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARTToken | token | project_anchor | own_supporting | 0 | bsc | unit-266825 | `0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424` | ✅ Audited |
| ARTVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-266828 | `0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef` | ✅ Audited |
| GFDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-266829 | `0x92558bda86a95cdbff7bdebfe5c2ba7723154079` | ✅ Audited |
| GFPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-266826 | `0x2c1bd629a23322bd54d403c9139743795903b4f4` | ✅ Audited |
| GFRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-266832 | `0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a` | ✅ Audited |
| GFStaking | unknown | project_anchor | own_supporting | 0 | bsc | unit-266830 | `0x93639cc0b46b1f640a10efb6be1d634c7c867e1e` | ✅ Audited |
| GFToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-266827 | `0x6db461da03b8ad06319ff2af985e1c8dfcc004e0` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARTToken | token | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc | unit-266831 | `0xb8a1ed561c914f22bd69b0bb4558ad5a89feaae1` | ⚠️ Unaudited |
| ARTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8cd8244843bf3e34dc5a978c29854f6c234643` | ⚠️ Unaudited |
| GFDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xcee77c30cce9bbcd35c0e2b05a414d4941d8572b`; bsc `0xeae164782f775a30451080a21a968a8b2618e32c`; bsc `0xf9e11ea441bc7eccf57f0ac3193d6b1799efaa62` | ⚠️ Unaudited |
| GFStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x65e580a52a91cb8519b0e9cd8029da6612c7ddb6`; bsc `0x96e4519b0c0cfc3edac80bcef5c5d0361b1a77f8`; bsc `0xb047828fd90d0807759604de833d46c56622e87d` | ⚠️ Unaudited |
| GFToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xbad7118c5b445d44dee72e186d594d315ac7792b`; bsc `0xdb399e1d142d82dfcb8a583a4f904dc733551dcc`; bsc `0xdb3fb41167dd5318af04da5aae43e56d6ddd77a3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2232a55e13cfba87e29dabe684aff292ad06859a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 2
- Unknown liveness contracts: 4
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=4

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | currently scope matched | ARTVault<br>`0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |
| bsc | currently scope matched | GFToken<br>`0x6db461da03b8ad06319ff2af985e1c8dfcc004e0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |
| bsc | candidate review | ARTVault<br>`0xaa8cd8244843bf3e34dc5a978c29854f6c234643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |
| bsc | candidate review | GFToken<br>`0xbad7118c5b445d44dee72e186d594d315ac7792b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |
| bsc | candidate review | GFToken<br>`0xdb399e1d142d82dfcb8a583a4f904dc733551dcc` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |
| bsc | candidate review | GFToken<br>`0xdb3fb41167dd5318af04da5aae43e56d6ddd77a3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf1bf0757d9ee7c23732d8f89ba20151eaa34ac51` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [goldfinger-zerodrift-report.pdf](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/goldfinger-zerodrift-report.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=b14fbb55-1679-47fd-92de-2b5780e48cac) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=56927176-71cc-496e-8b59-e46b4dcdbdc9) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=812d8642-0312-4d0c-a5de-f7d13e850273) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=bcdbd3a6-0ca2-4d05-9183-601437701a8d) | SolidProof | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=a5a2744f-aeb6-4ed4-abf3-85ae5c160b43) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=00cd8637-f69d-4a1d-b6dd-8a7a34315d1c) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger?audit=e2da520d-75a2-4461-b5c0-53fb5858ff8d) | SolidProof | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 0 | n/a |
| [app.solidproof.io/projects/goldfinger](https://app.solidproof.io/projects/goldfinger) | unknown | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9641] goldfinger-zerodrift-report.pdf — no match: Only one contract, CheckIn, is in scope. Audit date is January 2026, interpreted as last day of month.
- [11786] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11787] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11788] app.solidproof.io/projects/goldfinger — matched: Only GFToken.sol is explicitly listed in scope. Other contracts (GFDistributor, GFStaking, etc.) are mentioned in a dropdown but not audited.
- [11789] app.solidproof.io/projects/goldfinger — matched: Only ARTVault.sol is explicitly listed in scope. Other contracts (GFDistributor, GFStaking, GFToken, etc.) are mentioned in a dropdown but not audited; the report states 'we only audited the mentioned contract for the GoldFinger team'.
- [11790] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11791] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [11792] app.solidproof.io/projects/goldfinger — matched: No reason recorded
- [14537] app.solidproof.io/projects/goldfinger — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| goldfinger-zerodrift-report.pdf | CheckIn | unmatched — not counted | — | listed in scope | no |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558bda86a95cdbff7bdebfe5c2ba7723154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639cc0b46b1f640a10efb6be1d634c7c867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461da03b8ad06319ff2af985e1c8dfcc004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558bda86a95cdbff7bdebfe5c2ba7723154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFPriceOracle | own contract | GFPriceOracle (selected) `0x2c1bd629a23322bd54d403c9139743795903b4f4` — deployed 2025-11-03 07:27:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFRegistry | own contract | GFRegistry (selected) `0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a` — deployed 2025-11-03 07:30:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639cc0b46b1f640a10efb6be1d634c7c867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461da03b8ad06319ff2af985e1c8dfcc004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTToken | own contract | ARTToken (selected) `0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424` — deployed 2025-11-03 06:56:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | ARTVault | own contract | ARTVault (selected) `0x79d28c0b71dd6b0d58d50810a8da2aedefaff6ef` — deployed 2025-11-22 06:32:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558bda86a95cdbff7bdebfe5c2ba7723154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFPriceOracle | own contract | GFPriceOracle (selected) `0x2c1bd629a23322bd54d403c9139743795903b4f4` — deployed 2025-11-03 07:27:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFRegistry | own contract | GFRegistry (selected) `0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a` — deployed 2025-11-03 07:30:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFStaking | own contract | GFStaking (selected) `0x93639cc0b46b1f640a10efb6be1d634c7c867e1e` — deployed 2026-03-05 10:49:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFToken | own contract | GFToken (selected) `0x6db461da03b8ad06319ff2af985e1c8dfcc004e0` — deployed 2025-11-22 06:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| app.solidproof.io/projects/goldfinger | GFDistributor | own contract | GFDistributor (selected) `0x92558bda86a95cdbff7bdebfe5c2ba7723154079` — deployed 2026-03-04 09:54:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 20 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 20 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=20

Zero-match audit list:

- [9641] goldfinger-zerodrift-report.pdf

Fork inheritance lineage and inherited audits are included when available.
