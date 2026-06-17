# Agentic Audit Brief: Credbull

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Credbull (`credbull`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-17T07:00:36.414Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, polygon
- Contract surface: 11 unique implementations (15 raw deployments)
- DeFi Llama TVL: $10,940,088.68
- On-chain TVL (included contracts): $1,829.86
- TVL by chain: Arbitrum $1,829.86

## Project Description

Credbull is a DeFi protocol offering fixed-yield vaults that allow users to deposit assets and earn predictable returns. DefiLlama indicates a broader current chain scope than the verified contract surface represented here; this brief's verified contract surface covers the recognized Polygon and Arbitrum chain IDs only.

### Architecture

The Credbull family uses a single VaultLib implementation behind multiple VaultProxy instances, sharing a GlobalConfig for parameters and a ProtocolFeeReserve for fee collection. The FundValueCalculator supports vault accounting, while the GatedRedemptionQueueSharesWrapper manages share redemptions.

## Contract Surface Quality

- Indexed contracts: 128; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 104 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 19/28.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,829.86
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,829.86 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CredbullFixedYieldVault | core_logic | arbitrum | n/a | 4 deployments: arbitrum [`0x096227...c72874`](./contracts/arbitrum-42161/0x096227660b27e612f31838645cc3ad213cc72874/); arbitrum `0xace0d7...ce5516`; arbitrum `0xc0c1da...b7403f`; arbitrum `0xe4a4d8...e76b91` | ⚠️ Unaudited |
| CBL | unknown | arbitrum | n/a | [`0xd6b3d8...b95cb6`](./contracts/arbitrum-42161/0xd6b3d81868770083307840f513a3491960b95cb6/) | ⚠️ Unaudited |
| DepositWrapper | unknown | polygon | n/a | [`0x2baa64...e82c87`](./contracts/polygon-137/0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87/) | ⚠️ Unaudited |
| FundDeployer | unknown | polygon | n/a | [`0x188d35...12284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | polygon | n/a | 2 deployments: polygon [`0xcee23e...3a53f3`](./contracts/polygon-137/0xcee23e8c2edb19af09ec3405f7b95484d43a53f3/); polygon `0xe6ae7b...69586f` | ⚠️ Unaudited |
| IntegrationManager | governance | polygon | n/a | [`0x92fcde...a0884b`](./contracts/polygon-137/0x92fcde09790671cf085864182b9670c77da0884b/) | ⚠️ Unaudited |
| ManualValueOracleFactory | operational_periphery | polygon | n/a | [`0x735615...c4354f`](./contracts/polygon-137/0x735615beb04bfd3665f06541ea00af1860c4354f/) | ⚠️ Unaudited |
| PolicyManager | governance | polygon | n/a | [`0x5a8ee0...f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | ⚠️ Unaudited |
| UnpermissionedActionsWrapper | unknown | polygon | n/a | [`0x1648cc...d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | ⚠️ Unaudited |
| VaultProxy | core_logic | polygon | n/a | [`0x2eda17...8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | ⚠️ Unaudited |
| ZeroExV4Adapter | adapter | polygon | n/a | [`0xce663e...f1448a`](./contracts/polygon-137/0xce663e0ae43f5bf213207a6f0a16dad7c8f1448a/) | ⚠️ Unaudited |

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
| arbitrum | [`0x096227...c72874`](./contracts/arbitrum-42161/0x096227660b27e612f31838645cc3ad213cc72874/) | CredbullFixedYieldVault | core_logic | $1,829.86 | Verified native implementation with $1,829.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd6b3d8...b95cb6`](./contracts/arbitrum-42161/0xd6b3d81868770083307840f513a3491960b95cb6/) | CBL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2baa64...e82c87`](./contracts/polygon-137/0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87/) | DepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x188d35...12284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | FundDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x735615...c4354f`](./contracts/polygon-137/0x735615beb04bfd3665f06541ea00af1860c4354f/) | ManualValueOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a8ee0...f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | PolicyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1648cc...d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | UnpermissionedActionsWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2eda17...8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
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
