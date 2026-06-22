# Agentic Audit Brief: Y2K Finance

⚠️ Lifecycle status: DEAD - TVL dropped 18.6% over 90 days

## Project Overview

- Project: Y2K Finance (`y2k-finance`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-20T01:44:22.969Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $30,043.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Y2K Finance is a derivatives protocol that allows users to hedge or speculate on the outcome of specific events, such as stablecoin depegs. It offers structured products where users can lock tokens to earn rewards or participate in vaults that pay out based on event resolution.

### Architecture

Y2K V1 and V2 are separate product lines deployed by different clusters, with no shared contracts visible. V1 uses a VaultFactory and ClonableBeaconProxy to deploy and manage vaults and reward contracts, while V2 introduces a CarouselFactory for a new set of products.

## Contract Surface Quality

- Indexed contracts: 179; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 177 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClonableBeaconProxy | registry | arbitrum | n/a | [`0x65c936...49977f`](./contracts/arbitrum-42161/0x65c936f008bc34fe819bce9fa5afd9dc2d49977f/) | ⚠️ Unaudited |
| WeightedPool | core_logic | arbitrum | n/a | [`0x569061...cb75a4`](./contracts/arbitrum-42161/0x569061e2d807881f4a33e1cbe1063bc614cb75a4/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link (also discovered via alternate URL)](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FcvH67oRCDa5MfmmyxtuU%2FPeckshield_Y2K.pdf) | PeckShield | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [DL audit link (also discovered via alternate URL)](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FHl3FHTkdL3GkcmrpG4xV%2FHalborn_Y2K.pdf) | Halborn | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [DL audit link (also discovered via alternate URL)](https://2047863079-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2Fs53umi8JxWDcLXM2RWkz%2FHalborn_Y2k_Audit2.pdf) | Halborn | Audit | n/a | unknown | Direct | contract_name|n/a | 0 | n/a |
| [{% embed url="<>" %}](https://www.verilog.solutions/audits/y2k) | VERILOG | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://398575907-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2F3jrhjQlJz1n5GhyXN0iU%2FSHERLOCK_Y2K_Audit_Report.pdf) | Sherlock | Contest | 2023-05 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://398575907-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSJHG27D6yEvbos52Fsy%2Fuploads%2FiSOJywuozkhowmbmGO1v%2FY2K_Finance_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=167

Zero-match audit list:

- [14147] DL audit link
- [14148] DL audit link
- [14149] DL audit link
- [14150] {% embed url="<>" %}
- [14151] Rendered PDF capture
- [14152] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
