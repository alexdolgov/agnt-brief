# Agentic Audit Brief: Trisolaris

⚠️ Lifecycle status: DEAD - TVL changed 19.4% over 90 days

## Project Overview

- Project: Trisolaris (`trisolaris`)
- Website: [https://www.trisolaris.io/#/swap](https://www.trisolaris.io/#/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T16:20:52.955Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: aurora
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,229,126.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Trisolaris is a decentralized exchange in the Aurora/NEAR ecosystem that provides UniswapV2-style token swaps and liquidity pools through factory/router-based AMM contracts. The protocol has also included historical farming, staking, rewards, vesting, fee-maker, stable-swap/LP-maker, and related incentive contracts. Claims about current cross-chain farming or active TRI governance should be qualified unless supported by current documentation or verified contract functionality.

## Contract Surface Quality

- Indexed contracts: 173; live-surface contracts included: 2 (0 live, 2 unknown).
- Excluded by liveness: 171 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | aurora | n/a | `0x35529b...f6ea4a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x3e8795...463763` | ❓ Unverified |

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
