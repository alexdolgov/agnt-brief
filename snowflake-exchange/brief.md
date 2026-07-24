# Agentic Audit Brief: Snowflake Exchange

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

- Project: Snowflake Exchange (`snowflake-exchange`)
- Website: [https://snowflake-exchange.gitbook.io/snowflake-exchange](https://snowflake-exchange.gitbook.io/snowflake-exchange)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, polygon
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $106,477.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Snowflake Exchange in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-165764 | `0x1d060c82e643528db02882b4b2e4379631df5608` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-165763 | `0x30d5d5549ffef0a70c1b0de09a6448babb166295` | ⚠️ Unaudited |
| LiquidityLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165761 | `0x8490e32cb4e8a43f35eee19244b0513c14c5d16b` | ⚠️ Unaudited |
| MasterSnowflakeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165758 | `0x6a22e86a983db7c24a71b3666c1a7ca7925e3165` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165759 | `0x6f52d32dff6a9b9d9a20c5d059f83c2183527f95` | ⚠️ Unaudited |
| PoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165762 | `0x93236d836fb2723eac51db86a803aeb53c25dedf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-165757 | `0x4dc0bf37138caf947c6e7f7811f5a0a94342364f` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165755 | `0x068e00886dc66b4ca002ef8bfb09ae705f035500` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165760 | `0x7dbdb74b1ca0e7da16101877a1221a800cca9095` | ⚠️ Unaudited |
| VeSnow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-165756 | `0x44f7e9d762754e0c757b37bfb68440c0bf7ced9d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dc5171f02b408826324f82e6747957b9b171b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c326abbe089b786e7170da84e39f3d0c6650653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dc2a544a3a9c4d86d58d52bcad1eca8c1ec2361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45659c218a55555652f28780fac77b5c9c559e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b780d14cf44302908b1700e5ad2f746c70b1c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59a49e5bd704fc70e2cd9fe3d4d5d03991278015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5caab27b0eba8a040958a70423ab07e916b859c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cfded1c12f2159fa01d6b0305a285099a00a7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e15b9a5602f8e95b79a758b969017e3d223c52e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73587da945516ba3639af26022fbb3f0c1f5546c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ff7e99ef3f879d18a65fe0aa1c5c6f2f12db615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f108fedc9a728241f81bfe7d9105e6b6ece740a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba6f4b54e5ce8b275235d24014fb5f47f58776cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc626dd42230ed64cbb0745373cf40729a28c4716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc95492fd0b83ec86eff57a1f70011fc5c1c3dd3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0dcf24aa7784e34f022adf43447578e54e2a695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0f463832295adf63eb6ca053413a3f9cd8bf685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe23fd0952266ac424e2a6b9e2d2aeac9a22087af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4b4a12a02328248da606c56099f0cc0eb1dfe93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7ac138369d7bbfbd1cbaff4379d4ac0abafb928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf57057d1220d816ad4daf993d9676e1910277032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb3f63e7b05e0d87b7be26cb6f4a3fa7192f9905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd5d4cade98366d0b09c03cb3cee7d244c8b6146` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 23
- Live contracts: 0
- Unknown liveness contracts: 23
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=23

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0x0dc5171f02b408826324f82e6747957b9b171b81` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2c326abbe089b786e7170da84e39f3d0c6650653` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3dc2a544a3a9c4d86d58d52bcad1eca8c1ec2361` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x45659c218a55555652f28780fac77b5c9c559e66` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4b780d14cf44302908b1700e5ad2f746c70b1c9e` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x59a49e5bd704fc70e2cd9fe3d4d5d03991278015` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5caab27b0eba8a040958a70423ab07e916b859c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5cfded1c12f2159fa01d6b0305a285099a00a7e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5e15b9a5602f8e95b79a758b969017e3d223c52e` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x73587da945516ba3639af26022fbb3f0c1f5546c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7ff7e99ef3f879d18a65fe0aa1c5c6f2f12db615` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8f108fedc9a728241f81bfe7d9105e6b6ece740a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xba6f4b54e5ce8b275235d24014fb5f47f58776cd` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc626dd42230ed64cbb0745373cf40729a28c4716` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc95492fd0b83ec86eff57a1f70011fc5c1c3dd3b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd0dcf24aa7784e34f022adf43447578e54e2a695` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe0f463832295adf63eb6ca053413a3f9cd8bf685` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe23fd0952266ac424e2a6b9e2d2aeac9a22087af` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe4b4a12a02328248da606c56099f0cc0eb1dfe93` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe7ac138369d7bbfbd1cbaff4379d4ac0abafb928` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf57057d1220d816ad4daf993d9676e1910277032` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfb3f63e7b05e0d87b7be26cb6f4a3fa7192f9905` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfd5d4cade98366d0b09c03cb3cee7d244c8b6146` | non_address_book | unknown | unknown | unverified | n/a | `0xb4596ed10d22822302dd8f9a184ffafd7a1314d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Coinsult_Snowflake_0xE0...f685_Audit.pdf](https://github.com/Coinsult/solidity/blob/main/Coinsult_Snowflake_0xE0...f685_Audit.pdf) | Coinsult | Audit | 2022-10 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29793] Coinsult_Snowflake_0xE0...f685_Audit.pdf — no match: Main contract is Token (Snowflake token) on Polygon. TokenVesting is referenced but not audited. Only Token is in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Coinsult_Snowflake_0xE0...f685_Audit.pdf | Token | unmatched — not counted | — | listed in scope and contract snapshot | no |
| Coinsult_Snowflake_0xE0...f685_Audit.pdf | TokenVesting | unmatched — not counted | — | mentioned in contract snapshot as unverified contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [29793] Coinsult_Snowflake_0xE0...f685_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
