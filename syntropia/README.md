# Agentic Audit Brief: Syntropia

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Syntropia (`syntropia`)
- Website: [https://syntropia.ai/](https://syntropia.ai/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 8 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,425,245.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Syntropia in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 13
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DelayProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x358f9ff9eee76bb6fade2a6f5d495e649b334542`; ethereum `0x78ac58ed54018f5ccd5f5de2d7c0ae40800f2cf4`; ethereum `0xdf2410949af333d8707749a955849daedcf96d24` | ⚠️ Unaudited |
| OptinProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | ⚠️ Unaudited |
| OptinProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ⚠️ Unaudited |
| ProtocolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51`; ethereum `0x8def66acf9c53e99611a9ea167d0d5019c3826b3`; ethereum `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ⚠️ Unaudited |
| PTOraclePriceAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70efd899dd4934e25b6042d0a06412e4ea001d05` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ⚠️ Unaudited |
| Vault_v0_5_0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23fbda54849e8904154c8f8436a59b95b1d397cb`; ethereum `0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 9
- Live contracts: 0
- Unknown liveness contracts: 9
- Source-verified contracts: 8
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=3, source verified unclassified=5, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | OptinProxyFactory<br>`0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | candidate review | Vault_v0_5_0<br>`0x23fbda54849e8904154c8f8436a59b95b1d397cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | candidate review | Vault_v0_5_0<br>`0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | source verified unclassified | ProtocolRegistry<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | verified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | source verified unclassified | ProtocolRegistry<br>`0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | non_address_book | unknown | unknown | verified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | source verified unclassified | ProtocolRegistry<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | verified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | source verified unclassified | PTOraclePriceAdapterFactory<br>`0x70efd899dd4934e25b6042d0a06412e4ea001d05` | non_address_book | unknown | unknown | verified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | source verified unclassified | Vault<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | verified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
