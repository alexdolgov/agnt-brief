# Agentic Audit Brief: B-Lucky

## Project Overview

- Project: B-Lucky (`b-lucky`)
- Website: [https://b-lucky.gg/](https://b-lucky.gg/)
- Lifecycle: active (Tier 0, 47.7% below peak)
- Generated: 2026-06-17T07:01:01.709Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 16 unique implementations (16 raw deployments)
- DeFi Llama TVL: $1,086,587.92
- On-chain TVL (included contracts): $2,200,551.18
- TVL by chain: Bsc $2,200,551.18

## Project Description

B-Lucky is a decentralized on-chain lottery protocol on BSC/BNB Chain.

### Architecture

All game contracts likely share the same token (0x67b4...) for wagering and payouts, and were deployed by two deployer addresses that may represent different game versions or administrative roles.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,200,551.18
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | bsc | n/a | [`0x67b479...704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x14515a...f62046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16e315...cc3433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18b534...5406c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e3eaa...841286` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7424b9...cb203a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef0d0...157aba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98207b...2263cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99eead...b96d3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4c398...a6d62a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f03b...cfba50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86298...836780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8a4ef...af6d39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3bff...e878fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe18ead...35ad5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8964e...304b9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://b-lucky.gg/audit/bailsec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x67b479...704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | Token | token | $2,200,551.18 | Verified native implementation with $2,200,551.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3235] DL audit link

Fork inheritance lineage and inherited audits are included when available.
