# Agentic Audit Brief: Gravity Bridge

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: active (Tier 0, 89.3% below peak)
- Generated: 2026-06-17T07:00:41.718Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 29 unique implementations (35 raw deployments)
- DeFi Llama TVL: $11,818,629.64
- On-chain TVL (included contracts): $91,298,815.37
- TVL by chain: Ethereum $91,298,815.37

## Project Description

Gravity Bridge is a decentralized Cosmos blockchain and cross-chain bridge connecting Ethereum with the Cosmos ecosystem. It includes Ethereum-side bridge contracts and Cosmos/IBC-side components that together support asset transfers between Ethereum and Cosmos chains.

### Architecture

The Gravity Bridge family relies on a set of proxy contracts (AdminUpgradeabilityProxy, TransparentUpgradeableProxy) to manage upgradeability of core bridge logic (CosmosBridge, BridgeBank, BridgeRegistry). Token representations (CosmosERC20, BridgeToken) are deployed via factories or beacons and interact with the bridge contracts to lock and release assets.

## Contract Surface Quality

- Indexed contracts: 183; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 108 inactive, 40 singleton, 0 uninitialized.
- Deployment units: 5/26 live.
- Detected codebases: none
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 29
- Raw deployments: 35
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $91,298,815.37
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OraiToken | token | ethereum | n/a | [`0x4c1124...28c1b5`](./contracts/ethereum-1/0x4c11249814f11b9346808179cf06e71ac328c1b5/) | ⚠️ Unaudited |
| BandToken | token | ethereum | n/a | [`0xba11d0...6d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | ethereum | n/a | [`0x467719...a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | ⚠️ Unaudited |
| CudosToken | token | ethereum | n/a | [`0x817bbd...e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | unit-25312 (2 proxies) | 2 deployments: ethereum [`0x43373a...bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/); ethereum `0xa693b1...ee87a5` | ⚠️ Unaudited |
| IbcToken | token | ethereum | n/a | 4 deployments: ethereum [`0x0c356b...c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/); ethereum `0x76c4a2...b1463f`; ethereum `0x8d983c...0cb7bb`; ethereum `0xc727f8...29aad6` | ⚠️ Unaudited |
| CosmosERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0xa670d7...010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/); ethereum `0xc0a4df...eeddac`; ethereum `0xea5a82...7d2951` | ⚠️ Unaudited |
| GeoToken | token | ethereum | n/a | [`0x147faf...126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | ethereum | n/a | [`0xd23ed8...debb7b`](./contracts/ethereum-1/0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | [`0x07bac3...f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | unit-25324 | [`0x935819...bdee7b`](./contracts/ethereum-1/0x93581991f68dbae1ea105233b67f7fa0d6bdee7b/) | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | ethereum | unit-25331 | [`0xe1fa4a...bb6b4a`](./contracts/ethereum-1/0xe1fa4a1f92276e21d1a358a03900a21663bb6b4a/) | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| FetchToken | token | ethereum | n/a | [`0xaea46a...41ad85`](./contracts/ethereum-1/0xaea46a60368a7bd060eec7df8cba43b7ef41ad85/) | ⚠️ Unaudited |
| Gravity | unknown | ethereum | n/a | [`0xa4108a...f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | ⚠️ Unaudited |
| MNW | unknown | ethereum | n/a | [`0xd3e4ba...d7f6e4`](./contracts/ethereum-1/0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4/) | ⚠️ Unaudited |
| NGM | unknown | ethereum | n/a | [`0xed0d57...45b75d`](./contracts/ethereum-1/0xed0d5747a9ab03a75fbfec3228cd55848245b75d/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | n/a | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| Pluton | unknown | ethereum | n/a | [`0xd8912c...12264e`](./contracts/ethereum-1/0xd8912c10681d8b21fd3742244f44658dba12264e/) | ⚠️ Unaudited |
| pStake | unknown | ethereum | n/a | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x35a532...a398e7`](./contracts/ethereum-1/0x35a532d376ffd9a705d0bb319532837337a398e7/) | ⚠️ Unaudited |
| VestingContract | operational_periphery | ethereum | n/a | [`0xb3ccb8...aea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedSCRT | unknown | ethereum | n/a | [`0x2b89bf...6968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | ⚠️ Unaudited |
| wTAO | unknown | ethereum | n/a | [`0x77e06c...5b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | ⚠️ Unaudited |
| XFUND | unknown | ethereum | n/a | [`0x892a6f...c87881`](./contracts/ethereum-1/0x892a6f9df0147e5f079b0993f486f9aca3c87881/) | ⚠️ Unaudited |
| XKI | unknown | ethereum | unit-25318 | [`0x4f6103...b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | ethereum | unit-25328 | `0xc187c9...d1b43a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x817bbd...e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | CudosToken | token | $17,273,644.03 | Verified native implementation with $17,273,644.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43373a...bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/) | TokenImplementation | token | $536,855.84 | Verified native implementation with $536,855.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c356b...c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/) | IbcToken | token | $26,097.34 | Verified native implementation with $26,097.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa670d7...010fd1`](./contracts/ethereum-1/0xa670d7237398238de01267472c6f13e5b8010fd1/) | CosmosERC20 | token | $20,187.44 | Verified native implementation with $20,187.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x147faf...126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | GeoToken | token | $7,719.44 | Verified native implementation with $7,719.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bac3...f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4108a...f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | Gravity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | pStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a532...a398e7`](./contracts/ethereum-1/0x35a532d376ffd9a705d0bb319532837337a398e7/) | TokenMintERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3ccb8...aea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | VestingContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | WrappedLuna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b89bf...6968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | WrappedSCRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6103...b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | XKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 11 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
