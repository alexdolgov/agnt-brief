# Agentic Audit Brief: Augury Finance

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

- Project: Augury Finance (`augury-finance`)
- Website: [https://augury.finance/](https://augury.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
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

- UnnamedContract (`0x33c383...d11b26`, chain 137)
- UnnamedContract (`0x9e8ee4...15bb0e`, chain 137)
- UnnamedContract (`0xf6380d...3048e3`, chain 137)
- AuguryStateBasedDividendsV1 (`0x070aef...b2a238`, chain 137)
- MasterAugur (`0x6ad706...1a132e`, chain 137)
- OmenToken (`0x76e63a...e89a7e`, chain 137)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 25 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
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
| AirmailV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c1a89...604197` | ⚠️ Unaudited |
| AugurDividendsV1_CollectFromBug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d78d1...61017e` | ⚠️ Unaudited |
| AugurDividendsV1a | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17aa08...3a6744` | ⚠️ Unaudited |
| AugurStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x014944...b5cfab` | ⚠️ Unaudited |
| AuguryStateBasedDividendsV1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-379823 | `0x070aef...b2a238` | ⚠️ Unaudited |
| AuguryStateRepositoryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x870927...88a2f6` | ⚠️ Unaudited |
| AuguryV1IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa21610...b294fe` | ⚠️ Unaudited |
| ComponentExtractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ae7a3...951dec` | ⚠️ Unaudited |
| DividendPeriod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e89d4...05dfad` | ⚠️ Unaudited |
| DividendsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc389bf...3602ab` | ⚠️ Unaudited |
| GameNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x663229...204b26` | ⚠️ Unaudited |
| GeneralStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x444bdc...a2144e` | ⚠️ Unaudited |
| GloryERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83553e...35c750` | ⚠️ Unaudited |
| MasterAugur | unknown | project_anchor | own_supporting | 0 | polygon | unit-379827 | `0x6ad706...1a132e` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8442d4...853977` | ⚠️ Unaudited |
| OmenStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x307f3e...6a3319` | ⚠️ Unaudited |
| OmenToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-379828 | `0x76e63a...e89a7e` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1d3df...f9d80c` | ⚠️ Unaudited |
| UnlimitedCauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x019c7a...fe113a` | ⚠️ Unaudited |
| UnlimitedCauldronState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d9b75...877e26` | ⚠️ Unaudited |
| VaultChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48f459...7553e3` | ⚠️ Unaudited |
| Watt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x725a93...66c45b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379825 | `0x33c383...d11b26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379829 | `0x9e8ee4...15bb0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379831 | `0xf6380d...3048e3` | ❓ Unverified |

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
| polygon | `0x070aef...b2a238` | AuguryStateBasedDividendsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6ad706...1a132e` | MasterAugur | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x76e63a...e89a7e` | OmenToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
