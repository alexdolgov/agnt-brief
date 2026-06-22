# Agentic Audit Brief: CitadelSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 13.5% over 90 days

## Project Overview

- Project: CitadelSwap (`citadelswap`)
- Lifecycle: declining (Tier 0, 99.7% below peak)
- Generated: 2026-06-19T19:37:21.646Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: base
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $3,848.69
- On-chain TVL (included contracts): $347,430.18
- TVL by chain: Base $347,430.18

## Project Description

CitadelSwap is a decentralized exchange (DEX) protocol on Base that enables users to trade tokens via automated market-making (AMM) pools. It appears to be a Uniswap V2 fork, providing liquidity pools and a native token for governance or incentives.

### Architecture

The protocol consists of a single product family centered around the CitadelToken, which likely serves as the incentive and governance token for the DEX. All 16 contracts are deployed by the same deployer, indicating a unified, self-contained system with no external dependencies.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $347,430.18
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $347,430.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CitadelToken | token | base | n/a | [`0x723306...8d0898`](./contracts/base-8453/0x7233062d88133b5402d39d62bfa23a1b6c8d0898/) | ⚠️ Unaudited |
| CitadelMaster | unknown | base | n/a | [`0x75776c...f85237`](./contracts/base-8453/0x75776c547d312eba17c9461fd5c10ba6c2f85237/) | ⚠️ Unaudited |
| CitadelRouter | adapter | base | n/a | [`0x112f3f...3e4234`](./contracts/base-8453/0x112f3f5ce89a46b9d7e18131e8e7cdde313e4234/) | ⚠️ Unaudited |

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
| [SmartContract_Audit_Solidproof_CitadelSwap_AMM.pdf](https://github.com/solidproof/projects/blob/main/2023/CitadelSwap/SmartContract_Audit_Solidproof_CitadelSwap_AMM.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x723306...8d0898`](./contracts/base-8453/0x7233062d88133b5402d39d62bfa23a1b6c8d0898/) | CitadelToken | token | $347,430.18 | Verified native implementation with $347,430.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x75776c...f85237`](./contracts/base-8453/0x75776c547d312eba17c9461fd5c10ba6c2f85237/) | CitadelMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x112f3f...3e4234`](./contracts/base-8453/0x112f3f5ce89a46b9d7e18131e8e7cdde313e4234/) | CitadelRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
