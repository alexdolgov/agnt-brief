# Agentic Audit Brief: Dexalot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, bsc, ethereum
- Contract surface: 29 unique implementations (33 raw deployments)
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
- Address-book implementation classification: 0 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 29
- Raw deployments: 33
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
| DexalotToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093783055f9047c2bff99c4e414501f8a147bc69` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16863a1052362012352f07ff3cd23088414c67e5`; avalanche `0x4dc10a62a904bb7b2acd3b99596895ce0681a09a` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235254 | `0x80768783d18ad5c9de46d2cde398fb0c193d5885` | ⚠️ Unaudited |
| MainnetRFQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235259 | `0x3ece76f7add934fb8a35c9c371c4d545e299669a` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235255 | `0x9cf797df135aa671e97d1b713cdaeea9fca9170e` | ⚠️ Unaudited |
| OrderBooks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcb1556a61d047523bce9da9f79939faed62c9d19`; avalanche `0xd95bcc48579a759919201c8f48359d361c50584e` | ⚠️ Unaudited |
| Portfolio | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x176e82bf0d30ec55ae3ef98e4be3922931cb4ef2`; avalanche `0x43de3a895626730c86120873952375e8269cab1a` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235258 | `0x6f8205cf222dd4c6615991c7f604f366526b5c6e` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235257 | `0xac0f301b3f7e1d48553535089bb2c201760de0d4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235256 | `0x9faa0a5dcbc0cbc81719ba6f0f1726a8baae16f2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb34f9c897edba026efc29a77c2f575e607402644` | ⚠️ Unaudited |
| TradePairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16d8a7e5300acaba43418a6e2c68e159c9097bdd`; avalanche `0x2c0e189edfb3572ac67063bad7def6739109df10` | ⚠️ Unaudited |
| TradePairs | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235253 | `0x625b7d76f69095907fc3b467c0c3be07d1987ba1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235261 | `0x12e2b3236d338651f7ee2222e9756b4222694323` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235260 | `0x1d34b421a5ede3e300d3b8bcf3be5c6f45971e20` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4f605a43571b3d392933a716db1599241732a5fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a8d5339a21932ebc340af74ee852e69d618737f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x780380eb4787775b07dfa60fb11c2cdad6a44f7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bc52a18bd45f72ba2ddfd1b5fa4c09936a110f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x857f871755390b4f1f70e679406549f08d3a9ccd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x96571ca61e90f613c404d8a84151921e04e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x983325dd4e4038de2eedf6750f85f9c5fcb3b0a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb94ca123e807f763deeeac4e9ce5f0b432a2010c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf661737c6ab555af9b48ce7ec1db10cc8f397f67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0bc1c72a169d8a5a564d787a46521496a008e8ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x2f44515dc357e64edac8cf0480b2a6eb626d1979` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x38d9f113290ec7b90961bea854d7f2c1535a32fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa61008d3f38ae02325ae13d7d6b67cebd02d18f4` | ❓ Unverified |

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
| needs_review | 13 |

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
