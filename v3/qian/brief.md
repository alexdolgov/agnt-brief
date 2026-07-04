# Agentic Audit Brief: QIAN

## Project Overview

- Project: QIAN (`qian`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:43.739Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 101 unique implementations (101 raw deployments)
- DeFi Llama TVL: $3,610.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 15 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (upgradeabilityproxy, proxy, versionedinitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 129; live-surface contracts included: 101 (3 live, 98 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 101 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | ethereum | n/a | [`0x5e60fc...c27aa9`](./contracts/ethereum-1/0x5e60fcca904753a31f9df7d7f6b7856b6ec27aa9/) | ⚠️ Unaudited |
| Coin | unknown | ethereum | n/a | [`0x59d4cc...145dd1`](./contracts/ethereum-1/0x59d4ccc94a9c4c3d3b4ba2aa343a9bdf95145dd1/) | ⚠️ Unaudited |
| KUN | unknown | ethereum | n/a | [`0x65d9bc...3f2604`](./contracts/ethereum-1/0x65d9bc970aa9b2413027fa339f7f179b3f3f2604/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x009d3a...c4a398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x036c49...2b3424` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ae8e...6794cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057157...12f6d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05f607...c589de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc349...5934f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fee89...c35bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10b3a3...d3af45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ea2c...813a43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17ee9a...e3f432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1983e3...75da73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7ab6...ceffdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f437d...340b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x202610...68cf5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20eb95...afdf2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x237ec5...5ae122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x263502...3b4593` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x276540...54b8de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2440...562643` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f6359...bff685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312124...cd6f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31dc34...39da4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3610ac...959940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x368c96...63bba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b4f4d...0fbde0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x405c53...e2f084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44a3c3...79c0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4baa11...41db33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d51f4...d0fd35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x515add...2d2cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517c32...2fa20a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519b9d...497d83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539978...dca77b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x555e5e...db19f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55b4b5...5ea289` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a5c8...810fc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6660...358a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x617e52...455807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61a0ac...0f6af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68b37d...9431d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x692329...74e737` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fd52d...8fc442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70383f...3de835` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729e82...8c4e48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x744de8...eeccad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x765847...01cb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76b728...37096e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7751fd...71cede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x790fc8...b5701d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbe87...113edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f3ce4...76a6bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82625b...f10c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86310b...82dae4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x873308...e92a4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87b1ee...c309c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c71c3...160674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x900e46...b18d46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914cd4...7cb5ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b7d3...96317b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aace3...a6790e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c511d...bff88a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fb384...a07ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0610c...9edaef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa40361...5f3761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa54336...abef70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96c64...210747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa55f8...38f7ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab30d0...3a378d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae22bf...989f72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdf34...4d9f2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdf6f...e52df2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb069a2...853cb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8c540...4f924e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe1365...2cdea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb3e0...027671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22450...31b975` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc228db...7b85af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc30c04...11144c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a4cd...57c339` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc70ddd...a1f074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8a648...c16c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca2558...95a1c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad76d...089c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb245a...9b68cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd26d0c...8a343e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd389ae...07796b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6e8d6...50f35a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd92560...4f12ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd72e1...8f761c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe54090...ca034b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebb16d...17cfad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef1f00...5cca9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf077c1...e830ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ce7d...981e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c941...829eea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf832bf...138fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf90886...a91211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff4a3c...fc875a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [qian.finance](https://expireddomains.com/domain/qian.finance?utm_source=redi) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13718] qian.finance

Fork inheritance lineage and inherited audits are included when available.
