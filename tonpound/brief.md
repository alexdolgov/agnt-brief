# Agentic Audit Brief: Tonpound

## Project Overview

- Project: Tonpound (`tonpound`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.552Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 9 unique implementations (18 raw deployments)
- DeFi Llama TVL: $14,124.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 8 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (ctokeninterface, ctokenstorage, exponentialnoerror). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 18 (16 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/7 (85.7%)
- Deployed-live implementations: 7 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/7
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 9
- Raw deployments: 18
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 85.7% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | unknown | ethereum | n/a | 5 deployments: ethereum [`0x276d2b...cb00de`](./contracts/ethereum-1/0x276d2b35b4204e8c3a5c2b9031ca63e72acb00de/); ethereum `0x6365b2...e43298`; ethereum `0x79ffb8...b8831c`; ethereum `0x8ad447...1bf310`; ethereum `0xc5fa52...5b31c6` | ✅ Audited |
| Comptroller | unknown | ethereum | n/a | [`0x177528...a26803`](./contracts/ethereum-1/0x1775286cbe9db126a95abf52c58a3214fca26803/) | ✅ Audited |
| Comptroller | unknown | ethereum | n/a | [`0x79645e...9fd838`](./contracts/ethereum-1/0x79645effe4dc7df2ecf52e267d56c98d239fd838/) | ✅ Audited |
| CpTonDelegate | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1e048...79267e`](./contracts/ethereum-1/0xc1e048433bdf7ab1d544d878d963e2041779267e/); ethereum `0xd307d7...a55002` | ✅ Audited |
| JumpRateModelV2 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x542050...971444`](./contracts/ethereum-1/0x542050f1e2d616ae3c7dfa799f5ee8df44971444/); ethereum `0x9fb0d4...3ecf77`; ethereum `0xa15b8f...5f6291`; ethereum `0xb71243...8417ed`; ethereum `0xd07037...260488` | ✅ Audited |
| TonpoundPriceOracle | unknown | ethereum | n/a | [`0x7c4290...f745da`](./contracts/ethereum-1/0x7c42901db0e06786266ac86a5929ec9e9ef745da/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TPI | unknown | ethereum | n/a | [`0x5cb172...9f2797`](./contracts/ethereum-1/0x5cb17273bfe227bd791ceee31c9d5db6289f2797/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1eb4aa...0a998a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79ef18...2b4491` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Tonpound Lending.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/Tonpound%20Lending/Tonpound%20Lending.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5cb172...9f2797`](./contracts/ethereum-1/0x5cb17273bfe227bd791ceee31c9d5db6289f2797/) | TPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
