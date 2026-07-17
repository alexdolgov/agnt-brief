# Agentic Audit Brief: KlaySwap

## Project Overview

- Project: KlaySwap (`klayswap`)
- Website: [https://klayswap.com/dashboard](https://klayswap.com/dashboard)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.263Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: klaytn
- Contract surface: 1 unique implementations (22 raw deployments)
- DeFi Llama TVL: $3,746,886.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (0 live, 22 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 22
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | 22 deployments: klaytn `0x01431f2a0d8c25646d1995e9ad345581d523341d`; klaytn `0x0363053524610888fb883a5c0b16fb55aa4701cf`; klaytn `0x05343b228d61402e84d973ce114f34bc3f9e5987`; klaytn `0x09067f1b4e1a1cd08c91519d811f3d04c69a5a5f`; klaytn `0x1289550d988177575154c2ca45c95ccfb32f837d`; klaytn `0x19aac5f612f524b754ca7e7c41cbfa2e981a4432`; klaytn `0x29990aaf04f3d5ac7d8c88beab1a009c1ab4936e`; klaytn `0x2ce59e21364dca92c90970ad15442146d638997f`; klaytn `0x2f3713f388bc4b8b364a7a2d8d57c5ff4e054830`; klaytn `0x3c9736ffd8752342ec64328c498ed6878a797887`; klaytn `0x3d546560d16846374ed17f2f852251323ea1bc6c`; klaytn `0x3e8477f4d81090fa55af350c7d31819eed2dc293`; klaytn `0x51d233b5ae7820030a29c75d6788403b8b5d317b`; klaytn `0x689d8ea1bd4e02b9e9cad9dcc871a050ff923593`; klaytn `0x6c14e2e4bae412137437a8ec9e57263212d141a0`; klaytn `0x71b59e4bc2995b57aa03437ed645ada7dd5b1890`; klaytn `0x7a74b3be679e194e1d6a0c29a343ef8d2a5ac876`; klaytn `0xa15be7e90df29a4aead0c7fc86f7a9fbe6502ac9`; klaytn `0xb43879a835fd2097515b7b5c6c549929f1666bfc`; klaytn `0xc6a2ad8cc6e4a7e08fc37cc5954be07d499e7654`; klaytn `0xd1890d8f02f4c63553658ba49c53a82eb84009e6`; klaytn `0xe0fbb27d0e7f3a397a67a9d4864d4f4dd7cf8cb9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/(Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf) | Theori | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [[78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5B78ResearchLab%5D%20OZYS_KLAYSWAP_V8(Final).pdf) | 78ResearchLab | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [[ChainLight] New KLAYswap Security Audit v1.0.pdf](https://github.com/KlaySwap/klayswap/blob/master/audit/%5BChainLight%5D%20New%20KLAYswap%20Security%20Audit%20v1.0.pdf) | yAudit | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2551] Smart_Contract_Audit_Report_KlaySwap_ver_2.0.pdf
- [2552] (Theori)_Ozys-KLAYswap_Final_Report-2021_10_07.pdf
- [2553] [78ResearchLab] OZYS_KLAYSWAP_V8(Final).pdf
- [2554] [ChainLight] New KLAYswap Security Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
