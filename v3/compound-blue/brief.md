# Agentic Audit Brief: Compound Blue

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

- Project: Compound Blue (`compound-blue`)
- Website: [https://www.compound.blue/](https://www.compound.blue/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 14 unique implementations (15 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,254,290.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Compound Blue in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x3ef3d8...0dd9ae`, chain 137)
- ERC1967Proxy (`0x9d6094...09f9a7`, chain 137)
- FiatTokenProxy (`0x3c499c...5c3359`, chain 137)
- InitializableImmutableAdminUpgradeabilityProxy (`0x794a61...4814ad`, chain 137)
- MetaMorphoV1_1 (`0x3f33f9...9664c2`, chain 137)
- MetaMorphoV1_1 (`0x781fb7...558c42`, chain 137)
- MetaMorphoV1_1 (`0xf5c81d...073ccf`, chain 137)
- MetaMorphoV1_1 (`0xfd0685...24d6c8`, chain 137)
- PoolAddressesProvider (`0xa97684...ab3cdb`, chain 137)
- SafeProxy (`0x9e33fa...410585`, chain 137)
- Timelock (`0xcc3e7c...dd4a02`, chain 137)
- UChildERC20Proxy (`0x1bfd67...d9bfd6`, chain 137)
- UChildERC20Proxy (`0x8505b9...7aef5c`, chain 137)
- UiPoolDataProviderV3 (`0x68100b...463e93`, chain 137)
- WMATIC (`0x0d500b...df1270`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 14 of 14 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distributor | unknown | project_anchor | own_supporting | 1 | polygon | unit-381816 | `0x3ef3d8...0dd9ae` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-381814 | `0x3c499c...5c3359` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381807 | `0x3f33f9...9664c2` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381809 | `0x781fb7...558c42` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381812 | `0xf5c81d...073ccf` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381813 | `0xfd0685...24d6c8` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | polygon | unit-381810 | `0xa97684...ab3cdb` | ⚠️ Unaudited |
| PoolInstance | unknown | project_anchor | own_supporting | 1 | polygon | unit-381817 | `0x794a61...4814ad` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-381815 | `0x9e33fa...410585` | ⚠️ Unaudited |
| SecuritizeVault | unknown | project_anchor | own_supporting | 1 | polygon | unit-381818 | `0x9d6094...09f9a7` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-381811 | `0xcc3e7c...dd4a02` | ⚠️ Unaudited |
| UChildERC20 | unknown | project_anchor | own_supporting | 2 | polygon | unit-381819 (2 proxies) | 2 deployments: polygon `0x1bfd67...d9bfd6`; polygon `0x8505b9...7aef5c` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381808 | `0x68100b...463e93` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-381806 | `0x0d500b...df1270` | ⚠️ Unaudited |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

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
