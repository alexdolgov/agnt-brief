# Agentic Audit Brief: ApeRocket

⚠️ Lifecycle status: DEAD - TVL dropped 5.3% over 90 days

## Project Overview

- Project: ApeRocket (`aperocket`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-20T02:57:07.405Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $36,309.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ApeRocket is a yield optimization protocol on BSC that offers vaults for auto-compounding user deposits and launchpad services for new token offerings. It aggregates yield strategies and provides token sale mechanisms to maximize returns and facilitate fundraising.

### Architecture

The ApeRocket family uses upgradeable proxies to connect vault logic (RocketVault) and launchpad contracts (IAO, IFOByProxy) under a shared infrastructure. Supporting contracts like BananaAllocator and EscrowWeightLens_Cliff provide allocation and vesting calculations that serve both vault and launchpad operations.

## Contract Surface Quality

- Indexed contracts: 1008; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 973 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 0/10 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/43.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ApeFactory | registry | bsc | n/a | [`0x0841bd...fb0da6`](./contracts/bsc-56/0x0841bd0b734e4f5853f0dd8d7ea041c241fb0da6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x36cc29...9f7293` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54aff4...972d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c8d72...b4a6f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x603c7f...f39a95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6afc01...052ec4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71354a...06339b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bfcd7...d34968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86ef5e...2acc06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f97b2...3fe7f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaecb39...8515e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb75be1...8750c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0788a...d1d607` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf083b...491284` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf0feb...bff3b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd04e90...d3ba58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe486a6...b45e80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3d78a...7cf446` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffdcd4...de05c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-ApeRocket-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ApeRocket-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0841bd...fb0da6`](./contracts/bsc-56/0x0841bd0b734e4f5853f0dd8d7ea041c241fb0da6/) | ApeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12663] PeckShield-Audit-Report-ApeRocket-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
