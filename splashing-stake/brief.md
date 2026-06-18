# Agentic Audit Brief: Splashing Stake

## Project Overview

- Project: Splashing Stake (`splashing-stake`)
- Website: [https://www.splashing.xyz/](https://www.splashing.xyz/)
- Lifecycle: active (Tier 0, 78.9% below peak)
- Generated: 2026-06-18T17:03:24.447Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: sei
- Contract surface: 5 unique implementations (7 raw deployments)
- DeFi Llama TVL: $4,309,361.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Splashing Stake is a liquid staking protocol on Sei that allows users to stake assets and receive liquid staking tokens in return, enabling them to earn staking rewards while maintaining liquidity.

### Architecture

The Staking contract relies on StakingStorage for persistent data and OrderQueue for managing staking/unstaking requests, all deployed behind ERC1967Proxy upgradeable proxies.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 3/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/4 (75.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 7
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OrderQueue | unknown | sei | unit-38354 (2 proxies) | 2 deployments: sei [`0x88d7ff...c411fe`](./contracts/sei-1329/0x88d7fff259ffac098c66d0d92284a3dfb2c411fe/); sei `0xc45c86...1b4e64` | ✅ Audited |
| Staking | unknown | sei | n/a | [`0xe04262...8f0d6d`](./contracts/sei-1329/0xe042621757737f0d5654a33d24343af7268f0d6d/) | ✅ Audited |
| StakingStorage | unknown | sei | unit-38356 (2 proxies) | 2 deployments: sei [`0x910d6a...3c4c9d`](./contracts/sei-1329/0x910d6afa46a4729a4bda2e02ca8f24bdf73c4c9d/); sei `0xb54e9b...a7c50b` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | sei | unit-38350 | [`0x0b7882...8d4433`](./contracts/sei-1329/0x0b7882049aa9c2f9255dc87c01d4e230248d4433/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0xb4f549...adba49` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2818732251-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FniaC1zjJFz2QDJGHFkFf%2Fuploads%2FAWE0jZ4hBKIuXyRpFtSk%2FPeckShield-Audit-Report-SplashingStake-v1.0.pdf) | PeckShield | Audit | 2025-07 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
