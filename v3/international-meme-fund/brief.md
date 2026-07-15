# Agentic Audit Brief: International Meme Fund

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: International Meme Fund (`international-meme-fund`)
- Website: [https://imf.bz/](https://imf.bz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 4/14 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $826,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for International Meme Fund. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 8 unclassified, 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (8), core (6)
- Contract kinds: contract (14)
- Detected standards: ownable (3), ownable2step (3), erc20 (2), erc20permit (2), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- IMF (`0x05be1d...829a60`, chain 1)
- IMF Liquidity Manager (`0x2c17b8...d4316a`, chain 1)
- IMF Morpho Migrator (`0xccb681...34ba22`, chain 1)
- IMF SuperLoop (`0xbe71f3...844037`, chain 1)
- IMF SuperLoop V2 (`0xa9e1fb...465514`, chain 1)
- IMF Uniswap V4 Fee Hook (`0xed81cb...0ed0cc`, chain 1)
- IMF USDS Vault (`0xdef1fc...83d43d`, chain 1)
- IMF V4 Factory (`0xa626a4...d0e384`, chain 1)
- IMF V4 Launcher Migrator (`0x1a0f6e...764273`, chain 1)
- IMFMoneyMarkets (`0x30f758...bd1eeb`, chain 1)
- Money (`0xb162ca...ee6b8f`, chain 1)
- PEPE/MONEY Oracle (`0xb97b91...68035d`, chain 1)
- ProxyIrm (`0xec39c6...116ecb`, chain 1)
- ProxyOracle (`0x66099a...1fde1c`, chain 1)
- sbIMF (`0x3215c3...5e14e4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/14 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 15 of 27 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 4 | 19.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IMF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387599 | `0x05be1d...829a60` | ✅ Audited |
| IMFMoneyMarkets | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387604 | `0x30f758...bd1eeb` | ✅ Audited |
| Money | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387610 | `0xb162ca...ee6b8f` | ✅ Audited |
| sbIMF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387605 | `0x3215c3...5e14e4` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainlinkUsdMoneyConstantOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd2b01...38829e` | ⚠️ Unaudited |
| IMF Liquidity Manager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387603 | `0x2c17b8...d4316a` | ⚠️ Unaudited |
| IMF Morpho Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387614 | `0xccb681...34ba22` | ⚠️ Unaudited |
| IMF SuperLoop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387613 | `0xbe71f3...844037` | ⚠️ Unaudited |
| IMF Uniswap V4 Fee Hook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387618 | `0xed81cb...0ed0cc` | ⚠️ Unaudited |
| IMF USDS Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387615 | `0xdef1fc...83d43d` | ⚠️ Unaudited |
| IMF V4 Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387608 | `0xa626a4...d0e384` | ⚠️ Unaudited |
| IMF V4 Launcher Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387600 | `0x1a0f6e...764273` | ⚠️ Unaudited |
| Irm69 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe22779...bae2cd` | ⚠️ Unaudited |
| IrmFixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb600a9...2c74d9` | ⚠️ Unaudited |
| LiquidationBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321a36...1ce213` | ⚠️ Unaudited |
| MoneyFixedSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7207da...2ce452` | ⚠️ Unaudited |
| PEPE/MONEY Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387611 | `0xb97b91...68035d` | ⚠️ Unaudited |
| ProxyIrm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387617 | `0xec39c6...116ecb` | ⚠️ Unaudited |
| ProxyOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387606 | `0x66099a...1fde1c` | ⚠️ Unaudited |
| TwoHopOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443880...90a920` | ⚠️ Unaudited |
| UniV3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c12a3...eb342b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IMF SuperLoop V2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387609 | `0xa9e1fb...465514` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387601 | `0x210264...7f30dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387602 | `0x2625bf...93c466` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387607 | `0x870ac1...ba00bc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387612 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387616 | `0xe139cb...668ec2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf](https://hashlock.com/wp-content/uploads/2024/08/IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf) | Hashlock | Audit | 2024-06 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21366] IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf — matched: Scope section lists 7 contracts with MD5 hashes. Audit date is June 2024, interpreted as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | IMF | own contract | IMF (selected) `0x05be1d...829a60` — deployed 2024-05-28 14:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | IMFMoneyMarkets | own contract | IMFMoneyMarkets (selected) `0x30f758...bd1eeb` — deployed 2024-07-10 16:07:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | PepeMoneyOracle | unmatched — not counted | — | listed in scope table | no |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | sbIMF | own contract | sbIMF (selected) `0x3215c3...5e14e4` — deployed 2024-07-10 15:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Irm69 | unmatched — not counted | — | listed in scope table | no |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Money | own contract | Money (selected) `0xb162ca...ee6b8f` — deployed 2024-07-10 15:36:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| IMF-Smart-Contract-Audit-Report-Public-Final-Report-V1.pdf | Univ3Oracle | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xec39c6...116ecb` | ProxyIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66099a...1fde1c` | ProxyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
