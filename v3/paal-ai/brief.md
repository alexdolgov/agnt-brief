# Agentic Audit Brief: PAAL AI

## Project Overview

- Project: PAAL AI (`paal-ai`)
- Website: [https://www.paal.ai/](https://www.paal.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.913Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $832,540.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Telegram Bot. Structurally: 3 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PAALAI | unknown | ethereum | n/a | [`0x14fee6...d10e16`](./contracts/ethereum-1/0x14fee680690900ba0cccfc76ad70fd1b95d10e16/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x163ad6...942d7b`](./contracts/ethereum-1/0x163ad6ac78ffe40e194310faeada8f6615942d7b/); ethereum `0x843106...80894f`; ethereum `0x85e253...69d624` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x2a6c34...a9259f`](./contracts/ethereum-1/0x2a6c340bcbb0a79d3deecd3bc5cbc2605ea9259f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x4a24d5...2544bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/paal-ai](https://skynet.certik.com/projects/paal-ai) | CertiK | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21358] skynet.certik.com/projects/paal-ai

Fork inheritance lineage and inherited audits are included when available.
