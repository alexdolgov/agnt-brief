# Agentic Audit Brief: Rook

## Project Overview

- Project: Rook (`rook`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.715Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $1,219,064.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 66 project-authored contract(s) across 1 chain(s); 11 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 16 common project-authored base contract(s) (initializableadminupgradeabilityproxy, baseadminupgradeabilityproxy, baseupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 165; live-surface contracts included: 14 (6 live, 8 unknown).
- Excluded by liveness: 151 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowerProxy | unknown | ethereum | n/a | [`0xde92742213fea5f78c6840b6ecbf214115ea8002`](./contracts/ethereum-1/0xde92742213fea5f78c6840b6ecbf214115ea8002/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0xf65d91333b1d4d3887016b17741ad602d7768594`](./contracts/ethereum-1/0xf65d91333b1d4d3887016b17741ad602d7768594/) | ⚠️ Unaudited |
| LiquidityPoolV2 | core_logic | ethereum | n/a | [`0x35ffd6e268610e764ff6944d07760d0efe5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | ⚠️ Unaudited |
| LiquidityPoolV4 | core_logic | ethereum | n/a | [`0x4f868c1aa37fcf307ab38d215382e88fca6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | ⚠️ Unaudited |
| RookToken | token | ethereum | n/a | [`0xfa5047c9c78b8877af97bdcb85db743fd7313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | ⚠️ Unaudited |
| zBTC | unknown | ethereum | n/a | [`0x88c64a7d2ecc882d558dd16abc1537515a78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d1d44e8850e7c38550c53aa04a110b5808e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d7e244ab953f16a48dde4d11a94272c5f6f7f5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4012ef4d3e24d4a8f8d09ff6a780c7a64bd8f4f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48ace4f7cdfb6ebd96530fd810f4fe47d3642524` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be0e8ed65ff0731df45ac946534743fba4fa359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d6e6e2e58dae136f1e53b3641538731c6b11198` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab5ebc4ddf9c4d5b00de10ff3692acdec43a5a6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe175a237fdf7b815cbbc6d9e60fd3d9f86490674` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [peckshield_final.pdf](http://web.archive.org/web/20201117220335/https://github.com/keeperdao/docs/blob/master/audits/peckshield_final.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_draft.pdf](http://web.archive.org/web/20201117220334/https://github.com/keeperdao/docs/blob/master/audits/quantstamp_draft.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf](http://web.archive.org/web/20221212181643/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-kCompound.pdf](http://web.archive.org/web/20221212174138/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-kCompound.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Quantstamp-kCompound.pdf](http://web.archive.org/web/20221212181221/https://github.com/rookprotocol/docs/blob/master/audits/Quantstamp-kCompound.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [KeeperDAO Liquidity Pool and HidingVault - Report.pdf](http://web.archive.org/web/20210805222729/https://github.com/keeperdao/docs/blob/master/audits/KeeperDAO%20Liquidity%20Pool%20and%20HidingVault%20-%20Report.pdf) | unspecified | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](http://web.archive.org/web/20221212172733/https://github.com/rookprotocol/docs/tree/master/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xde92742213fea5f78c6840b6ecbf214115ea8002`](./contracts/ethereum-1/0xde92742213fea5f78c6840b6ecbf214115ea8002/) | BorrowerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf65d91333b1d4d3887016b17741ad602d7768594`](./contracts/ethereum-1/0xf65d91333b1d4d3887016b17741ad602d7768594/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ffd6e268610e764ff6944d07760d0efe5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | LiquidityPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f868c1aa37fcf307ab38d215382e88fca6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | LiquidityPoolV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa5047c9c78b8877af97bdcb85db743fd7313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | RookToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c64a7d2ecc882d558dd16abc1537515a78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | zBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21327] peckshield_final.pdf
- [21328] quantstamp_draft.pdf
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf
- [21330] PeckShield-kCompound.pdf
- [21331] Quantstamp-kCompound.pdf
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf
- [24474] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
