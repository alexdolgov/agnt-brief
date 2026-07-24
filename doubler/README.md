# Agentic Audit Brief: Doubler

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Doubler (`doubler`)
- Website: [https://doubler.pro/#/home](https://doubler.pro/#/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, manta-pacific
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $102,631.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Doubler. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, manta-pacific. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Doubler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-236551 | `0x498f4711a706f9ad33b5d68eaa20e56a87d5d926` | ⚠️ Unaudited |
| Doubler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-236552 | `0xc8480647eeb358df638ca882362ce528cc666087` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x56386f04111057a5d8df8d719827038b716333f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | n/a | `0x95cef13441be50d20ca4558cc0a27b601ac544e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02d919c63711e46494bf88978f87fb79adb5c561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06486e223a4351e2d78758791a3319e6af8dec49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x15ad6edca40dfafe1b3bac5f1c6d65411726f1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fd303405d41c17df4b03cd0c90d5dafd7533d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24039cb580ef4e2f3b68553d3e30485ab2a91561` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x25d887ce7a35172c62febfd67a1856f20faebb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27f79738e948e3d6de5420a68607af0f4b221291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e3005cd9cce873790ebd6ee1f9b4c9d2052b79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fcc25ecb4352603d27cb7f6e8b0e7a4695cba69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32e5735c3a28dda5e3d1cff08296906f03a8f71f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x342dcd9581e6a884dd400191a93ec645ebec326a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d66ea27a5bd336ad93990f4b70c71226d2651e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x56386f04111057a5d8df8d719827038b716333f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x624d885f3641b9d5116c57a9e4805b74285c3e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63083a606562c90098219caa8d59732ad37db4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6757d971329c20de2058ae7173dab3e10abdda7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b43508570fbe40ca720aab8652b090a147b6e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78d965cc3483d0b95bb076f7c960d17ec1d38dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80d90cbc7ad8b6eb4b0395dbcc7578effb9d31d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81839e2b5bda0254f0d424291b52bcaf0c810a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x865f844e1e562b382af2ac795f6fe35ec60b9b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dea15fec2da70411ee90c4e2d4c42d5fe1d5d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6ebea5aae8275806ba3afa0793170fd8696e7be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb30e384d2120b929dbd76b58e0063c7f0332b6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0d6a250fef269248f1bac4d1c52b982231ca48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0edde6f8d6ca6016e8c7fbbf356a923cbead4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc53aca05430df8ff13a9319cd0769e5caefbc2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5f3cefd371248fb4cd454eb12c326924f6881b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc64a3f7da839f8851cb2a5710b693c92fa461027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc652e54fdf162e2cbd2aed4c8831649c947865cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd30ff50f01fe1268e8316d0505cbd08de10e32cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8d5cb096636a81f59470522ba3fa13da98e426c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd95b03f6cd6b6b7f6400ee2c125bce39b50f3641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd053ee7d5d374808ef0466df7a9eca6a28ac118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe988467fe691ea9f89d4974b367b55386d98df4e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 31
- Live contracts: 0
- Unknown liveness contracts: 31
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=31

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02d919c63711e46494bf88978f87fb79adb5c561` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06486e223a4351e2d78758791a3319e6af8dec49` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1fd303405d41c17df4b03cd0c90d5dafd7533d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x24039cb580ef4e2f3b68553d3e30485ab2a91561` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x27f79738e948e3d6de5420a68607af0f4b221291` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e3005cd9cce873790ebd6ee1f9b4c9d2052b79c` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2fcc25ecb4352603d27cb7f6e8b0e7a4695cba69` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32e5735c3a28dda5e3d1cff08296906f03a8f71f` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x342dcd9581e6a884dd400191a93ec645ebec326a` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d66ea27a5bd336ad93990f4b70c71226d2651e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x624d885f3641b9d5116c57a9e4805b74285c3e03` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63083a606562c90098219caa8d59732ad37db4f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6757d971329c20de2058ae7173dab3e10abdda7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b43508570fbe40ca720aab8652b090a147b6e77` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78d965cc3483d0b95bb076f7c960d17ec1d38dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80d90cbc7ad8b6eb4b0395dbcc7578effb9d31d8` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81839e2b5bda0254f0d424291b52bcaf0c810a90` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x865f844e1e562b382af2ac795f6fe35ec60b9b26` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9dea15fec2da70411ee90c4e2d4c42d5fe1d5d1e` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6ebea5aae8275806ba3afa0793170fd8696e7be` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb30e384d2120b929dbd76b58e0063c7f0332b6d8` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd0d6a250fef269248f1bac4d1c52b982231ca48` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc0edde6f8d6ca6016e8c7fbbf356a923cbead4c4` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc53aca05430df8ff13a9319cd0769e5caefbc2fa` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc5f3cefd371248fb4cd454eb12c326924f6881b7` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc652e54fdf162e2cbd2aed4c8831649c947865cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd30ff50f01fe1268e8316d0505cbd08de10e32cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8d5cb096636a81f59470522ba3fa13da98e426c` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd95b03f6cd6b6b7f6400ee2c125bce39b50f3641` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd053ee7d5d374808ef0466df7a9eca6a28ac118` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe988467fe691ea9f89d4974b367b55386d98df4e` | non_address_book | unknown | unknown | unverified | n/a | `0x5979b00e4d89f6eceb4f95ceded1777f92b5c643` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - Doubler Lite.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20Doubler%20Lite.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13042] SlowMist Audit Report - Doubler Lite.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - Doubler Lite.pdf | Doubler | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Doubler Lite.pdf | DoublerFactory | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Doubler Lite.pdf | FastPriceFeed | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Doubler Lite.pdf | RBToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13042] SlowMist Audit Report - Doubler Lite.pdf

Fork inheritance lineage and inherited audits are included when available.
