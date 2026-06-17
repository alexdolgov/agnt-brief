# Agentic Audit Brief: Taiko Bridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 40.9% over 90 days

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown (Tier 0, 93.1% below peak)
- Generated: 2026-06-17T07:00:52.600Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $12,761,962.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Taiko Bridge is the canonical asset-transfer bridge for the Taiko rollup, enabling deposits and withdrawals of supported ERC-20, ERC-721, and ERC-1155 tokens between Ethereum and Taiko through bridge/vault and message-passing contracts. Related Taiko rollup, prover, verifier, and token infrastructure may be security dependencies for finality and cross-chain messaging, but should be distinguished from the bridge's user-facing asset vault and transfer contract surface.

### Architecture

The bridge family relies on shared infrastructure: SignalService for cross-chain message passing, verifiers (SP1, Risc0, Sgx) for proof validation, and address managers for contract resolution. Vaults handle token locking/unlocking, while MainnetBridge orchestrates message sending and receiving, with guardian provers and prover sets ensuring security.

## Contract Surface Quality

- Indexed contracts: 215; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 177 inactive, 35 singleton, 0 uninitialized.
- Deployment units: 3/24 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MainnetInbox | unknown | ethereum | unit-31955 | [`0x06a9ab...feb19a`](./contracts/ethereum-1/0x06a9ab27c7e2255df1815e6cc0168d7755feb19a/) | ⚠️ Unaudited |
| PreconfRouter | adapter | ethereum | unit-31974 | [`0xd5aa0e...a9688a`](./contracts/ethereum-1/0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a/) | ⚠️ Unaudited |
| PreconfWhitelist | unknown | ethereum | unit-31977 | [`0xfd0194...29b2ac`](./contracts/ethereum-1/0xfd019460881e6eec632258222393d5821029b2ac/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
