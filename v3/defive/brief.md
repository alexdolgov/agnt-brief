# Agentic Audit Brief: DeFive

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeFive (`defive`)
- Website: [https://defive.com/swap](https://defive.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $310,753.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for DeFive in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnToFunBribeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbeb62b...934a6a` | ⚠️ Unaudited |
| BurnToFunCampaign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09b133...60fcf5` | ⚠️ Unaudited |
| BurnToFunCampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf563b...655500` | ⚠️ Unaudited |
| BurnToFunFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1dc2b2...834de8` | ⚠️ Unaudited |
| BurnToFunTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x096d7a...b1ca9c` | ⚠️ Unaudited |
| BurnToFunVestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x089848...8320a0` | ⚠️ Unaudited |
| DeFiveClaiming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0594d7...c442e9` | ⚠️ Unaudited |
| DeFiveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x47524c...c551e6` | ⚠️ Unaudited |
| DeFiveLpClaiming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e5a17...4d8d9f` | ⚠️ Unaudited |
| DeFiveMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4c354...e9c8e4` | ⚠️ Unaudited |
| DeFiveRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc159d9...68c725` | ⚠️ Unaudited |
| FIVE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15f7a3...c0a351` | ⚠️ Unaudited |
| LumosCards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee4c8d...1682ab` | ⚠️ Unaudited |
| MasterFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0aed2b...c8832d` | ⚠️ Unaudited |
| RareWiggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x871b67...225257` | ⚠️ Unaudited |
| SNSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7b0a41...6ee9f5` | ⚠️ Unaudited |
| Wiggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31e7aa...c72f3d` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
