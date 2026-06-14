# Agentic Audit Brief: BitU Protocol

## Project Overview

- Project: BitU Protocol (`bitu-protocol`)
- Website: [https://www.bitu.io](https://www.bitu.io)
- Lifecycle: active (Tier 0, 44.1% below peak)
- Generated: 2026-06-14T05:29:23.788Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-39b4
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $19,547,798.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BitU Protocol is a BNB Chain CeDeFi/CDP stablecoin protocol centered on the yield-embedded BITU stablecoin. It supports whitelisted collateralized minting, sBITU staking and yield features, and ALMM/CeDeFi trading functionality. Collateral should be described in plural unless project documentation or contract configuration confirms a single USDT-only collateral model.

### Architecture

The Mint $BITU family provides the token contracts (USDT collateral and BITU stablecoin) that are used by the Smart Contracts family. BitUMinting manages collateral deposits and BITU issuance, while BitUStaking allows users to lock BITU to earn rewards, creating a circular token flow within the protocol.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 60.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 60.0% | 2024-04 |
| unknown | Tier 2 | 3 | 60.0% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BITU | unknown | bsc | [`0x654a32...88e6bd`](./contracts/bsc-56/0x654a32542a84bea7d2c2c1a1ed1aaaf26888e6bd/) | ✅ Audited |
| BitUMinting | unknown | bsc | [`0xa581b5...116f18`](./contracts/bsc-56/0xa581b5b3d007dab450943749e29a677a0d116f18/) | ✅ Audited |
| BitUStaking | unknown | bsc | [`0x61183a...fd76d4`](./contracts/bsc-56/0x61183a27ab5fdacc4d46f5af9eb9e6a93afd76d4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x07c3c3...b57373`](./contracts/bsc-56/0x07c3c3ff0742a985cf15ca5a6b027679c2b57373/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2F5zJ9iSaosjkSWbY1Alkz%2FSlowMist%20Audit%20Report%20-%20BitU527.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://216194945-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj4FiwL05RDG9vbiK6wKb%2Fuploads%2Fx0qHqp82jMYKIQkLrwRp%2FBitU_audit_report_2024-05-27.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
