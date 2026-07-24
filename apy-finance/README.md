# Agentic Audit Brief: APY Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: APY Finance (`apy-finance`)
- Website: [https://apy.finance](https://apy.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 13 unique implementations (14 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $413,794.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for APY Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe18b0365d5d09f394f84ee56ed29dd2d8d6fba5f`, chain 1)
- UnnamedContract (`0xea9c5a2717d5ab75afaac340151e73a7e37d99a7`, chain 1)
- PoolTokenV3 (`0x75ce0e501e2e6776fcaaa514f394a88a772a8970`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 3 of 13 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 13
- Raw deployments: 14
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| APYGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561af1ec26491a89e3907fb11eed479843240b62` | ⚠️ Unaudited |
| APYPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21347bf816051ffa9a6456536fcdd2cea44bce75` | ⚠️ Unaudited |
| GovernanceTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x95a4492f028aa1fd432ea71146b433e7b4446611`; ethereum `0xc3b6c116b7a37373dfe37fb77b8cfbfc89fc8358` | ⚠️ Unaudited |
| PoolTokenV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379100 | `0x75ce0e501e2e6776fcaaa514f394a88a772a8970` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dea1f053ab24b0c5b0c663b1c07b6b702e973d9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213db3017df4cb07338d7d3505296119649dfbd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7965283631253dfcb71db63a60c656dedf76234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80073eef3c57ba05dc25e5cd5b78c5f9fb18e4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa138299a1bb17e90f2edcc2d567358c4beeca092` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379098 | `0xe18b0365d5d09f394f84ee56ed29dd2d8d6fba5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe820b993d465b38443dc371c5dcd47c6015c8f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379099 | `0xea9c5a2717d5ab75afaac340151e73a7e37d99a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf587ec50e2e6518f7f016d5a78561109ab96fea1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 4
- Live contracts: 0
- Unknown liveness contracts: 4
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=4

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x213db3017df4cb07338d7d3505296119649dfbd8` | non_address_book | unknown | unknown | unverified | n/a | `0x6eaf0ab3455787ba10089800db91f11fdf6370be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7965283631253dfcb71db63a60c656dedf76234f` | non_address_book | unknown | unknown | unverified | n/a | `0x6eaf0ab3455787ba10089800db91f11fdf6370be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe820b993d465b38443dc371c5dcd47c6015c8f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x6eaf0ab3455787ba10089800db91f11fdf6370be` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3b6c116b7a37373dfe37fb77b8cfbfc89fc8358` | non_address_book | unknown | unknown | unverified | n/a | `0x7e9b0669018a70d6efcca2b11850a704db0e5b04` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [APY_Finance_governance_token_reward_halborn_report_V1.1.pdf](https://github.com/apy-finance/apy-audits/blob/main/APY_Finance_governance_token_reward_halborn_report_V1.1.pdf) | Halborn | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ApyFinance_smartcontract_halborn_report_V1.pdf](https://github.com/apy-finance/apy-audits/blob/main/ApyFinance_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [APY_Finance_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/APY_Finance_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19444] APY_Finance_governance_token_reward_halborn_report_V1.1.pdf — no match: Scope explicitly lists APYGovernanceToken.sol and APYRewardDistributor.sol. Audit date is the end date of engagement: October 30th, 2020.
- [19445] ApyFinance_smartcontract_halborn_report_V1.pdf — no match: Scope explicitly lists APYPoolToken.sol and APYPoolTokenProxy.sol. APYPoolTokenUpgraded.sol is mentioned as out of scope. Audit date from document revision history: 1.0 Document Final 9/29/2020.
- [19446] APY_Finance_smartcontract_halborn_report_V1.pdf — no match: Scope explicitly lists APYPoolToken.sol and APYPoolTokenProxy.sol. APYPoolTokenUpgraded.sol is mentioned as out of scope. Audit date from document revision history: 9/29/2020.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| APY_Finance_governance_token_reward_halborn_report_V1.1.pdf | APYGovernanceToken | unmatched — not counted | — | listed in scope section and throughout report | no |
| APY_Finance_governance_token_reward_halborn_report_V1.1.pdf | APYRewardDistributor | unmatched — not counted | — | listed in scope section and throughout report | no |
| ApyFinance_smartcontract_halborn_report_V1.pdf | APYPoolToken | unmatched — not counted | — | listed in scope section | no |
| ApyFinance_smartcontract_halborn_report_V1.pdf | APYPoolTokenProxy | unmatched — not counted | — | listed in scope section | no |
| APY_Finance_smartcontract_halborn_report_V1.pdf | APYPoolToken | unmatched — not counted | — | listed in scope section | no |
| APY_Finance_smartcontract_halborn_report_V1.pdf | APYPoolTokenProxy | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x75ce0e501e2e6776fcaaa514f394a88a772a8970` | PoolTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [19444] APY_Finance_governance_token_reward_halborn_report_V1.1.pdf
- [19445] ApyFinance_smartcontract_halborn_report_V1.pdf
- [19446] APY_Finance_smartcontract_halborn_report_V1.pdf

Fork inheritance lineage and inherited audits are included when available.
