# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-05-25T15:33:26.579Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,689,759.00
- On-chain TVL (included contracts): $21,983,584.15
- TVL by chain: Ethereum $21,983,584.15

## Project Description

HOPE Money is a DeFi protocol offering liquid staking, restaking, and BTC-backed tokens. It enables users to stake ETH for liquid tokens, restake for additional yield, and mint BTC-pegged assets for use in lending and trading.

### Architecture

The liquid staking family provides RockXETH, which can be restaked for rewards. BTC-backed tokens rely on vaults and rate oracles, and cross-chain infrastructure enables movement of these assets across networks.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,983,584.15
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RockXETH | token | ethereum | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x088117...5ca866`](./contracts/ethereum-1/0x088117ed2b7ac7ae1801fac4f359e1aed95ca866/) | ⚠️ Unaudited |

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
| [CertiK-Audit-for-LightDAO-II-v1.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/CertiK-Audit-for-LightDAO-II-v1.pdf) | CertiK | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-HOPE-v1.2.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/PeckShield-Audit-Report-HOPE-v1.2.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - LightDAO Phase1_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase1_en-us.pdf) | SlowMist | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - LightDAO Phase2_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3482] CertiK-Audit-for-LightDAO-II-v1.pdf
- [3483] PeckShield-Audit-Report-HOPE-v1.2.pdf
- [3484] SlowMist Audit Report - LightDAO Phase1_en-us.pdf
- [3485] SlowMist Audit Report - LightDAO Phase2_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
