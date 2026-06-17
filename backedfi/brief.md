# Agentic Audit Brief: BackedFi

## Project Overview

- Project: BackedFi (`backedfi`)
- Website: [https://backed.fi](https://backed.fi)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-17T07:00:50.557Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (10 raw deployments)
- DeFi Llama TVL: $7,767,155.38
- On-chain TVL (included contracts): $31,194,508.50
- TVL by chain: Ethereum $31,194,508.50

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

BackedFi / Backed Finance is a multichain tokenized real-world asset issuer for stocks and ETFs, offering products such as bTokens and xStocks that provide on-chain exposure to traditional financial instruments. Tokens are intended to be backed 1:1 by the corresponding underlying assets held with regulated custodial arrangements.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 10
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $31,194,508.50
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
| BackedTokenImplementation | token | ethereum | unit-19439 (10 proxies) | 10 deployments: ethereum [`0x0f76d3...e17245`](./contracts/ethereum-1/0x0f76d32cdccdcbd602a55af23eaf58fd1ee17245/); ethereum `0x1e2c4f...801d59`; ethereum `0x20c64d...83df7a`; ethereum `0x2f11ee...191b86`; ethereum `0x2f123c...9b45e7`; ethereum `0x3f95aa...9c52c9`; ethereum `0x52d134...fdf9e4`; ethereum `0xade605...995995`; ethereum `0xbbcb03...403ac9`; ethereum `0xca30c9...435fb5` | ⚠️ Unaudited |

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
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
