# Agentic Audit Brief: TeleSwap

## Project Overview

- Project: TeleSwap (`teleswap`)
- Website: [https://teleswap.xyz](https://teleswap.xyz)
- Lifecycle: active (Tier 0, 28.7% below peak)
- Generated: 2026-06-21T14:39:36.002Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, polygon
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $587,132.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TeleSwap is a cross-chain bridge enabling transfers of Bitcoin-based assets (like BTC and BRC-20 tokens) between Bitcoin and EVM chains (BSC, Polygon). It uses lock-and-mint mechanics, relayers, and LayerZero OFT for wrapped token interoperability.

### Architecture

All contracts belong to a single product family centered around cross-chain asset transfers. Core contracts handle token wrapping (TeleBTC, TeleOrdinal), routing (BurnRouter, CcTransferRouter, CcExchangeRouter, Brc20Router), and chain connectivity (BitcoinRelay, BscConnector), while LockersProxy manages governance/locking and YieldFarmingProxy provides incentives.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 73 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 11/15 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/14 (21.4%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 21.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitcoinRelay | unknown | polygon | n/a | [`0x7deb66...132ea3`](./contracts/polygon-137/0x7deb66341b1d499d7e699589d0cf665de4132ea3/) | ✅ Audited |
| PriceOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x7aabb0...3b1d63`](./contracts/bsc-56/0x7aabb0779782247384a1c91844211516e93b1d63/); polygon `0x96b76a...b0165e` | ✅ Audited |
| TeleBTC | unknown | polygon | n/a | [`0x515d72...2febde`](./contracts/polygon-137/0x515d720b9d219f1931205d5b8d842be1fe2febde/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Brc20RouterLogic | adapter | bsc | unit-42866 | [`0xab82c4...0084c7`](./contracts/bsc-56/0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7/) | ⚠️ Unaudited |
| BurnRouterLogic | adapter | bsc | unit-42861 | [`0x2787d4...9a3c15`](./contracts/bsc-56/0x2787d48e0b74125597dd479978a5de09bb9a3c15/) | ⚠️ Unaudited |
| BurnRouterLogic | adapter | polygon | unit-42870 | [`0x000987...86c75f`](./contracts/polygon-137/0x0009876c47f6b2f0bcb41eb9729736757486c75f/) | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | bsc | unit-42868 | [`0xca5416...cd4f0d`](./contracts/bsc-56/0xca5416364720c7324a547d39b1db496a2dcd4f0d/) | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | polygon | unit-42873 | [`0xd1e9ff...a095a3`](./contracts/polygon-137/0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3/) | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | bsc | unit-42865 | [`0xa38ad0...bec5ff`](./contracts/bsc-56/0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff/) | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | polygon | unit-42871 | [`0x04367d...823707`](./contracts/polygon-137/0x04367d74332137908bef9acc0ab00a299a823707/) | ⚠️ Unaudited |
| LockersManagerLogic | governance | bsc | unit-42862 | [`0x84f74e...3987a5`](./contracts/bsc-56/0x84f74e97ebab432cee185d601290ce0a483987a5/) | ⚠️ Unaudited |
| LockersManagerLogic | governance | polygon | unit-42874 | [`0xf5d6d3...046166`](./contracts/polygon-137/0xf5d6d369a7f4147f720aeadd4c4f903ae8046166/) | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | polygon | unit-42872 | [`0x1edcaf...92b54f`](./contracts/polygon-137/0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f/) | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | bsc | unit-42860 | [`0x1d5062...d00e66`](./contracts/bsc-56/0x1d506292b0f1aac7d74624c00238f835b3d00e66/) | ⚠️ Unaudited |

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
| [Quantstamp-Bitcoin-EVM.pdf](https://github.com/TeleportDAO/audits/blob/main/reports/Quantstamp-Bitcoin-EVM.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xab82c4...0084c7`](./contracts/bsc-56/0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7/) | Brc20RouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2787d4...9a3c15`](./contracts/bsc-56/0x2787d48e0b74125597dd479978a5de09bb9a3c15/) | BurnRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000987...86c75f`](./contracts/polygon-137/0x0009876c47f6b2f0bcb41eb9729736757486c75f/) | BurnRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca5416...cd4f0d`](./contracts/bsc-56/0xca5416364720c7324a547d39b1db496a2dcd4f0d/) | CcExchangeRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd1e9ff...a095a3`](./contracts/polygon-137/0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3/) | CcExchangeRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa38ad0...bec5ff`](./contracts/bsc-56/0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff/) | CcTransferRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04367d...823707`](./contracts/polygon-137/0x04367d74332137908bef9acc0ab00a299a823707/) | CcTransferRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84f74e...3987a5`](./contracts/bsc-56/0x84f74e97ebab432cee185d601290ce0a483987a5/) | LockersManagerLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf5d6d3...046166`](./contracts/polygon-137/0xf5d6d369a7f4147f720aeadd4c4f903ae8046166/) | LockersManagerLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1edcaf...92b54f`](./contracts/polygon-137/0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f/) | TeleOrdinalLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d5062...d00e66`](./contracts/bsc-56/0x1d506292b0f1aac7d74624c00238f835b3d00e66/) | YieldFarmingLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
