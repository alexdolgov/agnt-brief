# Agentic Audit Brief: Akropolis

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Akropolis (`akropolis`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:52:58.127Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,341.55
- On-chain TVL (included contracts): $49,014.17
- TVL by chain: Ethereum $49,014.17

## Project Description

Yield. Structurally: 35 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (baseadminupgradeabilityproxy, module, base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 6 (2 live, 4 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $49,014.17
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $49,014.17 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AkropolisToken | token | ethereum | n/a | [`0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7`](./contracts/ethereum-1/0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | [`0x3501ec11d205fa249f2c42f5470e137b529b35d0`](./contracts/ethereum-1/0x3501ec11d205fa249f2c42f5470e137b529b35d0/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0815425f6a333b92d49b088aea2290418fa7b907` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d0956c76bed91dabef10bbf21b41605f3d7cd18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ea8a1cecb04e50d2eeb123e1969b65dd4666bea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x739c1345c6aeaa9156cb937e99d3bedaafa87e1b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Xtropy-Audit.pdf](https://github.com/akropolisio/vortex/blob/development/audit/Xtropy-Audit.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7`](./contracts/ethereum-1/0x8ab7404063ec4dbcfd4598215992dc3f8ec853d7/) | AkropolisToken | token | $48,515.47 | Verified native implementation with $48,515.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3501ec11d205fa249f2c42f5470e137b529b35d0`](./contracts/ethereum-1/0x3501ec11d205fa249f2c42f5470e137b529b35d0/) | StakingPool | core_logic | $498.70 | Verified native implementation with $498.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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

- [12630] Xtropy-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
