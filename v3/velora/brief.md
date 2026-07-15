# Agentic Audit Brief: Velora

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

- Project: Velora (`velora`)
- Website: [https://app.velora.xyz](https://app.velora.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain
- Contract surface: 41 unique implementations (41 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $226,515.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Velora. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain. Structural roles: 9 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: ownable (2), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (7), solady (2), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...33c96d`, chain 10)
- UnnamedContract (`0x007000...0010cc`, chain 10)
- UnnamedContract (`0x0927fd...849f6d`, chain 10)
- UnnamedContract (`0x0a0d53...406742`, chain 10)
- UnnamedContract (`0x6a000f...001068`, chain 10)
- UnnamedContract (`0x000000...33c96d`, chain 56)
- UnnamedContract (`0x007000...0010cc`, chain 56)
- UnnamedContract (`0x0a0d53...406742`, chain 56)
- UnnamedContract (`0x6a000f...001068`, chain 56)
- UnnamedContract (`0x007000...0010cc`, chain 100)
- UnnamedContract (`0x6a000f...001068`, chain 100)
- UnnamedContract (`0x92ead5...7ca241`, chain 100)
- UnnamedContract (`0x000000...33c96d`, chain 130)
- UnnamedContract (`0x007000...0010cc`, chain 130)
- UnnamedContract (`0x0a0d53...406742`, chain 130)
- UnnamedContract (`0x6a000f...001068`, chain 130)
- UnnamedContract (`0x92ead5...7ca241`, chain 130)
- UnnamedContract (`0x000000...33c96d`, chain 137)
- UnnamedContract (`0x007000...0010cc`, chain 137)
- UnnamedContract (`0x0a0d53...406742`, chain 137)
- UnnamedContract (`0x6a000f...001068`, chain 137)
- UnnamedContract (`0x000000...33c96d`, chain 8453)
- UnnamedContract (`0x007000...0010cc`, chain 8453)
- UnnamedContract (`0x0a0d53...406742`, chain 8453)
- UnnamedContract (`0x6a000f...001068`, chain 8453)
- UnnamedContract (`0x000000...33c96d`, chain 42161)
- UnnamedContract (`0x007000...0010cc`, chain 42161)
- UnnamedContract (`0x0927fd...849f6d`, chain 42161)
- UnnamedContract (`0x0a0d53...406742`, chain 42161)
- UnnamedContract (`0x6a000f...001068`, chain 42161)
- UnnamedContract (`0x007000...0010cc`, chain 43114)
- UnnamedContract (`0x6a000f...001068`, chain 43114)
- Adapter (`0x000000...33c96d`, chain 1)
- AugustusFeeVault (`0x007000...0010cc`, chain 1)
- AugustusRFQ (`0xe92b58...f55a06`, chain 1)
- AugustusRFQ (`0x8dcdfe...0288bb`, chain 56)
- AugustusRFQ (`0xf3cd47...09a043`, chain 137)
- AugustusRFQ (`0xa003df...ac5eed`, chain 8453)
- AugustusRFQ (`0x34302c...9df51f`, chain 43114)
- AugustusV6 (`0x6a000f...001068`, chain 1)
- DeltaWrappedNative (`0x0a0d53...406742`, chain 1)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 41 of 41 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AugustusFeeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395680 | `0x007000...0010cc` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395683 | `0xe92b58...f55a06` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-395714 | `0x8dcdfe...0288bb` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | polygon | unit-395701 | `0xf3cd47...09a043` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | base | unit-395719 | `0xa003df...ac5eed` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395708 | `0x34302c...9df51f` | ⚠️ Unaudited |
| AugustusV6 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395682 | `0x6a000f...001068` | ⚠️ Unaudited |
| DeltaWrappedNative | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395681 | `0x0a0d53...406742` | ⚠️ Unaudited |
| PreSignatureModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395720 | `0x000000...33c96d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395684 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395685 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395686 | `0x0927fd...849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395687 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395688 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395710 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395711 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395712 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395713 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395689 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395690 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395691 | `0x92ead5...7ca241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395692 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395693 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395694 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395695 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395696 | `0x92ead5...7ca241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395697 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395698 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395699 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395700 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395715 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395716 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395717 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395718 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395702 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395703 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395704 | `0x0927fd...849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395705 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395706 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395707 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395709 | `0x6a000f...001068` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - ParaSwap [20.01.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20ParaSwap%20%5B20.01.2021%5D.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14112] Audit Report - ParaSwap [20.01.2021].pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - ParaSwap [20.01.2021].pdf | AugustusSwapper | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Partner | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | PartnerRegistry | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | TokenTransferProxy | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Lib | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Router | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x007000...0010cc` | AugustusFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe92b58...f55a06` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8dcdfe...0288bb` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf3cd47...09a043` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa003df...ac5eed` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34302c...9df51f` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a000f...001068` | AugustusV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a0d53...406742` | DeltaWrappedNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...33c96d` | PreSignatureModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14112] Audit Report - ParaSwap [20.01.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
