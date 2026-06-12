# Agentic Audit Brief: SQD.ai

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: SQD.ai (`sqd.ai`)
- Website: [https://www.sqd.ai/](https://www.sqd.ai/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-12T16:24:34.760Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 28 unique implementations (58 raw deployments)
- DeFi Llama TVL: $23,178,666.40
- On-chain TVL (included contracts): $1,580,762.74
- TVL by chain: Bsc $1,580,762.74

## Project Description

SQD.ai is a decentralized indexing and querying protocol that enables developers to build and deploy data pipelines across multiple blockchains. It uses a network of workers and staking mechanisms to provide scalable, trustless access to on-chain data.

### Architecture

The SQD token is the central asset used across staking, worker registration, and cross-chain bridges. The Router and GatewayRegistry contracts serve as shared infrastructure for bridging, while FiatTokenProxy integrates USDC for payment flows within the indexing ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 28
- Raw deployments: 58
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PeerToken | token | bsc | [`0xe50e3d...7fcc13`](./contracts/bsc-56/0xe50e3d1a46070444f44df911359033f2937fcc13/) | ⚠️ Unaudited |
| AllocationsViewer | periphery | arbitrum | 2 deployments: arbitrum [`0x88ce6d...c15c4c`](./contracts/arbitrum-42161/0x88ce6d8d70df9fe049315fd9d6c3d59108c15c4c/); arbitrum `0xa99020...6d78f5` | ⚠️ Unaudited |
| DistributedRewardsDistribution | unknown | arbitrum | 3 deployments: arbitrum [`0x4de282...362aea`](./contracts/arbitrum-42161/0x4de282bd18ae4987b3070f4d5ef8c80756362aea/); arbitrum `0xa0780e...764f74`; arbitrum `0xab690d...376d8f` | ⚠️ Unaudited |
| EqualStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x17cdf7...206d84`](./contracts/arbitrum-42161/0x17cdf76366d0576b9660a4e4de2fe4c46e206d84/); arbitrum `0xa604f8...277f8b` | ⚠️ Unaudited |
| FeeRouterModule | adapter | arbitrum | [`0x59c074...92a787`](./contracts/arbitrum-42161/0x59c074ee3dd85125620b4a5b452c008bc792a787/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GatewayRegistry | registry | arbitrum | 5 deployments: arbitrum [`0x17776c...a2c7ca`](./contracts/arbitrum-42161/0x17776c473d94d6910d66ff69656825051ea2c7ca/); arbitrum `0x259112...df2152`; arbitrum `0x2cc72e...a3ce5f`; arbitrum `0x8a90a1...eb8c4b`; arbitrum `0xa20ee6...5adc58` | ⚠️ Unaudited |
| LinearToSqrtCap | unknown | arbitrum | [`0x0eb27b...616545`](./contracts/arbitrum-42161/0x0eb27b1cbba04698dd7ce0f2364584d33a616545/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x59eae7...86c0d4`](./contracts/arbitrum-42161/0x59eae72ddfc99851acd1a766d4e2eb5e8686c0d4/); arbitrum `0x703928...e69f55` | ⚠️ Unaudited |
| NetworkController | governance | arbitrum | 5 deployments: arbitrum [`0x159550...b88847`](./contracts/arbitrum-42161/0x159550d2589cff1ff604af715130642256b88847/); arbitrum `0x4cf580...4f0da7`; arbitrum `0xd03b4e...d5768b`; arbitrum `0xe57c18...ca7f99`; arbitrum `0xf5462e...82d68d` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | [`0xd4554b...9b3e78`](./contracts/base-8453/0xd4554bea546efa83c1e6b389ecac40ea999b3e78/) | ⚠️ Unaudited |
| PortalPoolFactory | registry | arbitrum | 2 deployments: arbitrum [`0x181847...5f2c70`](./contracts/arbitrum-42161/0x18184740ebe24881355e33cec620c44e575f2c70/); arbitrum `0xce5d79...ae0351` | ⚠️ Unaudited |
| PortalPoolImplementation | core_logic | arbitrum | 4 deployments: arbitrum [`0x16983f...d4e568`](./contracts/arbitrum-42161/0x16983f5a5816d4b04c92ab43fed3b2f212d4e568/); arbitrum `0x2981e6...38b3c4`; arbitrum `0x438c2a...386d09`; arbitrum `0x89ca93...4542db` | ⚠️ Unaudited |
| PortalRegistry | unknown | arbitrum | 2 deployments: arbitrum [`0x29ede9...812850`](./contracts/arbitrum-42161/0x29ede9eb0ad3c02b6a98b0e41bf99cd709812850/); arbitrum `0xc3725b...bc3045` | ⚠️ Unaudited |
| RewardCalculation | unknown | arbitrum | 2 deployments: arbitrum [`0xd3d2c1...516eb5`](./contracts/arbitrum-42161/0xd3d2c185a30484641c07b60e7d952d7b85516eb5/); arbitrum `0xfa4727...aa2082` | ⚠️ Unaudited |
| RewardTreasury | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x237abf...a8a2a0`](./contracts/arbitrum-42161/0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0/); arbitrum `0xce1f5a...9af27c` | ⚠️ Unaudited |
| Router | adapter | arbitrum | 4 deployments: arbitrum [`0x0afe1d...867099`](./contracts/arbitrum-42161/0x0afe1dc5892eff2c7cc059479049f831e0867099/); arbitrum `0x3b88a5...67e492`; arbitrum `0x4a7c41...ae86aa`; arbitrum `0x67f56d...9da941` | ⚠️ Unaudited |
| SoftCap | unknown | arbitrum | 2 deployments: arbitrum [`0x635143...cc5bad`](./contracts/arbitrum-42161/0x6351431fb7a55013daa5427d55ee09693ccc5bad/); arbitrum `0xde29d5...4c87d0` | ⚠️ Unaudited |
| SQD | unknown | ethereum | 2 deployments: ethereum [`0x133742...6f8ab1`](./contracts/ethereum-1/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/); arbitrum [`0x133742...6f8ab1`](./contracts/arbitrum-42161/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | 2 deployments: arbitrum [`0xb31a0d...ac9a51`](./contracts/arbitrum-42161/0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51/); arbitrum `0xd2dcb9...f895f5` | ⚠️ Unaudited |
| SubequalStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x554df4...6e61a2`](./contracts/arbitrum-42161/0x554df4ad609d08ec913f9ad2ce2cc4a85a6e61a2/); arbitrum `0xf19709...66ab62` | ⚠️ Unaudited |
| TemporaryHoldingFactory | registry | arbitrum | 2 deployments: arbitrum [`0x14926e...4d8d0d`](./contracts/arbitrum-42161/0x14926ebf05a904b8e2e2bf05c10ecca9a54d8d0d/); arbitrum `0xf83ac4...f122c1` | ⚠️ Unaudited |
| VestingFactory | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x1f8f83...4e4ece`](./contracts/arbitrum-42161/0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece/); arbitrum `0x7508bc...25816c` | ⚠️ Unaudited |
| WorkerRegistration | unknown | arbitrum | 2 deployments: arbitrum [`0x36e2b1...fcae4e`](./contracts/arbitrum-42161/0x36e2b147db67e76ab67a4d07c293670ebefcae4e/); arbitrum `0x6a5659...971ad4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xa9d1e0...1d3e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x365709...2d8306` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf7b057...7d8cc4` | ❓ Unverified |

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
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
