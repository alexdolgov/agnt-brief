# Agentic Audit Brief: Shell Protocol

## Project Overview

- Project: Shell Protocol (`shell-protocol`)
- Website: [https://www.shellprotocol.io/](https://www.shellprotocol.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.064Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: arbitrum, ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $109,816.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalancerAdapter | unknown | arbitrum | n/a | [`0xa8cb45...415b4a`](./contracts/arbitrum-42161/0xa8cb454449143912159e066760c1cf3b92415b4a/) | ⚠️ Unaudited |
| ComposableStablePool | unknown | arbitrum | n/a | [`0x9791d5...c790cb`](./contracts/arbitrum-42161/0x9791d590788598535278552eecd4b211bfc790cb/) | ⚠️ Unaudited |
| CrabDistributor | unknown | arbitrum | n/a | [`0xcf1766...558792`](./contracts/arbitrum-42161/0xcf17664006851a27d5bd93d497f30853ac558792/) | ⚠️ Unaudited |
| Curve2PoolAdapter | unknown | arbitrum | n/a | [`0x02b4ab...0742e4`](./contracts/arbitrum-42161/0x02b4ab3b517371d0bd71d325dbe7dfc0320742e4/) | ⚠️ Unaudited |
| CustomShellVesting | unknown | arbitrum | n/a | [`0xf70395...f18c79`](./contracts/arbitrum-42161/0xf70395c5e2ff522ca56aa210c46138dc3bf18c79/) | ⚠️ Unaudited |
| FractionalizerFactory | unknown | arbitrum | n/a | [`0x4093ee...89eed4`](./contracts/arbitrum-42161/0x4093ee6cc764e11ce95451f47ddee9d6cc89eed4/) | ⚠️ Unaudited |
| LiquidityPoolProxy | unknown | arbitrum | n/a | [`0x069964...88de1c`](./contracts/arbitrum-42161/0x0699645f2fd448398272ae07f82eee8d0388de1c/) | ⚠️ Unaudited |
| Multicall2 | unknown | arbitrum | n/a | [`0xc5cfad...39b023`](./contracts/arbitrum-42161/0xc5cfada84e902ad92dd40194f0883ad49639b023/) | ⚠️ Unaudited |
| Multicall2Arbitrum | unknown | arbitrum | n/a | [`0x5b5cfe...003858`](./contracts/arbitrum-42161/0x5b5cfe992adac0c9d48e05854b2d91c73a003858/) | ⚠️ Unaudited |
| Ocean | unknown | arbitrum | n/a | [`0x96b4f4...d5fb7a`](./contracts/arbitrum-42161/0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a/) | ⚠️ Unaudited |
| Quoter | unknown | arbitrum | n/a | [`0x8d073a...c6ce77`](./contracts/arbitrum-42161/0x8d073a51a9b074940622e42c5f3c4d08c2c6ce77/) | ⚠️ Unaudited |
| SeedPoem | unknown | ethereum | n/a | [`0x0a440f...f23276`](./contracts/ethereum-1/0x0a440f7b5414dfa7f5ea94a01a21b8fc36f23276/) | ⚠️ Unaudited |
| Shell | unknown | ethereum | n/a | [`0x8dcaec...38145a`](./contracts/ethereum-1/0x8dcaec45365e5ada5676073a07b418c2f538145a/) | ⚠️ Unaudited |
| ShellDistributor | unknown | arbitrum | n/a | [`0x4818c2...3c011d`](./contracts/arbitrum-42161/0x4818c257384704b153c60b0ec7bae0c23b3c011d/) | ⚠️ Unaudited |
| ShellVesting | unknown | arbitrum | n/a | [`0x53b86e...62f887`](./contracts/arbitrum-42161/0x53b86e1c9cbfdc8f784082c1b4a5cf845d62f887/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xe47ba5...d0317d`](./contracts/arbitrum-42161/0xe47ba52f326806559c1dec7ddd997f6957d0317d/) | ⚠️ Unaudited |
| VestingFractionalizer | unknown | arbitrum | n/a | [`0xaff1f1...f11817`](./contracts/arbitrum-42161/0xaff1f19340eb5456a55c76938f74bb1d23f11817/) | ⚠️ Unaudited |
| Vyper_contract | unknown | arbitrum | n/a | [`0x0100fb...44f5c9`](./contracts/arbitrum-42161/0x0100fbf414071977b19fc38e6fc7c32fe444f5c9/) | ⚠️ Unaudited |

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
| [ShellProtocolv2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ShellProtocolv2.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2023-08-shell](https://code4rena.com/reports/2023-08-shell) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2023-11-shellprotocol](https://code4rena.com/reports/2023-11-shellprotocol) | Code4rena | Contest | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2020/06/shell-protocol](https://diligence.security/audits/2020/06/shell-protocol) | Consensys Diligence | Audit | 2020-06 | stale | Direct | n/a | 0 | n/a |
| [bot-report.md](https://github.com/code-423n4/2023-08-shell/blob/main/bot-report.md) | unknown | Contest | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [PDF](https://diligence.security/audits/2020/06/shell-protocol/shell-protocol-audit-2020-06.pdf) | Consensys Diligence | Audit | 2020-06 | stale | Direct | n/a | 0 | n/a |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/initial_mythx_report.pdf) | MythX | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/followup_mythx_report.pdf) | MythX | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Automated Findings report](https://gist.github.com/code423n4/640b27a9b9c209b575ed78aa106bd584) | Code4rena | Contest | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21442] ShellProtocolv2.pdf
- [21443] code4rena.com/reports/2023-08-shell
- [21444] code4rena.com/reports/2023-11-shellprotocol
- [21445] diligence.security/audits/2020/06/shell-protocol
- [24451] bot-report.md
- [24453] PDF
- [24454] can be found here
- [24455] can be found here
- [24457] Automated Findings report

Fork inheritance lineage and inherited audits are included when available.
