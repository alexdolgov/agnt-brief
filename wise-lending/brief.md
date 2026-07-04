# Agentic Audit Brief: Wise Lending

## Project Overview

- Project: Wise Lending (`wise-lending`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.253Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum
- Contract surface: 19 unique implementations (29 raw deployments)
- DeFi Llama TVL: $36.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 31 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 3 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 14 common project-authored base contract(s) (tokenwrapper, poolmanager, wisecore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 29 (18 live, 11 unknown).
- Excluded by liveness: 101 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/9 (44.4%)
- Deployed-live implementations: 9 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 19
- Raw deployments: 29
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 44.4% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | arbitrum | n/a | [`0x90a022...4e8ec6`](./contracts/arbitrum-42161/0x90a022796798f9dba1da0f8645234b284d4e8ec6/) | ✅ Audited |
| PositionNFTs | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2d210d...f84aee`](./contracts/ethereum-1/0x2d210dc61103fbd9c5cf9c9b0cd7f264bcf84aee/); ethereum `0xbec57d...999529`; arbitrum `0x6cd8c8...3298f9` | ✅ Audited |
| WiseLending | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x78190e...5160ca`](./contracts/ethereum-1/0x78190e4c7c7b2c2c3b0562f1f155a1fc2f5160ca/); arbitrum `0x9034a4...c87ebf` | ✅ Audited |
| WiseOracleHub | operational_periphery | ethereum | n/a | [`0x896fc8...05f2d3`](./contracts/ethereum-1/0x896fc8ffc11cda80cf40c373afa9a22d6e05f2d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BulkDepositWrapper | unknown | ethereum | n/a | 6 deployments: ethereum [`0x229420...87249b`](./contracts/ethereum-1/0x2294202709021d82d1e1623620372103c387249b/); ethereum `0x2f2591...1e2aa9`; ethereum `0x6d87b7...cd0913`; ethereum `0x7276a5...131dd4`; ethereum `0xc4f43c...cc2879`; ethereum `0xce8069...3aa023` | ⚠️ Unaudited |
| LiquidityMaker | unknown | ethereum | n/a | [`0x7d3cad...fdedcc`](./contracts/ethereum-1/0x7d3cad2ef18689625231fc793ac11c1676fdedcc/) | ⚠️ Unaudited |
| LiquidityManager | governance | ethereum | n/a | [`0x7970ed...9cdc80`](./contracts/ethereum-1/0x7970ede037856c14354baaf30b5f882c169cdc80/) | ⚠️ Unaudited |
| WiseRewards | unknown | ethereum | n/a | [`0xc6cbfd...6ee28c`](./contracts/ethereum-1/0xc6cbfd25390aa9ae331fced429482ac4b76ee28c/) | ⚠️ Unaudited |
| WiseSecurity | unknown | arbitrum | n/a | 3 deployments: ethereum `0x8eb1b6...b9a59d`; arbitrum [`0x0c8774...ad9dbf`](./contracts/arbitrum-42161/0x0c8774d7c6705901b717d0a6458b647833ad9dbf/); arbitrum `0x67dae1...adbe2a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0428c3...fafbb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab424...5840b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b6667...3c756a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ce863...f00438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x911d1e...ce168e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930d49...e9ae73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e00a...d53493` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6918dc...482b06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa71b7...aff2e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd63253...d201b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2024-02-wise-lending](https://code4rena.com/reports/2024-02-wise-lending) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/hats-finance/Wise-Lending-0xa2ca45d6e249641e595d50d1d9c69c9e3cd22573/blob/master/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |
| [omni-audit-v1.pdf](https://app.wiselending.com/omni-audit-v1.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x229420...87249b`](./contracts/ethereum-1/0x2294202709021d82d1e1623620372103c387249b/) | BulkDepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3cad...fdedcc`](./contracts/ethereum-1/0x7d3cad2ef18689625231fc793ac11c1676fdedcc/) | LiquidityMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7970ed...9cdc80`](./contracts/ethereum-1/0x7970ede037856c14354baaf30b5f882c169cdc80/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6cbfd...6ee28c`](./contracts/ethereum-1/0xc6cbfd25390aa9ae331fced429482ac4b76ee28c/) | WiseRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c8774...ad9dbf`](./contracts/arbitrum-42161/0x0c8774d7c6705901b717d0a6458b647833ad9dbf/) | WiseSecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Zero-match audit list:

- [14133] code4rena.com/reports/2024-02-wise-lending

Fork inheritance lineage and inherited audits are included when available.
