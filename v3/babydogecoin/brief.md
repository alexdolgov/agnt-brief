# Agentic Audit Brief: BabyDogeCoin

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:32.575Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum
- Contract surface: 21 unique implementations (29 raw deployments)
- DeFi Llama TVL: $1,875,233.00
- On-chain TVL (included contracts): $121,443,880.55
- TVL by chain: Bsc $121,443,880.55

## Project Description

Dexs. Structurally: 48 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (lpmanager, babydogeerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 155; live-surface contracts included: 29 (18 live, 11 unknown).
- Excluded by liveness: 126 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 10 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 21
- Raw deployments: 29
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $121,443,880.55
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $121,443,880.55 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 20.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FarmDeployer20FixEnd | unknown | bsc | n/a | [`0x103def...f31b9d`](./contracts/bsc-56/0x103def784e1d0aaad0de95936610fd836bf31b9d/) | ✅ Audited |
| FarmDeployer721 | unknown | bsc | n/a | 8 deployments: bsc [`0x0579db...778644`](./contracts/bsc-56/0x0579db6324274c07a6b6e13024a3747b97778644/); bsc `0x2003e0...7f0196`; bsc `0x559a1b...291425`; bsc `0x65f9d9...509a15`; bsc `0xa04fb9...247d44`; bsc `0xb15429...49300c`; bsc `0xb9e324...03698a`; bsc `0xda907b...158f52` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoinToken | token | bsc | n/a | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | ⚠️ Unaudited |
| BabyDogeFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x3cda75...501d68`](./contracts/bsc-56/0x3cda751aa61609064551fc9cdb49b667af501d68/); bsc `0x4693b6...f43137` | ⚠️ Unaudited |
| BabyDogeLocker | unknown | bsc | n/a | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | ⚠️ Unaudited |
| BabyDogePair | unknown | bsc | n/a | [`0x6e0d52...10652d`](./contracts/bsc-56/0x6e0d5230637d50dbe58e674e746614fc8210652d/) | ⚠️ Unaudited |
| BabyDogeRouter | adapter | bsc | n/a | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | ⚠️ Unaudited |
| BbdNftStaking | token | ethereum | n/a | [`0xee1f84...75c9f8`](./contracts/ethereum-1/0xee1f8496e48ac25061bdc6f4512faa443475c9f8/) | ⚠️ Unaudited |
| BurnPortal | unknown | bsc | n/a | [`0xbb667d...4e0396`](./contracts/bsc-56/0xbb667d8f8a1fd68ded52c616a314a294294e0396/) | ⚠️ Unaudited |
| FarmDeployer | unknown | bsc | n/a | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x4a0c81...636f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d972...1579bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b6997...a900eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22b75c...e45d71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc67f...085ae5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a0c81...636f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fc9d5...1c7608` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89d3af...22fb4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1c14e...b700c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1b202...603572` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6616d...da1ca9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/baby-doge-coin](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | CoinToken | token | $121,443,880.55 | Verified native implementation with $121,443,880.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x36b343...4541be`](./contracts/bsc-56/0x36b34364e17373c05300bc3e827bf7cac34541be/) | BabyDogeLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e0d52...10652d`](./contracts/bsc-56/0x6e0d5230637d50dbe58e674e746614fc8210652d/) | BabyDogePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9a0f6...af3c47`](./contracts/bsc-56/0xc9a0f685f39d05d835c369036251ee3aeaaf3c47/) | BabyDogeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee1f84...75c9f8`](./contracts/ethereum-1/0xee1f8496e48ac25061bdc6f4512faa443475c9f8/) | BbdNftStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb667d...4e0396`](./contracts/bsc-56/0xbb667d8f8a1fd68ded52c616a314a294294e0396/) | BurnPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x210dbf...49d5b2`](./contracts/bsc-56/0x210dbf538ef70750e0eb6149005bf2d40d49d5b2/) | FarmDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
