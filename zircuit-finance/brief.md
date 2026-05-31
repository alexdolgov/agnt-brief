# Agentic Audit Brief: Zircuit Finance

## Project Overview

- Project: Zircuit Finance (`zircuit-finance`)
- Website: [https://finance.zircuit.com/](https://finance.zircuit.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T11:46:25.628Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base, ethereum
- Contract surface: 3 unique implementations (10 raw deployments)
- DeFi Llama TVL: $1,513,608.93
- On-chain TVL (included contracts): $180,117,388.68
- TVL by chain: Base $180,117,340.36 | Ethereum $48.32

## Project Description

Zircuit Finance is a yield optimization protocol that aggregates lending and liquidity strategies across multiple chains. It uses tokenized vaults and strategy managers to automate yield generation for users.

### Architecture

All contracts belong to a single product family sharing the TokenizedStrategy implementation for lenders and ATokenInstance for yield-bearing tokens. StrategyManager contracts coordinate across lenders, while proxies provide upgradeability.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $180,117,388.68
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
| ATokenInstance | token | ethereum | 3 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x98c23e...e16f5c`; base `0x4e65fe...f5c0ab` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | 5 deployments: ethereum `0x28966c...332c49`; ethereum `0x6424c7...2b6e38`; base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xc91e44...e1aca7`; base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| StrategyManager | core_logic | base | 2 deployments: base [`0x075193...a04d94`](./contracts/base-8453/0x075193d36693da7ba3bb709cf63bef070ba04d94/); base `0xf7e745...cd3374` | ⚠️ Unaudited |

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
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | $1,512,516.60 | Verified native implementation with $1,512,516.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
