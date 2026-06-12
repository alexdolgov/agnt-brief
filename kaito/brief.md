# Agentic Audit Brief: Kaito

## Project Overview

- Project: Kaito (`kaito`)
- Website: [https://yaps.kaito.ai](https://yaps.kaito.ai)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T14:09:39.269Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $15,830,996.05
- On-chain TVL (included contracts): $9,477,642.45
- TVL by chain: Base $9,477,642.45

## Project Description

Kaito is a crypto attention, data, and capital distribution service described as a distribution powerhouse for the crypto ecosystem. The tracked on-chain surface currently consists of the KAITO token contract and the StakedKAITO staking/token contract on Base; staking TVL should be reported separately from overall protocol TVL.

### Architecture

The Kaito token contract is staked into the StakedKAITO contract, which mints StakedKAITO tokens to users, forming a direct staking relationship between the two contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,477,642.45
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedKAITO | token | base | [`0x548d3b...cd1ef7`](./contracts/base-8453/0x548d3b444da39686d1a6f1544781d154e7cd1ef7/) | ⚠️ Unaudited |
| Kaito | unknown | base | [`0x98d0ba...537553`](./contracts/base-8453/0x98d0baa52b2d063e780de12f615f963fe8537553/) | ⚠️ Unaudited |
| SafeL2 | unknown | base | [`0x049a02...bb8e0d`](./contracts/base-8453/0x049a022d95c02c3f552d54eb2e94743e5abb8e0d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x4674ef...2a5659` | ❓ Unverified |

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
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
