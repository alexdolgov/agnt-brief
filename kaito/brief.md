# Agentic Audit Brief: Kaito

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Kaito (`kaito`)
- Website: [https://yaps.kaito.ai](https://yaps.kaito.ai)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-22T16:43:24.777Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $19,864,550.74
- On-chain TVL (included contracts): $9,477,642.45
- TVL by chain: Base $9,477,642.45

## Project Description

Kaito is a protocol that allows users to stake KAITO tokens to receive StakedKAITO, representing their staked position and likely earning rewards.

### Architecture

The Kaito token contract is staked into the StakedKAITO contract, which mints StakedKAITO tokens to users, forming a direct staking relationship between the two contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,477,642.45
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $9,477,642.45 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedKAITO | token | base | [`0x548d3b...cd1ef7`](./contracts/base-8453/0x548d3b444da39686d1a6f1544781d154e7cd1ef7/) | ⚠️ Unaudited |
| Kaito | unknown | base | [`0x98d0ba...537553`](./contracts/base-8453/0x98d0baa52b2d063e780de12f615f963fe8537553/) | ⚠️ Unaudited |

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
| base | [`0x548d3b...cd1ef7`](./contracts/base-8453/0x548d3b444da39686d1a6f1544781d154e7cd1ef7/) | StakedKAITO | token | $9,477,642.45 | Verified native implementation with $9,477,642.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98d0ba...537553`](./contracts/base-8453/0x98d0baa52b2d063e780de12f615f963fe8537553/) | Kaito | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
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
