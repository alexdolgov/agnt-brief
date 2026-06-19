# Agentic Audit Brief: YO Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 22.0% over 90 days

## Project Overview

- Project: YO Protocol (`yo-protocol`)
- Website: [https://app.yo.xyz](https://app.yo.xyz)
- Lifecycle: declining (Tier 0, 51.7% below peak)
- Generated: 2026-06-19T06:15:21.118Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, ethereum
- Contract surface: 20 unique implementations (38 raw deployments)
- DeFi Llama TVL: $34,886,510.55
- On-chain TVL (included contracts): $41,472,003.15
- TVL by chain: Base $30,054,092.56 | Ethereum $10,875,922.71 | Arbitrum $541,987.88

## Project Description

YO Protocol is a yield aggregator that deploys yield-optimizing vaults across multiple chains. Users deposit stablecoins or other assets into YoVaults, which automatically allocate funds to generate yield, while the protocol uses registries, oracles, and gateways to manage vault strategies and cross-chain operations.

### Architecture

The yoVaults family relies on the Operational Periphery for price data (YoOracle) and efficient withdrawals (RoadrunnerWithdrawer), while the yoGateway family enables cross-chain vault coordination. Protocol Governance controls upgrades and access across all families via the RolesAuthority and TimelockController.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 38 (37 live, 1 unknown).
- Excluded by liveness: 6 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 9/13 live.
- Detected codebases: none
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 8/20 (40.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 38
- Audits discovered: 7
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $541,987.88
- Latest audit: 2025-12 (fresh)
- Staleness: 4 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 5.0% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of $541,987.88 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 30.0% | 2025-12 |
| Paladin | Tier 2 | 3 | 15.0% | 2025-11 |
| Spearbit | Tier 1 | 1 | 5.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YoVault_V2 | core_logic | base | unit-38505 (4 proxies) | 4 deployments: base [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43ae...0e9de7`; base `0x50c749...c871e9`; base `0xbcbc8c...60bcbc` | ✅ Audited |
| YoVault_V2 | core_logic | ethereum | unit-38499 (5 proxies) | 5 deployments: ethereum [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9`; ethereum `0x586675...cc61a1`; ethereum `0xbcbc8c...60bcbc` | ✅ Audited |
| Escrow | operational_periphery | base | n/a | [`0xfe4196...891e10`](./contracts/base-8453/0xfe41964c2acccbe2da28b27f9034a227b6891e10/) | ✅ Audited |
| TimelockController | governance | ethereum | n/a | [`0x38ce5e...186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ✅ Audited |
| YoEscrow | operational_periphery | ethereum | n/a | [`0x05584e...7a0efb`](./contracts/ethereum-1/0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb/) | ✅ Audited |
| YoGateway | unknown | base | n/a | 3 deployments: base [`0x0cf9a8...7bb0cf`](./contracts/base-8453/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); base `0xecd62a...3c816e`; base `0xf5ebf5...556cae` | ✅ Audited |
| YoOracle | operational_periphery | ethereum | n/a | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ✅ Audited |
| YoVault | core_logic | base | n/a | 6 deployments: ethereum `0xa9c5f1...443052`; ethereum `0xda92d2...2dc169`; base [`0x32578e...d123f7`](./contracts/base-8453/0x32578ee59e91028216f5e9f1a5ee77d298d123f7/); base `0x957c92...792358`; base `0xd6e282...ed4c44`; base `0xda92d2...2dc169` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YoVault_V2 | core_logic | arbitrum | unit-38510 | [`0x000000...588a65`](./contracts/arbitrum-42161/0x0000000f2eb9f69274678c76222b35eec7588a65/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-38508 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-38500 (2 proxies) | 2 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-38507 (2 proxies) | 2 deployments: base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-38511 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| RoadrunnerWithdrawer | operational_periphery | base | n/a | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-38502 (2 proxies) | 2 deployments: ethereum [`0x67b6f6...44fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e526...fd5927` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xae11f1...a3d262`](./contracts/base-8453/0xae11f170491edf4a139e32386153936792a3d262/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-38503 | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| yoUSDT | token | ethereum | n/a | [`0xcbb008...14435f`](./contracts/ethereum-1/0xcbb0082b74ae921691bf15c3de8effaecd14435f/) | ⚠️ Unaudited |

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
| [20251121_Paladin_YoProtocol_Final_Report.pdf](https://github.com/yoprotocol/core/blob/main/audits/20251121_Paladin_YoProtocol_Final_Report.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | contract_name | 10 | high |
| [Exponential YoProtocol Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Exponential%20YoProtocol%20Review.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 8 | high |
| [Yo-Protocol-Aether-Security-Audit-2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit-2.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aether-Security-Audit.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aetheryc-Security-Review_V2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aetheryc-Security-Review_V2.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 10 | high |
| [Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 7 | high |
| [Yo-Protocol-Spearbit-Security-Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 6 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | RoadrunnerWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbb008...14435f`](./contracts/ethereum-1/0xcbb0082b74ae921691bf15c3de8effaecd14435f/) | yoUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 6 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=48

Zero-match audit list:

- [5794] Yo-Protocol-Aether-Security-Audit-2.pdf
- [5795] Yo-Protocol-Aether-Security-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
