# Agentic Audit Brief: Coinswap Space

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

- Project: Coinswap Space (`coinswap-space`)
- Website: [https://coinswap.space/](https://coinswap.space/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 35 unique implementations (35 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $232,443.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Coinswap Space in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoinswapFaaS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129841 | `0x496a0227f7f16622650ddf2601b6842e845203c5` | ⚠️ Unaudited |
| CoinswapSaaS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129848 | `0xfdfe9ab11d1c30bc1ffd6e2fe6eaa9660a3f8133` | ⚠️ Unaudited |
| CoinswapTestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129844 | `0xa7ba3a3f2edde23706c0ef2de34b1300b2bbcea1` | ⚠️ Unaudited |
| CommunityReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129836 | `0x29a888e301a9ff0f4420a115f61e6ad0750db9de` | ⚠️ Unaudited |
| CommunityRewardBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129843 | `0x5ca94e1b35c0a726e5431f66dbecdd2253ca6cb1` | ⚠️ Unaudited |
| CssReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129829 | `0x0207f989db6427cd3f296a850664f9a6608ee8cb` | ⚠️ Unaudited |
| CssToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129838 | `0x3bc5798416c1122bcfd7cb0e055d50061f23850d` | ⚠️ Unaudited |
| MasterCSS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129834 | `0x1407673057f03a67c235e95b135110ca67596aff` | ⚠️ Unaudited |
| SpacePad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129833 | `0x09b543f0aa96905d9ce689874b88505608f661f0` | ⚠️ Unaudited |
| SpacePadFriends | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129830 | `0x02db3acce010c8dd8125c451c369479cce2d7fa2` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129846 | `0xb83e4aee074d5898af4817e6129839c981390889` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087a660135313caf22674eb16c89d4acb8ceed32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1549af757f9e69b095903a1d62676a7978c54313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1783198e94400c27bf1de9b8f0375cbcca46f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f1c899d17a7f568ec81227fc881b4b12a8c50b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f44a90f716fa73c9143a5c3f96792e51423be96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a0a988d680dbbb02decbfd35f9e0676b4bec292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e60079c858c15abd88d5aecee96c671972be8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b366ec588e7f4bd337878c415570a25ee83f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f469401eda4664a23d00f6aae2614949048f64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x722d2aa636941f28baaad81763af80c2fd8f9018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c79bd8754f28188aa44319d43f8b8c8d71cacec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c4d431e078dc5062413a7d5ab0b3aff025178e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d83b49d194bb80f5f565446cd4464ae3b7b1170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa25ea2b60c1a1365f195cfda61b9fb7eb8fcc38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaca6f6b8216f2f909bc4ab5070e291d2e992e18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5e162c7105c59aaabf17a94f7a0fdb88292357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc2bbaa74d0af4f36bb14fd18e779cb0d5fe994e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc74973e0272aed8b2901f6f054897a1428b4d883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc88ff46d508b4feba9ff0d17d8ae0fda0695be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe33731cd36496cbd608d2c02eef0aa8e0fd70d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1cf07fe21b7dc6cf8b196fe978ec94ed0c106a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf25800b603358d4c333bd6c8ed0d072616194a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf67891e8c28758b45574e43c769469bcb9d295f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc3d9f2de4d792acda6103d0ce694b4940e5c90` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 24
- Live contracts: 0
- Unknown liveness contracts: 24
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=24

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x087a660135313caf22674eb16c89d4acb8ceed32` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x1549af757f9e69b095903a1d62676a7978c54313` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x1783198e94400c27bf1de9b8f0375cbcca46f26a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x2f1c899d17a7f568ec81227fc881b4b12a8c50b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x2f44a90f716fa73c9143a5c3f96792e51423be96` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x3a0a988d680dbbb02decbfd35f9e0676b4bec292` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x3e60079c858c15abd88d5aecee96c671972be8c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x58b366ec588e7f4bd337878c415570a25ee83f6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x6f469401eda4664a23d00f6aae2614949048f64d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x722d2aa636941f28baaad81763af80c2fd8f9018` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x7c79bd8754f28188aa44319d43f8b8c8d71cacec` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x9c4d431e078dc5062413a7d5ab0b3aff025178e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0x9d83b49d194bb80f5f565446cd4464ae3b7b1170` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xa25ea2b60c1a1365f195cfda61b9fb7eb8fcc38b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xaca6f6b8216f2f909bc4ab5070e291d2e992e18d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xb5e162c7105c59aaabf17a94f7a0fdb88292357d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xbc2bbaa74d0af4f36bb14fd18e779cb0d5fe994e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xc74973e0272aed8b2901f6f054897a1428b4d883` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xcc88ff46d508b4feba9ff0d17d8ae0fda0695be8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xe33731cd36496cbd608d2c02eef0aa8e0fd70d18` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xf1cf07fe21b7dc6cf8b196fe978ec94ed0c106a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xf25800b603358d4c333bd6c8ed0d072616194a10` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xf67891e8c28758b45574e43c769469bcb9d295f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |
| unverified unclassified | UnnamedContract<br>`0xffc3d9f2de4d792acda6103d0ce694b4940e5c90` | non_address_book | unknown | unknown | unverified | n/a | `0xa1f4d6f76c9ae5b21455a3367b79cfa360015f7a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/coinswap) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19654] DL audit link — no match: Extracted from CertiK Skynet page for CoinSwap Space. Audit date inferred from 'Last Audit was delivered on 7/10/2021'. Contract names are from the audit PDF listing: Coinswap Swap-Periphery, Coinswap Core, CoinSwap Farm.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Coinswap Swap-Periphery | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |
| DL audit link | Coinswap Core | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |
| DL audit link | CoinSwap Farm | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [19654] DL audit link

Fork inheritance lineage and inherited audits are included when available.
