# Agentic Audit Brief: Hop Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hop Protocol (`hop-protocol`)
- Website: [https://hop.exchange](https://hop.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, gnosis, optimism, polygon
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,043,865.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hop Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, ethereum, gnosis, optimism, polygon. Structural roles: 8 core, 8 supporting, 1 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (8), supporting (8), unclassified (1)
- Contract kinds: contract (17)
- Detected standards: erc20 (7), ownable (7)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (6)
- Upgradeable-pattern rows: 6

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 17; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 29 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbFiatToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241961 | `0xff970a...db5cc8` | ⚠️ Unaudited |
| ArbitrumMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241933 | `0xac9bab...c6ae2a` | ⚠️ Unaudited |
| HopBridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241938 | `0x25d803...2e6ae8` | ⚠️ Unaudited |
| HopBridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241941 | `0x3666f6...c5f18a` | ⚠️ Unaudited |
| HopBridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-241949 | `0x9ec955...b3b09d` | ⚠️ Unaudited |
| HopBridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241953 | `0x0ce6c8...dd444d` | ⚠️ Unaudited |
| L1_ERC20_Bridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241928 | `0x3666f6...c5f18a` | ⚠️ Unaudited |
| L2_AmmWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241939 | `0x2ad098...d6e796` | ⚠️ Unaudited |
| L2_AmmWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-241947 | `0x76b22b...a635a7` | ⚠️ Unaudited |
| L2_AmmWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241960 | `0xe22d2b...a26f52` | ⚠️ Unaudited |
| L2_ArbitrumBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241954 | `0x0e0e3d...abf8dd` | ⚠️ Unaudited |
| L2_OptimismBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241943 | `0xa81d24...77a8fc` | ⚠️ Unaudited |
| L2_XDaiBridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-241945 | `0x25d803...2e6ae8` | ⚠️ Unaudited |
| LPToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241940 | `0x2e17b8...d2d5a8` | ⚠️ Unaudited |
| LPToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-241948 | `0x9d373d...fb1a0a` | ⚠️ Unaudited |
| LPToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241958 | `0xb67c01...6bff71` | ⚠️ Unaudited |
| OptimismMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241925 | `0x1ba1f1...401f7d` | ⚠️ Unaudited |
| OVMFiatToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-241942 | `0x7f5c76...c31607` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241963 | `0xddafbb...fb7a83` | ⚠️ Unaudited |
| PolygonMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241923 | `0x10541b...ade261` | ⚠️ Unaudited |
| PolygonMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241929 | `0x3c0ffa...795963` | ⚠️ Unaudited |
| Swap | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-241946 | `0x5c3214...24ac26` | ⚠️ Unaudited |
| Swap | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241955 | `0x10541b...ade261` | ⚠️ Unaudited |
| SwapUtils | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241962 | `0x3c0ffa...795963` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241926 | `0x22e3f8...9c96e7` | ⚠️ Unaudited |
| UChildAdministrableERC20 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241951 | `0x2791bc...a84174` | ⚠️ Unaudited |
| XDaiMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241924 | `0x12e59c...e2b5c7` | ⚠️ Unaudited |
| XDaiMessengerWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241930 | `0x5c3214...24ac26` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241957 | `0xac9bab...c6ae2a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_-_Hop_05.05.2021.pdf](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/Audit_Report_-_Hop_05.05.2021.pdf) | Solidified | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [MonocerosAlpha_-_Hop_Audit.pdf](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/MonocerosAlpha_-_Hop_Audit.pdf) | MonocerosAlpha | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [052021_Solidified.pdf](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [042021_MonocerosAlpha.pdf](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2722] Audit_Report_-_Hop_05.05.2021.pdf — no match: No reason recorded
- [2723] MonocerosAlpha_-_Hop_Audit.pdf — no match: No reason recorded
- [11916] 052021_Solidified.pdf — no match: No reason recorded
- [11917] 042021_MonocerosAlpha.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_-_Hop_05.05.2021.pdf | Accounting | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | Bridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | HopBridgeToken | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IArbSys | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IBridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IGlobalInbox | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IInbox | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IMessageProvider | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IMessengerWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IOutbox | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | IWETH | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L1_Bridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L1_ERC20_Bridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L1_ETH_Bridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_AmmWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_Bridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_OptimismBridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_PolygonBridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_PolygonMessengerProxy | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_UniswapWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | L2_XDaiBridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | MerkleUtils | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | MessengerWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | OptimismMessengerWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | PolygonWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | Timelock | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | XDaiMessengerWrapper | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | iArbitraryMessageBridge | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | iOVM_BaseCrossDomainMessenger | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | iOVM_L1CrossDomainMessenger | unmatched — not counted | — | — | no |
| Audit_Report_-_Hop_05.05.2021.pdf | iOVM_L2CrossDomainMessenger | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | Accounting | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | ArbitrumMessengerWrapper | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | Bridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | HopBridgeToken | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L1_Bridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L1_ERC20_Bridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L1_ETH_Bridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_AmmWrapper | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_ArbitrumBridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_Bridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_OptimismBridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_UniswapWrapper | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | L2_XDaiBridge | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | MessengerWrapper | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | OptimismMessengerWrapper | unmatched — not counted | — | — | no |
| MonocerosAlpha_-_Hop_Audit.pdf | XDaiMessengerWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | Accounting | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | Bridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | HopBridgeToken | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IArbSys | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IBridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IGlobalInbox | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IInbox | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IMessageProvider | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IMessengerWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IOutbox | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | IWETH | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L1_Bridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L1_ERC20_Bridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L1_ETH_Bridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_AmmWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_Bridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_OptimismBridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_PolygonBridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_PolygonMessengerProxy | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_UniswapWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | L2_XDaiBridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | MerkleUtils | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | MessengerWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | OptimismMessengerWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | PolygonWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | Timelock | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | XDaiMessengerWrapper | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | iArbitraryMessageBridge | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | iOVM_BaseCrossDomainMessenger | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | iOVM_L1CrossDomainMessenger | unmatched — not counted | — | — | no |
| 052021_Solidified.pdf | iOVM_L2CrossDomainMessenger | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | Accounting | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | ArbitrumMessengerWrapper | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | Bridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | HopBridgeToken | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L1_Bridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L1_ERC20_Bridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L1_ETH_Bridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_AmmWrapper | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_ArbitrumBridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_Bridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_OptimismBridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_UniswapWrapper | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | L2_XDaiBridge | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | MessengerWrapper | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | OptimismMessengerWrapper | unmatched — not counted | — | — | no |
| 042021_MonocerosAlpha.pdf | XDaiMessengerWrapper | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 94 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2722] Audit_Report_-_Hop_05.05.2021.pdf
- [2723] MonocerosAlpha_-_Hop_Audit.pdf
- [11916] 052021_Solidified.pdf
- [11917] 042021_MonocerosAlpha.pdf

Fork inheritance lineage and inherited audits are included when available.
