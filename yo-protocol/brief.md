# Agentic Audit Brief: YO Protocol

## Project Overview

- Project: YO Protocol (`yo-protocol`)
- Website: [https://app.yo.xyz](https://app.yo.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.746Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum
- Contract surface: 23 unique implementations (45 raw deployments)
- DeFi Llama TVL: $34,621,789.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 181 project-authored contract(s) across 3 chain(s); 5 ERC4626 vaults, 25 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 33 common project-authored base contract(s) (mintcontroller, controller, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/20 (35.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/23
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 45
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 4 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 5.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 26.1% | 2025-12 |
| Paladin | Tier 2 | 3 | 13.0% | 2025-11 |
| Spearbit | Tier 1 | 1 | 4.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Escrow | operational_periphery | base | n/a | [`0xfe41964c2acccbe2da28b27f9034a227b6891e10`](./contracts/base-8453/0xfe41964c2acccbe2da28b27f9034a227b6891e10/) | ✅ Audited |
| TimelockController | governance | ethereum | n/a | [`0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ✅ Audited |
| YoEscrow | operational_periphery | ethereum | n/a | [`0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb`](./contracts/ethereum-1/0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb/) | ✅ Audited |
| YoGateway | unknown | base | n/a | 3 deployments: base [`0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf`](./contracts/base-8453/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); base `0xecd62a8bbd3503710765a53218c480127b3c816e`; base `0xf5ebf57bc4ece32d1036ad907db1fa0a68556cae` | ✅ Audited |
| YoOracle | operational_periphery | ethereum | n/a | [`0x6e879d0ccc85085a709ebf5539224f53d0d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ✅ Audited |
| YoVault | core_logic | base | n/a | 6 deployments: ethereum `0xa9c5f18480fa36d4a84ebbd778c8ca6f65443052`; ethereum `0xda92d2172cd402d222131cc95a66ec7bd82dc169`; base [`0x32578ee59e91028216f5e9f1a5ee77d298d123f7`](./contracts/base-8453/0x32578ee59e91028216f5e9f1a5ee77d298d123f7/); base `0x957c92c28a635f9c784628baaba69ae981792358`; base `0xd6e28270d3728db0ae64a348330aced3f2ed4c44`; base `0xda92d2172cd402d222131cc95a66ec7bd82dc169` | ✅ Audited |
| YoVault_V2 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; ethereum `0x50c749ae210d3977adc824ae11f3c7fd10c871e9`; ethereum `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1`; ethereum `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ✅ Audited |
| YoVault_V2 | core_logic | base | n/a | 4 deployments: base [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; base `0x50c749ae210d3977adc824ae11f3c7fd10c871e9`; base `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | 2 deployments: ethereum [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | 2 deployments: base [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| RoadrunnerWithdrawer | operational_periphery | base | n/a | [`0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67b6f699f1c8040414032a3c2c88a54db144fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e5260ac975b475af8bf818c14deee7fefd5927` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0xae11f170491edf4a139e32386153936792a3d262`](./contracts/base-8453/0xae11f170491edf4a139e32386153936792a3d262/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`; base [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| YoGateway | unknown | base | n/a | 2 deployments: base [`0xc33660b771db437e15e9234cc424e750376f903e`](./contracts/base-8453/0xc33660b771db437e15e9234cc424e750376f903e/); base `0xf1eee0957267b1a474323ff9cff7719e964969fa` | ⚠️ Unaudited |
| YoRegistry | unknown | base | n/a | 2 deployments: base [`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`](./contracts/base-8453/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/); base `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | ⚠️ Unaudited |
| yoUSDT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a09e980cae64d8840fd9c92f165aba4bfdf9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/); ethereum `0xb9a7da9e90d3b428083bae04b860faa6325b721e` | ⚠️ Unaudited |
| yoUSDT | token | ethereum | n/a | [`0xcbb0082b74ae921691bf15c3de8effaecd14435f`](./contracts/ethereum-1/0xcbb0082b74ae921691bf15c3de8effaecd14435f/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/arbitrum-42161/0x0000000f2eb9f69274678c76222b35eec7588a65/); arbitrum `0x7e715d9731ee8c29e0bde2e852891e9fbef262bb` | ⚠️ Unaudited |

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
| [20251121_Paladin_YoProtocol_Final_Report.pdf](https://github.com/yoprotocol/core/blob/main/audits/20251121_Paladin_YoProtocol_Final_Report.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | contract_name | 3 | n/a |
| [Exponential YoProtocol Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Exponential%20YoProtocol%20Review.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 3 | n/a |
| [Yo-Protocol-Aether-Security-Audit-2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit-2.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aether-Security-Audit.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Yo-Protocol-Aetheryc-Security-Review_V2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aetheryc-Security-Review_V2.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 3 | n/a |
| [Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 2 | n/a |
| [Yo-Protocol-Spearbit-Security-Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | RoadrunnerWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc33660b771db437e15e9234cc424e750376f903e`](./contracts/base-8453/0xc33660b771db437e15e9234cc424e750376f903e/) | YoGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`](./contracts/base-8453/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/) | YoRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a09e980cae64d8840fd9c92f165aba4bfdf9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/) | yoUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbb0082b74ae921691bf15c3de8effaecd14435f`](./contracts/ethereum-1/0xcbb0082b74ae921691bf15c3de8effaecd14435f/) | yoUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/arbitrum-42161/0x0000000f2eb9f69274678c76222b35eec7588a65/) | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Zero-match audit list:

- [5794] Yo-Protocol-Aether-Security-Audit-2.pdf
- [5795] Yo-Protocol-Aether-Security-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
