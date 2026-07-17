# Agentic Audit Brief: YFII

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: YFII (`yfii`)
- Website: [https://yfii.finance/](https://yfii.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $371,521.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YFII. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16cac1403377978644e78769daa49d8f6b6cf565`, chain 1)
- UnnamedContract (`0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a`, chain 1)
- UnnamedContract (`0xb81d3cb2708530ea990a287142b82d058725c092`, chain 1)
- UnnamedContract (`0xf1750b770485a5d0589a6ba1270d9fc354884d45`, chain 1)
- YFII (`0xa1d0e215a23d7030842fc67ce582a6afa3ccab83`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 21 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 5.9% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| YFII | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397463 | `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2a19108d8f6aec72867e9cfb1bf517601b515f` | ⚠️ Unaudited |
| fortube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37edb4812aa9bb7a05c8b56642041b3a609b752c` | ⚠️ Unaudited |
| getuniout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75055d3292aba5592cc09c61f73397e05db52c58` | ⚠️ Unaudited |
| iLPVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d994471d61d36fe367928cc58102a376089d1f` | ⚠️ Unaudited |
| iVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e0dc67aea5aa74718822590294230162b5f2064` | ⚠️ Unaudited |
| onesplitError | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045644b23e622cb3db24d18e1a77e8124790f214` | ⚠️ Unaudited |
| qianAndWepiggy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b9af583e4188ccc6297d2f0721e8fb1385fecd` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ba312991e76116879b484135d2b86ea27d0a0f` | ⚠️ Unaudited |
| StrategyCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb684ab29371e701cce3ca9e3fd8f5e33042eee` | ⚠️ Unaudited |
| StrategyDForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d89bc6df5777ef762d8b7c841b1a4e179dcc83` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd4a57c5ee8558370bb661d29a979657d81258e` | ⚠️ Unaudited |
| StrategyFortube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3e69ef29cbd32e0732409b748ef317a5f4f0a5` | ⚠️ Unaudited |
| Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d367c9529f260b0661e1c1e91167c9319ee96ca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf811c062d14fdf9fda95d6a2c54e137afe80de45` | ⚠️ Unaudited |
| YfiiVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266ca21f966d93f5580e20b55ef66c8320e4760e` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2a725f13111c52a972e20d6aa4dcb190a17faa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397462 | `0x16cac1403377978644e78769daa49d8f6b6cf565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397464 | `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397465 | `0xb81d3cb2708530ea990a287142b82d058725c092` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397466 | `0xf1750b770485a5d0589a6ba1270d9fc354884d45` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [200803-YFII-Token-Pool1-Pool2.en.md](https://github.com/yfii/audit/blob/master/200803-YFII-Token-Pool1-Pool2.en.md) | unknown | Audit | 2020-08 | stale | Direct | address | matched | 4 | 0 | 0 | 0 | high |
| [200803-YFII-Token-Pool1-Pool2.md](https://github.com/yfii/audit/blob/master/200803-YFII-Token-Pool1-Pool2.md) | unknown | Audit | 2020-08 | stale | Direct | address | matched | 4 | 0 | 0 | 0 | high |
| [YFII_v2_Smart_Contract_Audit_Report.pdf](https://github.com/yfii/audit/blob/master/YFII_v2_Smart_Contract_Audit_Report.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [YFII_v2机枪池智能合约审计报告.pdf](https://github.com/yfii/audit/blob/master/YFII_v2%E6%9C%BA%E6%9E%AA%E6%B1%A0%E6%99%BA%E8%83%BD%E5%90%88%E7%BA%A6%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8A.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28406] 200803-YFII-Token-Pool1-Pool2.en.md — matched: The report explicitly lists four contracts in scope: YFII Pool 1, YFII Pool 2, YFII Token, and BPT Token, with addresses. The audit date is inferred from the analysis period (July 27 to August 2, 2020), so the end date is used.
- [28407] 200803-YFII-Token-Pool1-Pool2.md — matched: Audit report dated 2020-08-02 (end date of audit period 2020-07-27 to 2020-08-02). Scope includes four contracts: YFII Pool 1, YFII Pool 2, YFII Token, BPT Token.
- [28408] YFII_v2_Smart_Contract_Audit_Report.pdf — no match: Extracted 17 contract names from the scope table and file listings. Audit date from document header: 20200924.
- [28409] YFII_v2机枪池智能合约审计报告.pdf — no match: Extracted 17 contract names from the scope table and file listing. Audit date from report header: 20200924.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Pool 1 | own contract | 0xb81d3c… (selected) `0xb81d3cb2708530ea990a287142b82d058725c092` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Pool 2 | own contract | 0xaffcd3… (selected) `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Token | own contract | YFII (selected) `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` — deployed 2020-07-26 16:05:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | BPT Token | own contract | 0x16cac1… (selected) `0x16cac1403377978644e78769daa49d8f6b6cf565` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Pool 1 | own contract | 0xb81d3c… (selected) `0xb81d3cb2708530ea990a287142b82d058725c092` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Pool 2 | own contract | 0xaffcd3… (selected) `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Token | own contract | YFII (selected) `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` — deployed 2020-07-26 16:05:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | BPT Token | own contract | 0x16cac1… (selected) `0x16cac1403377978644e78769daa49d8f6b6cf565` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YFII_v2_Smart_Contract_Audit_Report.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultYCRV | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyDForceDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyTUSDCurve | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultTUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultYCRV | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyDForceDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyTUSDCurve | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultTUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultHBTC | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: address=8

Zero-match audit list:

- [28408] YFII_v2_Smart_Contract_Audit_Report.pdf
- [28409] YFII_v2机枪池智能合约审计报告.pdf

Fork inheritance lineage and inherited audits are included when available.
