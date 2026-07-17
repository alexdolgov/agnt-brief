# Agentic Audit Brief: Atlendis

⚠️ Lifecycle status: DECLINING - TVL dropped 4.1% over 90 days

## Project Overview

- Project: Atlendis (`atlendis`)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-07-04T14:53:04.245Z
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

- Coverage of deployed-live implementations: 3/5 (60.0%)
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
| BorrowerPools | unknown | polygon | n/a | 2 deployments: polygon [`0x8d3da26f8301dea18197e4c3146d8cde3ebace7c`](./contracts/polygon-137/0x8d3da26f8301dea18197e4c3146d8cde3ebace7c/); polygon `0xbc13e1b5da083b10622ff5b52c9cfa1912f10b1f` | ✅ Audited |
| BorrowerPools | unknown | polygon | n/a | [`0xa5a52023d313339969ca819cd066abc72685d2b3`](./contracts/polygon-137/0xa5a52023d313339969ca819cd066abc72685d2b3/) | ✅ Audited |
| PoolLogic | unknown | polygon | n/a | [`0xd2b8552104cf999e0eead79800f0ff08cd4ed5fd`](./contracts/polygon-137/0xd2b8552104cf999e0eead79800f0ff08cd4ed5fd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | polygon | n/a | [`0x1a13f4ca1d028320a707d99520abfefca3998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | polygon | n/a | [`0x60d55f02a771d515e077c9c2403a1ef324885cec`](./contracts/polygon-137/0x60d55f02a771d515e077c9c2403a1ef324885cec/) | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | n/a | [`0xe0b52e49357fd4daf2c15e02058dce6bc0057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | polygon | n/a | 2 deployments: polygon [`0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/); polygon `0xbe7e43ee354992ebc356f3f8de1093e76237e84e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0xbfca293e17e067e8abdca30a5d35addd0cbae6d6`](./contracts/polygon-137/0xbfca293e17e067e8abdca30a5d35addd0cbae6d6/) | ⚠️ Unaudited |
| TokenPolygonUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24`](./contracts/polygon-137/0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24/); polygon `0x900f717ea076e1e7a484ad9dd2db81ceec60ebf1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x035c6390618dde768239ca90534564816e3467d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x115f10cef93521501fdf08b31c1e88a339200e6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bbf39b5ebd2cafa8cdab9d21dd49838c984bfe0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2031b531122afbfa342afd6b975061f9ea6af622` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21c5b92e1ccdbbc13175469cd15d80f6c7e8d101` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3be05b1d5223d282309e0652cb9bb58d5d2e6355` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cb1f4c28fca310c3809adda3a21551bf2904de0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43cc9f4ebf18c9d4573b1ffd22450e62bed8a6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a4ab9c1b391f1981a8481e40c983deafab71e2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5fbf0c645b2dfcb5fd102c2beb15f366891fdb5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6443257c7e68baf40a6537b1a7c2a43052059deb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x69a942b80a62fb84c0efe917dd33e8e8c462ac67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ab3958517e9857facd1db911493b17b73bfd59c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97fef6f1baebe911956d6ff22d23931e45b958dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9da8487ec38ad3b9b5c4d88b82f69a087330aedc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4c0ef2855b36148c1ac42fca9d2634459744748` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa91a5b57bb2107ef1f20452bfb4cdb495c37a1c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9e2c0082f1b94762ee3c1724ab63841d1f4806e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadae7202290188f54d2ff3f7c01e20188a8701e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaeb7631018f30e6b7bac6e205390934b654ddf47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb404363f7b7a3dd19e845482d218b626a59575d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb74aaecd7cdd4512f51e4208c0d87c55cc741a22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe49b492dff3612186611ff444c72438e961cc4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc18c30d4acba06ef11836e43f47502e9b0b30bc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3e63b31f79ca01ca3600e3a2155f40e27298315` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9dcf64f6c181b50e9124146ee7e754679228fb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccc1a8f9176e126cc667397439142f7c4f855d06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd1601c32be4f82ec7a11011e7e0265aad80ed94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd14f97d2f4508cfd8e70e72ef4d0a05f8ff71253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdcfb15e5102bcf93abc7202232f680e7317f1bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8a484389e28588bdcb8acd7b445e5008fb37a1c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [atlendis-audit-report.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/) | AtlendisLockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24`](./contracts/polygon-137/0x7660b2b53f6e9ecebebfade61fdeb1f3703caa24/) | TokenPolygonUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
