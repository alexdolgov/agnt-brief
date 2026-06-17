# Agentic Audit Brief: Punks Terminal

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Punks Terminal (`punks-terminal`)
- Website: [https://punks.lightyear.build/stash](https://punks.lightyear.build/stash)
- Lifecycle: unknown (Tier 0, 50.5% below peak)
- Generated: 2026-06-17T18:48:14.606Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-1121
- Chains: ethereum
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $985,465.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Punks Terminal is a CryptoPunks-focused Stash trading terminal on Ethereum. Its StashFactory deploys user-managed Stash contracts that support ETH/WETH liquidity, order placement, trading, and withdrawals for CryptoPunks-related activity.

### Architecture

The project consists of a single product family with one registry contract, so there are no cross-family relationships or shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (4 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CryptoPunks721 | unknown | ethereum | n/a | [`0x000000...5c5c2f`](./contracts/ethereum-1/0x000000000000003607fce1ac9e043a86675c5c2f/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | n/a | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| PunkTransferHelper | periphery | ethereum | n/a | [`0x000000...312272`](./contracts/ethereum-1/0x000000000000748d91de137891483c6f2f312272/) | ⚠️ Unaudited |
| Stash | unknown | ethereum | n/a | 8 deployments: ethereum [`0x000000...968eec`](./contracts/ethereum-1/0x00000000000060d035a8002956b5fb02e3968eec/); ethereum `0x32b262...f90d7e`; ethereum `0x436f07...b8f6fc`; ethereum `0xa3c22e...3a6f23`; ethereum `0xccb008...d1e925`; ethereum `0xe4f741...6460ce`; ethereum `0xf30c1e...73090f`; ethereum `0xf78baa...b8c860` | ⚠️ Unaudited |
| StashFactory | registry | ethereum | n/a | [`0x000000...866750`](./contracts/ethereum-1/0x000000000000a6fa31f5fc51c1640aac76866750/) | ⚠️ Unaudited |
| WrappedPunk | unknown | ethereum | n/a | [`0xb7f7f6...c313f6`](./contracts/ethereum-1/0xb7f7f6c52f2e2fdb1963eab30438024864c313f6/) | ⚠️ Unaudited |

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
| ethereum | [`0x000000...312272`](./contracts/ethereum-1/0x000000000000748d91de137891483c6f2f312272/) | PunkTransferHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...968eec`](./contracts/ethereum-1/0x00000000000060d035a8002956b5fb02e3968eec/) | Stash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...866750`](./contracts/ethereum-1/0x000000000000a6fa31f5fc51c1640aac76866750/) | StashFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 3 |
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
