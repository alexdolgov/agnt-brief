# Agentic Audit Brief: Picnic

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Picnic (`picnic`)
- Website: [https://www.usepicnic.com](https://www.usepicnic.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: polygon
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $200,470.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Picnic in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutofarmDepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159897 | `0x4789499ed6d3c9e9b874e7e02ab8139779a51704` | ⚠️ Unaudited |
| BaseTransfers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159893 | `0x0e5047e1273dfab56eb800f31da9e8a8872e14d8` | ⚠️ Unaudited |
| DeFiBasket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159908 | `0xee13c86ee4eb1ec3a05e2cc3ab70576f31666b3b` | ⚠️ Unaudited |
| GenesisAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159901 | `0x7d5424f6c617c486ab4437b88410357bba7d124e` | ⚠️ Unaudited |
| genesisBuys | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159900 | `0x7ca3ffa001d9bc98bf1fdfb1e48830b785cd6799` | ⚠️ Unaudited |
| Lists | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159905 | `0x9c9aeb7906e677edbbad1bc86caf464924b366dc` | ⚠️ Unaudited |
| Minereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159891 | `0x0b91b07beb67333225a5ba0259d55aee10e3a578` | ⚠️ Unaudited |
| Minereum32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159890 | `0x0848b63bf95f145f56d7d0413e386f9636cf6ea1` | ⚠️ Unaudited |
| MinereumEvmOrdinals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159895 | `0x20e9fd46b1d8544d50224e391120d1e4c1bee138` | ⚠️ Unaudited |
| MinereumSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159906 | `0xbb9c51e950517a4009c9e416bab5bd04b7a88b78` | ⚠️ Unaudited |
| MinereumWorldPolygonRefund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159899 | `0x74eb21ce66e226e28f8e510da9623d959bce70ad` | ⚠️ Unaudited |
| NormalAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159896 | `0x426d86b00f85d8ea716727fec9cdff58f65504b3` | ⚠️ Unaudited |
| publicArrays | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159894 | `0x12c60985421f3ea92ac4997e2cec8b1bbf33ee66` | ⚠️ Unaudited |
| publicCalls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159892 | `0x0e35a9caef5f24e1802c51ee935836af07d73b33` | ⚠️ Unaudited |
| QuickswapLiquidityBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159902 | `0x89db516b50819593f058040f781bff9880ca81a8` | ⚠️ Unaudited |
| QuickswapSwapBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159909 | `0xfa299c3f1ee9dea789b1d94243ab7aeea8bd7c77` | ⚠️ Unaudited |
| stakes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159907 | `0xc59e57fc338e4dd177904faccd063c688833bf71` | ⚠️ Unaudited |
| stakesBuys | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159903 | `0x8efd839d6bcabaac5072d1c2bb360cbdb130c1b6` | ⚠️ Unaudited |
| tokenService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159898 | `0x5e179082c652fd750b7bf3b48c5a253a63ba9833` | ⚠️ Unaudited |
| WMaticWrapBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-159904 | `0x9ba04edb13e129c19823a084c7e9988fa5e20647` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x712382cabba567554e506c7ccff28c129b37501a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd22202d23fe7de9e3dbe11a2a88f42f4cb9507cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe04bb2ef45895d9a3aa8436300b87475dec41a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecdff6fd2f184f8b8987682a10aa6890ca74c5a8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 4
- Live contracts: 0
- Unknown liveness contracts: 4
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=4

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x712382cabba567554e506c7ccff28c129b37501a` | non_address_book | unknown | unknown | unverified | n/a | `0x074a2bb7686da8dacad178aece2ad280b8d4c25d` |
| unverified unclassified | UnnamedContract<br>`0xd22202d23fe7de9e3dbe11a2a88f42f4cb9507cf` | non_address_book | unknown | unknown | unverified | n/a | `0x074a2bb7686da8dacad178aece2ad280b8d4c25d` |
| unverified unclassified | UnnamedContract<br>`0xe04bb2ef45895d9a3aa8436300b87475dec41a86` | non_address_book | unknown | unknown | unverified | n/a | `0x074a2bb7686da8dacad178aece2ad280b8d4c25d` |
| unverified unclassified | UnnamedContract<br>`0xecdff6fd2f184f8b8987682a10aa6890ca74c5a8` | non_address_book | unknown | unknown | unverified | n/a | `0x074a2bb7686da8dacad178aece2ad280b8d4c25d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/defi-basket](https://skynet.certik.com/projects/defi-basket) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20937] skynet.certik.com/projects/defi-basket — no match: Extracted from Audited Files section; only two contract names explicitly listed; other files may exist but names not fully visible.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/defi-basket | AutofarmDepositBridge | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/defi-basket | QuickswapSwapBridge | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20937] skynet.certik.com/projects/defi-basket

Fork inheritance lineage and inherited audits are included when available.
