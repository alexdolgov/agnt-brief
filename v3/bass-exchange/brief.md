# Agentic Audit Brief: Bass Exchange

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

- Project: Bass Exchange (`bass-exchange`)
- Website: [https://bass.exchange/](https://bass.exchange/)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 20 unique implementations (34 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $248,448.20
- On-chain TVL (included contracts): $49,223.00
- TVL by chain: Base $49,223.00

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Bass Exchange in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 20 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 20
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f23b787053802108fed5b67cf703f0778aebad8` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x127fce29004451beb4e62869adac635353e49dec`; base `0x1dd5763e0014b2f8dee9413c88fe3c1f6d3bec6d`; base `0x38c9d84474fd89fe49e4f3a01408ba15a6a7d731`; base `0x57d00df5d2bb73e709f6cf0e7d84257dd6968c39`; base `0x65c2521bf6af79d53161eeacba58cd2d0045d8a9` | ⚠️ Unaudited |
| DynamicPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32622a9e2518440d319dfd8f6d4cb6a1faf6b399` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x128acd4983555a84a063da5b0f2d28298a0fe3e4`; base `0xa4a7304a4c6e4626ce421841d2d20dabcfc9a2c1` | ⚠️ Unaudited |
| HighCovRatioFeePoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42328f9bfdfbde45590473b2161e1a07823bbf0` | ⚠️ Unaudited |
| LiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf167dd9bdea0aef6d0709204ecae04df0ac8a548` | ⚠️ Unaudited |
| MasterWombatV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0b15783d6daf9d7923493e15d958fb4c3468ed0f`; base `0x3af03135ed268b8bc85894eebd5ee50f8739d33b` | ⚠️ Unaudited |
| MasterWombatV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x382980d6eb2f038c003770adb46737b7a0c2a33d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ce6b96dbe6c7808295efd0d8d5567862575ced6` | ⚠️ Unaudited |
| SkimmableAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2bcaa79ab66af39a1d1d83749407845394ec0a6a`; base `0x2f458884e0015d1bb936b9a553baf9d5b96ebff2` | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x62087a1ea1fab540e3da3c5ddd0c8721035880c5`; base `0xa5895b5ff267041b968aa82d37a141f08f344333`; base `0xb6d7406f2e4b2680ffcca3ad3c3fab5ee07f2832` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8ad2e09ea8ee9af8d766af960d4328191331f29` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0062e8b644631c3562706d39888f2eedc156856c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x2e07bd7ac8bcb519a08a253bb1db14dd052b014e`; base `0x37917e5de1e5c4a616a895f296de8d8333383eda`; base `0xe9f28d26737ecd1763a64ca88dfed4526555952c`; base `0xfcbf176863a8a2329f11886bbfa802f57e52b50d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x66a55ad2c419147315428998377cb351468a82e0`; base `0x887976c425b7ca006f56ed2fe279c38a60136853` | ⚠️ Unaudited |
| WombatRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x34116bf2d73c916cb03b4a505b577b59e74bdd5a`; base `0x719c2829ca36ccf59f6522869aa984088f2b3c52` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a6156f86c3b1eccdf51a3217a2d359e3de48fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x515829865242ab88c3f4825289dedcc216521ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ba897e91732c8d2f66b94f62515790e362ecaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb11f5e642ef4cf963e45a83e55a8fedcd58f9a9c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 26
- Live contracts: 0
- Unknown liveness contracts: 26
- Source-verified contracts: 21
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=3, source verified unclassified=18, unverified unclassified=5

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Asset<br>`0x57d00df5d2bb73e709f6cf0e7d84257dd6968c39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| candidate review | Asset<br>`0x65c2521bf6af79d53161eeacba58cd2d0045d8a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| candidate review | SkimmableAsset<br>`0x2f458884e0015d1bb936b9a553baf9d5b96ebff2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | DynamicPoolV2<br>`0x32622a9e2518440d319dfd8f6d4cb6a1faf6b399` | non_address_book | core_logic | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | FeeCollector<br>`0x128acd4983555a84a063da5b0f2d28298a0fe3e4` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | HighCovRatioFeePoolV2<br>`0xb42328f9bfdfbde45590473b2161e1a07823bbf0` | non_address_book | core_logic | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | LiquidityLocker<br>`0xf167dd9bdea0aef6d0709204ecae04df0ac8a548` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | MasterWombatV4<br>`0x382980d6eb2f038c003770adb46737b7a0c2a33d` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | MasterWombatV4<br>`0x3af03135ed268b8bc85894eebd5ee50f8739d33b` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | ProxyAdmin<br>`0x6ce6b96dbe6c7808295efd0d8d5567862575ced6` | non_address_book | governance | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | StakedDistributor<br>`0x62087a1ea1fab540e3da3c5ddd0c8721035880c5` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TimelockController<br>`0xa8ad2e09ea8ee9af8d766af960d4328191331f29` | non_address_book | governance | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TokenVesting<br>`0x0062e8b644631c3562706d39888f2eedc156856c` | non_address_book | operational_periphery | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0b15783d6daf9d7923493e15d958fb4c3468ed0f` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2e07bd7ac8bcb519a08a253bb1db14dd052b014e` | non_address_book | proxy | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x719c2829ca36ccf59f6522869aa984088f2b3c52` | non_address_book | adapter | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x887976c425b7ca006f56ed2fe279c38a60136853` | non_address_book | proxy | unknown | verified | n/a | `0x1435f12bd5eee074652926634d5d2e140589924c` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa4a7304a4c6e4626ce421841d2d20dabcfc9a2c1` | non_address_book | unknown | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xe9f28d26737ecd1763a64ca88dfed4526555952c` | non_address_book | proxy | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xfcbf176863a8a2329f11886bbfa802f57e52b50d` | non_address_book | proxy | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| source verified unclassified | WombatRouter02<br>`0x34116bf2d73c916cb03b4a505b577b59e74bdd5a` | non_address_book | adapter | unknown | verified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| unverified unclassified | UnnamedContract<br>`0x0a6156f86c3b1eccdf51a3217a2d359e3de48fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x1435f12bd5eee074652926634d5d2e140589924c` |
| unverified unclassified | UnnamedContract<br>`0x37917e5de1e5c4a616a895f296de8d8333383eda` | non_address_book | unknown | unknown | unverified | n/a | `0x1435f12bd5eee074652926634d5d2e140589924c` |
| unverified unclassified | UnnamedContract<br>`0x515829865242ab88c3f4825289dedcc216521ba0` | non_address_book | unknown | unknown | unverified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |
| unverified unclassified | UnnamedContract<br>`0x66a55ad2c419147315428998377cb351468a82e0` | non_address_book | unknown | unknown | unverified | n/a | `0x1435f12bd5eee074652926634d5d2e140589924c` |
| unverified unclassified | UnnamedContract<br>`0x6ba897e91732c8d2f66b94f62515790e362ecaf2` | non_address_book | unknown | unknown | unverified | n/a | `0xd592af50e30a7c62d11d1997e06a9dcdd9623bb8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bass Exchange.pdf](https://github.com/EtherAuthority/Audit/blob/main/Bass%20Exchange.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12741] Bass Exchange.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bass Exchange.pdf | ABnbcAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | Asset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | BnbxAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | CoreV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicAsset | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicPool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | DynamicPoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | HighCovRatioFeePool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | HighCovRatioFeePoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | MasterWombatV4 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | MultiRewarderPerSec | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | PausableAssets | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | Pool | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | PoolV2 | unmatched — not counted | — | — | no |
| Bass Exchange.pdf | StkbnbAsset | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12741] Bass Exchange.pdf

Fork inheritance lineage and inherited audits are included when available.
