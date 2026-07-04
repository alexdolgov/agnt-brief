# Agentic Audit Brief: RSK Bridge

## Project Overview

- Project: RSK Bridge (`rsk-bridge`)
- Website: [https://rootstock.io/](https://rootstock.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:51.298Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $98,414,552.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 14 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (upgradableownable, proxy, secondary). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x12ed69...6a7b5d`](./contracts/ethereum-1/0x12ed69359919fc775bc2674860e8fe2d2b6a7b5d/) | ⚠️ Unaudited |
| AllowTokens | unknown | ethereum | n/a | [`0x118522...cd697c`](./contracts/ethereum-1/0x118522603dc0b8490fec2b8db92e6f1c66cd697c/) | ⚠️ Unaudited |
| Bridge_v0 | unknown | ethereum | n/a | [`0xe34f95...d1426a`](./contracts/ethereum-1/0xe34f957e42a3a2b5f8a64ee367851a088bd1426a/) | ⚠️ Unaudited |
| Bridge_v1 | unknown | ethereum | n/a | [`0x8582f5...5aa5f1`](./contracts/ethereum-1/0x8582f510817731be46e6a8380cf4eeffc05aa5f1/) | ⚠️ Unaudited |
| Federation | unknown | ethereum | n/a | [`0x5631a6...9d76c5`](./contracts/ethereum-1/0x5631a6ac95b6bde690807085aaa70e3b2d9d76c5/) | ⚠️ Unaudited |
| Federation_v1 | unknown | ethereum | n/a | [`0x479f86...362a2b`](./contracts/ethereum-1/0x479f86ecbe766073d2712ef418aceb56d5362a2b/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | ethereum | n/a | [`0x040007...0e4138`](./contracts/ethereum-1/0x040007b1804ad78a97f541bebed377dcb60e4138/) | ⚠️ Unaudited |
| MyOFT | unknown | ethereum | n/a | [`0x01b603...bf45fb`](./contracts/ethereum-1/0x01b603be3d545f096015741e6503440282bf45fb/) | ⚠️ Unaudited |
| Payroll | unknown | ethereum | n/a | [`0xb005bb...6d11f0`](./contracts/ethereum-1/0xb005bb5e58878318d559561a49f0b67c616d11f0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xbc4a94...d0bcbf`](./contracts/ethereum-1/0xbc4a94b0e07a8a453d382747741d4652a0d0bcbf/) | ⚠️ Unaudited |
| SideToken | unknown | ethereum | n/a | [`0x73c084...7a498a`](./contracts/ethereum-1/0x73c08467e23f7dcb7ddbbc8d05041b74467a498a/) | ⚠️ Unaudited |
| SideTokenFactory | unknown | ethereum | n/a | [`0xb3d061...7db0fa`](./contracts/ethereum-1/0xb3d06103af1a68026615e673d46047fab77db0fa/) | ⚠️ Unaudited |
| SideTokenFactory_v1 | unknown | ethereum | n/a | [`0x578a80...bfb063`](./contracts/ethereum-1/0x578a80ad3f6d56f873da81b73b8d192ab6bfb063/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5bce0a...145942`](./contracts/ethereum-1/0x5bce0ababa89e1d0e063978d87cff2f8f5145942/) | ⚠️ Unaudited |
| Utils | unknown | ethereum | n/a | [`0x5f989f...0b6120`](./contracts/ethereum-1/0x5f989f2f323a1732a565c9a3f694f2fa8f0b6120/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RSKj.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RSKj.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rskaudit_ginger_120717.pdf](http://www0.cs.ucl.ac.uk/staff/P.McCorry/rskaudit_ginger_120717.pdf) | Patrick McCorry (UCL) | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20994] RSKj.pdf
- [20995] rskaudit_ginger_120717.pdf

Fork inheritance lineage and inherited audits are included when available.
