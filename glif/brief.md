# Agentic Audit Brief: GLIF

## Project Overview

- Project: GLIF (`glif`)
- Website: [https://glif.io](https://glif.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.305Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 5 unique implementations (8 raw deployments)
- DeFi Llama TVL: $24,093,272.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 4 functional families. Its contracts share 8 common project-authored base contract(s) (proxy, ownable2stepupgradeable, ownableupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 8
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Token | token | base | n/a | 2 deployments: base [`0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746`](./contracts/base-8453/0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746/); base `0x9f3f9a5d166e06363cd18b647f2feded4ece0711` | ⚠️ Unaudited |
| Periphery | periphery | base | n/a | 2 deployments: base [`0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082`](./contracts/base-8453/0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082/); base `0x6e7c449df74d3bf55bec96587017273bb3d39488` | ⚠️ Unaudited |
| PeripheryV2 | periphery | base | n/a | [`0x35e1371b87b742a99ab863d3cecf04e73ef1ecff`](./contracts/base-8453/0x35e1371b87b742a99ab863d3cecf04e73ef1ecff/) | ⚠️ Unaudited |
| PeripheryV3 | unknown | base | n/a | 2 deployments: base [`0x5922866c7258bc5a74a03276e9a86d37167019f9`](./contracts/base-8453/0x5922866c7258bc5a74a03276e9a86d37167019f9/); base `0xadf046abce361f30354286f14ff88a610562d11c` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xed236d2f99346a17555f4161b2b099be80024cf0`](./contracts/base-8453/0xed236d2f99346a17555f4161b2b099be80024cf0/) | ⚠️ Unaudited |

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
| [(see report here)](https://docs.glif.io/docs/file/infinity-pool-audit-consensys.pdf) | Consensys Diligence | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [(see report here)](https://docs.glif.io/docs/file/infinity-pool-audit-sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025)](https://hexens.io/audit-reports/glif-lpplus-rwtfuture-contracts-nov-2025) | Hexens | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Hexens - GLIF+ NFT (Aug 2025)](https://hexens.io/audit-reports/glif-glif-plus-nft-aug-2025) | Hexens | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024)](https://hexens.io/audit-reports/glif-infinitypoolv2-agentpolicev2-migration-jul-2024) | Hexens | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746`](./contracts/base-8453/0x4a7c3792995c9f6e0a3fb8d01ecd633c53e53746/) | ERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082`](./contracts/base-8453/0x24d242e7e7c8bf7f022204d94aaf49c76a4ad082/) | Periphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35e1371b87b742a99ab863d3cecf04e73ef1ecff`](./contracts/base-8453/0x35e1371b87b742a99ab863d3cecf04e73ef1ecff/) | PeripheryV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5922866c7258bc5a74a03276e9a86d37167019f9`](./contracts/base-8453/0x5922866c7258bc5a74a03276e9a86d37167019f9/) | PeripheryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xed236d2f99346a17555f4161b2b099be80024cf0`](./contracts/base-8453/0xed236d2f99346a17555f4161b2b099be80024cf0/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20434] (see report here)
- [20435] (see report here)
- [20436] Hexens - GLIF LP+ & RWTFuture Contracts (Nov 2025)
- [20437] Hexens - GLIF+ NFT (Aug 2025)
- [20438] Hexens - InfinityPoolV2 & AgentPoliceV2 Migration (Jul 2024)

Fork inheritance lineage and inherited audits are included when available.
