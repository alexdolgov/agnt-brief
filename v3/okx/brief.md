# Agentic Audit Brief: OKX

## Project Overview

- Project: OKX (`okx`)
- Website: [https://www.okx.com](https://www.okx.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.528Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $21,197,173,463.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1dfc6b...eae1d4`](./contracts/ethereum-1/0x1dfc6bec8499fcb5e3151c7c6d27feb9d7eae1d4/) | ⚠️ Unaudited |

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
| [web3.okx.com/help/web3-security-audit-reports](https://web3.okx.com/help/web3-security-audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK_OKX_SDK.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/6VV8wi1AuM69nVV77EDFdh/a142d0ceccc5a2909d9657b788e7c6af/CertiK_OKX_SDK.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REP-OKX-SDK__final-20240523T210159Z_01.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/4deeg8RL5bWskKVW0cae2F/733b55b894236194373f14b773d78212/REP-OKX-SDK__final-20240523T210159Z_01.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK-OKX-Threshold_lib.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/4iJZA4TrYDPZnhVoT7vlTH/e21b3e46365465b4afb9559f580c23a9/CertiK-OKX-Threshold_lib.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK-OKX-Audit-3-Main_Contracts_.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/BtMEoTijoQHLNjpB1KuQH/d63451193d5d06a371521ca3b997f412/CertiK-OKX-Audit-3-Main_Contracts_.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CertiK-OKX_Marketplace_of_Solana.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/4dTUC2Liq2kya6E6JD3flD/16b56a43359dd2a27b468a1ae34c3661/CertiK-OKX_Marketplace_of_Solana.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - OKX MPC Wallet(Android)_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain-application/SlowMist%20Audit%20Report%20-%20OKX/SlowMist%20Audit%20Report%20-%20OKX%20MPC%20Wallet(Android)_en-us.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - OKX Web3 Wallet iOS_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain-application/SlowMist%20Audit%20Report%20-%20OKX/SlowMist%20Audit%20Report%20-%20OKX%20Web3%20Wallet%20iOS_en-us.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - ord_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain/SlowMist%20Audit%20Report%20-%20OKX/SlowMist%20Audit%20Report%20-%20ord_en-us.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist_Audit_Report_-_Account_Abstraction.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/31KjJ1D2FeKe7SgqkzgqOD/ccd4a65bc25eebe5676c1a57bab25182/SlowMist_Audit_Report_-_Account_Abstraction.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist_Audit_Report_-_Account_Abstraction_03.pdf](https://web3.okx.com/cdn/assets/plugins/announcements/contentful/tofttmniq0qv/rjIyBSPSnSeV7Gt31zIiA/783c4e8c139ef85d3861c961b1235a1a/SlowMist_Audit_Report_-_Account_Abstraction_03.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20894] web3.okx.com/help/web3-security-audit-reports
- [20895] CertiK_OKX_SDK.pdf
- [20896] REP-OKX-SDK__final-20240523T210159Z_01.pdf
- [20897] CertiK-OKX-Threshold_lib.pdf
- [20898] CertiK-OKX-Audit-3-Main_Contracts_.pdf
- [20899] CertiK-OKX_Marketplace_of_Solana.pdf
- [20900] SlowMist Audit Report - OKX MPC Wallet(Android)_en-us.pdf
- [20901] SlowMist Audit Report - OKX Web3 Wallet iOS_en-us.pdf
- [20902] SlowMist Audit Report - ord_en-us.pdf
- [20903] SlowMist_Audit_Report_-_Account_Abstraction.pdf
- [20904] SlowMist_Audit_Report_-_Account_Abstraction_03.pdf

Fork inheritance lineage and inherited audits are included when available.
