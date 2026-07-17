# Agentic Audit Brief: Armitage by Wintermute

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Armitage by Wintermute (`armitage-by-wintermute`)
- Website: [https://armitage.wintermute.com](https://armitage.wintermute.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 8 unique implementations (10 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $56,367,700.69
- On-chain TVL (included contracts): $56,389,000.80
- TVL by chain: Ethereum $56,389,000.80

## Project Description

This brief describes the observed EVM deployment and audit surface for Armitage by Wintermute. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), erc20permit (2), erc4626 (2), multicall (2)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- SafeProxy (`0x4687e45bb5518a995913a24bb2816fe2031d74d8`, chain 1)
- SafeProxy (`0xb83a77677c51aaf6c45b0b64199eae6938559e5e`, chain 1)
- VaultV2 (`0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b`, chain 1)
- VaultV2 (`0xa2eaad0d586cf9fd73bb2c09cf6a7e3e187d68cd`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 3 of 8 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 10
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $56,389,000.80
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $56,389,000.80 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379558 | 2 deployments: ethereum `0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b`; ethereum `0xa2eaad0d586cf9fd73bb2c09cf6a7e3e187d68cd` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` | ⚠️ Unaudited |
| RegistryList | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 2 | ethereum | unit-379561 (2 proxies) | 2 deployments: ethereum `0x4687e45bb5518a995913a24bb2816fe2031d74d8`; ethereum `0xb83a77677c51aaf6c45b0b64199eae6938559e5e` | ⚠️ Unaudited |
| VaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d94f746defa1928926b84fb2596c06926c0405` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379559 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b` | VaultV2 | core_logic | $56,389,000.80 | Verified native implementation with $56,389,000.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
