# Agentic Audit Brief: Synthetix

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-11T03:27:41.188Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 13 unique implementations (40 raw deployments)
- DeFi Llama TVL: $41,667,156.00
- On-chain TVL (included contracts): $10,272,467.56
- TVL by chain: Optimism $10,272,467.56

## Project Description

Synthetix is an active decentralized derivatives and liquidity protocol focused on perpetual futures markets, liquidity provision through Synthetix Liquidity Provider mechanisms, staking, and related margin and custody infrastructure. Its current product surface includes Synthetix Perps, SLP/liquidity provision, staking such as the 420 Pool, and V3 market contracts across supported networks. Legacy Synth and synthetic asset infrastructure may still exist historically, but it should not be treated as the primary description of the current protocol.

### Architecture

Synthetix V3 builds on the original v1+v2 system by replacing the monolithic issuer with a modular CoreRouter that can integrate legacy Synth tokens and new collateral types, while sharing the same proxy infrastructure for upgradeability.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 40
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,272,467.56
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyERC20 | token | optimism | [`0x8700da...7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| CoreRouter | adapter | base | 3 deployments: ethereum `0xffffff...875847`; base [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/); arbitrum `0xffffff...875847` | ⚠️ Unaudited |
| Depot | unknown | ethereum | [`0x15ed8d...c4fcf5`](./contracts/ethereum-1/0x15ed8dcd6d5d7c9e66a28cb70673389a5dc4fcf5/) | ⚠️ Unaudited |
| ExchangeRates | unknown | ethereum | [`0x73b172...9eb21c`](./contracts/ethereum-1/0x73b172756bd5ddf0110ba8d7b88816eb639eb21c/) | ⚠️ Unaudited |
| FeePool | core_logic | ethereum | [`0xebdbac...a86e32`](./contracts/ethereum-1/0xebdbac38835a1105851e80c7fa1f1e6e25a86e32/) | ⚠️ Unaudited |
| IssuerWithoutLiquidations | unknown | optimism | [`0x8377b2...b37163`](./contracts/optimism-10/0x8377b25b8564f6be579865639776c5082cb37163/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 10 deployments: ethereum [`0x29a904...65f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/); ethereum `0x3eb064...00e037`; ethereum `0x559e84...28b2cf`; ethereum `0x62492f...29af88`; ethereum `0x64d5df...f09a99`; ethereum `0xb440dd...92d309`; ethereum `0xdce506...368a33`; ethereum `0xe05d80...c2bfa3`; ethereum `0xed4699...fd381a`; ethereum `0xf48129...713258` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | [`0x84d626...8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| Synth | unknown | ethereum | 8 deployments: ethereum [`0x0cbe2d...df2f25`](./contracts/ethereum-1/0x0cbe2df57ca9191b64a7af3baa3f946fa7df2f25/); ethereum `0x112d5f...0a5601`; ethereum `0x297270...44a9c3`; ethereum `0x48414e...e35ea6`; ethereum `0xb03dfc...fcf00d`; ethereum `0xc2bb52...338a10`; ethereum `0xd9e5a0...d71325`; ethereum `0xdf846d...e9188c` | ⚠️ Unaudited |
| Synthetix | unknown | ethereum | 3 deployments: ethereum [`0x07ec35...44c0b9`](./contracts/ethereum-1/0x07ec35051431289a08648eacf33bd849bc44c0b9/); ethereum `0x457cd1...eca529`; ethereum `0x58a4cd...527bff` | ⚠️ Unaudited |
| SynthetixState | unknown | ethereum | 3 deployments: ethereum [`0x4b9ca5...2d5b82`](./contracts/ethereum-1/0x4b9ca5607f1ff8019c1c6a3c2f0cc8de622d5b82/); ethereum `0x7e2958...05c185`; ethereum `0xffd79c...a896d3` | ⚠️ Unaudited |
| TokenState | token | ethereum | 6 deployments: ethereum [`0x20569b...078a4f`](./contracts/ethereum-1/0x20569b49d74c1ede765382574f7f3fdc2a078a4f/); ethereum `0x249a10...e5a596`; ethereum `0x4dfacf...8361ed`; ethereum `0x6568d9...0529c4`; ethereum `0xbf0933...c159d5`; ethereum `0xcb29d2...d55203` | ⚠️ Unaudited |

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
| base | [`0x32c222...72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15ed8d...c4fcf5`](./contracts/ethereum-1/0x15ed8dcd6d5d7c9e66a28cb70673389a5dc4fcf5/) | Depot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b172...9eb21c`](./contracts/ethereum-1/0x73b172756bd5ddf0110ba8d7b88816eb639eb21c/) | ExchangeRates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebdbac...a86e32`](./contracts/ethereum-1/0xebdbac38835a1105851e80c7fa1f1e6e25a86e32/) | FeePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29a904...65f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cbe2d...df2f25`](./contracts/ethereum-1/0x0cbe2df57ca9191b64a7af3baa3f946fa7df2f25/) | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ec35...44c0b9`](./contracts/ethereum-1/0x07ec35051431289a08648eacf33bd849bc44c0b9/) | Synthetix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20569b...078a4f`](./contracts/ethereum-1/0x20569b49d74c1ede765382574f7f3fdc2a078a4f/) | TokenState | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
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
