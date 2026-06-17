# Agentic Audit Brief: YieldNest

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:32.615Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 18 unique implementations (24 raw deployments)
- DeFi Llama TVL: $20,168,862.08
- On-chain TVL (included contracts): $19,206,391.98
- TVL by chain: Ethereum $19,048,274.90 | Bsc $158,097.18 | Optimism $11.85 | Base $8.05

## Project Description

YieldNest is an on-chain capital allocator and yield protocol offering liquid restaking and MAX Vault products across multiple assets and chains. Its products include restaking-focused tokens such as ynETH and ynLSDe as well as vault and allocator products such as ynETHx, ynBNBx, ynRWAx, and ynUSDx, which route capital across EigenLayer and other DeFi or yield strategies rather than relying on EigenLayer as the sole mechanism.

### Architecture

The ynETH family feeds rewards into ynETHx vaults, which issue L2YnERC20Upgradeable tokens. Kernel strategies like ynBTCk and vaults like ynBNBx share the same L2 token standard and are governed by multisigs, with YND serving as the ecosystem token.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 24 (23 live, 1 unknown).
- Excluded by liveness: 32 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 18/28 live.
- Detected codebases: none
- Unverified dependencies: 5/53.

## Audit Coverage Summary

- Verified implementations audited: 8/17 (47.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 1
- Unverified implementations: 1
- Unique implementations: 18
- Raw deployments: 24
- Audits discovered: 13
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $295,088.52
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 10 aging, 3 stale, 0 unknown
- Tier 1 coverage: 23.5% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 35.3% | 2025-05 |
| ChainSecurity | Tier 1 | 4 | 23.5% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | unit-20350 (2 proxies) | 2 deployments: ethereum [`0x3db228...ddcb4b`](./contracts/ethereum-1/0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b/); ethereum `0x657d9a...c96dcb` | ✅ Audited |
| Vault | core_logic | ethereum | unit-20345 | [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/) | ✅ Audited |
| Vault | core_logic | bsc | unit-20366 | [`0x32c830...0a2c5f`](./contracts/bsc-56/0x32c830f5c34122c6afb8ae87aba541b7900a2c5f/) | ✅ Audited |
| KernelStrategy | core_logic | bsc | unit-20368 | [`0x78839c...606a56`](./contracts/bsc-56/0x78839ce14a8213779128ee4da6d75e1326606a56/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | unit-20351 | [`0x40d5ff...652351`](./contracts/ethereum-1/0x40d5ff3e218f54f4982661a0464a298cf6652351/) | ✅ Audited |
| RewardsReceiver | unknown | ethereum | unit-20347 | [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/) | ✅ Audited |
| ynEigen | unknown | ethereum | unit-20349 | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ✅ Audited |
| ynETH | unknown | ethereum | unit-20346 | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626WrapperStrategy | core_logic | ethereum | unit-20361 | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | unit-20365 | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | optimism | unit-20364 | [`0xe231db...635a61`](./contracts/optimism-10/0xe231db5f348d709239ef1741ea30961b3b635a61/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | bsc | unit-20369 | [`0xdb8e54...af0511`](./contracts/bsc-56/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | optimism | unit-20363 | [`0xdb8e54...af0511`](./contracts/optimism-10/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-20358 (4 proxies) | 4 deployments: ethereum [`0x8e20ea...c4de2e`](./contracts/ethereum-1/0x8e20eaf121154b69b7b880fa6c617c0175c4de2e/); ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-20367 | [`0x721688...85d436`](./contracts/bsc-56/0x721688652dea9cabec70bd99411eaeab9485d436/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2YnERC20Upgradeable | token | base | unit-20370 | 3 deployments: base [`0xdb8e54...af0511`](./contracts/base-8453/0xdb8e54f39aff243b25a41e4747957ed517af0511/); arbitrum [`0xdb8e54...af0511`](./contracts/arbitrum-42161/0xdb8e54f39aff243b25a41e4747957ed517af0511/); berachain [`0xdb8e54...af0511`](./contracts/berachain-80094/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ink | n/a | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf (also discovered via alternate URL)](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 4 | high |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 5 | high |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 17 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=96

Zero-match audit list:

- [6070] yieldnest_clisbnb_strategy_audit_report.pdf
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf
- [6076] zokyo_audit_yieldnest_feb4th_2025.pdf
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf
- [6078] zokyo_yneth_audit_yieldnest_april_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
