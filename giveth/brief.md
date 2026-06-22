# Agentic Audit Brief: Giveth

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Giveth (`giveth`)
- Website: [https://giveth.io](https://giveth.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-21T09:05:23.805Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, gnosis
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $115,799.29
- On-chain TVL (included contracts): $452,564.17
- TVL by chain: Gnosis $452,564.17

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: balancer-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $452,564.17
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $452,564.17 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermittableToken | token | gnosis | unit-42055 | [`0x4f4f9b...d59e75`](./contracts/gnosis-100/0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75/) | ⚠️ Unaudited |
| GIV | unknown | ethereum | n/a | [`0x900db9...230da0`](./contracts/ethereum-1/0x900db999074d9277c5da2a43f252d74366230da0/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | gnosis | n/a | 3 deployments: ethereum `0xbeba16...461eeb`; gnosis [`0x08ea9f...2ae10e`](./contracts/gnosis-100/0x08ea9f608656a4a775ef73f5b187a2f1ae2ae10e/); gnosis `0xb7189a...d5fa57` | ⚠️ Unaudited |

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
| [Giveth GIVeconomy Contracts Code Review.pdf](https://github.com/lastperson/code-reviews/blob/main/Giveth%20GIVeconomy%20Contracts%20Code%20Review.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13183] Giveth GIVeconomy Contracts Code Review.pdf

Fork inheritance lineage and inherited audits are included when available.
