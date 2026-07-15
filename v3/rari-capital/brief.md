# Agentic Audit Brief: Rari Capital

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

- Project: Rari Capital (`rari-capital`)
- Website: [https://www.rari.capital/](https://www.rari.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,276,138.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rari Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across ethereum. Structural roles: 21 unclassified, 5 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: unclassified (21), supporting (5), core (4)
- Contract kinds: contract (30)
- Detected standards: erc1967proxy (7), ownable (2)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x016bf0...6922b0`, chain 1)
- UnnamedContract (`0x7c332f...3dc399`, chain 1)
- AdminUpgradeabilityProxy (`0x00815e...0e5561`, chain 1)
- AdminUpgradeabilityProxy (`0x0833cf...2d7648`, chain 1)
- AdminUpgradeabilityProxy (`0x1fa69a...cd98c7`, chain 1)
- AdminUpgradeabilityProxy (`0x3baa6b...8559ae`, chain 1)
- AdminUpgradeabilityProxy (`0x59fa43...13fce6`, chain 1)
- AdminUpgradeabilityProxy (`0x66f485...3da569`, chain 1)
- AdminUpgradeabilityProxy (`0x96ce4c...d82a7f`, chain 1)
- AdminUpgradeabilityProxy (`0x9c0cae...fc1043`, chain 1)
- AdminUpgradeabilityProxy (`0xa54b47...f9b98a`, chain 1)
- AdminUpgradeabilityProxy (`0xafd2aa...190d74`, chain 1)
- AdminUpgradeabilityProxy (`0xb465ba...7d9635`, chain 1)
- AdminUpgradeabilityProxy (`0xc6bf8c...8ddf4a`, chain 1)
- AdminUpgradeabilityProxy (`0xcda477...1d65f4`, chain 1)
- AdminUpgradeabilityProxy (`0xd291e7...6cc623`, chain 1)
- AdminUpgradeabilityProxy (`0xd6e194...61275e`, chain 1)
- AdminUpgradeabilityProxy (`0xfe98a5...202244`, chain 1)
- RariFundProxy (`0x35ddef...42c6e8`, chain 1)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (21 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391301 | `0x0833cf...2d7648` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391303 | `0x96ce4c...d82a7f` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391311 | `0x66f485...3da569` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391292 | `0x9245ef...dc3ffa` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391294 | `0xa42289...7e24b6` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391305 | `0xafd2aa...190d74` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391298 | `0x59fa43...13fce6` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391304 | `0xb465ba...7d9635` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391300 | `0xc6bf8c...8ddf4a` | ⚠️ Unaudited |
| RariFundManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391312 | `0xd6e194...61275e` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391310 | `0x00815e...0e5561` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391308 | `0xfe98a5...202244` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391290 | `0x35ddef...42c6e8` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391293 | `0xa3cc9e...3ebe5c` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391296 | `0xe4dee9...b3b439` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391297 | `0x3baa6b...8559ae` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391307 | `0xcda477...1d65f4` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391306 | `0xd291e7...6cc623` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391309 | `0x9c0cae...fc1043` | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391302 | `0x1fa69a...cd98c7` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391299 | `0xa54b47...f9b98a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391288 | `0x016bf0...6922b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391291 | `0x7c332f...3dc399` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7 — no match: The provided text is a URL and title, not the full audit report content. No contract names or scope section could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x66f485...3da569` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9245ef...dc3ffa` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa42289...7e24b6` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafd2aa...190d74` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x59fa43...13fce6` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb465ba...7d9635` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6bf8c...8ddf4a` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6e194...61275e` | RariFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00815e...0e5561` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe98a5...202244` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35ddef...42c6e8` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3cc9e...3ebe5c` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4dee9...b3b439` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3baa6b...8559ae` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcda477...1d65f4` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd291e7...6cc623` | RariGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c0cae...fc1043` | RariGovernanceTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fa69a...cd98c7` | RariGovernanceTokenUniswapDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa54b47...f9b98a` | RariGovernanceTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

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

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7

Fork inheritance lineage and inherited audits are included when available.
