# Agentic Audit Brief: Splashing Stake

## Project Overview

- Project: Splashing Stake (`splashing-stake`)
- Website: [https://www.splashing.xyz/](https://www.splashing.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.482Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: sei
- Contract surface: 12 unique implementations (22 raw deployments)
- DeFi Llama TVL: $4,908,799.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 2 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 20 (16 live, 4 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/11 (27.3%)
- Deployed-live implementations: 11 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 27.3% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OrderQueue | unknown | sei | n/a | 2 deployments: sei [`0x88d7ff...c411fe`](./contracts/sei-1329/0x88d7fff259ffac098c66d0d92284a3dfb2c411fe/); sei `0xc45c86...1b4e64` | ✅ Audited |
| Staking | unknown | sei | n/a | [`0xe04262...8f0d6d`](./contracts/sei-1329/0xe042621757737f0d5654a33d24343af7268f0d6d/) | ✅ Audited |
| StakingStorage | unknown | sei | n/a | 2 deployments: sei [`0x910d6a...3c4c9d`](./contracts/sei-1329/0x910d6afa46a4729a4bda2e02ca8f24bdf73c4c9d/); sei `0xb54e9b...a7c50b` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | sei | n/a | 3 deployments: sei [`0x03cc83...e5f9f9`](./contracts/sei-1329/0x03cc83d643ff38a4c16ddd3cf647515c76e5f9f9/); sei `0x204d44...0b1d12`; sei `0x67dc9a...1cf093` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sei | n/a | [`0x0b7882...8d4433`](./contracts/sei-1329/0x0b7882049aa9c2f9255dc87c01d4e230248d4433/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sei | n/a | 3 deployments: sei [`0x0ddb96...3614c8`](./contracts/sei-1329/0x0ddb9616b8e436510fcdf14ce0b083f2503614c8/); sei `0x223745...5b701b`; sei `0xae30a9...bf9344` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sei | n/a | 2 deployments: sei [`0x3b093d...705cd1`](./contracts/sei-1329/0x3b093d6b9b113f58716c1539481713aec9705cd1/); sei `0x97715b...1a3218` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sei | n/a | [`0xfeeb53...f1a8f7`](./contracts/sei-1329/0xfeeb5318cc97f219ef7050d75d325e4ec1f1a8f7/) | ⚠️ Unaudited |
| OrderQueue | unknown | sei | n/a | 3 deployments: sei [`0x0a4c54...e28ed2`](./contracts/sei-1329/0x0a4c5483111a44fc448111a552d2f87139e28ed2/); sei `0x8f62b4...31b54d`; sei `0xcd628b...cd8931` | ⚠️ Unaudited |
| OrderQueue | unknown | sei | n/a | 2 deployments: sei [`0x4ed643...0ae090`](./contracts/sei-1329/0x4ed6431003e197121629936068c15c1bca0ae090/); sei `0xdeba5c...e34198` | ⚠️ Unaudited |
| Staking | unknown | sei | n/a | [`0x151669...f46bf4`](./contracts/sei-1329/0x151669b501b561a52ad95574603ad52546f46bf4/) | ⚠️ Unaudited |

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
| [spaces/niaC1zjJFz2QDJGHFkFf/uploads/AWE0jZ4hBKIuXyRpFtSk/PeckShield-Audit-Report-SplashingStake-v1.0.pdf](https://2818732251-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FniaC1zjJFz2QDJGHFkFf%2Fuploads%2FAWE0jZ4hBKIuXyRpFtSk%2FPeckShield-Audit-Report-SplashingStake-v1.0.pdf) | PeckShield | Audit | 2025-07 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
