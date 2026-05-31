# Agentic Audit Brief: Trueo

⚠️ Lifecycle status: DECLINING - TVL dropped 51.9% over 90 days

## Project Overview

- Project: Trueo (`trueo`)
- Website: [https://trueo.com/](https://trueo.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T11:12:50.133Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base
- Contract surface: 23 unique implementations (45 raw deployments)
- DeFi Llama TVL: $3,764,672.39
- On-chain TVL (included contracts): $4,049,216.13
- TVL by chain: Base $4,049,216.13

## Project Description

Trueo is a prediction market protocol that enables users to create and trade outcome tokens on real-world events, with a native token (TrueToken) for staking and governance. It uses oracle-based resolution and liquidity pools to facilitate trading.

### Architecture

The Trueo family integrates a governance-managed prediction market (TruthMarketManager) with a native token (TrueToken) used for staking rewards and liquidity provision. Supporting infrastructure includes proxy contracts for upgradeability and a UniswapV2Pair for token liquidity.

## Audit Coverage Summary

- Verified implementations audited: 0/23 (0.0%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 45
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,049,216.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,049,216.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TrueToken | token | base | [`0x21cfcf...6eb7ab`](./contracts/base-8453/0x21cfcfc3d8f98fc728f48341d10ad8283f6eb7ab/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | base | [`0xb13cf1...1def4b`](./contracts/base-8453/0xb13cf163d916917d9cd6e836905ca5f12a1def4b/) | ⚠️ Unaudited |
| Escalation | unknown | base | 2 deployments: base [`0x0dc1f7...0644a0`](./contracts/base-8453/0x0dc1f7cb16389716710826ce74544d71fc0644a0/); base `0x7397ef...940b27` | ⚠️ Unaudited |
| FeeCollector | unknown | base | [`0x39339e...755d9d`](./contracts/base-8453/0x39339e149c2d916aa899bf73d2debb15f4755d9d/) | ⚠️ Unaudited |
| OracleBonds | operational_periphery | base | 4 deployments: base [`0x118c2d...13f63e`](./contracts/base-8453/0x118c2d8bec04696a2f13124213bac72d0e13f63e/); base `0x388993...91a9c0`; base `0x8175b0...275baa`; base `0xff21c2...0d7b9a` | ⚠️ Unaudited |
| OracleCouncil | operational_periphery | base | 4 deployments: base [`0x87bc36...7992ab`](./contracts/base-8453/0x87bc36ead32d5219e9cddf9f92d2077ca27992ab/); base `0xb8e809...81c450`; base `0xca7af0...f198be`; base `0xf1df87...87481a` | ⚠️ Unaudited |
| OrderManager | governance | base | [`0x8e5e63...5e3da7`](./contracts/base-8453/0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7/) | ⚠️ Unaudited |
| StakingRewards | unknown | base | 2 deployments: base [`0x1a4062...c035ed`](./contracts/base-8453/0x1a40621c54330940b081f925aa027458a4c035ed/); base `0x688f5b...8af014` | ⚠️ Unaudited |
| SweepStrategy | core_logic | base | [`0xeb3151...fab215`](./contracts/base-8453/0xeb3151902c63af869977f0ba6baaec476ffab215/) | ⚠️ Unaudited |
| TimelockController | governance | base | 2 deployments: base [`0x896371...f6fd04`](./contracts/base-8453/0x8963712bc91ae8c64d96293ed9a1157344f6fd04/); base `0xc0a7e6...c4959a` | ⚠️ Unaudited |
| TokenConverter | token | base | 2 deployments: base [`0x807825...81b792`](./contracts/base-8453/0x8078254008819bcfd9301fd68886433c2f81b792/); base `0xe4a50a...44f864` | ⚠️ Unaudited |
| TruthAttesterSBT | unknown | base | [`0x43a2ee...c97bc4`](./contracts/base-8453/0x43a2ee74d28612c0a9ef90884bb47cf445c97bc4/) | ⚠️ Unaudited |
| TruthMarket | unknown | base | 2 deployments: base [`0xb7b53c...eef3d1`](./contracts/base-8453/0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1/); base `0xd51191...7720e2` | ⚠️ Unaudited |
| TruthMarketAdapter | adapter | base | 2 deployments: base [`0x2bf3a4...553c0c`](./contracts/base-8453/0x2bf3a47714c0275fcdf44d8052661f28cb553c0c/); base `0x6e08d2...8125e1` | ⚠️ Unaudited |
| TruthMarketLPManager | governance | base | 5 deployments: base [`0x05ef8b...6398fb`](./contracts/base-8453/0x05ef8b05398a8479739658e47428076d456398fb/); base `0x68ff20...06d4b9`; base `0x909a43...5b42cb`; base `0xa0be61...c79f89`; base `0xea477d...b9858a` | ⚠️ Unaudited |
| TruthMarketManager | governance | base | 4 deployments: base [`0x21d652...bbe7b5`](./contracts/base-8453/0x21d652af137bfb34d16a4103f3b75e1e4fbbe7b5/); base `0x61a98b...c695d7`; base `0x83eaed...eeae2d`; base `0x8ddf40...d6dbe6` | ⚠️ Unaudited |
| TruthMarketSwapValidator | unknown | base | [`0x55e26c...74dd38`](./contracts/base-8453/0x55e26cf92b924c069db4d8da7b0b36154374dd38/) | ⚠️ Unaudited |
| TruthMarketV2 | unknown | base | [`0x2ca897...3e3409`](./contracts/base-8453/0x2ca897f98f6a45729968f0057f1fbf88db3e3409/) | ⚠️ Unaudited |
| TruthMarketV2LPManager | governance | base | 3 deployments: base [`0x1a6008...833443`](./contracts/base-8453/0x1a6008a93cad0dd562ac071107b23ed4b9833443/); base `0x351539...b6968d`; base `0x5278ad...1e451b` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | [`0x1fae24...352d77`](./contracts/base-8453/0x1fae246b1b2d0ce47126bbb109850da355352d77/) | ⚠️ Unaudited |
| UniversalRouterAdapter | adapter | base | 2 deployments: base [`0x0a1afc...64034a`](./contracts/base-8453/0x0a1afc2121b4441127a02def72928f61f564034a/); base `0x647474...14c19e` | ⚠️ Unaudited |
| V3SwapStrategy | core_logic | base | [`0x339619...fb3b65`](./contracts/base-8453/0x33961932a59d43d80b260eb866056fbe0afb3b65/) | ⚠️ Unaudited |
| V4SwapStrategy | core_logic | base | [`0x3f3da9...f7927e`](./contracts/base-8453/0x3f3da9e841fbcb5abb2a097cbb922e3ef7f7927e/) | ⚠️ Unaudited |

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
| base | [`0x21cfcf...6eb7ab`](./contracts/base-8453/0x21cfcfc3d8f98fc728f48341d10ad8283f6eb7ab/) | TrueToken | token | $3,032,345.64 | Verified native implementation with $3,032,345.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0dc1f7...0644a0`](./contracts/base-8453/0x0dc1f7cb16389716710826ce74544d71fc0644a0/) | Escalation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39339e...755d9d`](./contracts/base-8453/0x39339e149c2d916aa899bf73d2debb15f4755d9d/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x118c2d...13f63e`](./contracts/base-8453/0x118c2d8bec04696a2f13124213bac72d0e13f63e/) | OracleBonds | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87bc36...7992ab`](./contracts/base-8453/0x87bc36ead32d5219e9cddf9f92d2077ca27992ab/) | OracleCouncil | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e5e63...5e3da7`](./contracts/base-8453/0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7/) | OrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a4062...c035ed`](./contracts/base-8453/0x1a40621c54330940b081f925aa027458a4c035ed/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb3151...fab215`](./contracts/base-8453/0xeb3151902c63af869977f0ba6baaec476ffab215/) | SweepStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x43a2ee...c97bc4`](./contracts/base-8453/0x43a2ee74d28612c0a9ef90884bb47cf445c97bc4/) | TruthAttesterSBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb7b53c...eef3d1`](./contracts/base-8453/0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1/) | TruthMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bf3a4...553c0c`](./contracts/base-8453/0x2bf3a47714c0275fcdf44d8052661f28cb553c0c/) | TruthMarketAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05ef8b...6398fb`](./contracts/base-8453/0x05ef8b05398a8479739658e47428076d456398fb/) | TruthMarketLPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21d652...bbe7b5`](./contracts/base-8453/0x21d652af137bfb34d16a4103f3b75e1e4fbbe7b5/) | TruthMarketManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x55e26c...74dd38`](./contracts/base-8453/0x55e26cf92b924c069db4d8da7b0b36154374dd38/) | TruthMarketSwapValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ca897...3e3409`](./contracts/base-8453/0x2ca897f98f6a45729968f0057f1fbf88db3e3409/) | TruthMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a6008...833443`](./contracts/base-8453/0x1a6008a93cad0dd562ac071107b23ed4b9833443/) | TruthMarketV2LPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
