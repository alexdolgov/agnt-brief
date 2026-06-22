# Agentic Audit Brief: Based Finance

⚠️ Lifecycle status: DEAD - TVL changed 10.7% over 90 days

## Project Overview

- Project: Based Finance (`based-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T13:17:44.349Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: fantom
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $189.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Based Finance is a DeFi protocol on Fantom offering yield generation and algorithmic stablecoin products. It includes a first-generation set of contracts for yield and algo-stables, and a next-generation set that likely iterates on these mechanisms.

### Architecture

The two families represent sequential versions of the protocol, with Based Next Generation likely replacing or coexisting with the original Based Finance. They may share underlying tokens or infrastructure, but the contract surface shows no direct cross-references.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (0 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0a10da...0c53a5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x407c47...24a759` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x49c290...54ab7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x525ca3...943379` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x62a2ff...0851fe` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8d7d34...ed89ae` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa0e0f4...405831` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaebff2...5fa2ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe5009d...f0e5cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfb98b3...ea213b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Based.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Based.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12739] Based.pdf

Fork inheritance lineage and inherited audits are included when available.
