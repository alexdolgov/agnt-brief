# Agentic Audit Brief: DxSale

## Project Overview

- Project: DxSale (`dxsale`)
- Website: [https://dx.app](https://dx.app)
- Lifecycle: active (Tier 0, 76% below peak)
- Generated: 2026-06-17T07:00:42.822Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, bsc, celo, ethereum, fantom, gnosis, harmony, moonriver, polygon
- Contract surface: 33 unique implementations (36 raw deployments)
- DeFi Llama TVL: $17,936,534.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DX App, formerly DxSale, is a decentralized launchpad and token tooling platform that enables projects to create and manage token presales/IDOs, token minting, airdrops, liquidity locks, token distribution, and liquidity management across multiple blockchains without requiring coding skills.

### Architecture

The DxSale family includes token factories (DxStandardToken), presale management (PresaleOwnerFinalize), and liquidity lockers (DxLockLPDep) that work together to support the full lifecycle of a token launch. Supporting tokens like GGGTOKEN may serve as utility or fee tokens within the ecosystem.

## Contract Surface Quality

- Indexed contracts: 404; live-surface contracts included: 36 (22 live, 14 unknown).
- Excluded by liveness: 368 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 8/10.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 1
- Unverified implementations: 31
- Unique implementations: 33
- Raw deployments: 36
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DxStandardToken | token | ethereum | n/a | [`0x1d37fb...71589e`](./contracts/ethereum-1/0x1d37fb68b2679200844b57b2cf7a17260271589e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DxLockLPDep | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1ba00c...310fbd`](./contracts/ethereum-1/0x1ba00c14f9e8d1113028a14507f1394dc9310fbd/); bsc `0x5b5e94...6829b6`; bsc `0xeb3a9c...53e449`; arbitrum `0x51f411...e96df4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x108c9d...bfe89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae21d...980d96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e0ef...70334d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8655e5...e4679a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0f358c...d47612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa17720...e5fae9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb3a9c...53e449` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x318aa1...b4132e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x650fe4...c02623` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb1f73e...215f35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbb7bef...9f907b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc1e3f4...0710f8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe4d7b8...9b3e3c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4b7b8c...3c2752` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x983b00...ff6b9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf1545...4a75d1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7561e8...281259` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03e466...a769d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10f485...817b95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x373186...6cb883` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed85da...b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xb3c0bc...4612cd` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xd5f159...75c6dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/dxsale) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11578] DL audit link

Fork inheritance lineage and inherited audits are included when available.
