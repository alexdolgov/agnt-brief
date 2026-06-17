# Agentic Audit Brief: Synthetix

⚠️ Lifecycle status: DECLINING - TVL dropped 25.5% over 90 days

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.936Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 19 unique implementations (20 raw deployments)
- DeFi Llama TVL: $32,469,210.00
- On-chain TVL (included contracts): $11,439,872.78
- TVL by chain: Optimism $10,272,467.56 | Ethereum $1,167,405.22

## Project Description

Synthetix is an active decentralized derivatives and liquidity protocol focused on perpetual futures markets, liquidity provision through Synthetix Liquidity Provider mechanisms, staking, and related margin and custody infrastructure. Its current product surface includes Synthetix Perps, SLP/liquidity provision, staking such as the 420 Pool, and V3 market contracts across supported networks. Legacy Synth and synthetic asset infrastructure may still exist historically, but it should not be treated as the primary description of the current protocol.

### Architecture

Synthetix V3 builds on the original v1+v2 system by replacing the monolithic issuer with a modular CoreRouter that can integrate legacy Synth tokens and new collateral types, while sharing the same proxy infrastructure for upgradeability.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 13/17 live.
- Detected codebases: none
- Unverified dependencies: 6/20.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 20
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11,439,872.78
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $11,439,872.78 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyERC20 | token | optimism | n/a | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | ethereum | unit-23567 | [`0xd62595...dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | ⚠️ Unaudited |
| CoreRouter | adapter | ethereum | unit-23569 | [`0xffffff...875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | unknown | optimism | unit-23572 | [`0xffffff...875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | base | unit-23575 | [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/) | ⚠️ Unaudited |
| CoreRouter | adapter | arbitrum | unit-23581 | [`0xffffff...875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-23568 | [`0xeb3107...917769`](./contracts/ethereum-1/0xeb3107117fead7de89cd14d463d340a2e6917769/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-23577 | [`0xbb63ca...e83c82`](./contracts/base-8453/0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-23580 | [`0xd3dfa1...13a93b`](./contracts/arbitrum-42161/0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-23579 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LegacyMarket | unknown | ethereum | unit-23566 | [`0x3acf16...38b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | ⚠️ Unaudited |
| LegacyMarket | unknown | optimism | unit-23571 | [`0x19f03f...66170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | base | unit-23573 | [`0x0a2af9...e1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | n/a | [`0xb440dd...92d309`](./contracts/ethereum-1/0xb440dd674e1243644791a4adfe3a2abb0a92d309/) | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | base | n/a | [`0x9cb0b4...b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | n/a | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| SpotMarketRouter | adapter | base | unit-23574 | [`0x181415...4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | base | n/a | 2 deployments: base [`0xe2c565...5a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/); arbitrum [`0xe2c565...5a1e3e`](./contracts/arbitrum-42161/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
