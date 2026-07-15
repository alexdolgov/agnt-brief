# Agentic Audit Brief: MochiFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: MochiFi (`mochifi`)
- Website: [https://mochi.fi](https://mochi.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $391,973.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MochiFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x09e9ef...c5963e`, chain 1)
- UnnamedContract (`0x5d2784...8d175f`, chain 1)
- UnnamedContract (`0x62a1c6...264c14`, chain 1)
- UnnamedContract (`0xa6046b...8e896b`, chain 1)
- UnnamedContract (`0xa8347e...cb28c8`, chain 1)
- UnnamedContract (`0xa8dad4...a91a3f`, chain 1)
- UnnamedContract (`0xc944b2...bc4932`, chain 1)
- UnnamedContract (`0xe9f9f3...d81752`, chain 1)
- MochiCSSRv0 (`0x766f7f...dad836`, chain 1)
- MochiEngine (`0x860e47...55be2f`, chain 1)
- MochiVaultFactory (`0x960760...0367ef`, chain 1)
- USDM (`0x31d4eb...6f0ba9`, chain 1)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 12 of 34 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DutchAuctionLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ad80...617ff6` | ⚠️ Unaudited |
| FixedPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f43...3081f3` | ⚠️ Unaudited |
| gCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06f05a...6c9ad6` | ⚠️ Unaudited |
| MinterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595df7...85ebda` | ⚠️ Unaudited |
| MinterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cadb2...7dd6b4` | ⚠️ Unaudited |
| MochiCSSRv0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247666 | `0x766f7f...dad836` | ⚠️ Unaudited |
| MochiEngine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247667 | `0x860e47...55be2f` | ⚠️ Unaudited |
| MochiInu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60ef10...605fe5` | ⚠️ Unaudited |
| MochiNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734b12...39ee69` | ⚠️ Unaudited |
| MochiNFTEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091a84...d24115` | ⚠️ Unaudited |
| MochiNFTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaf613...068774` | ⚠️ Unaudited |
| MochiNFTVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc1f0...a656f0` | ⚠️ Unaudited |
| MochiPositionNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f90fe...cc35c3` | ⚠️ Unaudited |
| MochiProfileV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083c0c...2f457c` | ⚠️ Unaudited |
| MochiStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0722ac...4526f2` | ⚠️ Unaudited |
| MochiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9950...4b6f8d` | ⚠️ Unaudited |
| MochiVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247668 | `0x960760...0367ef` | ⚠️ Unaudited |
| NoDiscountProfile | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5005bd...5dcb34` | ⚠️ Unaudited |
| NoMochiFeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5721cb...298bfe` | ⚠️ Unaudited |
| NoMochiReferralFeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727f41...486546` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f362c...a02cf8` | ⚠️ Unaudited |
| PegRecoveryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3084ba...0976da` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aeb81...4c3d47` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be3e3...ca5dce` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247663 | `0x31d4eb...6f0ba9` | ⚠️ Unaudited |
| wsOHMAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3d4c...05f81a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247662 | `0x09e9ef...c5963e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247664 | `0x5d2784...8d175f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247665 | `0x62a1c6...264c14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247669 | `0xa6046b...8e896b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247670 | `0xa8347e...cb28c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247671 | `0xa8dad4...a91a3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247672 | `0xc944b2...bc4932` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247673 | `0xe9f9f3...d81752` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mochi Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTlcFC40_BApv4BanQ%2FMochi%20Audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Mochi CSSR Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTleNOhp_qgDkXO7Xs%2FMochi%20CSSR%20Audit.pdf) | CSSR | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24139] Mochi Audit.pdf — no match: Extracted contract names from findings and code references. No explicit scope section found; date from cover page.
- [24140] Mochi CSSR Audit.pdf — no match: No explicit scope section; contracts inferred from findings and file references.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mochi Audit.pdf | VestedRewardPool | unmatched — not counted | — | mentioned in findings C1, H4, A1 | no |
| Mochi Audit.pdf | Mochi | unmatched — not counted | — | mentioned in findings C2, L1, A1 | no |
| Mochi Audit.pdf | MochiVault | unmatched — not counted | — | mentioned in findings H1, H2, H3, A4 | no |
| Mochi Audit.pdf | OracleRouter | unmatched — not counted | — | mentioned in finding H5 | no |
| Mochi Audit.pdf | MochiHybridOracleV0 | unmatched — not counted | — | mentioned in findings M1, A3 | no |
| Mochi Audit.pdf | DutchAuctionLiquidator | unmatched — not counted | — | mentioned in finding A1 | no |
| Mochi Audit.pdf | MochiProfileV0 | unmatched — not counted | — | mentioned in finding A1 | no |
| Mochi Audit.pdf | FeePoolV0 | unmatched — not counted | — | mentioned in finding A2 | no |
| Mochi Audit.pdf | IMochi | unmatched — not counted | — | mentioned in VestedRewardPool | no |
| Mochi Audit.pdf | IVMochi | unmatched — not counted | — | mentioned in VestedRewardPool | no |
| Mochi Audit.pdf | IMochiEngine | unmatched — not counted | — | mentioned in DutchAuctionLiquidator | no |
| Mochi Audit.pdf | IFeePool | unmatched — not counted | — | mentioned in FeePoolV0 | no |
| Mochi Audit.pdf | IPriceOracle | unmatched — not counted | — | mentioned in MochiHybridOracleV0 | no |
| Mochi Audit.pdf | ILiquidityOracle | unmatched — not counted | — | mentioned in MochiHybridOracleV0 | no |
| Mochi Audit.pdf | IERC3156FlashLender | unmatched — not counted | — | mentioned in MochiVault | no |
| Mochi Audit.pdf | ERC721Enumerable | unmatched — not counted | — | mentioned in MochiVault | no |
| Mochi CSSR Audit.pdf | OracleRouter | unmatched — not counted | — | mentioned in findings M1 and A1 | no |
| Mochi CSSR Audit.pdf | UniswapV2TokenAdapter | unmatched — not counted | — | mentioned in findings H1, M2 | no |
| Mochi CSSR Audit.pdf | UniswapOracle | unmatched — not counted | — | mentioned in finding A2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x766f7f...dad836` | MochiCSSRv0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x860e47...55be2f` | MochiEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x960760...0367ef` | MochiVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31d4eb...6f0ba9` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [24139] Mochi Audit.pdf
- [24140] Mochi CSSR Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
