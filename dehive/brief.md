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
| ClusterToken | token | bsc | n/a | 4 deployments: ethereum `0x0da509a51de6a05c917891ba3a8536a9d469ab20`; bsc [`0x0a684421ef48b431803bfd75f38675eab1e38ed5`](./contracts/bsc-56/0x0a684421ef48b431803bfd75f38675eab1e38ed5/); polygon `0x4964b3b599b82c3fddc56e3a9ffd77d48c6af0f0`; polygon `0x589ea336092184d9ed74b8263c4eeca73ed0ce7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | bsc | n/a | 2 deployments: bsc [`0x58759dd469ae5631c42cf8a473992335575b58d7`](./contracts/bsc-56/0x58759dd469ae5631c42cf8a473992335575b58d7/); polygon `0x5fcb9de282af6122ce3518cde28b7089c9f97b26` | ⚠️ Unaudited |
| AnyswapV6Router | unknown | gnosis | n/a | [`0xdae6c2a48bfaa66b43815c5548b10800919c993e`](./contracts/gnosis-100/0xdae6c2a48bfaa66b43815c5548b10800919c993e/) | ⚠️ Unaudited |
| ClusterTokenV2 | unknown | gnosis | n/a | 3 deployments: gnosis [`0x3ea8f1f8a5c76f6221a25d180714171c8529082f`](./contracts/gnosis-100/0x3ea8f1f8a5c76f6221a25d180714171c8529082f/); gnosis `0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b`; gnosis `0xf557b2b73b872e6d2f43826f9d77b7402a363bc0` | ⚠️ Unaudited |
| DHVToken | token | ethereum | n/a | [`0x62dc4817588d53a056cbbd18231d91ffccd34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9`](./contracts/bsc-56/0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | gnosis | n/a | `0x0cae51e1032e8461f4806e26332c030e34de3adb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0dcb0cb0120d355cde1ce56040be57add0185baa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1ccca1ce62c62f7be95d4a67722a8fdbed6eecb4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3405a1bd46b85c5c029483fbecf2f3e611026e45` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x375488f097176507e39b9653b88fdc52cde736bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5d9ab5522c64e1f6ef5e3627eccc093f56167818` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6ab6d61428fde76768d7b45d8bfeec19c6ef91a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7c598c96d02398d89fbcb9d41eab3df0c16f227d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8182fc6c53aff5a6dff59d283a6d97274935d1b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa649325aa7c5093d12d6f98eb4378deae68ce23f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb2c22a9fb4fc02eb9d1d337655ce079a04a526c7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb44a9b6905af7c801311e8f4e76932ee959c663c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbbc4a8d076f4b1888fec42581b6fc58d242cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc931f61b1534eb21d8c11b24f3f5ab2471d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9baa8cfdde8e328787e29b4b078abf2dadc2055` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf480f38c366daac4305dc484b2ad7a496ff00cea` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfa9343c3897324496a05fc75abed6bac29f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfbdd194376de19a88118e84e279b977f165d01b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02322853d2ae922d9a045c401897b48d9c17bcc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03870b1523080680a0dd777cd5baab55d6342210` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0889c09ad99af0a0a2bb5535e6874012a5dc27b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18bcce85c34320417201fdcb247aace95f4ba341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b920fbd6cd22fa70997995299561502732eac59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31be6b999fe4c8abbce3dd2eb72cc27c874531e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x548876c07e5e260598074b3c8d1b94701a7d71c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e5114fe00ca1b5d0585087ca61c3a508509f1ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x621268ba22c5a86809b0c3cefa8c707c63241d8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940b4f9f8daa8de74f075dfe4034dafe75b70f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a6f540f33c67bcdf60aa3dad1793fab98f320eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9f7d95e593874a418ce3272148c812569f8d8db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xdae6c2a48bfaa66b43815c5548b10800919c993e`](./contracts/gnosis-100/0xdae6c2a48bfaa66b43815c5548b10800919c993e/) | AnyswapV6Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3ea8f1f8a5c76f6221a25d180714171c8529082f`](./contracts/gnosis-100/0x3ea8f1f8a5c76f6221a25d180714171c8529082f/) | ClusterTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62dc4817588d53a056cbbd18231d91ffccd34b2a`](./contracts/ethereum-1/0x62dc4817588d53a056cbbd18231d91ffccd34b2a/) | DHVToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9`](./contracts/bsc-56/0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
