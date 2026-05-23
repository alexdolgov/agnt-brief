# Agentic Audit Brief: Privacy Pools

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-23T10:21:01.085Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum, optimism
- Contract surface: 1 unique implementations (3 raw deployments)
- DeFi Llama TVL: $6,662,101.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy Pools is a protocol enabling private transactions on Ethereum, Optimism, and Arbitrum One. It allows users to deposit and withdraw funds while preserving privacy through zero-knowledge proofs.

### Architecture

The protocol consists of a single product family with Entrypoint contracts deployed behind ERC1967Proxy proxies. All contracts share the same deployer and are deployed on multiple chains, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Entrypoint | unknown | optimism | 3 deployments: ethereum `0x681880...526b46`; optimism [`0x441922...25d15e`](./contracts/optimism-10/0x44192215fed782896be2ce24e0bfbf0bf825d15e/); arbitrum [`0x441922...25d15e`](./contracts/arbitrum-42161/0x44192215fed782896be2ce24e0bfbf0bf825d15e/) | ⚠️ Unaudited |

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
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
