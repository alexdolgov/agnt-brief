# Agentic Audit Brief: RocketSwap Base

## Project Overview

- Project: RocketSwap Base (`rocketswap-base`)
- Website: [https://app.rocketswap.cc/exchange/swap](https://app.rocketswap.cc/exchange/swap)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:47.552Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $357,127.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Multicall2 | unknown | base | n/a | [`0x85dde5...3abc0e`](./contracts/base-8453/0x85dde545bbb76a4ed954c9525426cb2a283abc0e/) | ⚠️ Unaudited |
| Multicall3 | unknown | base | n/a | [`0x74f477...98e099`](./contracts/base-8453/0x74f477c907730eedea4274f5ed26b5ad7f98e099/) | ⚠️ Unaudited |
| RcktLocker | unknown | base | n/a | [`0x234ccb...633a96`](./contracts/base-8453/0x234ccb5c64fdb3958c47e8efbe122b2d54633a96/) | ⚠️ Unaudited |
| RcktMasterChef | unknown | base | n/a | [`0x304063...f6eaff`](./contracts/base-8453/0x304063953727b53048500dfd877a17d1c4f6eaff/) | ⚠️ Unaudited |
| RcktVault | unknown | base | n/a | [`0x2ec62d...458a3c`](./contracts/base-8453/0x2ec62d08277ffc42eb5af71c7595c1a9f9458a3c/) | ⚠️ Unaudited |
| RocketSwapToken | unknown | base | n/a | [`0x6653dd...2eec09`](./contracts/base-8453/0x6653dd4b92a0e5bf8ae570a98906d9d6fd2eec09/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | base | n/a | [`0x1b8128...ff99fc`](./contracts/base-8453/0x1b8128c3a1b7d20053d10763ff02466ca7ff99fc/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | base | n/a | [`0x4cf760...1b306e`](./contracts/base-8453/0x4cf76043b3f97ba06917cbd90f9e3a2aac1b306e/) | ⚠️ Unaudited |

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
| [SmartContract_Audit_Solidproof_RocketSwap.pdf](https://github.com/solidproof/projects/blob/main/2023/RocketSwap/SmartContract_Audit_Solidproof_RocketSwap.pdf) | SolidProof | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21438] SmartContract_Audit_Solidproof_RocketSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
