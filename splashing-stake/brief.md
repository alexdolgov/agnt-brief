# Agentic Audit Brief: Splashing Stake

## Project Overview

- Project: Splashing Stake (`splashing-stake`)
- Website: [https://www.splashing.xyz/](https://www.splashing.xyz/)
- Lifecycle: active (Tier 0, 78.9% below peak)
- Generated: 2026-05-23T12:46:09.758Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: sei
- Contract surface: 8 unique implementations (22 raw deployments)
- DeFi Llama TVL: $6,194,386.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Splashing Stake is a liquid staking protocol on Sei that allows users to stake assets and receive liquid staking tokens in return, enabling them to earn staking rewards while maintaining liquidity.

### Architecture

The Staking contract relies on StakingStorage for persistent data and OrderQueue for managing staking/unstaking requests, all deployed behind ERC1967Proxy upgradeable proxies.

## Audit Coverage Summary

- Verified implementations audited: 3/4 (75.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 8
- Raw deployments: 22
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 75.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OrderQueue | unknown | sei | 7 deployments: sei [`0x0a4c54...e28ed2`](./contracts/sei-1329/0x0a4c5483111a44fc448111a552d2f87139e28ed2/); sei `0x4ed643...0ae090`; sei `0x88d7ff...c411fe`; sei `0x8f62b4...31b54d`; sei `0xc45c86...1b4e64`; sei `0xcd628b...cd8931`; sei `0xdeba5c...e34198` | ✅ Audited |
| Staking | unknown | sei | 2 deployments: sei [`0x151669...f46bf4`](./contracts/sei-1329/0x151669b501b561a52ad95574603ad52546f46bf4/); sei `0xe04262...8f0d6d` | ✅ Audited |
| StakingStorage | unknown | sei | 2 deployments: sei [`0x910d6a...3c4c9d`](./contracts/sei-1329/0x910d6afa46a4729a4bda2e02ca8f24bdf73c4c9d/); sei `0xb54e9b...a7c50b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | sei | 7 deployments: sei [`0x03cc83...e5f9f9`](./contracts/sei-1329/0x03cc83d643ff38a4c16ddd3cf647515c76e5f9f9/); sei `0x0b7882...8d4433`; sei `0x0ddb96...3614c8`; sei `0x204d44...0b1d12`; sei `0x3b093d...705cd1`; sei `0xae30a9...bf9344`; sei `0xfeeb53...f1a8f7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sei | `0x223745...5b701b` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x67dc9a...1cf093` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x97715b...1a3218` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb4f549...adba49` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2818732251-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FniaC1zjJFz2QDJGHFkFf%2Fuploads%2FAWE0jZ4hBKIuXyRpFtSk%2FPeckShield-Audit-Report-SplashingStake-v1.0.pdf) | PeckShield | Audit | 2025-07 | fresh | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
