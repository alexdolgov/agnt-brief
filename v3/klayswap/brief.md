# Agentic Audit Brief: KlaySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: KlaySwap (`klayswap`)
- Website: [https://klayswap.com/dashboard](https://klayswap.com/dashboard)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: kaia
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,746,886.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for KlaySwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244320 | `0x01431f2a0d8c25646d1995e9ad345581d523341d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244321 | `0x0363053524610888fb883a5c0b16fb55aa4701cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244322 | `0x05343b228d61402e84d973ce114f34bc3f9e5987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244323 | `0x09067f1b4e1a1cd08c91519d811f3d04c69a5a5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244324 | `0x1289550d988177575154c2ca45c95ccfb32f837d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x19aac5f612f524b754ca7e7c41cbfa2e981a4432` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244325 | `0x29990aaf04f3d5ac7d8c88beab1a009c1ab4936e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244326 | `0x2ce59e21364dca92c90970ad15442146d638997f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244327 | `0x2f3713f388bc4b8b364a7a2d8d57c5ff4e054830` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244328 | `0x3c9736ffd8752342ec64328c498ed6878a797887` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244330 | `0x3e8477f4d81090fa55af350c7d31819eed2dc293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244331 | `0x51d233b5ae7820030a29c75d6788403b8b5d317b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244332 | `0x689d8ea1bd4e02b9e9cad9dcc871a050ff923593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244333 | `0x6c14e2e4bae412137437a8ec9e57263212d141a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244334 | `0x71b59e4bc2995b57aa03437ed645ada7dd5b1890` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244335 | `0x7a74b3be679e194e1d6a0c29a343ef8d2a5ac876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244336 | `0xa15be7e90df29a4aead0c7fc86f7a9fbe6502ac9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244337 | `0xb43879a835fd2097515b7b5c6c549929f1666bfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244338 | `0xc6a2ad8cc6e4a7e08fc37cc5954be07d499e7654` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244339 | `0xd1890d8f02f4c63553658ba49c53a82eb84009e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-244340 | `0xe0fbb27d0e7f3a397a67a9d4864d4f4dd7cf8cb9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf) | Theori | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [[78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5B78ResearchLab%5D%20OZYS_KLAYSWAP_V8(Final).pdf) | 78ResearchLab | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [[ChainLight] New KLAYswap Security Audit v1.0.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5BChainLight%5D%20New%20KLAYswap%20Security%20Audit%20v1.0.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2551] Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf — no match: Extracted contract names from the 'Contracts Subject to Audit' section on page 5. Audit date found on cover page: '24th MARCH 2021'.
- [2552] (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf — no match: All contracts listed in the 'Contracts Summary' table are in scope. The audit date is the project report date (10/06).
- [2553] [78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf — no match: No reason recorded
- [2554] [ChainLight] New KLAYswap Security Audit v1.0.pdf — no match: Extracted contract names from findings and scope section. Audit date from revision history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Admin.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Admin | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Kai | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Supporter.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Supporter | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Wallet.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Distribution.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Distribution | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Treasury.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Governance.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | PoolVoting.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | PoolVoting | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Store.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | Store | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | VotingKSP.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | VotingKSP | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KSStore | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KlaytnExchange.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KlaytnExchange | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KlaytnFactory.impl | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KlaytnFactory | unmatched — not counted | — | listed in scope | no |
| Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf | KlaytnMiningView | unmatched — not counted | — | listed in scope | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | BuybackFund | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KSStore | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KlaytnExchange.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KlaytnExchange | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KlaytnFactory.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KlaytnFactory | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | KlaytnMiningView | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Helper | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Supporter.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Supporter | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Wallet.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Wallet | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | AirdropOperator | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Distribution.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Distribution | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Treasury.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Treasury | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Governance.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Governance | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | PoolVoting.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | PoolVoting | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Store.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | Store | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | VotingKSP.impl | unmatched — not counted | — | listed in Contracts Summary table | no |
| (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf | VotingKSP | unmatched — not counted | — | listed in Contracts Summary table | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | UniswapV3FactoryImpl | unmatched — not counted | — | mentioned in finding #1 as having _initialize() function | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | Exchange.impl | unmatched — not counted | — | mentioned in finding #2 and #5 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | V2Router.impl | unmatched — not counted | — | mentioned in finding #3 and #4 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | UniversalRouter.impl | unmatched — not counted | — | mentioned in finding #3 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | V3TreasuryView | unmatched — not counted | — | mentioned in finding #3 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | Treasury.impl | unmatched — not counted | — | mentioned in finding #3 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | Factory.impl | unmatched — not counted | — | mentioned in finding #5 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | RewardTreasury | unmatched — not counted | — | mentioned in finding #5 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | AirdropOperator | unmatched — not counted | — | mentioned in finding #5 | no |
| [ChainLight] New KLAYswap Security Audit v1.0.pdf | LendingRewardTokenManager | unmatched — not counted | — | mentioned in finding #7 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [2551] Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf
- [2552] (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf
- [2553] [78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf
- [2554] [ChainLight] New KLAYswap Security Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
