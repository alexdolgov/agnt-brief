# Agentic Audit Brief: Gro

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

- Project: Gro (`gro`)
- Website: [https://app.gro.xyz/](https://app.gro.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,661,036.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across ethereum. Structural roles: 17 core, 7 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: core (17), unclassified (7), supporting (3)
- Contract kinds: contract (26), unclassified (1)
- Detected standards: ownable (14), erc20 (6), erc20permit (3)
- Frameworks: openzeppelin (18), foundry (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x59b6b7...cb0a1d`, chain 1)
- UnnamedContract (`0x789190...42a26c`, chain 1)
- UnnamedContract (`0x79b14d...4635b9`, chain 1)
- UnnamedContract (`0x9da6ad...f2c224`, chain 1)
- UnnamedContract (`0xa96427...6e8f93`, chain 1)
- UnnamedContract (`0xb4e16d...28c9dc`, chain 1)
- UnnamedContract (`0xba1222...6bf2c8`, chain 1)
- UnnamedContract (`0xbebc44...2ff1c7`, chain 1)
- UnnamedContract (`0xd89512...85b09f`, chain 1)
- UnnamedContract (`0xdec0a1...f90b82`, chain 1)
- AirDrop (`0x6b1bff...206dda`, chain 1)
- AirDrop (`0xf3d39a...e2c561`, chain 1)
- DepositHandler (`0xb7207e...a44f40`, chain 1)
- EmergencyHandler (`0xc535cf...76ee76`, chain 1)
- GMerkleVestor (`0x02c133...31c720`, chain 1)
- GROHodler (`0x7c268b...e55b5a`, chain 1)
- GROHodler (`0x8b4a30...e61397`, chain 1)
- GROHodler (`0xef10ea...a8f927`, chain 1)
- GROTeamVesting (`0xf43c6b...e28644`, chain 1)
- GROToken (`0x3ec879...0b74d7`, chain 1)
- GRouter (`0xd4139e...83790d`, chain 1)
- GROVesting (`0x748218...178360`, chain 1)
- GROVesting (`0xa28693...a3730b`, chain 1)
- LPTokenStaker (`0x001c24...c7aad7`, chain 1)
- LPTokenStaker (`0x2e32ba...ed376c`, chain 1)
- NonRebasingGToken (`0x3adb04...c52a0c`, chain 1)
- PnL (`0xf67a42...48096d`, chain 1)
- RebasingGToken (`0xf0a93d...3cb86b`, chain 1)
- UniswapV2Pair (`0x21c591...bfd2f6`, chain 1)
- UniswapV2Pair (`0x2ac5bc...67e9bb`, chain 1)
- Vyper_contract (`0xbcb91e...df4105`, chain 1)
- WeightedPool (`0x702605...7b31ba`, chain 1)
- WithdrawHandler (`0x641bef...268fe7`, chain 1)

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 37 of 37 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 37
- Raw deployments: 37
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387114 | `0x6b1bff...206dda` | ⚠️ Unaudited |
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387151 | `0xf3d39a...e2c561` | ⚠️ Unaudited |
| DepositHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387136 | `0xb7207e...a44f40` | ⚠️ Unaudited |
| EmergencyHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387144 | `0xc535cf...76ee76` | ⚠️ Unaudited |
| GMerkleVestor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387101 | `0x02c133...31c720` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387123 | `0x7c268b...e55b5a` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387125 | `0x8b4a30...e61397` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387149 | `0xef10ea...a8f927` | ⚠️ Unaudited |
| GROTeamVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387152 | `0xf43c6b...e28644` | ⚠️ Unaudited |
| GROToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387110 | `0x3ec879...0b74d7` | ⚠️ Unaudited |
| GRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-387146 | `0xd4139e...83790d` | ⚠️ Unaudited |
| GROVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387117 | `0x748218...178360` | ⚠️ Unaudited |
| GROVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387129 | `0xa28693...a3730b` | ⚠️ Unaudited |
| GTranche | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387103 | `0x19a07a...f7e67a` | ⚠️ Unaudited |
| GVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387102 | `0x1402c1...625ef3` | ⚠️ Unaudited |
| LPTokenStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387100 | `0x001c24...c7aad7` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387108 | `0x2e32ba...ed376c` | ⚠️ Unaudited |
| NonRebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387109 | `0x3adb04...c52a0c` | ⚠️ Unaudited |
| PnL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387153 | `0xf67a42...48096d` | ⚠️ Unaudited |
| PnLFixedRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387105 | `0x271d1b...4861e6` | ⚠️ Unaudited |
| RebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387150 | `0xf0a93d...3cb86b` | ⚠️ Unaudited |
| StopLossLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387107 | `0x2b369b...ef4470` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387104 | `0x21c591...bfd2f6` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387106 | `0x2ac5bc...67e9bb` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387140 | `0xbcb91e...df4105` | ⚠️ Unaudited |
| WeightedPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387116 | `0x702605...7b31ba` | ⚠️ Unaudited |
| WithdrawHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387112 | `0x641bef...268fe7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387111 | `0x59b6b7...cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387119 | `0x789190...42a26c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387121 | `0x79b14d...4635b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387128 | `0x9da6ad...f2c224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387131 | `0xa96427...6e8f93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387134 | `0xb4e16d...28c9dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387138 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387142 | `0xbebc44...2ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387147 | `0xd89512...85b09f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387148 | `0xdec0a1...f90b82` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6b1bff...206dda` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3d39a...e2c561` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7207e...a44f40` | DepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc535cf...76ee76` | EmergencyHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02c133...31c720` | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c268b...e55b5a` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b4a30...e61397` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef10ea...a8f927` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf43c6b...e28644` | GROTeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ec879...0b74d7` | GROToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4139e...83790d` | GRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x748218...178360` | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa28693...a3730b` | GROVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a07a...f7e67a` | GTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1402c1...625ef3` | GVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x001c24...c7aad7` | LPTokenStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e32ba...ed376c` | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3adb04...c52a0c` | NonRebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67a42...48096d` | PnL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271d1b...4861e6` | PnLFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0a93d...3cb86b` | RebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b369b...ef4470` | StopLossLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcb91e...df4105` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x702605...7b31ba` | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x641bef...268fe7` | WithdrawHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 10 |

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
