# Agentic Audit Brief: WavesBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 9.0% over 90 days

## Project Overview

- Project: WavesBridge (`wavesbridge`)
- Website: [https://wavesbridge.io/](https://wavesbridge.io/)
- Lifecycle: declining (Tier 0, 78.9% below peak)
- Generated: 2026-06-19T06:14:53.756Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, bsc, ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $353,348.74
- On-chain TVL (included contracts): $136,632,939.38
- TVL by chain: Ethereum $136,632,939.38

## Project Description

WavesBridge is a multi-chain token bridge supporting asset transfers across Waves, Ethereum, and other connected networks. The Ethereum contracts tracked in this brief represent only the Ethereum-side contract surface of the broader multi-chain bridge system; token contracts such as Neiro and RealGames should be treated as external or supported assets unless separately verified as core WavesBridge components.

### Architecture

The Bridge contract serves as the operational core, interacting with token contracts like PepeToken and SimpleToken to manage locked assets. Supporting contracts Neiro and RealGames likely provide auxiliary functions or token instances used within the bridge ecosystem.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $136,632,939.38
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $136,632,939.38 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3ac7a6...9c3a55`](./contracts/ethereum-1/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/); bsc [`0x3ac7a6...9c3a55`](./contracts/bsc-56/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/) | ⚠️ Unaudited |
| Neiro | unknown | ethereum | n/a | [`0x812ba4...a853ee`](./contracts/ethereum-1/0x812ba41e071c7b7fa4ebcfb62df5f45f6fa853ee/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | n/a | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| PortalV2 | unknown | arbitrum | n/a | [`0xac8f44...0ffcbe`](./contracts/arbitrum-42161/0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe/) | ⚠️ Unaudited |
| RealGames | unknown | ethereum | n/a | [`0x1a920b...e04882`](./contracts/ethereum-1/0x1a920b0eae5b49c51ebf042a61c3fa58dae04882/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3ac7a6...9c3a55`](./contracts/ethereum-1/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xac8f44...0ffcbe`](./contracts/arbitrum-42161/0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe/) | PortalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
