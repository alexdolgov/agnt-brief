# Agentic Audit Brief: ApeX Protocol

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

- Project: ApeX Protocol (`apex-protocol`)
- Website: [https://www.apex.exchange/](https://www.apex.exchange/)
- Lifecycle: active (Tier 0, 65.5% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, chain-421613, ethereum, goerli, mantle
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $34,229,498.00
- On-chain TVL (included contracts): $277,348,685.70
- TVL by chain: Ethereum $277,348,685.70

## Project Description

This brief describes the observed EVM deployment and audit surface for ApeX Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base, bsc, chain-421613, ethereum, goerli, mantle. Structural roles: 10 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (10), core (1)
- Contract kinds: contract (11)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ApeX Omni gateway (`0x35d173...2c7b82`, chain 1)
- ApeX Omni gateway (`0xb8d9f0...a3a2d9`, chain 56)
- ApeX Omni gateway (`0x3c7c0e...db976c`, chain 5000)
- ApeX Omni liquidity swap contract (`0x234f7b...4a2a3e`, chain 1)
- ApeX Omni liquidity swap contract (`0x9e07b6...b4f855`, chain 56)
- ApeX Omni liquidity swap contract (`0x0f789a...07f119`, chain 8453)
- ApeX Omni spot swap contract (`0xac21a7...a0797b`, chain 1)
- ApeX Omni spot swap contract (`0xd06878...252db7`, chain 56)
- ApeX Omni spot swap contract (`0x197a30...a39d4e`, chain 8453)
- ApeX Omni spot swap contract (`0x9e07b6...b4f855`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 37 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ApeXToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379068 | `0x52a884...af42b8` | ⚠️ Unaudited |
| ApeX Omni gateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379065 | `0x35d173...2c7b82` | ⚠️ Unaudited |
| ApeX Omni gateway | unknown | project_anchor | own_supporting | 0 | bsc | unit-379093 | `0xb8d9f0...a3a2d9` | ⚠️ Unaudited |
| ApeX Omni gateway | unknown | project_anchor | own_supporting | 0 | mantle | unit-379091 | `0x3c7c0e...db976c` | ⚠️ Unaudited |
| ApeX Omni gateway | unknown | project_anchor | own_supporting | 0 | base | unit-379097 | `0xee7981...fd59d7` | ⚠️ Unaudited |
| ApeX Omni gateway | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379074 | `0x316984...c8466a` | ⚠️ Unaudited |
| ApeX Omni liquidity swap contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379092 | `0x9e07b6...b4f855` | ⚠️ Unaudited |
| ApeX Omni spot swap contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379070 | `0xac21a7...a0797b` | ⚠️ Unaudited |
| ApeX Omni spot swap contract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379094 | `0xd06878...252db7` | ⚠️ Unaudited |
| ApeX Omni spot swap contract | unknown | project_anchor | own_supporting | 0 | base | unit-379096 | `0x197a30...a39d4e` | ⚠️ Unaudited |
| ApeX Omni spot swap contract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379076 | `0x9e07b6...b4f855` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ApeX Omni liquidity swap contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379062 | `0x234f7b...4a2a3e` | ❓ Unverified |
| ApeX Omni liquidity swap contract | unknown | project_anchor | own_supporting | 0 | base | unit-379095 | `0x0f789a...07f119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379061 | `0x1221b9...c222ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379063 | `0x2a1dca...324a90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379064 | `0x2d45b2...f9ca65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379066 | `0x3fccf0...0581ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379067 | `0x44af87...f8497c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379069 | `0x634ce9...d7646f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-379071 | `0xcd43ab...b885b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379072 | `0xd6709c...672694` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-379073 | `0xefb66c...2c69ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379081 | `0x279bfd...d30e03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379082 | `0x432d19...cd717d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379083 | `0x4a0013...671762` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379084 | `0x55630f...4e6f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379085 | `0x58deeb...a1ee59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379086 | `0xbef25e...905c78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379087 | `0xc06592...ca9958` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | unit-379088 | `0xc0767d...170e81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379089 | `0xc73a38...987ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379090 | `0xebb088...f89068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-379075 | `0x61a1ff...0d3b56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-379077 | `0xae792a...7cb095` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-379078 | `0xd7c402...99ca2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | unit-379079 | `0x2014b3...618e1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | unit-379080 | `0x28c755...2807d5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit_report.pdf](https://github.com/ApeX-Protocol/core/blob/master/docs/audit_report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5909] audit_report.pdf — no match: Extracted contract names from the report's scope and findings sections. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit_report.pdf | BondPool | unmatched — not counted | — | listed in scope and findings | no |
| audit_report.pdf | BondPoolFactory | unmatched — not counted | — | listed in findings | no |
| audit_report.pdf | StakingPool | unmatched — not counted | — | listed in scope and findings | no |
| audit_report.pdf | Margin | unmatched — not counted | — | listed in findings | no |
| audit_report.pdf | Amm | unmatched — not counted | — | listed in findings | no |
| audit_report.pdf | PriceOracle | unmatched — not counted | — | listed in findings | no |
| audit_report.pdf | Invitation | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [5909] audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
