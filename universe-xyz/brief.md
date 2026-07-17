# Agentic Audit Brief: Universe XYZ

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.909Z
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

- Coverage of deployed-live implementations: 2/9 (22.2%)
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
| OwnershipFacet | unknown | ethereum | n/a | [`0x5c7cb19978cf51594a121c650d031761c73e75cc`](./contracts/ethereum-1/0x5c7cb19978cf51594a121c650d031761c73e75cc/) | ✅ Audited |
| Rewards | unknown | ethereum | n/a | [`0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205`](./contracts/ethereum-1/0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BarnBridgeToken | operational_periphery | ethereum | n/a | [`0x0391d2021f89dc339f60fff84546ea23e337750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| IlluviumNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/); ethereum `0xb901614d588ef8db45045ffbb2145e1c36cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d`](./contracts/ethereum-1/0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d/); ethereum `0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3` | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/); ethereum `0x9dca38d109c6c69790fb70bcfdeaf27c4394597c` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x2d615795a8bdb804541c69798f13331126ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | ⚠️ Unaudited |
| SushiLPPool | core_logic | ethereum | n/a | [`0xe98477bdc16126bb0877c6e3882e3edd72571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xbbbdb106a806173d1eea1640961533ff3114d69a`](./contracts/ethereum-1/0xbbbdb106a806173d1eea1640961533ff3114d69a/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0xf38cc32a49435e5c272362193580177b31b13abf`](./contracts/ethereum-1/0xf38cc32a49435e5c272362193580177b31b13abf/) | ⚠️ Unaudited |
| XYZToken | token | ethereum | n/a | [`0x618679df9efcd19694bb1daa8d00718eacfa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x088823fa2c0ceb120198d9e1006bf2596bcae7b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10033f0ab5100acde53b649b1db272bdeb24130c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b71388b8ef47eb99b683f8121981cdbacb8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db7976721ab913987bcf87431e626fba6b888c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x257377343fc60658c1cf716951d28602629fc96e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d07e106b5d280e4ccc2d10deee62441c91d4340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d50a5d8b2470f91cf587effc838c711e454e45e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a897e57ff051a2f713f90db4f010d117042cfc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7263ca0d7225bb4313e9bc3e799eb2a48ecdf003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aa4387412f18543b8d4cf16ef60e868a74f1f0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b42d3ffc89cee457665c02f3fd0a8cadc4c2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa305cd856e06905a5543dff5dc0c3ad0a9a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae37e65a77553a1758ded55442cc29d87259e819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd293ed74c082a06310626ac422256c538a8ce487` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | 1 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0391d2021f89dc339f60fff84546ea23e337750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | BarnBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf`](./contracts/ethereum-1/0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf/) | IlluviumNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d`](./contracts/ethereum-1/0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d/) | ILVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1`](./contracts/ethereum-1/0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1/) | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d615795a8bdb804541c69798f13331126ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38cc32a49435e5c272362193580177b31b13abf`](./contracts/ethereum-1/0xf38cc32a49435e5c272362193580177b31b13abf/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x618679df9efcd19694bb1daa8d00718eacfa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | XYZToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 14 |

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
