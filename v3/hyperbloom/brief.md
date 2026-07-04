# Agentic Audit Brief: HyperBloom

## Project Overview

- Project: HyperBloom (`hyperbloom`)
- Website: [https://www.hyperbloom.xyz/](https://www.hyperbloom.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.768Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: hyperliquid
- Contract surface: 44 unique implementations (51 raw deployments)
- DeFi Llama TVL: $103,375.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 51 (11 live, 40 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 44
- Raw deployments: 51
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ICHIVaultDeployer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x27404a...6279a1`](./contracts/hyperliquid-999/0x27404a54d594aa6307c3f9be102646363d6279a1/); hyperliquid `0xdc9afd...ba73bb` | ⚠️ Unaudited |
| ICHIVaultFactory | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x2a3eb8...32a3f0`](./contracts/hyperliquid-999/0x2a3eb890dc0902c7ca6cc71a1e9670463b32a3f0/); hyperliquid `0x8ccd02...cd8182`; hyperliquid `0xcd9527...7dbfa0`; hyperliquid `0xf0974c...8ed0b3` | ⚠️ Unaudited |
| UV3Math | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3e61b1...6995d3`](./contracts/hyperliquid-999/0x3e61b1844af74fe22997c0004c83429ddd6995d3/); hyperliquid `0xd68b01...c772e7`; hyperliquid `0xe08a22...9fd4d3` | ⚠️ Unaudited |
| VolatilityCheck | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x06be01...7fdfc5`](./contracts/hyperliquid-999/0x06be011f7e56ab84e88536447a6926d1e77fdfc5/); hyperliquid `0x7b7fd5...1f257f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x05cc3b...661c01` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0ad4d2...d7389c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0eebba...475d05` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x132a97...58ffa3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x13985b...6c1426` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x195703...bb091e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1c3eb3...ee8082` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x24430e...5eef74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28798a...514a21` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2db872...24e39c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e670...fe0722` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x50893d...847bb7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52a60f...ce2471` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x532ec6...33c285` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5453e5...29948c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x58cad2...2b39c3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66717d...685653` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d7fc9...e0b0c2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x71b470...a97b44` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x731d9c...7cdc4b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74c85f...78d549` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d125d...e5665d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89ec55...53a623` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8d6cdb...a9fc0d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9176b8...9f19b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa1725f...4537d9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae2f43...8816cc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb65628...2dd94b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba70f5...2ddf9b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc5c111...8f5090` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca3e89...c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcfea11...8b8d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdbc032...9a85d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdd3775...b5f2b4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdef802...cb5220` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe504f4...cd0b0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea7f9e...3ff768` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb6ea2...06cfb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf13de8...c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe6050...f0f864` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hyperbloom-security-review_2025-06-24.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Hyperbloom-security-review_2025-06-24.pdf) | Pashov Audit Group | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13260] Hyperbloom-security-review_2025-06-24.pdf

Fork inheritance lineage and inherited audits are included when available.
