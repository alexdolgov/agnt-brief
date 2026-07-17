# Agentic Audit Brief: Augury Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Augury Finance (`augury-finance`)
- Website: [https://augury.finance/](https://augury.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $207,194.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Augury Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x33c3834262903d6bcecb0ba936fc65caa4d11b26`, chain 137)
- UnnamedContract (`0x9e8ee4f17f17371d53e2fb19bdde7a084215bb0e`, chain 137)
- UnnamedContract (`0xf6380d9b4cc3a0a180d5f1d78e3b7a33ec3048e3`, chain 137)
- AuguryStateBasedDividendsV1 (`0x070aef7a90bd7b4b3b43355c81c56011d5b2a238`, chain 137)
- MasterAugur (`0x6ad70613d14c34aa69e1604af91c39e0591a132e`, chain 137)
- OmenToken (`0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 25 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirmailV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c1a89729207a5d5ffe8cbfacce1826f92604197` | ⚠️ Unaudited |
| AugurDividendsV1_CollectFromBug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d78d17cd6199f86c0efd93f8f7e4fb88961017e` | ⚠️ Unaudited |
| AugurDividendsV1a | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17aa087a86e9c3881af3f1e0a517421f5d3a6744` | ⚠️ Unaudited |
| AugurStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0149444a018d30edffc19960dc4eae2b6eb5cfab` | ⚠️ Unaudited |
| AuguryStateBasedDividendsV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-379823 | `0x070aef7a90bd7b4b3b43355c81c56011d5b2a238` | ⚠️ Unaudited |
| AuguryStateRepositoryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8709278f89d6fb589f1188f6b415d3edee88a2f6` | ⚠️ Unaudited |
| AuguryV1IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2161090455ad57d9c96975dee2288011bb294fe` | ⚠️ Unaudited |
| ComponentExtractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ae7a358506d32c6a51d5e30acf7dd693c951dec` | ⚠️ Unaudited |
| DividendPeriod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e89d422c6a4fb7066fe91232fa9873d1705dfad` | ⚠️ Unaudited |
| DividendsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc389bf59f74dade9a59084657edf6d6fb83602ab` | ⚠️ Unaudited |
| GameNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6632294fad327c5d2b0fed494a5d79c96b204b26` | ⚠️ Unaudited |
| GeneralStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x444bdc7541eb55d641a54860ddecf6a71da2144e` | ⚠️ Unaudited |
| GloryERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83553e4fa239c2f0b6622eb9f893bd872e35c750` | ⚠️ Unaudited |
| MasterAugur | unknown | project_anchor | own_supporting | 0 | polygon | unit-379827 | `0x6ad70613d14c34aa69e1604af91c39e0591a132e` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8442d4beabb47e99518c706b1a554f318d853977` | ⚠️ Unaudited |
| OmenStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x307f3e279ee518bc0363e3cf382954ed516a3319` | ⚠️ Unaudited |
| OmenToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-379828 | `0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1d3dfbc2df52668ba2c5e09044743f5a5f9d80c` | ⚠️ Unaudited |
| UnlimitedCauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x019c7a610d980d94e7f8ece79c0ed2ac43fe113a` | ⚠️ Unaudited |
| UnlimitedCauldronState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d9b75f7a0abc679154bac9b2054f65c45877e26` | ⚠️ Unaudited |
| VaultChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48f4598095394b8ee9233eba42d2595d067553e3` | ⚠️ Unaudited |
| Watt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x725a937a7b80d615719f66e79a245f3c7766c45b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379825 | `0x33c3834262903d6bcecb0ba936fc65caa4d11b26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379829 | `0x9e8ee4f17f17371d53e2fb19bdde7a084215bb0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379831 | `0xf6380d9b4cc3a0a180d5f1d78e3b7a33ec3048e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[**Certik Report (ongoing)**]()<br>](https://skynet.certik.com/projects/augury) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29738] [**Certik Report (ongoing)**]()<br> — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, no list of audited contracts, and no audit report date. The only contract address mentioned (0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e) is a token contract, but it is not explicitly stated to be in scope of an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x070aef7a90bd7b4b3b43355c81c56011d5b2a238` | AuguryStateBasedDividendsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6ad70613d14c34aa69e1604af91c39e0591a132e` | MasterAugur | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e` | OmenToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [29738] [**Certik Report (ongoing)**]()<br>

Fork inheritance lineage and inherited audits are included when available.
