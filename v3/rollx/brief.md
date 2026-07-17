# Agentic Audit Brief: RollX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RollX (`rollx`)
- Website: [https://rollx.trade/](https://rollx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $509,605.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for RollX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlEnumerableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | unit-162883 | `0x03bc054493a9042eebc037e05f3ce2baf53a967d` | ⚠️ Unaudited |
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162864 | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ⚠️ Unaudited |
| BfbtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | unit-162884 | `0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b` | ⚠️ Unaudited |
| BrokerManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162866 | `0x1414bc9dc37f581e20c1820c3fca1755ac0f3c97` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162872 | `0x47ea06e0a70bd1a454bc876ebdedffea82395560` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162877 | `0x7cd88b475d40b6b789a3995a457536ab7cb577e8` | ⚠️ Unaudited |
| FeeManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162870 | `0x2abde7a6a499d0732c4d1267d22de08e27a43c5e` | ⚠️ Unaudited |
| LimitOrderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162869 | `0x282f0ffa62f928398b162ac36d5d5949c6b4210a` | ⚠️ Unaudited |
| LpManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162875 | `0x69396bcefb72523f9d35a6629f152cd64c618ccc` | ⚠️ Unaudited |
| MyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162876 | `0x776b20e689497bb524dfbba01d85f878d0fe21ae` | ⚠️ Unaudited |
| PairsManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162881 | `0xa9e0e94266e2d0bd16086d8a80bf589f9c1e74b8` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162871 | `0x3bc346cf1d225728d1ee91247c67570431fe39c4` | ⚠️ Unaudited |
| PriceFacadeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162868 | `0x23e6a467dadd513c01298b4d02e9455d4220d533` | ⚠️ Unaudited |
| RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162873 | `0x59cca8cebf8b611618d24066178e33672bf68988` | ⚠️ Unaudited |
| SlippageManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162880 | `0xa4628799052b39be1b6a77c842aa66e5b3f1af8c` | ⚠️ Unaudited |
| TradingCheckerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162862 | `0x05533ecb5f199230e24aa04e0aa30f87db648311` | ⚠️ Unaudited |
| TradingCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162863 | `0x0a86ba95b7dd0c8c5d16a8d2cbffe6e77d529131` | ⚠️ Unaudited |
| TradingConfigFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162865 | `0x12ef30b6e3f055bb92ff54d5a856166fa85203fc` | ⚠️ Unaudited |
| TradingCoreFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162874 | `0x5c9936a7dcefccb8af7de519cd3a6d199d3acb5e` | ⚠️ Unaudited |
| TradingOpenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162878 | `0x8951edcaac946bc7b31f0545f53200d5a824d6ce` | ⚠️ Unaudited |
| TradingPortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162867 | `0x20c2e940e1edc66e80cd61f5c259391ba6ed9f67` | ⚠️ Unaudited |
| TradingReaderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162882 | `0xb293002489dfbd38d92b041c612b7f38d2ee6b33` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162879 | `0x8ca1229b5b9d15edf6fb2fab8cc83191587741c5` | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/zh-CN/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Certik](https://skynet.certik.com/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18096] DL audit link — no match: Extracted from CertiK Skynet page for RollX; audit files listed as _IWBNB.sol and INTV.sol. Date from '最近一次审计于 7/12/2024 完成'.
- [18097] Certik — no match: Extracted from audited files list; only two contract names were identifiable from truncated file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | _IWBNB | unmatched — not counted | — | listed in audit files | no |
| DL audit link | INTV | unmatched — not counted | — | listed in audit files | no |
| Certik | _IWBNB | unmatched — not counted | — | listed in audited files | no |
| Certik | INTV | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=2
- Match method counts: n/a

Zero-match audit list:

- [18096] DL audit link
- [18097] Certik

Fork inheritance lineage and inherited audits are included when available.
