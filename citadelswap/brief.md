# Agentic Audit Brief: CitadelSwap

## Project Overview

- Project: CitadelSwap (`citadelswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.281Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $3,768.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| CitadelMaster | unknown | base | n/a | [`0x75776c...f85237`](./contracts/base-8453/0x75776c547d312eba17c9461fd5c10ba6c2f85237/) | ⚠️ Unaudited |
| CitadelRouter | adapter | base | n/a | [`0x112f3f...3e4234`](./contracts/base-8453/0x112f3f5ce89a46b9d7e18131e8e7cdde313e4234/) | ⚠️ Unaudited |
| CitadelToken | token | base | n/a | [`0x723306...8d0898`](./contracts/base-8453/0x7233062d88133b5402d39d62bfa23a1b6c8d0898/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x4076f3...9b27fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf3700...4d088f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_CitadelSwap_AMM.pdf](https://github.com/solidproof/projects/blob/main/2023/CitadelSwap/SmartContract_Audit_Solidproof_CitadelSwap_AMM.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x75776c...f85237`](./contracts/base-8453/0x75776c547d312eba17c9461fd5c10ba6c2f85237/) | CitadelMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x112f3f...3e4234`](./contracts/base-8453/0x112f3f5ce89a46b9d7e18131e8e7cdde313e4234/) | CitadelRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x723306...8d0898`](./contracts/base-8453/0x7233062d88133b5402d39d62bfa23a1b6c8d0898/) | CitadelToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12911] SmartContract_Audit_Solidproof_CitadelSwap_AMM.pdf

Fork inheritance lineage and inherited audits are included when available.
