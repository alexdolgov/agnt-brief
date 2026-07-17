# Agentic Audit Brief: Gridex

## Project Overview

- Project: Gridex (`gridex`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.028Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $52,290.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 2 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (abstractpayments, abstractselfpermit2612, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 20.0% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GridFactory | unknown | base | n/a | [`0x32d1f0dce675902f89d72251db4ab1d728efa19c`](./contracts/base-8453/0x32d1f0dce675902f89d72251db4ab1d728efa19c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregateMulticall | unknown | base | n/a | [`0xdb36980c07ba859613c786caa69ceba2b5306595`](./contracts/base-8453/0xdb36980c07ba859613c786caa69ceba2b5306595/) | ⚠️ Unaudited |
| GDX | unknown | arbitrum | n/a | [`0x2f27118e3d2332afb7d165140cf1bb127ea6975d`](./contracts/arbitrum-42161/0x2f27118e3d2332afb7d165140cf1bb127ea6975d/) | ⚠️ Unaudited |
| Quoter | unknown | base | n/a | [`0x320c95b7e5728dae3e3ead997494c029d16e69a3`](./contracts/base-8453/0x320c95b7e5728dae3e3ead997494c029d16e69a3/) | ⚠️ Unaudited |
| SwapRouterHub | adapter | base | n/a | [`0x426b751aba5f49914bfbd4a1e45aee099d757733`](./contracts/base-8453/0x426b751aba5f49914bfbd4a1e45aee099d757733/) | ⚠️ Unaudited |

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
| [CertiK-Audit-for-Gridex.pdf](https://github.com/GridexProtocol/core/blob/main/audits/certik/CertiK-Audit-for-Gridex.pdf) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xdb36980c07ba859613c786caa69ceba2b5306595`](./contracts/base-8453/0xdb36980c07ba859613c786caa69ceba2b5306595/) | AggregateMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f27118e3d2332afb7d165140cf1bb127ea6975d`](./contracts/arbitrum-42161/0x2f27118e3d2332afb7d165140cf1bb127ea6975d/) | GDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x320c95b7e5728dae3e3ead997494c029d16e69a3`](./contracts/base-8453/0x320c95b7e5728dae3e3ead997494c029d16e69a3/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x426b751aba5f49914bfbd4a1e45aee099d757733`](./contracts/base-8453/0x426b751aba5f49914bfbd4a1e45aee099d757733/) | SwapRouterHub | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
