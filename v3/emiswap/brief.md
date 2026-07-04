# Agentic Audit Brief: EmiSwap

## Project Overview

- Project: EmiSwap (`emiswap`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:46.384Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: aurora, ethereum, polygon
- Contract surface: 32 unique implementations (33 raw deployments)
- DeFi Llama TVL: $33,547.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (upgradeableproxy, proxy, lptokenwrapper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 33 (2 live, 31 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 32
- Raw deployments: 33
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmiList | unknown | ethereum | n/a | [`0x99e401...01c73b`](./contracts/ethereum-1/0x99e401f9f825822f005d68b7d903038cc601c73b/) | ⚠️ Unaudited |
| EmiRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/); polygon `0x386807...c2c46a` | ⚠️ Unaudited |
| EmiVamp | unknown | ethereum | n/a | [`0xe629c4...e1a3af`](./contracts/ethereum-1/0xe629c4dc9538614019d17d09f54617ef89e1a3af/) | ⚠️ Unaudited |
| ESW | unknown | ethereum | n/a | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8b50a7...b2681e`](./contracts/ethereum-1/0x8b50a72b86bc55a49ef034ef961d2d4e69b2681e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2694f5...0aff62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d2934...c1c865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40651e...8860c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4120b8...e733d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x412c95...55e02b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42148b...97436e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4856bb...3a6a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b77a7...db9316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcb48...c1de9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7ec6...2a99e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x528930...a23e71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x538fab...3086b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57271b...b3eec0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6941d1...ddbf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2398...4d365d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2e079...fdb234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcab605...e90ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfd8b0...a13960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a838...0eb69c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a2a3...4a7d8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd45ccd...606f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd134d...fc8379` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe06ec5...903f24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f877...8fe472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ffa7...d53b08` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x5a75a0...18031d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe094e3...2044e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [habanero188resmi.com](https://habanero188resmi.com/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13078] habanero188resmi.com

Fork inheritance lineage and inherited audits are included when available.
