# Agentic Audit Brief: YO Protocol

## Project Overview

- Project: YO Protocol (`yo-protocol`)
- Website: [https://app.yo.xyz?ref=defillama](https://app.yo.xyz?ref=defillama)
- Lifecycle: active (Tier 0, 51.7% below peak)
- Generated: 2026-05-31T11:44:19.410Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, base, ethereum
- Contract surface: 20 unique implementations (48 raw deployments)
- DeFi Llama TVL: $42,549,903.44
- On-chain TVL (included contracts): $40,942,586.65
- TVL by chain: Base $30,054,092.56 | Ethereum $10,888,494.10

## Project Description

YO Protocol is a yield aggregator that deploys yield-optimizing vaults across multiple chains. Users deposit stablecoins or other assets into YoVaults, which automatically allocate funds to generate yield, while the protocol uses registries, oracles, and gateways to manage vault strategies and cross-chain operations.

### Architecture

The yoVaults family relies on the Operational Periphery for price data (YoOracle) and efficient withdrawals (RoadrunnerWithdrawer), while the yoGateway family enables cross-chain vault coordination. Protocol Governance controls upgrades and access across all families via the RolesAuthority and TimelockController.

## Audit Coverage Summary

- Verified implementations audited: 9/16 (56.3%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 20
- Raw deployments: 48
- Audits discovered: 7
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $12,571.38
- Latest audit: 2025-12 (fresh)
- Staleness: 4 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 6.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 37.5% | 2025-12 |
| Paladin | Tier 2 | 4 | 25.0% | 2025-11 |
| Spearbit | Tier 1 | 1 | 6.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YoVault_V2 | core_logic | ethereum | 9 deployments: ethereum [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9`; ethereum `0x586675...cc61a1`; ethereum `0xbcbc8c...60bcbc`; base [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43ae...0e9de7`; base `0x50c749...c871e9`; base `0xbcbc8c...60bcbc` | ✅ Audited |
| Escrow | operational_periphery | base | 2 deployments: base [`0xc5da2b...70ebca`](./contracts/base-8453/0xc5da2b9174234f34c5857295776f5ea1fe70ebca/); base `0xfe4196...891e10` | ✅ Audited |
| RolesAuthority | governance | ethereum | [`0x9524e2...02d44d`](./contracts/ethereum-1/0x9524e25079b1b04d904865704783a5aa0202d44d/) | ✅ Audited |
| TimelockController | governance | ethereum | [`0x38ce5e...186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ✅ Audited |
| YoEscrow | operational_periphery | ethereum | [`0x05584e...7a0efb`](./contracts/ethereum-1/0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb/) | ✅ Audited |
| YoGateway | unknown | base | 5 deployments: base [`0x0cf9a8...7bb0cf`](./contracts/base-8453/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); base `0xc33660...6f903e`; base `0xecd62a...3c816e`; base `0xf1eee0...4969fa`; base `0xf5ebf5...556cae` | ✅ Audited |
| YoOracle | operational_periphery | ethereum | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ✅ Audited |
| YoRegistry | registry | base | 2 deployments: base [`0x542d29...bc8ae8`](./contracts/base-8453/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/); base `0x56c311...502232` | ✅ Audited |
| YoVault | core_logic | base | 6 deployments: ethereum `0xa9c5f1...443052`; ethereum `0xda92d2...2dc169`; base [`0x32578e...d123f7`](./contracts/base-8453/0x32578ee59e91028216f5e9f1a5ee77d298d123f7/); base `0x957c92...792358`; base `0xd6e282...ed4c44`; base `0xda92d2...2dc169` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| yoUSDT | token | ethereum | 3 deployments: ethereum [`0x0a09e9...df9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/); ethereum `0xb9a7da...5b721e`; ethereum `0xcbb008...14435f` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | 5 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48`; base `0x60a3e3...1adb42`; base `0x833589...a02913`; arbitrum `0xaf88d0...8e5831` | ⚠️ Unaudited |
| RoadrunnerWithdrawer | operational_periphery | base | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 2 deployments: ethereum [`0x67b6f6...44fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e526...fd5927` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 2 deployments: ethereum [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/); ethereum `0xdac17f...831ec7` | ⚠️ Unaudited |
| WETH9 | token | base | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4fc47...8e7562` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeecc4c...48acf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20251121_Paladin_YoProtocol_Final_Report.pdf](https://github.com/yoprotocol/core/blob/main/audits/20251121_Paladin_YoProtocol_Final_Report.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | contract_name | 14 | high |
| [Exponential YoProtocol Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Exponential%20YoProtocol%20Review.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 10 | high |
| [Yo-Protocol-Aether-Security-Audit-2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit-2.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aether-Security-Audit.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aetheryc-Security-Review_V2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aetheryc-Security-Review_V2.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 10 | high |
| [Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 8 | high |
| [Yo-Protocol-Spearbit-Security-Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 6 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0a09e9...df9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/) | yoUSDT | token | $12,571.38 | Verified native implementation with $12,571.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | RoadrunnerWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 4 |

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
