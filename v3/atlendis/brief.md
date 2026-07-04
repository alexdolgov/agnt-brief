# Agentic Audit Brief: Atlendis

⚠️ Lifecycle status: DECLINING - TVL dropped 4.1% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-07-03T21:05:31.830Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: polygon
- Contract surface: 40 unique implementations (43 raw deployments)
- DeFi Llama TVL: $10,992,516.00
- On-chain TVL (included contracts): $4,190,297.30
- TVL by chain: Polygon $4,190,297.30

## Project Description

Structural profile: 21 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 6 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (baselockdrop, proxy, custodianstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 42 (11 live, 31 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/9 (33.3%)
- Deployed-live implementations: 9 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 40
- Raw deployments: 43
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $4,190,297.30
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,190,297.30 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 33.3% | 2022-02 |
| PeckShield | Tier 2 | 2 | 22.2% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowerPools | unknown | polygon | n/a | 2 deployments: polygon [`0x8d3da2...bace7c`](./contracts/polygon-137/0x8d3da26f8301dea18197e4c3146d8cde3ebace7c/); polygon `0xbc13e1...f10b1f` | ✅ Audited |
| BorrowerPools | unknown | polygon | n/a | [`0xa5a520...85d2b3`](./contracts/polygon-137/0xa5a52023d313339969ca819cd066abc72685d2b3/) | ✅ Audited |
| PoolLogic | unknown | polygon | n/a | [`0xd2b855...4ed5fd`](./contracts/polygon-137/0xd2b8552104cf999e0eead79800f0ff08cd4ed5fd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | polygon | n/a | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | polygon | n/a | [`0x60d55f...885cec`](./contracts/polygon-137/0x60d55f02a771d515e077c9c2403a1ef324885cec/) | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | n/a | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | polygon | n/a | 2 deployments: polygon [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/); polygon `0xbe7e43...37e84e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0xbfca29...bae6d6`](./contracts/polygon-137/0xbfca293e17e067e8abdca30a5d35addd0cbae6d6/) | ⚠️ Unaudited |
| TokenPolygonUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x7660b2...3caa24`](./contracts/polygon-137/0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24/); polygon `0x900f71...60ebf1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x035c63...3467d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x115f10...200e6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bbf39...84bfe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2031b5...6af622` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21c5b9...e8d101` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3be05b...2e6355` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cb1f4...904de0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43cc9f...d8a6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a4ab9...b71e2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5fbf0c...1fdb5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x644325...059deb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x69a942...62ac67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ab395...bfd59c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97fef6...b958dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9da848...30aedc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4c0ef...744748` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa91a5b...37a1c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9e2c0...f4806e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadae72...8701e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaeb763...4ddf47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb40436...9575d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb74aae...741a22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe49b4...61cc4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc18c30...b30bc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3e63b...298315` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9dcf6...228fb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccc1a8...855d06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd1601...80ed94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd14f97...f71253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdcfb15...7f1bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8a484...b37a1c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/) | AtlendisLockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
