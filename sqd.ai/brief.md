# Agentic Audit Brief: SQD.ai

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: SQD.ai (`sqd.ai`)
- Website: [https://www.sqd.ai/](https://www.sqd.ai/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T06:14:42.024Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 15 unique implementations (16 raw deployments)
- DeFi Llama TVL: $23,178,666.40
- On-chain TVL (included contracts): $1,580,762.74
- TVL by chain: Bsc $1,580,762.74

## Project Description

SQD.ai is a decentralized indexing and querying protocol that enables developers to build and deploy data pipelines across multiple blockchains. It uses a network of workers and staking mechanisms to provide scalable, trustless access to on-chain data.

### Architecture

The SQD token is the central asset used across staking, worker registration, and cross-chain bridges. The Router and GatewayRegistry contracts serve as shared infrastructure for bridging, while FiatTokenProxy integrates USDC for payment flows within the indexing ecosystem.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 16 (14 live, 2 unknown).
- Excluded by liveness: 26 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 1/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,580,762.74
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,580,762.74 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PeerToken | token | bsc | n/a | [`0xe50e3d...7fcc13`](./contracts/bsc-56/0xe50e3d1a46070444f44df911359033f2937fcc13/) | ⚠️ Unaudited |
| DistributedRewardsDistribution | unknown | arbitrum | n/a | [`0x4de282...362aea`](./contracts/arbitrum-42161/0x4de282bd18ae4987b3070f4d5ef8c80756362aea/) | ⚠️ Unaudited |
| FeeRouterModule | adapter | arbitrum | n/a | [`0x59c074...92a787`](./contracts/arbitrum-42161/0x59c074ee3dd85125620b4a5b452c008bc792a787/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-39213 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| NetworkController | governance | arbitrum | n/a | [`0xf5462e...82d68d`](./contracts/arbitrum-42161/0xf5462ef65ca8a9cca789c912bc8ada80b582d68d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd4554b...9b3e78`](./contracts/base-8453/0xd4554bea546efa83c1e6b389ecac40ea999b3e78/) | ⚠️ Unaudited |
| RewardTreasury | operational_periphery | arbitrum | n/a | [`0x237abf...a8a2a0`](./contracts/arbitrum-42161/0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0/) | ⚠️ Unaudited |
| SQD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133742...6f8ab1`](./contracts/ethereum-1/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/); arbitrum [`0x133742...6f8ab1`](./contracts/arbitrum-42161/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xb31a0d...ac9a51`](./contracts/arbitrum-42161/0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | arbitrum | n/a | [`0x1f8f83...4e4ece`](./contracts/arbitrum-42161/0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece/) | ⚠️ Unaudited |
| WorkerRegistration | unknown | arbitrum | n/a | [`0x36e2b1...fcae4e`](./contracts/arbitrum-42161/0x36e2b147db67e76ab67a4d07c293670ebefcae4e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa9d1e0...1d3e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x365709...2d8306` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7b057...7d8cc4` | ❓ Unverified |

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
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
