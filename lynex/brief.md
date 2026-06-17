# Agentic Audit Brief: Lynex

⚠️ Lifecycle status: DECLINING - TVL dropped 20.0% over 90 days

## Project Overview

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.873Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: linea
- Contract surface: 15 unique implementations (22 raw deployments)
- DeFi Llama TVL: $882,387.00
- On-chain TVL (included contracts): $136,059.55
- TVL by chain: Linea $136,059.55

## Project Description

Lynex is a decentralized exchange (DEX) protocol on Linea that enables users to swap tokens, provide liquidity, and earn rewards. It operates across two versions (V1 and V2) with automated market maker (AMM) pools and a veNFT-based governance and incentive system.

### Architecture

Both families share a common veNFT and reward infrastructure (veNFTAPIV2, RewardAPIV2, EpochController) that governs incentives and voting across versions. The V2 family extends V1 with additional API and proxy contracts, while V1 relies on a simpler PairAPI for data access.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 22 (19 live, 3 unknown).
- Excluded by liveness: 48 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 4/26 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 10/26.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 22
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $136,059.55
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $136,059.55 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | linea | n/a | 3 deployments: linea [`0x3cb104...e3f587`](./contracts/linea-59144/0x3cb104f044db23d6513f2a6100a1997fa5e3f587/); linea `0x8e8001...e58ada`; linea `0xe24b4a...5ddb29` | ⚠️ Unaudited |
| AlgebraFactory | registry | linea | n/a | [`0x622b2c...a08d0f`](./contracts/linea-59144/0x622b2c98123d303ae067db4925cd6282b3a08d0f/) | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | linea | n/a | [`0xe8a4c9...ce557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | ⚠️ Unaudited |
| DistributeFees | unknown | linea | unit-23467 | [`0xfa638e...45c469`](./contracts/linea-59144/0xfa638ee72312adf564195c2ae415ec943945c469/) | ⚠️ Unaudited |
| Lynex | unknown | linea | n/a | [`0x1a51b1...71e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/) | ⚠️ Unaudited |
| LynxClaimToken | token | linea | n/a | [`0xf86381...ac645a`](./contracts/linea-59144/0xf86381c8c4bbf3d398571e3d904ec04f12ac645a/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | linea | unit-23450 | [`0x5d3d9e...249e4b`](./contracts/linea-59144/0x5d3d9e20ad27dd61182505230d1bd075bd249e4b/) | ⚠️ Unaudited |
| PairFactory | registry | linea | n/a | 2 deployments: linea [`0x6ed7b9...b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/); linea `0xbc7695...99f9ee` | ⚠️ Unaudited |
| PreMining | unknown | linea | n/a | 2 deployments: linea [`0x0b3a25...67c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/); linea `0xbf05db...d20452` | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | n/a | 4 deployments: linea [`0x04cbfc...34a3fc`](./contracts/linea-59144/0x04cbfc369a40ceb4a91cec53c3afe2922b34a3fc/); linea `0x37d28b...62ac57`; linea `0xa82e62...d68685`; linea `0xb3f6ed...6f1de2` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | linea | n/a | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | ⚠️ Unaudited |
| RouterV2 | adapter | linea | n/a | [`0x610d2f...c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/) | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0x3921e8...583390`](./contracts/linea-59144/0x3921e8cb45b17fc029a0a6de958330ca4e583390/) | ⚠️ Unaudited |
| VoterV5 | unknown | linea | unit-23442 | [`0x0b2c83...3b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/) | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | linea | unit-23454 | [`0x8d95f5...9b4c0c`](./contracts/linea-59144/0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c/) | ⚠️ Unaudited |

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
| linea | [`0xe8a4c9...ce557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1a51b1...71e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/) | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf86381...ac645a`](./contracts/linea-59144/0xf86381c8c4bbf3d398571e3d904ec04f12ac645a/) | LynxClaimToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6ed7b9...b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b3a25...67c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x610d2f...c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
