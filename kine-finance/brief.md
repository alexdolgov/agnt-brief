# Agentic Audit Brief: Kine Finance

⚠️ Lifecycle status: DECLINING - TVL changed 12.0% over 90 days

## Project Overview

- Project: Kine Finance (`kine-finance`)
- Lifecycle: declining (Tier 0, 95.8% below peak)
- Generated: 2026-06-17T07:00:43.026Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 7 unique implementations (15 raw deployments)
- DeFi Llama TVL: $964,569.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kine Finance is a liquidity-pool-backed derivatives trading protocol. Its current project identity should be described around derivatives trading and liquidity pools, consistent with DefiLlama. Compound-style kToken/KErc20Delegator contracts, where present, should be treated as legacy or implementation-level collateral/accounting components rather than the core product purpose.

### Architecture

The protocol consists of a single product family where Unitroller proxies delegate governance logic to ControllerV2 implementations, and KMCDDelegator proxies use KMCDDelegate for stablecoin market operations. KEther contracts handle ETH-specific markets, while the Kine token likely serves as a governance or incentive token across deployments.

## Contract Surface Quality

- Indexed contracts: 170; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 88 inactive, 67 singleton, 0 uninitialized.
- Deployment units: 2/35 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 24; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ControllerV2 | governance | ethereum | unit-26637 | [`0xbb7d94...fd1a92`](./contracts/ethereum-1/0xbb7d94a423f4978545ecf73161f0678e8afd1a92/) | ⚠️ Unaudited |
| KEther | unknown | avalanche | n/a | 4 deployments: ethereum `0xa58e82...d35780`; bsc `0x5fbe4e...60b055`; polygon `0xf186a6...2425f9`; avalanche [`0x0544be...a2fc39`](./contracts/avalanche-43114/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | ⚠️ Unaudited |
| Kine | unknown | polygon | n/a | 3 deployments: ethereum `0xcbfef8...85f05d`; bsc `0xbfa9df...752d7f`; polygon [`0xa9c174...6ccd87`](./contracts/polygon-137/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/) | ⚠️ Unaudited |
| KineExchangeTreasury | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x1568a7...59eba3`](./contracts/bsc-56/0x1568a7f0bdf67d37dc963c345dbc4a598859eba3/); polygon `0x1d903b...32a19f` | ⚠️ Unaudited |
| KineRanch | unknown | polygon | n/a | 2 deployments: ethereum `0xa8d764...9cc692`; polygon [`0x66a782...7adeda`](./contracts/polygon-137/0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda/) | ⚠️ Unaudited |
| KineUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd4c220...896a06`](./contracts/ethereum-1/0xd4c220ccac0335334d425a90f58de7c667896a06/); bsc `0xd819d9...8d4ab4` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | ethereum | unit-26639 | [`0xcea2d0...d7d128`](./contracts/ethereum-1/0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128/) | ⚠️ Unaudited |

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
| ethereum | [`0xbb7d94...fd1a92`](./contracts/ethereum-1/0xbb7d94a423f4978545ecf73161f0678e8afd1a92/) | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0544be...a2fc39`](./contracts/avalanche-43114/0x0544be6693763d64c02f49f16986ba1390a2fc39/) | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa9c174...6ccd87`](./contracts/polygon-137/0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87/) | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1568a7...59eba3`](./contracts/bsc-56/0x1568a7f0bdf67d37dc963c345dbc4a598859eba3/) | KineExchangeTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x66a782...7adeda`](./contracts/polygon-137/0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda/) | KineRanch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4c220...896a06`](./contracts/ethereum-1/0xd4c220ccac0335334d425a90f58de7c667896a06/) | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea2d0...d7d128`](./contracts/ethereum-1/0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128/) | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
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
