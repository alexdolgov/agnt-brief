# Agentic Audit Brief: Butter Network

## Project Overview

- Project: Butter Network (`butter-network`)
- Website: [https://www.butterswap.io/swap](https://www.butterswap.io/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.011Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: arbitrum, base, blast, klaytn, linea, mantle, merlin, optimism, polygon, scroll, zksync-era
- Contract surface: 12 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,318,173.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 2 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (8 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/8 (100.0%)
- Deployed-live implementations: 8 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/8
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 12
- Raw deployments: 15
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| DeHacker | Tier 2 | 8 | 100.0% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | optimism | n/a | [`0x000031...8f6a56`](./contracts/optimism-10/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | polygon | n/a | [`0x000031...8f6a56`](./contracts/polygon-137/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | mantle | n/a | [`0x000031...8f6a56`](./contracts/mantle-5000/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | base | n/a | [`0x000031...8f6a56`](./contracts/base-8453/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | arbitrum | n/a | [`0x000031...8f6a56`](./contracts/arbitrum-42161/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | linea | n/a | [`0x000031...8f6a56`](./contracts/linea-59144/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| Bridge | operational_periphery | blast | n/a | [`0x000031...8f6a56`](./contracts/blast-81457/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |
| OmniServiceProxy | unknown | scroll | n/a | [`0x000031...8f6a56`](./contracts/scroll-534352/0x0000317bec33af037b5fab2028f52d14658f6a56/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x58a64d...28bbf5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbd8df7...f112a9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdef84c...02fa3d` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 4 deployments: merlin `0x000031...8f6a56`; merlin `0x41d903...fb0f71`; klaytn `0x000031...8f6a56`; klaytn `0xd077a4...3e4fdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Butter Network.pdf](https://github.com/DeHacker-io/audits_public/blob/main/Butter%20Network.pdf) | DeHacker | Audit | 2026-05 | fresh | Direct | contract_name | 8 | high |
| [ButterSwap.pdf](https://github.com/DeHacker-io/audits_public/blob/main/ButterSwap.pdf) | DeHacker | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Butter Network TON.pdf](https://github.com/DeHacker-io/audits_public/blob/main/Butter%20Network%20TON.pdf) | DeHacker | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Zero-match audit list:

- [21340] ButterSwap.pdf
- [21341] Butter Network TON.pdf

Fork inheritance lineage and inherited audits are included when available.
