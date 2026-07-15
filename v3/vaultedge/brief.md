# Agentic Audit Brief: Vaultedge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Vaultedge (`vaultedge`)
- Website: [https://www.vaultedge.fi/](https://www.vaultedge.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, plasma
- Contract surface: 64 unique implementations (64 raw deployments)
- Coverage basis: 0/39 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $261,996.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vaultedge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across base, plasma. Structural roles: 39 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: unclassified (39)
- Contract kinds: contract (37), abstract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ActivePool (`0x1d3583...c8c5b0`, chain 8453)
- ActivePool (`0xf7b01e...8f337a`, chain 9745)
- AdminContract (`0xaf1be6...1e9d9d`, chain 8453)
- AdminContract (`0x43a7ba...ad829a`, chain 9745)
- BorrowerOperations (`0xc96723...9901cd`, chain 8453)
- BorrowerOperations (`0xaa2d3c...770829`, chain 9745)
- CollSurplusPool (`0x659c04...b70a90`, chain 8453)
- CollSurplusPool (`0x69b849...33d9c6`, chain 9745)
- DebtToken (`0x0c6de2...fd8a92`, chain 8453)
- DebtToken (`0x50dd3d...436553`, chain 9745)
- DefaultPool (`0x335803...338b4e`, chain 8453)
- DefaultPool (`0x76a3ff...f4a979`, chain 9745)
- FlashArbExecutor (`0x506e5b...57401b`, chain 8453)
- GasPool (`0xaf336f...2dd1d1`, chain 8453)
- GasPool (`0x386d36...cc0838`, chain 9745)
- mRT Oracle (`0x0dbf7c...4177bb`, chain 8453)
- mRT Token (`0xa46246...24e5ec`, chain 8453)
- mSRT Oracle (`0x13e32a...0f67e0`, chain 8453)
- mSRT Token (`0xa9329e...785687`, chain 8453)
- mUSD Oracle (`0xcf6d25...4d7b8f`, chain 8453)
- mUSD Token (`0xc06636...a2e7c0`, chain 8453)
- mvUSD Vault (`0x27fbc9...ce903b`, chain 8453)
- PegStabilityModule (`0xb2d6c5...a3e04d`, chain 9745)
- PegStabilityModuleWithStrategy (`0x514578...8602f6`, chain 8453)
- PegToken (`0x0d7e1f...acdc83`, chain 9745)
- PriceFeedV2 (`0x1be233...3a947b`, chain 8453)
- PriceFeedV2 (`0x46abb1...6b6587`, chain 9745)
- ProxyAdmin (`0x0dfebd...1ab146`, chain 8453)
- ProxyAdmin (`0xe424f3...3331a0`, chain 9745)
- ProxyAdmin Timelocked One Day (`0x66e5ad...68d4f8`, chain 8453)
- ProxyAdmin Timelocked Three Day (`0x07fe8c...4bb437`, chain 8453)
- SortedVessels (`0x063208...3048bb`, chain 8453)
- SortedVessels (`0xda9e80...1fed89`, chain 9745)
- StabilityPool (`0x09cb81...7cfc34`, chain 8453)
- StabilityPool (`0xdeb916...da6f95`, chain 9745)
- Timelock One Day (`0xffef0f...9e7109`, chain 8453)
- Timelock Three Day (`0x64eb35...4d3e67`, chain 8453)
- VesselManager (`0x9abf6a...683054`, chain 8453)
- VesselManager (`0x5954d9...5f1e3a`, chain 9745)
- VesselManagerOperations (`0xc11494...735c9c`, chain 8453)
- VesselManagerOperations (`0x24ea2f...a9387a`, chain 9745)

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/39 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 41 of 64 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 64
- Raw deployments: 64
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

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | project_anchor | own_supporting | 0 | base | unit-395545 | `0x1d3583...c8c5b0` | ⚠️ Unaudited |
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8ceaba...3e2a78` | ⚠️ Unaudited |
| ActivePool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395580 | `0xf7b01e...8f337a` | ⚠️ Unaudited |
| AdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ad60d...19eff5` | ⚠️ Unaudited |
| AdminContract | unknown | project_anchor | own_supporting | 0 | base | unit-395557 | `0xaf1be6...1e9d9d` | ⚠️ Unaudited |
| AdminContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395568 | `0x43a7ba...ad829a` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac3098...5587ea` | ⚠️ Unaudited |
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | base | unit-395562 | `0xc96723...9901cd` | ⚠️ Unaudited |
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | plasma | unit-395574 | `0xaa2d3c...770829` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | base | unit-395552 | `0x659c04...b70a90` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc401d5...6f86bc` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395572 | `0x69b849...33d9c6` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | base | unit-395540 | `0x0c6de2...fd8a92` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfcd66...b68c26` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | plasma | unit-395570 | `0x50dd3d...436553` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | base | unit-395547 | `0x335803...338b4e` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6673a7...460ff1` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395573 | `0x76a3ff...f4a979` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x384288...366143` | ⚠️ Unaudited |
| FlashArbExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-395549 | `0x506e5b...57401b` | ⚠️ Unaudited |
| FlashArbExecutor_Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x38eff9...b3ee21` | ⚠️ Unaudited |
| FlashArbRedemption_Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9db37a...d42dcc` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x110a56...50e697` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | base | unit-395558 | `0xaf336f...2dd1d1` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395567 | `0x386d36...cc0838` | ⚠️ Unaudited |
| mRT Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395541 | `0x0dbf7c...4177bb` | ⚠️ Unaudited |
| mRT Token | unknown | project_anchor | own_supporting | 0 | base | unit-395555 | `0xa46246...24e5ec` | ⚠️ Unaudited |
| mSRT Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395543 | `0x13e32a...0f67e0` | ⚠️ Unaudited |
| mSRT Token | unknown | project_anchor | own_supporting | 0 | base | unit-395556 | `0xa9329e...785687` | ⚠️ Unaudited |
| mUSD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395563 | `0xcf6d25...4d7b8f` | ⚠️ Unaudited |
| mUSD Token | unknown | project_anchor | own_supporting | 0 | base | unit-395559 | `0xc06636...a2e7c0` | ⚠️ Unaudited |
| mvUSD Vault | unknown | project_anchor | own_supporting | 0 | base | unit-395546 | `0x27fbc9...ce903b` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | plasma | unit-395575 | `0xb2d6c5...a3e04d` | ⚠️ Unaudited |
| PegStabilityModuleWithStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x422f31...a5e067` | ⚠️ Unaudited |
| PegStabilityModuleWithStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-395550 | `0x514578...8602f6` | ⚠️ Unaudited |
| PegToken | unknown | project_anchor | own_supporting | 0 | plasma | unit-395565 | `0x0d7e1f...acdc83` | ⚠️ Unaudited |
| PriceFeedV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x019ba6...c8c2f8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-395542 | `0x0dfebd...1ab146` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f24a0...1c0199` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | plasma | unit-395578 | `0xe424f3...3331a0` | ⚠️ Unaudited |
| ProxyAdmin Timelocked One Day | unknown | project_anchor | own_supporting | 0 | base | unit-395553 | `0x66e5ad...68d4f8` | ⚠️ Unaudited |
| ProxyAdmin Timelocked Three Day | unknown | project_anchor | own_supporting | 0 | base | unit-395538 | `0x07fe8c...4bb437` | ⚠️ Unaudited |
| ProxyAdmin_TimelockedOneDay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05a991...3cb50d` | ⚠️ Unaudited |
| ProxyAdmin_TimelockedThreeDay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb9b3a...e48b8d` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 0 | base | unit-395537 | `0x063208...3048bb` | ⚠️ Unaudited |
| SortedVessels | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8a34f2...591d34` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 0 | plasma | unit-395576 | `0xda9e80...1fed89` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0745cb...047ac8` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | base | unit-395539 | `0x09cb81...7cfc34` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395577 | `0xdeb916...da6f95` | ⚠️ Unaudited |
| Timelock One Day | unknown | project_anchor | own_supporting | 0 | base | unit-395564 | `0xffef0f...9e7109` | ⚠️ Unaudited |
| Timelock Three Day | unknown | project_anchor | own_supporting | 0 | base | unit-395551 | `0x64eb35...4d3e67` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa23daa...9af14d` | ⚠️ Unaudited |
| VesselManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14a936...4aca30` | ⚠️ Unaudited |
| VesselManager | unknown | project_anchor | own_supporting | 0 | base | unit-395554 | `0x9abf6a...683054` | ⚠️ Unaudited |
| VesselManager | unknown | project_anchor | own_supporting | 0 | plasma | unit-395571 | `0x5954d9...5f1e3a` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a9f91...3dbe78` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | project_anchor | own_supporting | 0 | base | unit-395560 | `0xc11494...735c9c` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | project_anchor | own_supporting | 0 | plasma | unit-395566 | `0x24ea2f...a9387a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PriceFeedV2 | unknown | project_anchor | own_supporting | 0 | base | unit-395544 | `0x1be233...3a947b` | ❓ Unverified |
| PriceFeedV2 | unknown | project_anchor | own_supporting | 0 | plasma | unit-395569 | `0x46abb1...6b6587` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395548 | `0x339b88...a1b4ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395561 | `0xc775ac...19fd4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-395579 | `0xeecb14...01c23d` | ❓ Unverified |

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
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 44 |

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
