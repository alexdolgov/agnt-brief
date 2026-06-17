# Agentic Audit Brief: StandX

⚠️ Lifecycle status: DECLINING - TVL dropped 33.0% over 90 days

## Project Overview

- Project: StandX (`standx`)
- Website: [https://standx.com/referral?code=defillama](https://standx.com/referral?code=defillama)
- Lifecycle: declining (Tier 0, 54.7% below peak)
- Generated: 2026-06-17T07:00:36.199Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $43,185,923.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

StandX is a multi-chain Perps DEX on BNB/BSC and Solana powered by yield-bearing DUSD, with a DefiLlama-tracked canonical bridge component. Solana/SVM audit coverage should be tracked separately from BSC/EVM contract coverage unless an audit explicitly covers the same EVM code or a verified equivalence mapping exists.

### Architecture

The BSC family provides the core stablecoin (StandDUSD) and settlement logic, which is used by both the Pools family for liquidity and the StandX Bridge family for cross-chain transfers. The bridge relies on the same StandDUSD token contract and uses a Safe multisig for governance, while pools facilitate trading of the stablecoin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 3 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/7 (57.1%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 6
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 2 fresh, 4 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 3 | 42.9% | 2025-11 |
| RigSec | Tier 2 | 2 | 28.6% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Gateway | unknown | bsc | n/a | [`0xb6820f...b66760`](./contracts/bsc-56/0xb6820fb2ab3572cdadde31844679d4e9adb66760/) | ✅ Audited |
| Highway | unknown | bsc | n/a | 2 deployments: bsc [`0x7f5a8e...12e419`](./contracts/bsc-56/0x7f5a8ee5149b9bbc462b2f4d5b03cb56ce12e419/); bsc `0xfdf12f...d29649` | ✅ Audited |
| Settler | unknown | bsc | n/a | [`0xdf09eb...90caa1`](./contracts/bsc-56/0xdf09ebf9a24080deedb0a9a85db0b3aa9a90caa1/) | ✅ Audited |
| StandDUSD | unknown | bsc | n/a | [`0x57f4df...d9e22d`](./contracts/bsc-56/0x57f4dff6f9404c1c89d5d0457e26c87ffbd9e22d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | bsc | n/a | [`0x84603c...30766f`](./contracts/bsc-56/0x84603ca30da1ae131f624a4edf2d8ac8a030766f/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x2ad9c1...30b9c5`](./contracts/bsc-56/0x2ad9c1ad5b06f953b69d39d6685d725cd330b9c5/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | unit-22115 | [`0x11b660...39e433`](./contracts/bsc-56/0x11b660397382ae3a83c4ad80e2f791189b39e433/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x77cf4e...554915` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79864d...63d771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d4d8...7c9223` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c69ac...843053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96a4a8...b71652` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb5f15...066874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe17f50...39074f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [WatchPug StandX DUSD Solana Audit Report](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_Solana_Audit.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [WatchPug StandX DUSD EVM Audit Report](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_EVM_Audit.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [WatchPug StandX Highway EVM Audit Report](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_EVM_Audit.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [WatchPug StandX Highway SVM Audit Report](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_SVM_Audit.pdf) | WatchPug | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [RigSec StandX DUSD Solana Audit Report](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_Solana_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [RigSec StandX DUSD EVM Audit Report](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_EVM_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=20

Zero-match audit list:

- [3860] RigSec StandX DUSD Solana Audit Report

Fork inheritance lineage and inherited audits are included when available.
