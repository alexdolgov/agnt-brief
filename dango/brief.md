# Agentic Audit Brief: Dango

## Project Overview

- Project: Dango (`dango`)
- Website: [https://dango.exchange/](https://dango.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.781Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $2,251,931.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
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
| HypERC20Collateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd05909852ae07118857f9d071781671d12c0f36c`](./contracts/ethereum-1/0xd05909852ae07118857f9d071781671d12c0f36c/); ethereum `0xe071653043828c9923c79b04b077358d94fc84f9` | ⚠️ Unaudited |
| HypNative | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9d0ea335355da17ee89e50df43ab823416cf73d4`](./contracts/ethereum-1/0x9d0ea335355da17ee89e50df43ab823416cf73d4/); ethereum `0x9d259aa1ec7324c7433b89d2935b08c30f3154cb` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x613942eff27c6886bb2a33a172cdaf03a009e601`](./contracts/ethereum-1/0x613942eff27c6886bb2a33a172cdaf03a009e601/); ethereum `0x947303e34c1a2b97fb00c68c1cc4ca97b3361fe6` | ⚠️ Unaudited |

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
| [audits.sherlock.xyz/contests/1066](https://audits.sherlock.xyz/contests/1066) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [informal.systems/blog/jellyfish-merkle-tree-quint-2025](https://informal.systems/blog/jellyfish-merkle-tree-quint-2025) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd05909852ae07118857f9d071781671d12c0f36c`](./contracts/ethereum-1/0xd05909852ae07118857f9d071781671d12c0f36c/) | HypERC20Collateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d0ea335355da17ee89e50df43ab823416cf73d4`](./contracts/ethereum-1/0x9d0ea335355da17ee89e50df43ab823416cf73d4/) | HypNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2639] audits.sherlock.xyz/contests/1066
- [14306] informal.systems/blog/jellyfish-merkle-tree-quint-2025

Fork inheritance lineage and inherited audits are included when available.
