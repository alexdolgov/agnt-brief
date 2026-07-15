# Agentic Audit Brief: Dexalot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, bsc, ethereum
- Contract surface: 25 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,063,794.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Dexalot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across avalanche, avalanche-fuji, bsc. Structural roles: 6 unclassified, 2 supporting, 1 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (6), supporting (2), core (1)
- Contract kinds: contract (8), abstract (1)
- Detected standards: erc1967proxy (2), ownable (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 3

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 9; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 25
- Raw deployments: 29
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DexalotToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093783...47bc69` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16863a...4c67e5`; avalanche `0x4dc10a...81a09a` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235254 | `0x807687...3d5885` | ⚠️ Unaudited |
| MainnetRFQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a371c...ceb2dd` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235259 | `0x3ece76...99669a` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235255 | `0x9cf797...a9170e` | ⚠️ Unaudited |
| OrderBooks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcb1556...2c9d19`; avalanche `0xd95bcc...50584e` | ⚠️ Unaudited |
| Portfolio | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x176e82...cb4ef2`; avalanche `0x43de3a...9cab1a` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235258 | `0x6f8205...6b5c6e` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235257 | `0xac0f30...0de0d4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235256 | `0x9faa0a...ae16f2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb34f9c...402644` | ⚠️ Unaudited |
| TradePairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16d8a7...097bdd`; avalanche `0x2c0e18...09df10` | ⚠️ Unaudited |
| TradePairs | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235253 | `0x625b7d...987ba1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235261 | `0x12e2b3...694323` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235260 | `0x1d34b4...971e20` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4f605a...32a5fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a8d53...18737f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x780380...a44f7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bc52a...a110f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x857f87...3a9ccd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x96571c...e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x983325...b3b0a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb94ca1...a2010c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf66173...397f67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Dexalot_03092021]SCAudit_Report.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_03092021%5DSCAudit_Report.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [[Dexalot_15092021]SCAudit_Report_2.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15092021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [[Dexalot_15112021]SCAudit_Report_3.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15112021%5DSCAudit_Report_3.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Dexalot_18022022]SCAudit_Report_4.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_18022022%5DSCAudit_Report_4.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [[Dexalot_23022022]SCAudit_Report_5.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_23022022%5DSCAudit_Report_5.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [hacken.io/audits/dexalot](https://hacken.io/audits/dexalot) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7311] [Dexalot_03092021]SCAudit_Report.pdf — no match: All contracts listed in the Scope section of the report.
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf — no match: Scope section lists all contracts with file paths. Audit date is September 15, 2021 from the cover page.
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf — no match: Contracts explicitly listed in scope section of the audit report.
- [7314] [Dexalot_18022022]SCAudit_Report_4.pdf — no match: No reason recorded
- [7315] [Dexalot_23022022]SCAudit_Report_5.pdf — no match: No reason recorded
- [12285] hacken.io/audits/dexalot — no match: The provided text is a marketing/overview page for Dexalot audits, listing multiple past audits but not providing detailed scope for any single audit. No specific contract names, file paths, or scope sections are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Dexalot_03092021]SCAudit_Report.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Airdrop | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Bytes32Library | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | DexalotToken | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Exchange | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | IPortfolio | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | ITradePairs | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | MockToken | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | OrderBooks | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Portfolio | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | RBTLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | StringLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | TokenVesting | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | TradePairs | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Airdrop | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Bytes32Library | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | DexalotToken | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Exchange | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | IPortfolio | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | ITradePairs | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | MockToken | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | OrderBooks | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Portfolio | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | RBTLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | StringLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | TokenVesting | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | TradePairs | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [7311] [Dexalot_03092021]SCAudit_Report.pdf
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf
- [7314] [Dexalot_18022022]SCAudit_Report_4.pdf
- [7315] [Dexalot_23022022]SCAudit_Report_5.pdf
- [12285] hacken.io/audits/dexalot

Fork inheritance lineage and inherited audits are included when available.
