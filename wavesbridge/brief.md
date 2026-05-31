# Agentic Audit Brief: WavesBridge

## Project Overview

- Project: WavesBridge (`wavesbridge`)
- Website: [https://wavesbridge.io/](https://wavesbridge.io/)
- Lifecycle: active (Tier 0, 78.9% below peak)
- Generated: 2026-05-31T11:35:54.568Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,026,786.12
- On-chain TVL (included contracts): $136,632,939.38
- TVL by chain: Ethereum $136,632,939.38

## Project Description

WavesBridge is a cross-chain bridge enabling asset transfers between Waves and Ethereum networks. It uses a set of contracts on Ethereum to lock and release tokens, facilitating interoperability.

### Architecture

The Bridge contract serves as the operational core, interacting with token contracts like PepeToken and SimpleToken to manage locked assets. Supporting contracts Neiro and RealGames likely provide auxiliary functions or token instances used within the bridge ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $136,632,939.38
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SimpleToken | token | ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | [`0x3ac7a6...9c3a55`](./contracts/ethereum-1/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/) | ⚠️ Unaudited |
| Neiro | unknown | ethereum | [`0x812ba4...a853ee`](./contracts/ethereum-1/0x812ba41e071c7b7fa4ebcfb62df5f45f6fa853ee/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| RealGames | unknown | ethereum | [`0x1a920b...e04882`](./contracts/ethereum-1/0x1a920b0eae5b49c51ebf042a61c3fa58dae04882/) | ⚠️ Unaudited |

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

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
