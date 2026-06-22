# Agentic Audit Brief: CVI Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 1.3% over 90 days

## Project Overview

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T09:42:36.931Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum, polygon
- Contract surface: 14 unique implementations (21 raw deployments)
- DeFi Llama TVL: $131,466.36
- On-chain TVL (included contracts): $6,085.13
- TVL by chain: Arbitrum $6,085.13

## Project Description

CVI Finance is a decentralized volatility protocol that allows users to hedge against or speculate on market volatility. It offers volatility tokens and structured products across multiple chains, using both ETH and USDC as collateral.

### Architecture

The ETH-denominated and USDC-based platforms share fee calculators and staking reward contracts, while volatility tokens are minted through these platforms and managed by dedicated vaults and rebasers. Governance tokens (GOVI) and staking rewards unify the ecosystem across chains.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 136 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 4/16 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 4/29.

## Audit Coverage Summary

- Verified implementations audited: 4/12 (33.3%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 1
- Unverified implementations: 2
- Unique implementations: 14
- Raw deployments: 21
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $6,085.13
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,085.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 33.3% | 2021-03 |
| SourceHat | Tier 2 | 3 | 25.0% | 2022-06 |
| Zokyo | Tier 2 | 1 | 8.3% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHPlatform | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5005e8...cf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/); ethereum `0xbe857e...52be72` | ✅ Audited |
| GOVI | unknown | ethereum | n/a | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ✅ Audited |
| Platform | unknown | ethereum | n/a | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xdb3130...9beacb`](./contracts/ethereum-1/0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-42204 | [`0x07e49d...875283`](./contracts/arbitrum-42161/0x07e49d5de43dda6162fa28d24d5935c151875283/) | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | arbitrum | unit-42208 | [`0x8096ad...27c722`](./contracts/arbitrum-42161/0x8096ad3107715747361acefe685943bfb427c722/) | ⚠️ Unaudited |
| CVIUSDCThetaVault | core_logic | arbitrum | unit-42210 | [`0xfdeb59...fcc506`](./contracts/arbitrum-42161/0xfdeb59a2b4891ea17610ee38665249acc9fcc506/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-42206 (2 proxies) | 2 deployments: arbitrum [`0x223013...a02ada`](./contracts/arbitrum-42161/0x223013bd8b4569628d50ee106ccba93189a02ada/); arbitrum `0x7f4b13...d96cc8` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | n/a | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | polygon | n/a | 2 deployments: ethereum `0x936dd3...975fb7`; polygon [`0x27792c...1a16dc`](./contracts/polygon-137/0x27792cda195d07ffb36e94e253d67361661a16dc/) | ⚠️ Unaudited |
| PlatformV3 | unknown | polygon | n/a | [`0x88d01e...45ff9d`](./contracts/polygon-137/0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x197e99...635a5d`](./contracts/ethereum-1/0x197e99bd87f98dfde461afe3f706de36c9635a5d/); ethereum `0x1ee312...9ebebf`; ethereum `0xa2b04f...8a84f2`; polygon `0x1dab41...b88de6`; polygon `0x1dd009...9d9348` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7e6782...49d919` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea7b8d...71c423` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CERTIK USDT Audit, January 6th, 2021: <> (also discovered via alternate URL)](https://v2.cvi.finance/files/usdt-audit.pdf) | CertiK | Audit | 2021-01 | stale | Direct | contract_name|n/a | 5 | high |
| [CERTIK ETH Audit, March 29th, 2021: <> (also discovered via alternate URL)](https://v2.cvi.finance/files/eth-audit.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name|n/a | 5 | high |
| [Solidity.Finance Audit: <>](https://sourcehat.com/audits/CVI) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | 3 | high |
| [Zokyo Audit, November 30th, 2023: <>](https://github.com/zokyo-sec/audit-reports/blob/main/CVI/CVI_Zokyo_audit_report_30thNov_2023.pdf) | Zokyo | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x07e49d...875283`](./contracts/arbitrum-42161/0x07e49d5de43dda6162fa28d24d5935c151875283/) | StandardArbERC20 | token | $5,876.34 | Verified native implementation with $5,876.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | GOVIETHSLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x27792c...1a16dc`](./contracts/polygon-137/0x27792cda195d07ffb36e94e253d67361661a16dc/) | GOVIETHStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x88d01e...45ff9d`](./contracts/polygon-137/0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d/) | PlatformV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=85

Fork inheritance lineage and inherited audits are included when available.
