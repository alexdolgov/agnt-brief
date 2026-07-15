# Agentic Audit Brief: LOCKON

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, polygon
- Contract surface: 25 unique implementations (62 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $879,886.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LOCKON. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 6 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**SetToken** (`0xadb6d6...437252`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xbe9a09...e30f63`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xd32dfe...80662f`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24b803...596c8a`, chain 42161)
- UnnamedContract (`0x9e877c...0ec079`, chain 42161)
- UnnamedContract (`0xdd4850...ff3fac`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 6 of 25 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 25
- Raw deployments: 62
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf6e8fe...7e6b99` | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: polygon `0x2ce6c3...9f34b0`; polygon `0x3b2a94...18b64e`; polygon `0x4a4ebd...5cade4`; polygon `0x6f0790...4cb8ed`; polygon `0x78bc29...c846dc`; polygon `0xe6f4a7...cef262`; arbitrum `0x018afb...925e82`; arbitrum `0xcc0589...2e6723` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x153e73...fb6e83`; arbitrum `0x828680...dfeb23`; arbitrum `0xa36c2b...b864be` | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x40c20f...dbac14`; polygon `0x44ace3...a408c4`; polygon `0xa2e9af...e83763`; polygon `0xdbf320...79f058`; polygon `0xe9eecd...eea18d`; arbitrum `0x7eea52...b86c79`; arbitrum `0x8ca32f...65a585` | ⚠️ Unaudited |
| IndexStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8087cb...f4312d` | ⚠️ Unaudited |
| IntegrationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x6bc676...67cc89`; arbitrum `0x27e193...c604ae`; arbitrum `0x97bd10...12b633` | ⚠️ Unaudited |
| LockonVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x555962...91f2a0` | ⚠️ Unaudited |
| LockStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x36f6dd...11423a` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x992c20...d6ef74` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0xec45d1...ea9f24`; arbitrum `0x36a922...f82820`; arbitrum `0xb350d9...3069b2` | ⚠️ Unaudited |
| PositionComponentCorrectionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: polygon `0x8868c2...bcabb9`; polygon `0x8a11c6...a929e5`; polygon `0x9a4620...b041ba`; arbitrum `0x5a0c15...0795b8`; arbitrum `0x781f87...2cc7c5`; arbitrum `0xcaf7e1...f799e3` | ⚠️ Unaudited |
| PositionUnitAdjusterModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x63005b...b35f50`; polygon `0x8c2e03...95f06b`; polygon `0xb9bf07...642282`; arbitrum `0x99871a...b17278`; arbitrum `0xc2031d...be1b02`; arbitrum `0xe1093e...05b7eb` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245152 | `0xadb6d6...437252` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245153 | `0xbe9a09...e30f63` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245154 | `0xd32dfe...80662f` | ⚠️ Unaudited |
| TradeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x6cc11e...1c3b01`; arbitrum `0x495113...a026a6`; arbitrum `0xebe11a...56bcd3` | ⚠️ Unaudited |
| ZeroExApiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: polygon `0x8d93a0...4320c1`; polygon `0xe65f1a...37309b`; arbitrum `0x1f1a16...b37308`; arbitrum `0x28ccf5...8f4f23` | ⚠️ Unaudited |
| ZeroExApiV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x6b5842...45d5b5`; polygon `0xa18670...823cb3`; arbitrum `0x958360...648550`; arbitrum `0xb70e58...fdf3d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c50ce...a3520f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x175024...3290d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245155 | `0x24b803...596c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d0b47...72c300` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245156 | `0x9e877c...0ec079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4106f...833468` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245157 | `0xdd4850...ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [gitlab.com/lockon-finance/core-contracts/-/tree/main/audits](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [blaize.tech/clients/smart-contract-security-audit-for-lockon-finance](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [final_report_LOCKON_Mar_27_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [bunzz-audit (GitHub directory)](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits — no match: The provided text is a fragment of a GitLab page header, not an audit report. No contract names or audit date could be extracted.
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance — no match: Only one contract name explicitly mentioned in scope; no file paths or detailed scope table provided.
- [3230] final_report_LOCKON_Mar_27_2024.pdf — no match: No reason recorded
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf — no match: No reason recorded
- [3232] Lockon-audit-report-[7-July-2023].pdf — no match: No reason recorded
- [3233] final_report_LOCKON_Oct_25_2024.pdf — no match: Only one contract in scope: LockonReferral from lockon-finance/lock-contracts repository.
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf — no match: No reason recorded
- [15448] bunzz-audit (GitHub directory) — no match: The provided text is a GitHub directory listing with no actual audit report content. No contract names or audit details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blaize.tech/clients/smart-contract-security-audit-for-lockon-finance | ExchangeIssuanceZeroEx | unmatched — not counted | — | mentioned as a notable addition in the scope description | no |
| final_report_LOCKON_Mar_27_2024.pdf | Airdrop | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | IndexStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockToken | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockonVesting | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | MerkleAirdrop | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | Position | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | PositionUnitAdjusterModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | BasicIssuanceModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExchangeIssuanceZeroEx | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExtendModuleBase | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Operator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Pausable | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | SetTokenCreator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | TradeModule | unmatched — not counted | — | — | no |
| final_report_LOCKON_Oct_25_2024.pdf | LockonReferral | unmatched — not counted | — | listed in scope and findings location | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | Airdrop.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | IndexStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockToken.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockonVesting.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xadb6d6...437252` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbe9a09...e30f63` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd32dfe...80662f` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance
- [3230] final_report_LOCKON_Mar_27_2024.pdf
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf
- [3232] Lockon-audit-report-[7-July-2023].pdf
- [3233] final_report_LOCKON_Oct_25_2024.pdf
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf
- [15448] bunzz-audit (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
