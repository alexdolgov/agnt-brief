# Agentic Audit Brief: Blur

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 93.4% below peak)
- Generated: 2026-06-17T07:00:42.686Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $14,962,620.00
- On-chain TVL (included contracts): $68,532,609.26
- TVL by chain: Ethereum $68,532,609.26

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Blur is an NFT marketplace with bidding and lending components operating on Ethereum and Blast. It enables NFT trading and access to NFT-backed liquidity, with a native token used for governance and incentives.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 21 inactive, 15 singleton, 0 uninitialized.
- Deployment units: 1/9 live.
- Detected codebases: none
- Unverified dependencies: 2/8.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $68,532,609.26
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlurToken | token | ethereum | n/a | [`0x5283d2...208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | ⚠️ Unaudited |
| BlurSwap | proxy | ethereum | unit-19790 | [`0x39da41...d0d541`](./contracts/ethereum-1/0x39da41747a83aee658334415666f3ef92dd0d541/) | ⚠️ Unaudited |

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
