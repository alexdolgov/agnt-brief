# Agentic Audit Brief: Universe XYZ

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.932Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 25 unique implementations (28 raw deployments)
- DeFi Llama TVL: $1,590,712.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 31 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (timestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 230; live-surface contracts included: 25 (11 live, 14 unknown).
- Excluded by liveness: 205 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/11 (18.2%)
- Deployed-live implementations: 11 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 25
- Raw deployments: 28
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi | Tier 2 | 1 | 9.1% | 2021-01 |
| Quantstamp | Tier 2 | 1 | 9.1% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OwnershipFacet | unknown | ethereum | n/a | [`0x5c7cb1...3e75cc`](./contracts/ethereum-1/0x5c7cb19978cf51594a121c650d031761c73e75cc/) | ✅ Audited |
| Rewards | unknown | ethereum | n/a | [`0xf306ad...c31205`](./contracts/ethereum-1/0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BarnBridgeToken | operational_periphery | ethereum | n/a | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| IlluviumNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x384aa0...af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/); ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f5f85...34291d`](./contracts/ethereum-1/0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d/); ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53aff3...56d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x2d6157...ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | ⚠️ Unaudited |
| SushiLPPool | core_logic | ethereum | n/a | [`0xe98477...571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xbbbdb1...14d69a`](./contracts/ethereum-1/0xbbbdb106a806173d1eea1640961533ff3114d69a/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0xf38cc3...b13abf`](./contracts/ethereum-1/0xf38cc32a49435e5c272362193580177b31b13abf/) | ⚠️ Unaudited |
| XYZToken | token | ethereum | n/a | [`0x618679...fa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10033f...24130c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b7138...b8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db797...b888c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x257377...9fc96e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d07e1...1d4340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d50a5...54e45e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a897e...42cfc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7263ca...cdf003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aa438...4f1f0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b42d3...4c2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa305cd...a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae37e6...59e819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd293ed...8ce487` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | 1 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=1, extraction_exact=1

Zero-match audit list:

- [14703] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
