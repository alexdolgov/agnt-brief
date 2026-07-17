# Agentic Audit Brief: ShardingDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ShardingDAO (`shardingdao`)
- Website: [https://shardingdao.com/](https://shardingdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (23 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $5,899,522.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ShardingDAO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 23
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BuyoutProposals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01da4a4a0ed7757e95848112dbb9f005b55653f2`; ethereum `0xdf83c19a6958ce28b1cb9e1751ed05b060505cfd` | ⚠️ Unaudited |
| CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb661ef22dd089063d48efce2cf8e19917797bbfb`; ethereum `0xfdaa41ba4f1d712a8777ef7ca104c308ce76fb26` | ⚠️ Unaudited |
| MarketingMiningDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0feccb11c5b61b3922c511d0f002c0b72d770dce`; ethereum `0xab2cc3ab140e7596c5de18d1269ac39c53bd0db0` | ⚠️ Unaudited |
| MarketRegulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdddf6b2c719d04f5f87230dd02c12ea062799b29` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31e3921f5bef7dcea1b01c9f7ed1153beddfdd` | ⚠️ Unaudited |
| ShardingDAOMiningDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5cb8a52bb5191be839bbdb69bd0b24b8cbb72540`; ethereum `0x627af3b7bb61cb5e96a1f31277eb387defe737a1` | ⚠️ Unaudited |
| ShardingDAOMiningDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x73aaf8f86fea9750273d7ff650cedbb7ae98a947`; ethereum `0x84ef19700519571d139a3815df75356b9745278c`; ethereum `0xbae5d387f2142617b15b8fe70e45743059b5672e` | ⚠️ Unaudited |
| ShardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a0129499b5633ba0dcad1f24289fd3bfcf8d9f` | ⚠️ Unaudited |
| ShardsMarketDelegateV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x13a246e429ff8e7cf7d371133b511e601bfeb824`; ethereum `0xe7714925d9d3fff268f2d5caa512d983d6758c20` | ⚠️ Unaudited |
| SHDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5845cd0205b5d43af695412a79cf7c1aeddb060f` | ⚠️ Unaudited |
| SHDVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec78795492cfb5dee4a54a38efb512c9095ec540` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaeb5bcdb55e6abc2450595df27f993b82f375756`; ethereum `0xc8d11b6dc98bccd1308b65ec8c9bd54113016b0b` | ⚠️ Unaudited |
| TokenBarDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5953eb2e1790b9a0cba6f02cc20026a688e19b16`; ethereum `0xea1e9fef904103f39c4f7c2a1f81e665711be078` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-164955 | `0xed955a9bed9deb7547d2f71952db810619b5ab32` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [shd_smart_contract_audit_report.pdf](https://shardingdao.com/files/shd_smart_contract_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2141] shd_smart_contract_audit_report.pdf — no match: The provided text is a marketing page for ShardingDAO, not an audit report. No contracts, scope, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2141] shd_smart_contract_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
