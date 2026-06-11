# Agentic Audit Brief: Moonlander

## Project Overview

- Project: Moonlander (`moonlander`)
- Website: [https://moonlander.trade/](https://moonlander.trade/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T01:10:46.507Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: cronos
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $31,411,812.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Moonlander is a social perpetual DEX/decentralized perpetual trading platform on Cronos and Cronos zkEVM for leveraged crypto/RWA trading, with an Earn/staking component. Unsupported claims that it is a synthetic-assets platform or a platform for users to create and manage derivative contracts should be removed unless verified by authoritative sources.

### Architecture

The Moonlander token contract likely governs or incentivizes the Cronos EVM derivative contracts, which share a common deployment environment and may interact through shared liquidity pools or fee distribution mechanisms.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x02ae2e...717a05` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x071788...0e9034` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x378881...ede8dd` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x544923...bea6d1` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x6f27c8...21f2f6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x7ec427...ed3a04` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x8dbebe...68917e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xb4c700...27df13` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xb7fe13...06330d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xbf438c...f849cc` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe6f635...fbeec9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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
