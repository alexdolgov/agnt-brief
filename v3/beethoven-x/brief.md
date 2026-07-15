# Agentic Audit Brief: Beets LST

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

- Project: Beets LST (`beethoven-x`)
- Website: [https://beets.fi](https://beets.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: fantom, optimism, sonic
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Beets LST in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e2afa...bd5bf4`, chain 250)
- UnnamedContract (`0x0faa25...731981`, chain 250)
- UnnamedContract (`0x1ed641...66d7ec`, chain 250)
- UnnamedContract (`0x1f73ae...8a4a71`, chain 250)
- UnnamedContract (`0x20dd72...33c9ce`, chain 250)
- UnnamedContract (`0x23f03a...03474f`, chain 250)
- UnnamedContract (`0x2c7747...e6f473`, chain 250)
- UnnamedContract (`0x55df81...991f8d`, chain 250)
- UnnamedContract (`0x5adaf6...b1a990`, chain 250)
- UnnamedContract (`0x5c3094...199b19`, chain 250)
- UnnamedContract (`0x60467c...37cf53`, chain 250)
- UnnamedContract (`0x70b55a...be5554`, chain 250)
- UnnamedContract (`0x816699...facfd3`, chain 250)
- UnnamedContract (`0x8d038d...671b21`, chain 250)
- UnnamedContract (`0x911566...177548`, chain 250)
- UnnamedContract (`0x92b377...c20630`, chain 250)
- UnnamedContract (`0x974d3f...081ce9`, chain 250)
- UnnamedContract (`0xb2ed59...fa1fbb`, chain 250)
- UnnamedContract (`0xb384a8...cbea06`, chain 250)
- UnnamedContract (`0xb5caee...3c6471`, chain 250)
- UnnamedContract (`0xb841df...e75e15`, chain 250)
- UnnamedContract (`0xbc8a71...def93c`, chain 250)
- UnnamedContract (`0xc6920d...af948f`, chain 250)
- UnnamedContract (`0xd678b6...fb7941`, chain 250)
- UnnamedContract (`0xf24bcf...adce1e`, chain 250)
- UnnamedContract (`0xfcef8a...6f54b1`, chain 250)
- Authorizer (`0xa331d8...3f3ae6`, chain 10)
- Authorizer (`0xe39b5e...f549d5`, chain 146)
- BalancerRelayer (`0x7b52d5...380bb6`, chain 146)
- Beets (`0x2d0e08...66e4f0`, chain 146)
- ChildChainGaugeFactory (`0xa523f4...4612dc`, chain 10)
- ChildChainLiquidityGaugeFactory (`0x2e9606...8a2647`, chain 10)
- ERC1967Proxy (`0xe5da20...be3955`, chain 146)
- LoopedSonicVault (`0xc76995...2538ee`, chain 146)
- MetaStablePoolFactory (`0xb08e16...6cbfd2`, chain 10)
- ProtocolFeeController (`0xa731c2...d07cc8`, chain 146)
- ProtocolFeesCollector (`0xce8868...109f9f`, chain 146)
- Reliquary (`0x973670...941684`, chain 146)
- SonicBeetsMigrator (`0x5f9a5c...05e386`, chain 146)
- StablePoolFactory (`0xeb1516...7076c3`, chain 10)
- Vault (`0xba1222...6bf2c8`, chain 10)
- Vault (`0xba1222...6bf2c8`, chain 146)
- Vault (`0xba1333...319ba9`, chain 146)
- WeightedPool2TokensFactory (`0x0f3e0c...57c54e`, chain 10)
- WeightedPoolFactory (`0xdae7e3...b4efca`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 45 of 45 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 45
- Raw deployments: 45
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

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Authorizer | unknown | project_anchor | own_supporting | 0 | optimism | unit-380443 | `0xa331d8...3f3ae6` | ⚠️ Unaudited |
| Authorizer | unknown | project_anchor | own_supporting | 0 | sonic | unit-380457 | `0xe39b5e...f549d5` | ⚠️ Unaudited |
| BalancerRelayer | unknown | project_anchor | own_supporting | 0 | sonic | unit-380451 | `0x7b52d5...380bb6` | ⚠️ Unaudited |
| Beets | unknown | project_anchor | own_supporting | 0 | sonic | unit-380449 | `0x2d0e08...66e4f0` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380444 | `0xa523f4...4612dc` | ⚠️ Unaudited |
| ChildChainLiquidityGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380442 | `0x2e9606...8a2647` | ⚠️ Unaudited |
| LoopedSonicVault | unknown | project_anchor | own_supporting | 0 | sonic | unit-380455 | `0xc76995...2538ee` | ⚠️ Unaudited |
| MetaStablePoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380445 | `0xb08e16...6cbfd2` | ⚠️ Unaudited |
| ProtocolFeeController | unknown | project_anchor | own_supporting | 0 | sonic | unit-380453 | `0xa731c2...d07cc8` | ⚠️ Unaudited |
| ProtocolFeesCollector | unknown | project_anchor | own_supporting | 0 | sonic | unit-380456 | `0xce8868...109f9f` | ⚠️ Unaudited |
| Reliquary | unknown | project_anchor | own_supporting | 0 | sonic | unit-380452 | `0x973670...941684` | ⚠️ Unaudited |
| SonicBeetsMigrator | unknown | project_anchor | own_supporting | 0 | sonic | unit-380450 | `0x5f9a5c...05e386` | ⚠️ Unaudited |
| SonicStaking | unknown | project_anchor | own_supporting | 1 | sonic | unit-380485 | `0xe5da20...be3955` | ⚠️ Unaudited |
| StablePoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380448 | `0xeb1516...7076c3` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-380446 | `0xba1222...6bf2c8` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | sonic | unit-380454 | `0xba1222...6bf2c8` | ⚠️ Unaudited |
| VaultExtension | unknown | project_anchor | own_supporting | 1 | sonic | unit-380484 | `0xba1333...319ba9` | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380441 | `0x0f3e0c...57c54e` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-380447 | `0xdae7e3...b4efca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380458 | `0x0e2afa...bd5bf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380459 | `0x0faa25...731981` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380460 | `0x1ed641...66d7ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380461 | `0x1f73ae...8a4a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380462 | `0x20dd72...33c9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380463 | `0x23f03a...03474f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380464 | `0x2c7747...e6f473` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380465 | `0x55df81...991f8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380466 | `0x5adaf6...b1a990` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380467 | `0x5c3094...199b19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380468 | `0x60467c...37cf53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380469 | `0x70b55a...be5554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380470 | `0x816699...facfd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380471 | `0x8d038d...671b21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380472 | `0x911566...177548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380473 | `0x92b377...c20630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380474 | `0x974d3f...081ce9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380475 | `0xb2ed59...fa1fbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380476 | `0xb384a8...cbea06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380477 | `0xb5caee...3c6471` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380478 | `0xb841df...e75e15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380479 | `0xbc8a71...def93c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380480 | `0xc6920d...af948f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380481 | `0xd678b6...fb7941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380482 | `0xf24bcf...adce1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-380483 | `0xfcef8a...6f54b1` | ❓ Unverified |

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
| needs_review | 45 |

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
