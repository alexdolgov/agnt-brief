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
| UnnamedContract | unknown | klaytn | n/a | 22 deployments: klaytn `0x01431f...23341d`; klaytn `0x036305...4701cf`; klaytn `0x05343b...9e5987`; klaytn `0x09067f...9a5a5f`; klaytn `0x128955...2f837d`; klaytn `0x19aac5...1a4432`; klaytn `0x29990a...b4936e`; klaytn `0x2ce59e...38997f`; klaytn `0x2f3713...054830`; klaytn `0x3c9736...797887`; klaytn `0x3d5465...a1bc6c`; klaytn `0x3e8477...2dc293`; klaytn `0x51d233...5d317b`; klaytn `0x689d8e...923593`; klaytn `0x6c14e2...d141a0`; klaytn `0x71b59e...5b1890`; klaytn `0x7a74b3...5ac876`; klaytn `0xa15be7...502ac9`; klaytn `0xb43879...666bfc`; klaytn `0xc6a2ad...9e7654`; klaytn `0xd1890d...4009e6`; klaytn `0xe0fbb2...cf8cb9` | ❓ Unverified |

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
