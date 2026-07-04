# Agentic Audit Brief: DeHive

## Project Overview

- Project: DeHive (`dehive`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.908Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 38 unique implementations (44 raw deployments)
- DeFi Llama TVL: $110,690.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 104 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (contextupgradeable, baseimpulsestrategyrwrdtwoswp, baseimpulsestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 360; live-surface contracts included: 44 (11 live, 33 unknown).
- Excluded by liveness: 316 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 5 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 38
- Raw deployments: 44
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 1 | 16.7% | 2021-08 |
| unknown | Tier 2 | 1 | 16.7% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClusterToken | token | bsc | n/a | 4 deployments: ethereum `0x0da509...69ab20`; bsc [`0x0a6844...e38ed5`](./contracts/bsc-56/0x0a684421ef48b431803bfd75f38675eab1e38ed5/); polygon `0x4964b3...6af0f0`; polygon `0x589ea3...d0ce7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | bsc | n/a | 2 deployments: bsc [`0x58759d...5b58d7`](./contracts/bsc-56/0x58759dd469ae5631c42cf8a473992335575b58d7/); polygon `0x5fcb9d...f97b26` | ⚠️ Unaudited |
| AnyswapV6Router | unknown | gnosis | n/a | [`0xdae6c2...9c993e`](./contracts/gnosis-100/0xdae6c2a48bfaa66b43815c5548b10800919c993e/) | ⚠️ Unaudited |
| ClusterTokenV2 | unknown | gnosis | n/a | 3 deployments: gnosis [`0x3ea8f1...29082f`](./contracts/gnosis-100/0x3ea8f1f8a5c76f6221a25d180714171c8529082f/); gnosis `0xa6c090...fb1e6b`; gnosis `0xf557b2...363bc0` | ⚠️ Unaudited |
| DHVToken | token | ethereum | n/a | [`0x62dc48...d34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x72ba00...9a7ca9`](./contracts/bsc-56/0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0x0cae51...de3adb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0dcb0c...185baa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1ccca1...6eecb4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3405a1...026e45` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x375488...e736bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5d9ab5...167818` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x639a64...c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6ab6d6...ef91a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7c598c...6f227d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8182fc...35d1b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa64932...8ce23f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb2c22a...a526c7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbbc4a8...2cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9baa8...dc2055` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf480f3...f00cea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfbdd19...5d01b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x023228...17bcc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03870b...342210` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0889c0...dc27b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18bcce...4ba341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b920f...2eac59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31be6b...4531e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x548876...7d71c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e5114...09f1ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x621268...241d8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940b4f...b70f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a6f54...f320eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9f7d9...f8d8db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xdae6c2...9c993e`](./contracts/gnosis-100/0xdae6c2a48bfaa66b43815c5548b10800919c993e/) | AnyswapV6Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3ea8f1...29082f`](./contracts/gnosis-100/0x3ea8f1f8a5c76f6221a25d180714171c8529082f/) | ClusterTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62dc48...d34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | DHVToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72ba00...9a7ca9`](./contracts/bsc-56/0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
