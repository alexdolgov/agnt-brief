# Agentic Audit Brief: T RIZE

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:00.927Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): $15,005,448.61
- TVL by chain: Base $15,005,448.61

## Project Description

T-RIZE is an institutional-grade real-world asset (RWA) tokenization platform/infrastructure. Its broader platform describes tokenization of assets such as bonds, ETFs, funds, real estate, and commodities, including Canton-based infrastructure and decentralized machine-learning enhancements. The currently documented DefiLlama-tracked EVM surface is limited to the RizeToken contract on Base; this should not be interpreted as the entirety of the broader T-RIZE infrastructure or as confirmed evidence of fractional ownership or claims on underlying assets.

### Architecture

The protocol consists of a single product family with one core token contract; there are no additional families or shared infrastructure to relate.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (0 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,005,448.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RizeToken | token | base | n/a | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | ⚠️ Unaudited |
| AccessList | unknown | base | n/a | [`0x136a42...ae87c9`](./contracts/base-8453/0x136a429bee94a5a02240ff74023b46347cae87c9/) | ⚠️ Unaudited |
| BaseRizeMintBurnPool | core_logic | base | n/a | [`0xd4d129...8e16a0`](./contracts/base-8453/0xd4d129df31bf9d9ef7ff030adf984f3d028e16a0/) | ⚠️ Unaudited |
| GovernanceBonding | unknown | base | n/a | [`0x5a1340...ed26ee`](./contracts/base-8453/0x5a134098bdbeb05da9eac35439c5624547ed26ee/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | base | n/a | [`0x6426fd...873a98`](./contracts/base-8453/0x6426fd15a8531bf53d13d74e697e0c0d4c873a98/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | base | n/a | [`0x6f6c37...731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | ⚠️ Unaudited |
| UnallocatedVesting | unknown | base | n/a | [`0xad12b1...6f5f2d`](./contracts/base-8453/0xad12b1421d14130633700af043445115d16f5f2d/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | base | n/a | [`0x9525df...241e7b`](./contracts/base-8453/0x9525df984b7062c7c0fb103bc745467396241e7b/) | ⚠️ Unaudited |

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
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
