# Agentic Audit Brief: Synthetix

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-12T11:00:14.305Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-b7d4
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 25 unique implementations (63 raw deployments)
- DeFi Llama TVL: $32,469,210.00
- On-chain TVL (included contracts): $11,439,872.78
- TVL by chain: Optimism $10,272,467.56 | Ethereum $1,167,405.22

## Project Description

Synthetix is an active decentralized derivatives and liquidity protocol focused on perpetual futures markets, liquidity provision through Synthetix Liquidity Provider mechanisms, staking, and related margin and custody infrastructure. Its current product surface includes Synthetix Perps, SLP/liquidity provision, staking such as the 420 Pool, and V3 market contracts across supported networks. Legacy Synth and synthetic asset infrastructure may still exist historically, but it should not be treated as the primary description of the current protocol.

### Architecture

Synthetix V3 builds on the original v1+v2 system by replacing the monolithic issuer with a modular CoreRouter that can integrate legacy Synth tokens and new collateral types, while sharing the same proxy infrastructure for upgradeability.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 63
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11,439,872.78
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyERC20 | token | optimism | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | ethereum | [`0xd62595...dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | ⚠️ Unaudited |
| CoreRouter | adapter | base | 4 deployments: ethereum `0xffffff...875847`; optimism `0xffffff...875847`; base [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/); arbitrum `0xffffff...875847` | ⚠️ Unaudited |
| Depot | unknown | ethereum | [`0x15ed8d...c4fcf5`](./contracts/ethereum-1/0x15ed8dcd6d5d7c9e66a28cb70673389a5dc4fcf5/) | ⚠️ Unaudited |
| ExchangeRates | unknown | ethereum | [`0x73b172...9eb21c`](./contracts/ethereum-1/0x73b172756bd5ddf0110ba8d7b88816eb639eb21c/) | ⚠️ Unaudited |
| FeePool | core_logic | ethereum | [`0xebdbac...a86e32`](./contracts/ethereum-1/0xebdbac38835a1105851e80c7fa1f1e6e25a86e32/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xeb3107...917769`](./contracts/ethereum-1/0xeb3107117fead7de89cd14d463d340a2e6917769/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | 2 deployments: base [`0xbb63ca...e83c82`](./contracts/base-8453/0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82/); arbitrum `0xd3dfa1...13a93b` | ⚠️ Unaudited |
| IssuerWithoutLiquidations | unknown | optimism | [`0x8377b2...b37163`](./contracts/optimism-10/0x8377b25b8564f6be579865639776c5082cb37163/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LegacyMarket | unknown | optimism | 2 deployments: ethereum `0x3acf16...38b2f5`; optimism [`0x19f03f...66170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/) | ⚠️ Unaudited |
| OracleRouter | operational_periphery | ethereum | 4 deployments: ethereum [`0x0aaf30...cb42e3`](./contracts/ethereum-1/0x0aaf300e148378489a8a471dd3e9e53e30cb42e3/); optimism [`0x0aaf30...cb42e3`](./contracts/optimism-10/0x0aaf300e148378489a8a471dd3e9e53e30cb42e3/); base `0x3d07cb...e2b264`; arbitrum [`0x0aaf30...cb42e3`](./contracts/arbitrum-42161/0x0aaf300e148378489a8a471dd3e9e53e30cb42e3/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | base | [`0x0a2af9...e1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 10 deployments: ethereum [`0x29a904...65f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/); ethereum `0x3eb064...00e037`; ethereum `0x559e84...28b2cf`; ethereum `0x62492f...29af88`; ethereum `0x64d5df...f09a99`; ethereum `0xb440dd...92d309`; ethereum `0xdce506...368a33`; ethereum `0xe05d80...c2bfa3`; ethereum `0xed4699...fd381a`; ethereum `0xf48129...713258` | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | base | [`0x9cb0b4...b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | 2 deployments: base [`0x45063d...1d6593`](./contracts/base-8453/0x45063dcd92f56138686810eacb1b510c941d6593/); base `0xe92bcd...28263b` | ⚠️ Unaudited |
| RewardsDistributorExternal | operational_periphery | arbitrum | 3 deployments: base `0x90e42b...67fe38`; arbitrum [`0x8cb5d5...35f13b`](./contracts/arbitrum-42161/0x8cb5d51099933e04baa1a32de3aded3dac35f13b/); arbitrum `0x95af0b...b8da48` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| SpotMarketRouter | adapter | base | [`0x181415...4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | ⚠️ Unaudited |
| Synth | unknown | ethereum | 8 deployments: ethereum [`0x0cbe2d...df2f25`](./contracts/ethereum-1/0x0cbe2df57ca9191b64a7af3baa3f946fa7df2f25/); ethereum `0x112d5f...0a5601`; ethereum `0x297270...44a9c3`; ethereum `0x48414e...e35ea6`; ethereum `0xb03dfc...fcf00d`; ethereum `0xc2bb52...338a10`; ethereum `0xd9e5a0...d71325`; ethereum `0xdf846d...e9188c` | ⚠️ Unaudited |
| Synthetix | unknown | ethereum | 4 deployments: ethereum [`0x07ec35...44c0b9`](./contracts/ethereum-1/0x07ec35051431289a08648eacf33bd849bc44c0b9/); ethereum `0x457cd1...eca529`; ethereum `0x58a4cd...527bff`; ethereum `0xd71170...9421b3` | ⚠️ Unaudited |
| SynthetixState | unknown | ethereum | 3 deployments: ethereum [`0x4b9ca5...2d5b82`](./contracts/ethereum-1/0x4b9ca5607f1ff8019c1c6a3c2f0cc8de622d5b82/); ethereum `0x7e2958...05c185`; ethereum `0xffd79c...a896d3` | ⚠️ Unaudited |
| TokenState | token | ethereum | 6 deployments: ethereum [`0x20569b...078a4f`](./contracts/ethereum-1/0x20569b49d74c1ede765382574f7f3fdc2a078a4f/); ethereum `0x249a10...e5a596`; ethereum `0x4dfacf...8361ed`; ethereum `0x6568d9...0529c4`; ethereum `0xbf0933...c159d5`; ethereum `0xcb29d2...d55203` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | base | 2 deployments: base [`0xe2c565...5a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/); arbitrum [`0xe2c565...5a1e3e`](./contracts/arbitrum-42161/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | ⚠️ Unaudited |

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
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
