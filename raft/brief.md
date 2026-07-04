# Agentic Audit Brief: Raft

## Project Overview

- Project: Raft (`raft`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.517Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 51 unique implementations (88 raw deployments)
- DeFi Llama TVL: $12,895.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 97 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 19 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 22 common project-authored base contract(s) (positionmanagerdependent, ownable2step, whitelist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 88 (49 live, 39 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/12 (58.3%)
- Deployed-live implementations: 12 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/12
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 51
- Raw deployments: 88
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 58.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 7 | 58.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Indexable | unknown | ethereum | n/a | 12 deployments: ethereum [`0x14c623...55295d`](./contracts/ethereum-1/0x14c623eac578fa595795724aaa8a63d00155295d/); ethereum `0x21c412...df5423`; ethereum `0x21cf10...a65850`; ethereum `0x282a58...3e8a2f`; ethereum `0x2c9710...91ecfa`; ethereum `0x33ecd9...738660`; ethereum `0x4d52a8...9b9d61`; ethereum `0x7a0062...63126a`; ethereum `0x9e0b7f...ea1c60`; ethereum `0xaa5d3d...b5a9f8`; ethereum `0xb145a0...9c6e66`; ethereum `0xd0db31...d0c788` | ✅ Audited |
| OneStepLeverage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00ab29...df16f0`](./contracts/ethereum-1/0x00ab290cc289f818a9e80ebaf18685e353df16f0/); ethereum `0x2f1ba3...28da12` | ✅ Audited |
| PositionManager | unknown | ethereum | n/a | [`0x5f59b3...7403fc`](./contracts/ethereum-1/0x5f59b322eb3e16a0c78846195af1f588b77403fc/) | ✅ Audited |
| PositionManagerStETH | unknown | ethereum | n/a | [`0x839d68...91a1d6`](./contracts/ethereum-1/0x839d6833cee34ffab6fa9057b39f02bd3091a1d6/) | ✅ Audited |
| PriceFeed | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0e6373...2c893c`](./contracts/ethereum-1/0x0e6373a67e72666c8b044155c78e4178fe2c893c/); ethereum `0x2bae40...f0b39c`; ethereum `0x3cd40d...62df3d`; ethereum `0x4db82a...69cf0c`; ethereum `0x5965f7...fdad47`; ethereum `0x62ac8d...853cda`; ethereum `0x62d10d...0e731d`; ethereum `0x66599e...69f710`; ethereum `0x84c5ea...a7b8c8`; ethereum `0xdb5de0...41c730`; ethereum `0xe66bc2...3bfc5a`; ethereum `0xf65916...e14d27` | ✅ Audited |
| SplitLiquidationCollateral | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2c38a2...2c5c81`](./contracts/ethereum-1/0x2c38a23e3da0d9014904834376d2537b962c5c81/); ethereum `0x4cf94b...dc4cd3`; ethereum `0x776953...e56aa8`; ethereum `0x8506d8...7460b3`; ethereum `0xa63fb6...c6de57`; ethereum `0xa8a257...fe1686`; ethereum `0xd7945b...045f3c` | ✅ Audited |
| TellorPriceOracle | unknown | ethereum | n/a | 9 deployments: ethereum [`0x79e756...5015b0`](./contracts/ethereum-1/0x79e75665e72b76cfe013e9fe0319d60da25015b0/); ethereum `0x88df8b...f4247a`; ethereum `0xa37775...df147b`; ethereum `0xb8ab75...8a404f`; ethereum `0xca27db...bcb7e5`; ethereum `0xd0d35e...4ff303`; ethereum `0xdcf120...57840f`; ethereum `0xf9784b...9d75bd`; ethereum `0xfcc8d6...239db3` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Chai | unknown | ethereum | n/a | [`0x06af07...49c215`](./contracts/ethereum-1/0x06af07097c9eeb7fd685c692751d5c66db49c215/) | ⚠️ Unaudited |
| RaftToken | token | ethereum | n/a | [`0x4c5cb5...cf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | ⚠️ Unaudited |
| swETH | token | ethereum | n/a | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x45d117...84186f`](./contracts/ethereum-1/0x45d117011da1d49ba86af6ced94126488084186f/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0xe91888...71bb3a`](./contracts/ethereum-1/0xe91888a1d08e37598867d213a4acb5692071bb3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x010f53...60ab01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02424c...3280c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x073c58...99e2b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0892ea...c84e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fbb5...9d33d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x148e67...3dd68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2617a7...8752a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1085...b2cfa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eff5f...f46422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f21db...836709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f523d...e9f859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70e0ce...85e169` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73c5f4...822d8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x796a38...b228f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x834d4c...3ffb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d4ad...1f13f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d8da...ae8ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a7034...c31cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9be62c...604d0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa45bb9...7fc844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9a8b5...ff56da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa78c6...70a55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaea1bb...78fa7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb30cd5...ba8096` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3f476...360758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb493f6...f0fea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b115...cbdcd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc48056...ccd320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf83c4...02db08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d4dc...c90d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda2f58...c2c3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbec19...911f3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1ea6...345e64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4342f...ec90e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe76aad...a9fae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeddea1...7ce990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb423...e5d781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf21bba...843da3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf952f4...c03059` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-04-tempus-raft-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-tempus-raft-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 44 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x06af07...49c215`](./contracts/ethereum-1/0x06af07097c9eeb7fd685c692751d5c66db49c215/) | Chai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c5cb5...cf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | RaftToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | swETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45d117...84186f`](./contracts/ethereum-1/0x45d117011da1d49ba86af6ced94126488084186f/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe91888...71bb3a`](./contracts/ethereum-1/0xe91888a1d08e37598867d213a4acb5692071bb3a/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=44

Fork inheritance lineage and inherited audits are included when available.
