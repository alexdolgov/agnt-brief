# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-06-12T04:53:04.747Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 19 unique implementations (31 raw deployments)
- DeFi Llama TVL: $1,389,064.00
- On-chain TVL (included contracts): $21,983,584.15
- TVL by chain: Ethereum $21,983,584.15

## Project Description

HOPE Money is an all-in-one DeFi ecosystem featuring HOPE, a crypto-native distributed stablecoin, with related stablecoin and ecosystem components across its supported deployment surface.

### Architecture

The liquid staking family provides RockXETH, which can be restaked for rewards. BTC-backed tokens rely on vaults and rate oracles, and cross-chain infrastructure enables movement of these assets across networks.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 31
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,983,584.15
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RockXETH | token | ethereum | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | [`0xcee234...f71318`](./contracts/ethereum-1/0xcee234eed85eac4fe9f040fbeac5df10eaf71318/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x088117...5ca866`](./contracts/ethereum-1/0x088117ed2b7ac7ae1801fac4f359e1aed95ca866/) | ⚠️ Unaudited |
| HopeLendEcosystemReserve | unknown | ethereum | 2 deployments: ethereum [`0x4de8cb...d6f3b4`](./contracts/ethereum-1/0x4de8cb2b7997989e0df45ee50535f03c2ad6f3b4/); ethereum `0xfa4200...802fe2` | ⚠️ Unaudited |
| HopeLendEcosystemReserveController | governance | ethereum | [`0x3b6777...a00232`](./contracts/ethereum-1/0x3b6777f82ff45932a57986002f90ecde94a00232/) | ⚠️ Unaudited |
| HopeLendProtocolDataProvider | unknown | ethereum | [`0x17b589...3c0ad4`](./contracts/ethereum-1/0x17b5896703b36879a037aa94f08622ab113c0ad4/) | ⚠️ Unaudited |
| HopeOracle | unknown | ethereum | [`0x231118...8d9b21`](./contracts/ethereum-1/0x231118439630f93f8a12a2faa66e95db138d9b21/) | ⚠️ Unaudited |
| HToken | token | ethereum | 7 deployments: ethereum [`0x1fc2dd...2c9386`](./contracts/ethereum-1/0x1fc2dd0dcb64e0159b0474cfe6e45985522c9386/); ethereum `0x25126f...403907`; ethereum `0x396856...a4323e`; ethereum `0x58792e...f74d90`; ethereum `0x5dd30e...303572`; ethereum `0x6090f3...51b749`; ethereum `0xb3cc0a...334e62` | ⚠️ Unaudited |
| LendingGauge | operational_periphery | ethereum | 5 deployments: ethereum [`0x2ec5b2...2d0826`](./contracts/ethereum-1/0x2ec5b2663c1cb0fb94440bdf6232eea2622d0826/); ethereum `0x8987cd...138f9b`; ethereum `0xa37928...ff408a`; ethereum `0xd368f5...2a2213`; ethereum `0xd5d39d...edd9e8` | ⚠️ Unaudited |
| Pool | unknown | ethereum | 2 deployments: ethereum [`0x3a6d9b...95be74`](./contracts/ethereum-1/0x3a6d9bf8286a4ada77c15ecf82d4c0c0af95be74/); ethereum `0x53fbca...5f9030` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | ethereum | [`0xe94a20...489b7d`](./contracts/ethereum-1/0xe94a20ef25d067743b9d965a8d46c1c035489b7d/) | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | [`0x71a028...514385`](./contracts/ethereum-1/0x71a0289684a6009f2d07636cacfc103e9f514385/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | ethereum | [`0x4173d5...54a875`](./contracts/ethereum-1/0x4173d500767f712042c0bf2a6395d5e33254a875/) | ⚠️ Unaudited |
| StakingHOPE | unknown | ethereum | [`0xf5c6d9...9fd4d8`](./contracts/ethereum-1/0xf5c6d9fc73991f687f158fe30d4a77691a9fd4d8/) | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | ethereum | [`0x0e8b2b...32bdb2`](./contracts/ethereum-1/0x0e8b2b2014bed8724fe984644531c1d57032bdb2/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | [`0x219bd2...5051e9`](./contracts/ethereum-1/0x219bd2d1449f3813c01204ee455d11b41d5051e9/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | [`0xe909f3...b67400`](./contracts/ethereum-1/0xe909f37f3003fa37aad83c1baf2a98e5a7b67400/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | [`0xf24586...cc06e6`](./contracts/ethereum-1/0xf2458630b18c2b8a9429d82d5e25f6119ecc06e6/) | ⚠️ Unaudited |
| WrappedTokenGateway | token | ethereum | [`0x9a665c...f4cda6`](./contracts/ethereum-1/0x9a665c32b9bf70d6de23596f6e22093f82f4cda6/) | ⚠️ Unaudited |

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
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
