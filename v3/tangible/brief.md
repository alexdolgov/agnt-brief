# Agentic Audit Brief: Tangible

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Tangible (`tangible`)
- Website: [https://www.tangible.store](https://www.tangible.store)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $41,561,019.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tangible. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Marketplace | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-258237 | `0xeea947...df2318` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/tngbl/audit.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [omniscia.io/reports/tangible-ustb-contract-655fb224a7ddc0001831f72e](https://omniscia.io/reports/tangible-ustb-contract-655fb224a7ddc0001831f72e) | Omniscia | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd](https://omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [omniscia.io/reports/tangible-nft-baskets-65b179009eeaeb0018a4839d](https://omniscia.io/reports/tangible-nft-baskets-65b179009eeaeb0018a4839d) | Omniscia | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55](https://omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20USDM%20-%20Audit%20Report%20Jun%202023.pdf) | OpenZeppelin | Audit | 2023-06 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20wUSDM%20-%20Audit%20Report%20Oct%202023.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11704] audit.pdf — no match: Extracted contract names from Source Files table (pages 8-11) and Testing Deploy table (pages 6-7). Audit date inferred from report title 'AuditReport TangibleUSDR Ecosystem January2023' and audit updates mentioning dates in November/December 2022, with final report in January 2023.
- [11705] omniscia.io/reports/tangible-ustb-contract-655fb224a7ddc0001831f72e — no match: Only one contract name (USTB) is explicitly mentioned as the audit target. The scope section is referenced but not provided in the text.
- [11706] omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd — no match: No explicit scope section or contract file paths found. Only project name and token name inferred.
- [11707] omniscia.io/reports/tangible-nft-baskets-65b179009eeaeb0018a4839d — no match: The report text does not contain a clear scope section listing specific contract names. The audit overview mentions 'Tangible NFT Baskets module' but no individual contract files or names are provided.
- [11708] omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 — no match: The report does not have a dedicated scope section; contract names were extracted from the audit overview and post-audit conclusions. The latest commit hash date (March 4th 2024) is used as the audit date.
- [11709] OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf — no match: Only one contract in scope: USDM.sol
- [11710] OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf — no match: Only wUSDM.sol is in scope; USDM is a dependency, not audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | AddressAccessor | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | AddressProvider | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | AffiliateExchange | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | DAIBond | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | CurveWrapper | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | LiquidityTokenMath | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | IncentiveVault | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | GoldPurchaseManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | GoldSellManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | LiquidityManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | OnSaleTracker | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | PurchaseManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | REPurchaseManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | RESellManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | TNGBLLiquidityManager | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | RWACalculator | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | TNGBLLockedValue | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | TNGBLPriceOracle | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | pDAI | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDR | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDRMigration | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | WadRayMath | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | WrappedUSDR | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | TokenSwap | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | TreasuryTracker | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDRBonding | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDRExchange | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDRExchangeProxy | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | USDRTreasury | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | wUSDRRateProvider | unmatched — not counted | — | listed in Source Files table | no |
| audit.pdf | SushiLPStrategy | unmatched — not counted | — | listed in Source Files table | no |
| omniscia.io/reports/tangible-ustb-contract-655fb224a7ddc0001831f72e | USTB | unmatched — not counted | — | mentioned as the token module being audited | no |
| omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd | Tangible | unmatched — not counted | — | mentioned as codebase name | no |
| omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd | USTB | unmatched — not counted | — | described as specialized token | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | Exchange | unmatched — not counted | — | mentioned as part of logic update and in post-audit conclusions | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | TNGBLV3Oracle | unmatched — not counted | — | mentioned as part of logic update and in post-audit conclusions | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | TangibleNFTDeployerV2 | unmatched — not counted | — | mentioned in audit overview as having an entry-replacement flaw | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | FactoryV2 | unmatched — not counted | — | mentioned in post-audit conclusion regarding whitelist changes | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | TNFTMetadata | unmatched — not counted | — | mentioned in post-audit conclusion regarding optimization | no |
| omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55 | TangibleReaderHelperV2 | unmatched — not counted | — | mentioned in post-audit conclusion regarding removal of functionality | no |
| OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf | USDM | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf | wUSDM | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2, medium=2
- Match method counts: n/a

Zero-match audit list:

- [11704] audit.pdf
- [11705] omniscia.io/reports/tangible-ustb-contract-655fb224a7ddc0001831f72e
- [11706] omniscia.io/reports/tangible-cross-chain-rebasing-token-655fab113e426a0018b0bffd
- [11707] omniscia.io/reports/tangible-nft-baskets-65b179009eeaeb0018a4839d
- [11708] omniscia.io/reports/tangible-tnft-v2-654b658635a6d00018202a55
- [11709] OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf
- [11710] OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf

Fork inheritance lineage and inherited audits are included when available.
