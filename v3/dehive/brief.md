# Agentic Audit Brief: DeHive

## Project Overview

- Project: DeHive (`dehive`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.683Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 127 unique implementations (133 raw deployments)
- DeFi Llama TVL: $110,690.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 104 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (contextupgradeable, baseimpulsestrategyrwrdtwoswp, baseimpulsestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 577; live-surface contracts included: 133 (11 live, 122 unknown).
- Excluded by liveness: 444 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/5 (20.0%)
- Deployed-live implementations: 5 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 127
- Raw deployments: 133
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

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x02bc4c...8330f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06661a...486a2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cbed4...1fe277` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cdee2...9f1f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce9d5...c79b77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f277b...07f170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f716d...994d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26a451...50e49d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x318cca...c7606d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x359895...3a037a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8ed2...887b1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53098a...968a2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ccfb1...aee73e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x644165...47a47d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c01e6...e1c810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b9255...f96a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bd870...6579ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea445...ce252b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eae7a...c7ca0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82d495...c060ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89dabc...0bf5c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cacd0...cf6ae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97c640...ab4571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9827b2...fc1f53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c432f...2440aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3b94c...74cf61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0763b...d67bf6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0dfe3...cc48e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4a777...ae6d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbdc08...ea236c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc3456...b0f1b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23ed8...debb7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa718f...ed8105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc5c0e...2a5b49` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0x0288d6...3615e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03870b...342210` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0889c0...dc27b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0991bb...e13753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b4e75...c3b6cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d0141...cd17c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e5b65...65c296` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18bcce...4ba341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b920f...2eac59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22bf44...2057a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x240a8d...ff7f0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25a528...28cc19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26eaf3...75cd40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31be6b...4531e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32f120...146422` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36d947...320734` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x374783...9728bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a87eb...1db1fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cde2c...86e8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d913d...2b4934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d9f1d...b1e33c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x434aed...c43e11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fe2cf...6b9d87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x546d10...01c386` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x548876...7d71c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e5114...09f1ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x621268...241d8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1a19...9fba89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ed71b...ef0920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x711214...9c3a23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x733df3...d9667f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7caf...c5f45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x818ec0...d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82197d...60e34d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84a9bd...db8f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89c881...b77b71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a0f53...e1b515` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a214d...ab94e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9ca...afbe72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ce955...b5f5bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940b4f...b70f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95bf7e...fcd605` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97bdbc...753e85` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9877dc...47dca8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a6f54...f320eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9aea86...3259bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b40e4...7a2c21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fe28d...b9ce48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xabda03...0e1a5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad996a...5a4302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb12c13...091358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba40c1...a38e7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe77ef...e4e156` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc90060...cc6bf8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9f7d9...f8d8db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce3b88...e428be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd03db...4f7524` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2304a...f0bfb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3f5a9...a0ad7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe68019...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed3d03...ac2e73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xefbe7b...678c76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf711f9...fccffc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf90e9c...4babc5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 127 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
