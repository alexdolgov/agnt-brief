# Agentic Audit Brief: Meta Pool

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.651Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: aurora, ethereum
- Contract surface: 22 unique implementations (28 raw deployments)
- DeFi Llama TVL: $62,138,405.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (16 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/9 (44.4%)
- Deployed-live implementations: 11 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/11
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 22
- Raw deployments: 28
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 36.4% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidUnstakePool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xaba64e...37513c`](./contracts/ethereum-1/0xaba64e88f55c769d46c17beb4c70fde62d37513c/); ethereum `0xcadd97...66d675` | ✅ Audited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x374748...5a111a`](./contracts/ethereum-1/0x3747484567119592ff6841df399cf679955a111a/); ethereum `0xb11284...f27b39` | ✅ Audited |
| Withdrawal | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcb894c...a03c61`](./contracts/ethereum-1/0xcb894c063c74053c9401ac8fdd9a9f2bb1a03c61/); ethereum `0xe55e5f...36af49` | ✅ Audited |
| Withdrawal | operational_periphery | ethereum | n/a | [`0xe3355f...833cd9`](./contracts/ethereum-1/0xe3355fbbf8b85ebce83c5e9e846818b82b833cd9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0x24d966...79d971`](./contracts/ethereum-1/0x24d9664ba8384d94499d6698ab285b69e879d971/) | ⚠️ Unaudited |
| LiquidUnstakePool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdf261f...4f03cc`](./contracts/ethereum-1/0xdf261f967e87b2aa44e18a22f4ace5d7f74f03cc/); ethereum `0xea9fec...a1aa81` | ⚠️ Unaudited |
| MpDaoToken | token | ethereum | n/a | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x806f87...a1f182`](./contracts/ethereum-1/0x806f870ee04a2cc8bf2ad053baa5ed9999a1f182/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd06f6a...6f4a0e`](./contracts/ethereum-1/0xd06f6a56c5f599cb375b616df306f32b7f6f4a0e/); ethereum `0xd3db79...9513ac` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48afbb...d81710`](./contracts/ethereum-1/0x48afbbd342f64ef8a9ab1c143719b63c2ad81710/); ethereum `0x56c517...8f7ffa` | ⚠️ Unaudited |
| VotingPowerV1 | unknown | ethereum | n/a | [`0xf8709e...104113`](./contracts/ethereum-1/0xf8709e3e8ed3db79744579d3fa1795b514104113/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x20b911...17605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48e562...bc9340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8edfe3...1fc543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e57a...1a4a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaedec0...4a75b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19915...148db1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc29541...0f17f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbb18e...551a02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe394b...ee2106` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0df588...bd3566` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x486182...69d146` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_lockup_v1.0-signed-audit.pdf](https://github.com/Meta-Pool/lockup-stake-metapool/blob/master/docs/blocksec_lockup_v1.0-signed-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-06 Blocksec Audit.pdf](https://github.com/Meta-Pool/metapool-shortcut/blob/main/audit/2024-06%20Blocksec%20Audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf](https://github.com/Meta-Pool/staking-pool-aurora/blob/main/audits/MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 3 | n/a |
| [spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FUMkSZziqO0AyoCGzxE7D%2Ftpyrced_blocksec_metapool_restaking_v1.0-signed.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf](https://370551154-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MkhZe3MGAhTcvTLTzJF-887967055%2Fuploads%2FBnkI1s1NHp6rjw4vBsZo%2FBlocksec_Audit_2.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FOaz0PbKGiCBzBI2hKZcv%2FNM_0434_METAPOOL_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf261f...4f03cc`](./contracts/ethereum-1/0xdf261f967e87b2aa44e18a22f4ace5d7f74f03cc/) | LiquidUnstakePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x798bcb...8b361d`](./contracts/ethereum-1/0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d/) | MpDaoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06f6a...6f4a0e`](./contracts/ethereum-1/0xd06f6a56c5f599cb375b616df306f32b7f6f4a0e/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8709e...104113`](./contracts/ethereum-1/0xf8709e3e8ed3db79744579d3fa1795b514104113/) | VotingPowerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=3

Zero-match audit list:

- [4894] blocksec_lockup_v1.0-signed-audit.pdf
- [4895] 2024-06 Blocksec Audit.pdf
- [15257] spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf
- [15258] spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf

Fork inheritance lineage and inherited audits are included when available.
