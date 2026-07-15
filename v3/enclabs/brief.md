# Agentic Audit Brief: Enclabs

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

- Project: Enclabs (`enclabs`)
- Website: [https://www.enclabs.finance/](https://www.enclabs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: plasma, sonic
- Contract surface: 75 unique implementations (76 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,470.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Enclabs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across plasma, sonic. Structural roles: 5 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), infra (1)
- Contract kinds: contract (6)
- Detected standards: erc1967proxy (2), ownable (2), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1053fc...1ba143`, chain 146)
- UnnamedContract (`0x1db513...e0d041`, chain 146)
- UnnamedContract (`0x1fc130...ecbb8e`, chain 146)
- UnnamedContract (`0x26190c...528969`, chain 146)
- UnnamedContract (`0x4cb42e...1a5a36`, chain 146)
- UnnamedContract (`0x62c627...e34786`, chain 146)
- UnnamedContract (`0x7d47cb...8bc21b`, chain 146)
- UnnamedContract (`0x7fd794...d40e13`, chain 146)
- UnnamedContract (`0x80c2fb...2290da`, chain 146)
- UnnamedContract (`0x876e06...142343`, chain 146)
- UnnamedContract (`0x87c69a...3a2036`, chain 146)
- UnnamedContract (`0x8bc35a...8668b5`, chain 146)
- UnnamedContract (`0x947329...052870`, chain 146)
- UnnamedContract (`0x9643cb...feab53`, chain 146)
- UnnamedContract (`0xa3f485...13e8e3`, chain 146)
- UnnamedContract (`0xabd27b...9aafa1`, chain 146)
- UnnamedContract (`0xb06851...479fe4`, chain 146)
- UnnamedContract (`0xb36291...d9b1f1`, chain 146)
- UnnamedContract (`0xb64b85...eb0fe7`, chain 146)
- UnnamedContract (`0xbff8cf...614eab`, chain 146)
- UnnamedContract (`0xc96a4c...d67e96`, chain 146)
- UnnamedContract (`0xccadfc...1aa2c9`, chain 146)
- UnnamedContract (`0xd05b05...562408`, chain 146)
- UnnamedContract (`0xd1e8ec...73a8f2`, chain 146)
- UnnamedContract (`0xd84bc1...6acdd0`, chain 146)
- UnnamedContract (`0xe9d1af...0ffaa6`, chain 146)
- UnnamedContract (`0xefb142...b07115`, chain 146)
- UnnamedContract (`0x02f9d2...dc5394`, chain 9745)
- UnnamedContract (`0x0781bd...60db3c`, chain 9745)
- UnnamedContract (`0x149a31...1e1334`, chain 9745)
- UnnamedContract (`0x2e9d14...b09174`, chain 9745)
- UnnamedContract (`0x47a3d1...f947ce`, chain 9745)
- UnnamedContract (`0x52260a...9c157c`, chain 9745)
- UnnamedContract (`0x53673d...ff4ad9`, chain 9745)
- UnnamedContract (`0x57c919...5475df`, chain 9745)
- UnnamedContract (`0x6e842f...e64be8`, chain 9745)
- UnnamedContract (`0x7fbcd3...d987d1`, chain 9745)
- UnnamedContract (`0xcbf3bc...13e512`, chain 9745)
- UnnamedContract (`0xd89b57...5e5a37`, chain 9745)
- UnnamedContract (`0xe67b50...016550`, chain 9745)
- UnnamedContract (`0xf2f02b...acba8d`, chain 9745)
- UnnamedContract (`0xf690a1...7efd48`, chain 9745)
- AccessControlManager (`0x97dede...1803a8`, chain 146)
- OptimizedTransparentUpgradeableProxy (`0xea231b...cb5566`, chain 146)
- PoolLens (`0x3567b1...5d65f3`, chain 146)
- TimelockV8 (`0x81c6ed...416191`, chain 146)
- UpgradeableBeacon (`0x943358...736024`, chain 146)
- VTreasuryV8 (`0x172bc3...5c4ffd`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/52 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 47 of 75 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 75
- Raw deployments: 76
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

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-384290 | `0x97dede...1803a8` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x04568d...c4280c` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x764634...ac9b13` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x53673d...ff4ad9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0781bd...60db3c` | ⚠️ Unaudited |
| EnclabsTreveeVeETHManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84e1a6...381f8a` | ⚠️ Unaudited |
| EnclabsTreveeVeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01d451...b72e81` | ⚠️ Unaudited |
| EnclabsTreveeVeUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x420b14...8e9e4c` | ⚠️ Unaudited |
| EnclabsVeETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d3e2a...3fbcf2` | ⚠️ Unaudited |
| HLP0Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x000d4c...9dad4c` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02f9d2...dc5394` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fe896...1016bc` | ⚠️ Unaudited |
| OneJumpOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70996e...21fa8a` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x043af3...ec6934` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x2281df...1491fa` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x2306c7...938b7c` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x233f1c...d88be4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x44c97b...bfe309` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x52041a...ae94f3` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x5b567e...0dc418` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x7fbcd3...d987d1` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb9ea44...2141a4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc4b0b0...c7b300` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sonic | unit-384321 | 2 deployments: sonic `0xea231b...cb5566`; sonic `0xefb142...b07115` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf20dd7...45c6c2` | ⚠️ Unaudited |
| PoolLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-384276 | `0x3567b1...5d65f3` | ⚠️ Unaudited |
| ProtocolShareReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x171849...2a66aa` | ⚠️ Unaudited |
| ReserveRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c32c3...11615b` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x57c919...5475df` | ⚠️ Unaudited |
| StableJackYTscUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1caf3d...214dde` | ⚠️ Unaudited |
| TimelockV8 | unknown | project_anchor | own_supporting | 0 | sonic | unit-384282 | `0x81c6ed...416191` | ⚠️ Unaudited |
| TwoKinksInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fc30e...436dc9` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | sonic | unit-384287 | `0x943358...736024` | ⚠️ Unaudited |
| VTreasuryV8 | unknown | project_anchor | own_supporting | 0 | sonic | unit-384271 | `0x172bc3...5c4ffd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384270 | `0x1053fc...1ba143` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384272 | `0x1db513...e0d041` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384273 | `0x1fc130...ecbb8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384275 | `0x26190c...528969` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384277 | `0x4cb42e...1a5a36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384278 | `0x62c627...e34786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384279 | `0x7d47cb...8bc21b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384280 | `0x7fd794...d40e13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384281 | `0x80c2fb...2290da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384284 | `0x876e06...142343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384285 | `0x87c69a...3a2036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384286 | `0x8bc35a...8668b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384288 | `0x947329...052870` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384289 | `0x9643cb...feab53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384291 | `0xa3f485...13e8e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384292 | `0xabd27b...9aafa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384293 | `0xb06851...479fe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384294 | `0xb36291...d9b1f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384295 | `0xb64b85...eb0fe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384296 | `0xbff8cf...614eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384298 | `0xc96a4c...d67e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384299 | `0xccadfc...1aa2c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384300 | `0xd05b05...562408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384302 | `0xd1e8ec...73a8f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384304 | `0xd84bc1...6acdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384305 | `0xe9d1af...0ffaa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384306 | `0x02f9d2...dc5394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384307 | `0x0781bd...60db3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384308 | `0x149a31...1e1334` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384309 | `0x2e9d14...b09174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384310 | `0x47a3d1...f947ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384311 | `0x52260a...9c157c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384312 | `0x53673d...ff4ad9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384313 | `0x57c919...5475df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384314 | `0x6e842f...e64be8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384315 | `0x7fbcd3...d987d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384316 | `0xcbf3bc...13e512` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384317 | `0xd89b57...5e5a37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384318 | `0xe67b50...016550` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384319 | `0xf2f02b...acba8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384320 | `0xf690a1...7efd48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://enclabs.gitbook.io/enclabs-documentation/security-and-audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19732] Audits — no match: The provided text is not an audit report; it is a documentation page referencing Venus Protocol audits without listing any contracts in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x97dede...1803a8` | AccessControlManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xea231b...cb5566` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3567b1...5d65f3` | PoolLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x81c6ed...416191` | TimelockV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x172bc3...5c4ffd` | VTreasuryV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 41 |

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

- [19732] Audits

Fork inheritance lineage and inherited audits are included when available.
