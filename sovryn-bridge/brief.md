# Agentic Audit Brief: Sovryn Bridge

## Project Overview

- Project: Sovryn Bridge (`sovryn-bridge`)
- Website: [https://alpha.sovryn.app](https://alpha.sovryn.app)
- Lifecycle: active (Tier 0, 85.5% below peak)
- Generated: 2026-06-17T07:00:42.413Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,525,690.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Sovryn Bridge is a cross-chain bridge associated with the Sovryn ecosystem. DefiLlama currently tracks Sovryn Bridge TVL on Ethereum and Binance/BNB Chain, so the protocol surface should not be described as only an Ethereum-to-RSK bridge unless Binance/BNB Chain TVL is explicitly scoped out. The live surface includes proxy and implementation contracts, token allowlist/configuration or risk-control contracts, federation/validator components, governance/admin functionality, and unresolved active contracts that require coverage review.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 48 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSigWallet | governance | ethereum | n/a | [`0x062c74...3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x062c74...3ccd2e`](./contracts/ethereum-1/0x062c74f9d27b1178bb76186c1756128ccb3ccd2e/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
