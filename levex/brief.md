# Agentic Audit Brief: LeveX

## Project Overview

- Project: LeveX (`levex`)
- Website: [https://levex.com/en/assets/proof-of-reserve](https://levex.com/en/assets/proof-of-reserve)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T08:39:07.813Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $10,914,160.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LeveX is a centralized exchange (CEX) operating on Ethereum, using Gnosis Safe multisig wallets for treasury and operational management.

### Architecture

All contracts are Gnosis Safe multisig wallets deployed by the same deployer, indicating a shared operational infrastructure for treasury and governance.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GnosisSafe | governance | ethereum | [`0xa7c23c...536284`](./contracts/ethereum-1/0xa7c23c824fa730065ab9367947cc139687536284/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 3 deployments: ethereum [`0x0070fb...74be13`](./contracts/ethereum-1/0x0070fb0677edb8b6e61ce6f5976c32e99d74be13/); ethereum `0x9c9c67...569c56`; ethereum `0xd7b73e...51fbfb` | ⚠️ Unaudited |

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
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
