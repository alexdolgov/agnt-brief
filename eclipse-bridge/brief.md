# Agentic Audit Brief: Eclipse Bridge

## Project Overview

- Project: Eclipse Bridge (`eclipse-bridge`)
- Website: [https://www.eclipse.xyz](https://www.eclipse.xyz)
- Lifecycle: unknown
- Generated: 2026-06-19T07:16:43.958Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: ethereum
- Contract surface: 8 unique implementations (13 raw deployments)
- DeFi Llama TVL: $4,957,994.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The Eclipse Bridge is a canonical bridge enabling asset transfers between Ethereum and the Eclipse blockchain. It uses a lock-and-mint mechanism where assets are locked on Ethereum and minted on Eclipse, with a Treasury contract managing locked funds.

### Architecture

The Treasury holds locked assets, the EtherBridge manages deposit and withdrawal logic, and the Mailbox handles cross-chain messaging. All contracts are deployed behind ERC1967 proxies, indicating a shared upgradeable infrastructure.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (0 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 13
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CanonicalBridge | unknown | ethereum | n/a | [`0x2b08d7...d4be11`](./contracts/ethereum-1/0x2b08d7cf7eaff0f5f6623d9fb09b080726d4be11/) | ⚠️ Unaudited |
| CanonicalBridgeV2 | unknown | ethereum | n/a | [`0x867a8f...789a51`](./contracts/ethereum-1/0x867a8fcd5bb6774d4d37fb342d669a35ff789a51/) | ⚠️ Unaudited |
| CanonicalBridgeV3 | unknown | ethereum | n/a | [`0x504392...28b30a`](./contracts/ethereum-1/0x504392f02ee64d6b51ad3bcf7999e69ebe28b30a/) | ⚠️ Unaudited |
| EtherBridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x338017...e39be9`](./contracts/ethereum-1/0x338017e0f208b4eaf8cd4bbdc8bdabefd0e39be9/); ethereum `0x83cb71...cd0fd1` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x472034...5c64e0`](./contracts/ethereum-1/0x4720342419c1d316b948690d12c86d5b485c64e0/); ethereum `0x7b2c1c...1c0efc` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4cef0f...ee712b`](./contracts/ethereum-1/0x4cef0fa54dc06ce0ea198dab2f57d28a9dee712b/); ethereum `0xb23b24...60968d` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xa8e15d...67f8d4`](./contracts/ethereum-1/0xa8e15d2b1bf6b0fd3bc9ead06323c0730b67f8d4/); ethereum `0xd7e4b6...70e644`; ethereum `0xf1f7a3...f90978` | ⚠️ Unaudited |
| Upgrader0to1 | unknown | ethereum | n/a | [`0xd02f54...ce71e3`](./contracts/ethereum-1/0xd02f545d57536bc1e8f12d867731f006aace71e3/) | ⚠️ Unaudited |

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
| [20240313 - Zellic Audit Report.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240313%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240718%20-%20Ottersec%20-%20Eclipse%20Canonical%20Bridge%20Audit%20-%20final.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20240722 - Halborn - V1 Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20240722%20-%20Halborn%20-%20V1%20Audit.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [20241104 - Ottersec Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Ottersec%20Bridge%20Audit.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20241104 - Zellic Bridge Audit.pdf](https://github.com/Eclipse-Laboratories-Inc/audits/blob/main/20241104%20-%20Zellic%20Bridge%20Audit.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NeodymeStakeProgramAudit-2026-04-10.pdf](https://github.com/anza-xyz/security-audits/blob/master/core-bpf/NeodymeStakeProgramAudit-2026-04-10.pdf) | Neodyme | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [ZellicAltConfigFeatureGateAudit-2024-10-29.pdf](https://github.com/anza-xyz/security-audits/blob/master/core-bpf/ZellicAltConfigFeatureGateAudit-2024-10-29.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [ZellicStakeProgramAudit-2025-03-12.pdf](https://github.com/anza-xyz/security-audits/blob/master/core-bpf/ZellicStakeProgramAudit-2025-03-12.pdf) | Zellic | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2b08d7...d4be11`](./contracts/ethereum-1/0x2b08d7cf7eaff0f5f6623d9fb09b080726d4be11/) | CanonicalBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x867a8f...789a51`](./contracts/ethereum-1/0x867a8fcd5bb6774d4d37fb342d669a35ff789a51/) | CanonicalBridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x504392...28b30a`](./contracts/ethereum-1/0x504392f02ee64d6b51ad3bcf7999e69ebe28b30a/) | CanonicalBridgeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x338017...e39be9`](./contracts/ethereum-1/0x338017e0f208b4eaf8cd4bbdc8bdabefd0e39be9/) | EtherBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cef0f...ee712b`](./contracts/ethereum-1/0x4cef0fa54dc06ce0ea198dab2f57d28a9dee712b/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8e15d...67f8d4`](./contracts/ethereum-1/0xa8e15d2b1bf6b0fd3bc9ead06323c0730b67f8d4/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd02f54...ce71e3`](./contracts/ethereum-1/0xd02f545d57536bc1e8f12d867731f006aace71e3/) | Upgrader0to1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2264] 20240313 - Zellic Audit Report.pdf
- [2265] 20240718 - Ottersec - Eclipse Canonical Bridge Audit - final.pdf
- [2266] 20240722 - Halborn - V1 Audit.pdf
- [2267] 20241104 - Ottersec Bridge Audit.pdf
- [2268] 20241104 - Zellic Bridge Audit.pdf
- [2269] NeodymeStakeProgramAudit-2026-04-10.pdf
- [2270] ZellicAltConfigFeatureGateAudit-2024-10-29.pdf
- [2271] ZellicStakeProgramAudit-2025-03-12.pdf

Fork inheritance lineage and inherited audits are included when available.
