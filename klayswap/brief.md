# Agentic Audit Brief: KlaySwap

⚠️ Lifecycle status: DECLINING - TVL changed 3.0% over 90 days

## Project Overview

- Project: KlaySwap (`klayswap`)
- Website: [https://klayswap.com/dashboard](https://klayswap.com/dashboard)
- Lifecycle: declining (Tier 1, sunsetting)
- Generated: 2026-06-17T19:08:34.253Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-1121
- Chains: klaytn
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $3,852,968.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

KLAYswap is an AMM-based instant swap decentralized exchange on Kaia, formerly Klaytn, enabling token swaps and liquidity provision. Claims about separate V1/V3 product families or concentrated-liquidity functionality should be treated as unverified unless corroborated by accessible documentation, verified contract metadata, or audit scope text.

### Architecture

KlaySwap V1 and V3 are separate product families sharing the same Klaytn deployment but likely operate independently with distinct contract sets. No shared infrastructure contracts are explicitly identified in the provided inventory.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (0 live, 22 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | `0x01431f...23341d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x036305...4701cf` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x05343b...9e5987` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x09067f...9a5a5f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x128955...2f837d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x19aac5...1a4432` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x29990a...b4936e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2ce59e...38997f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2f3713...054830` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3c9736...797887` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3d5465...a1bc6c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3e8477...2dc293` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x51d233...5d317b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x689d8e...923593` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6c14e2...d141a0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x71b59e...5b1890` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a74b3...5ac876` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa15be7...502ac9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb43879...666bfc` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc6a2ad...9e7654` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xd1890d...4009e6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe0fbb2...cf8cb9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [**Read the Smart Contract Audit Reports here (Link)** (also discovered via alternate URL)](https://github.com/KlaySwap/klayswap/blob/master/audit/Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf) | Theori | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [[78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5B78ResearchLab%5D%20OZYS_KLAYSWAP_V8(Final).pdf) | 78ResearchLab | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [[ChainLight] New KLAYswap Security Audit v1.0.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5BChainLight%5D%20New%20KLAYswap%20Security%20Audit%20v1.0.pdf) | yAudit | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2551] **Read the Smart Contract Audit Reports here (Link)**
- [2552] (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf
- [2553] [78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf
- [2554] [ChainLight] New KLAYswap Security Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
