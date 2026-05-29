# Agentic Audit Brief: T RIZE

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-29T15:49:20.203Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): $15,005,448.61
- TVL by chain: Base $15,005,448.61

## Project Description

T RIZE is a protocol for tokenizing real-world assets (RWA), enabling on-chain representation and transfer of off-chain assets. It provides a single token contract on Base that likely represents fractional ownership or claims on underlying real-world assets.

### Architecture

The protocol consists of a single product family with one core token contract; there are no additional families or shared infrastructure to relate.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 44
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,005,448.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 44 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RizeToken | token | base | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | ⚠️ Unaudited |

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
| [RTK_query_api.md (also discovered via alternate URL)](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-desktop/docs/RTK_query_api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ONBOARDING_LINUX.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/ONBOARDING_LINUX.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [analytics.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/analytics.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deeplinks.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/deeplinks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [linux_setup.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/linux_setup.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [llm_e2e_testing.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/llm_e2e_testing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [no_nano.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/no_nano.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [theming.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/theming.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [wsl_setup.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/apps/ledger-live-mobile/docs/wsl_setup.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [abis.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/abis.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adapters.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [etherscan.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/api/explorer/etherscan.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.md (also discovered via alternate URL)](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/api/explorer/index.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ledger.md (also discovered via alternate URL)](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/api/explorer/ledger.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nft.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/api/nft.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rpc.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/api/node/rpc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bridge.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/bridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [broadcast.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/broadcast.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [buildOptimisticOperation.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/buildOptimisticOperation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [createTransaction.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/createTransaction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deviceTransactionConfig.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/deviceTransactionConfig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [estimateMaxSpendable.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/estimateMaxSpendable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/evm-family-integration-process/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [getTransactionStatus.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/getTransactionStatus.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hw-getAddress.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/hw-getAddress.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hw-signMessage.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/hw-signMessage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [logic.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/logic.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nftResolvers.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/nftResolvers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [preload.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/preload.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [prepareTransaction.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/prepareTransaction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [signOperation.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/signOperation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [specs.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/specs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [speculos-deviceActions.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/speculos-deviceActions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [synchronization.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/synchronization.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [transaction.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/transaction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [types.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/coin-modules/coin-evm/docs/types.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BitcoinAddresses.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledger-live-common/src/families/bitcoin/docs/BitcoinAddresses.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BitcoinSync.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledger-live-common/src/families/bitcoin/docs/BitcoinSync.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RBF.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledger-live-common/src/families/bitcoin/docs/RBF.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Troubleshooting.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledger-live-common/src/families/bitcoin/docs/Troubleshooting.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UtxoPickingTransactionFees.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledger-live-common/src/families/bitcoin/docs/UtxoPickingTransactionFees.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethereum_ledger_integration.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledgerjs/docs/ethereum_ledger_integration.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [migrate_webusb.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/libs/ledgerjs/docs/migrate_webusb.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [orchestrator.md](https://github.com/T-RIZE-Group/ledger-live/blob/develop/tools/github-bot/docs/orchestrator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | RizeToken | token | $15,005,448.61 | Verified native implementation with $15,005,448.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 44
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6001] RTK_query_api.md
- [6002] ONBOARDING_LINUX.md
- [6004] analytics.md
- [6005] deeplinks.md
- [6006] linux_setup.md
- [6007] llm_e2e_testing.md
- [6008] no_nano.md
- [6009] theming.md
- [6010] wsl_setup.md
- [6011] abis.md
- [6012] adapters.md
- [6013] etherscan.md
- [6014] index.md
- [6015] ledger.md
- [6018] nft.md
- [6021] rpc.md
- [6022] bridge.md
- [6023] broadcast.md
- [6024] buildOptimisticOperation.md
- [6025] createTransaction.md
- [6026] deviceTransactionConfig.md
- [6027] estimateMaxSpendable.md
- [6028] README.md
- [6029] getTransactionStatus.md
- [6030] hw-getAddress.md
- [6031] hw-signMessage.md
- [6032] logic.md
- [6033] nftResolvers.md
- [6034] preload.md
- [6035] prepareTransaction.md
- [6036] signOperation.md
- [6037] specs.md
- [6038] speculos-deviceActions.md
- [6039] synchronization.md
- [6040] transaction.md
- [6041] types.md
- [6042] BitcoinAddresses.md
- [6043] BitcoinSync.md
- [6044] RBF.md
- [6045] Troubleshooting.md
- [6046] UtxoPickingTransactionFees.md
- [6047] ethereum_ledger_integration.md
- [6048] migrate_webusb.md
- [6049] orchestrator.md

Fork inheritance lineage and inherited audits are included when available.
