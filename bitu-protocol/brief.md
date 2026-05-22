# Agentic Audit Brief: BitU Protocol

## Project Overview

- Project: BitU Protocol (`bitu-protocol`)
- Website: [https://www.bitu.io](https://www.bitu.io)
- Lifecycle: active (Tier 0, 34% below peak)
- Generated: 2026-05-22T13:22:47.949Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $23,142,772.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BitU Protocol is a CDP (Collateralized Debt Position) platform on BSC that allows users to mint the BITU stablecoin against USDT collateral and stake BITU to earn rewards.

### Architecture

The Mint $BITU family provides the token contracts (USDT collateral and BITU stablecoin) that are used by the Smart Contracts family. BitUMinting manages collateral deposits and BITU issuance, while BitUStaking allows users to lock BITU to earn rewards, creating a circular token flow within the protocol.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20Token | token | bsc | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BITU | unknown | bsc | [`0x654a32...88e6bd`](./contracts/bsc-56/0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd/) | ⚠️ Unaudited |
| BitUMinting | unknown | bsc | [`0xa581b5...116f18`](./contracts/bsc-56/0xa581b5b3d007dab450943749e29a677a0d116f18/) | ⚠️ Unaudited |
| BitUStaking | unknown | bsc | [`0x61183a...fd76d4`](./contracts/bsc-56/0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4/) | ⚠️ Unaudited |

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
| bsc | [`0x654a32...88e6bd`](./contracts/bsc-56/0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd/) | BITU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa581b5...116f18`](./contracts/bsc-56/0xa581b5b3d007dab450943749e29a677a0d116f18/) | BitUMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x61183a...fd76d4`](./contracts/bsc-56/0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4/) | BitUStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
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
