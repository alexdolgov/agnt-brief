# Agentic Audit Brief: Anthias Labs

## Project Overview

- Project: Anthias Labs (`anthias-labs`)
- Website: [https://anthias.xyz](https://anthias.xyz)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-06-12T13:52:53.907Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: base
- Contract surface: 3 unique implementations (10 raw deployments)
- DeFi Llama TVL: $18,647,606.59
- On-chain TVL (included contracts): $705,349.17
- TVL by chain: Base $705,349.17

## Project Description

Anthias Labs is a boutique on-chain advisory, DeFi risk-management, monitoring, research, and open-source tooling firm. Its public materials support risk curation, system design, advisory, monitoring, and research activity for DeFi systems on Base, including recorded VaultV2 and MetaMorpho contract surfaces, but do not substantiate a general claim that Anthias deploys and manages vaults to optimize yield. The provenance and implementation authorship of the MetaMorpho contracts should remain unresolved unless independently confirmed.

### Architecture

All contracts are deployed under the single Anthias Labs family, with VaultV2 and MetaMorpho contracts likely sharing common risk management logic and infrastructure, though no explicit supporting contracts are identified.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $705,349.17
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV2 | core_logic | base | 5 deployments: base [`0x48a90e...c79965`](./contracts/base-8453/0x48a90e85be5c56b0a669985a12ee7c449fc79965/); base `0x5083b1...3f7c48`; base `0x89bedb...4d6f53`; base `0xbb2f06...d977c9`; base `0xdba76b...09f7a8` | ⚠️ Unaudited |
| MetaMorpho | unknown | base | 4 deployments: base [`0x543257...f5a796`](./contracts/base-8453/0x543257ef2161176d7c8cd90ba65c2d4caef5a796/); base `0xa0e430...3d0ff1`; base `0xc1256a...00a2ca`; base `0xf24608...01a026` | ⚠️ Unaudited |
| Morpho | unknown | base | [`0xbbbbbb...eeffcb`](./contracts/base-8453/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
