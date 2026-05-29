# Agentic Audit Brief: Plasma One

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Plasma One (`plasma-one`)
- Website: [https://www.plasma.to/one](https://www.plasma.to/one)
- Lifecycle: unknown (Tier 0, 44.7% below peak)
- Generated: 2026-05-29T12:18:06.015Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: plasma
- Contract surface: 7 unique implementations (15 raw deployments)
- DeFi Llama TVL: $2,436,871.64
- On-chain TVL (included contracts): $0.62
- TVL by chain: Plasma $0.62

## Project Description

Plasma One is a crypto card issuer that enables users to spend digital assets via a card product. It leverages cross-chain token bridges and yield-bearing vaults to manage and transfer value.

### Architecture

The BoringVault holds user deposits and generates yield, while ATokenInstance represents tokenized positions. Multiple TetherTokenOFTExtension adapters enable cross-chain USDT transfers, and OUpgradeable contracts likely manage oracle or upgrade logic, all sharing the same deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 15
- Audits discovered: 149
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.62
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 2 aging, 0 stale, 145 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $0.62 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVault | core_logic | plasma | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | ⚠️ Unaudited |
| ATokenInstance | token | plasma | [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ⚠️ Unaudited |
| OUpgradeable | proxy | plasma | 4 deployments: plasma [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/); plasma `0x4970ea...0e8752`; plasma `0x63ab93...08e6f7`; plasma `0xc00e2c...ae65c1` | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | 2 deployments: plasma [`0x322483...773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536...47d8b2` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | plasma | 5 deployments: plasma [`0x1b64b9...d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/); plasma `0x4a5cd3...7a6e0e`; plasma `0xb8ce59...625ebb`; plasma `0xcab8f3...f50b90`; plasma `0xf555a1...db34b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | plasma | `0x42529d...e11acc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sigma_prime_audit_v2.pdf](https://github.com/PlasmaLaboratories/reth/blob/main/audit/sigma_prime_audit_v2.pdf) | unknown | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/reth/blob/main/docs/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [db.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/crates/db.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [eth-wire.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/crates/eth-wire.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [network.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/crates/network.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [stages.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/reth/blob/main/docs/crates/stages.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [database.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/database.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [goals.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/goals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [headers-downloader.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/headers-downloader.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [metrics.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/metrics.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [p2p.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/p2p.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [review.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/design/review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [release.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/reth/blob/main/docs/release.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ci.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/repo/ci.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [labels.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/repo/labels.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [layout.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/repo/layout.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CLAUDE.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/vocs/CLAUDE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [workflow.md](https://github.com/PlasmaLaboratories/reth/blob/main/docs/workflow.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [design-system.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/apps/web/docs/design-system.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [diff-viewer-plan.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/apps/web/docs/diff-viewer-plan.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sandbox-state-persistence-plan.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/apps/web/docs/sandbox-state-persistence-plan.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [architecture.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/docs/agents/architecture.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code-style.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/docs/agents/code-style.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lessons-learned.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/docs/agents/lessons-learned.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [react-best-practices-audit.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/docs/agents/react-best-practices-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lazy-sandbox-session-creation.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/docs/plans/lazy-sandbox-session-creation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [approval-system.md](https://github.com/PlasmaLaboratories/open-agents/blob/main/packages/agent/docs/approval-system.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CLI.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/CLI.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CONTRIBUTING_DOCS.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/CONTRIBUTING_DOCS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SUMMARY.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [case-studies.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/case-studies.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_blockchain_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_blockchain_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_common_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_common_review.md) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [ethrex_levm_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_levm_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_p2p_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_p2p_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_rpc_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_rpc_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_storage_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_storage_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_trie_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_trie_review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_vm_review.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/ethrex_vm_review.md) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [_report_template.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/toolkit/_report_template.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [analysis_instructions.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/crate_reviews/toolkit/analysis_instructions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [daily_hive_report.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/ci/daily_hive_report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [daily_snapsync.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/ci/daily_snapsync.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [installing.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/installing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [dashboards.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/dashboards.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [dev-mode.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/dev-mode.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [flatkeyvalue.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/flatkeyvalue.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [importing-blocks.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/importing-blocks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [introduction.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kurtosis-localnet.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/kurtosis-localnet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [profiling.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/profiling.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rocksdb-inspection.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/rocksdb-inspection.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [storage_api.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/storage_api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [assertoor.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/testing/assertoor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ef-tests.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/testing/ef-tests.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hive.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/testing/hive.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [load-tests.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/testing/load-tests.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rust.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l1/testing/rust.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [integration-tests.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l2/integration-tests.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [prover.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l2/prover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [state-reconstruction-blobs.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/l2/state-reconstruction-blobs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [release-process.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/release-process.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [repl.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/repl.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rich-accounts.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/developers/rich-accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [eip.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/eip.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_replay.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/ethrex_replay/ethrex_replay.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faq.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/ethrex_replay/faq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hardware_requirements.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/getting-started/hardware_requirements.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [binary_distribution.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/getting-started/installation/binary_distribution.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [building_from_source.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/getting-started/installation/building_from_source.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docker_images.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/getting-started/installation/docker_images.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [package_manager.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/getting-started/installation/package_manager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [db_safety.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/db_safety.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [delete_accounts.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/delete_accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [healing.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/healing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [metrics_coverage_gap_analysis.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/metrics_coverage_gap_analysis.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [snap_sync.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/snap_sync.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sorted_trie_insert.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/sorted_trie_insert.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [syncing_holesky.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/syncing_holesky.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [transactions_tradeoffs.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/internal/l1/transactions_tradeoffs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [block_execution.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/architecture/block_execution.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [crate_map.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/architecture/crate_map.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [overview.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/architecture/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sync_state_machine.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/architecture/sync_state_machine.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [databases.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/fundamentals/databases.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [networking.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/fundamentals/networking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [snap_sync_concerns.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/fundamentals/snap_sync_concerns.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sync_modes.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/fundamentals/sync_modes.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [configuration.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/running/configuration.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [consensus_client.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/running/consensus_client.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [monitoring.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/running/monitoring.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [startup.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l1/running/startup.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [admin.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/admin.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [components.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/architecture/components.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sequencer.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/architecture/sequencer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [tdx.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/architecture/tdx.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [performance_observations.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/bench/performance_observations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [prover_performance.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/bench/prover_performance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zkvm_comparison.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/bench/zkvm_comparison.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aligned.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/aligned.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aligned_failure_recovery.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/aligned_failure_recovery.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [based.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/based.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [fee_token.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/fee_token.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [multi-prover.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/prover/multi-prover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risc0.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/prover/risc0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sp1.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/prover/sp1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [tee.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/prover/tee.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [shared_bridge.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/shared_bridge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [synchronous_composability_poc.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/synchronous_composability_poc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [upgrades.md (also discovered via alternate URL)](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/upgrades.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [validium.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/validium.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [vanilla.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/deployment/vanilla.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [block_vs_state_diff_measurements.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/block_vs_state_diff_measurements.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contracts.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [data_availability.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/data_availability.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deposits.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/deposits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [distributed_proving.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/distributed_proving.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ethrex_l2_aligned_integration.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/ethrex_l2_aligned_integration.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [execution_witness.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/execution_witness.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [execution_witness_measurements.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/execution_witness_measurements.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [exit_window.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/exit_window.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [state_diffs.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/state_diffs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [timelock.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/timelock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [transaction_fees.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/transaction_fees.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [withdrawals.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/fundamentals/withdrawals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [blockscout.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/blockscout.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deploy_contracts.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/deploy_contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deposit.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/deposit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [l2_hub.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/l2_hub.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [maintain_sequencer.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/maintain_sequencer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [wallet.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/wallet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [withdraw.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/interacting/withdraw.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [prover-benchmarking.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/l2/prover-benchmarking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [landing.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/landing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lectures.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/lectures.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025-04-03.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/perf_reports/2025-04-03.md) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [guest_program.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/prover/guest_program.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [forks-roadmap.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/roadmaps/forks-roadmap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [callframe.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/vm/levm/callframe.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [debug.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/vm/levm/debug.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [forks.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/vm/levm/forks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [validations.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/vm/levm/validations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [debug_execution_witness_benchmarking.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/workflows/debug_execution_witness_benchmarking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [prover_benchmarking.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/workflows/prover_benchmarking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [regenerate-blobs.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/workflows/regenerate-blobs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zkvm-integrations.md](https://github.com/PlasmaLaboratories/ethrex/blob/main/docs/zkvm-integrations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | BoringVault | core_logic | $0.62 | Verified native implementation with $0.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 149
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8925] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8926] 0002-metadata-manifest-and-pull-command.md
- [8927] 0003-bun-package-manager-node-runtime.md
- [8928] sigma_prime_audit_v2.pdf
- [8929] README.md
- [8931] db.md
- [8932] eth-wire.md
- [8933] network.md
- [8934] stages.md
- [8936] database.md
- [8937] goals.md
- [8938] headers-downloader.md
- [8939] metrics.md
- [8940] p2p.md
- [8941] review.md
- [8942] release.md
- [8944] ci.md
- [8945] labels.md
- [8946] layout.md
- [8947] CLAUDE.md
- [8949] workflow.md
- [8950] design-system.md
- [8951] diff-viewer-plan.md
- [8952] sandbox-state-persistence-plan.md
- [8953] architecture.md
- [8954] code-style.md
- [8955] lessons-learned.md
- [8956] react-best-practices-audit.md
- [8957] lazy-sandbox-session-creation.md
- [8959] approval-system.md
- [8960] CLI.md
- [8961] CONTRIBUTING_DOCS.md
- [8962] SUMMARY.md
- [8963] case-studies.md
- [8965] ethrex_blockchain_review.md
- [8966] ethrex_common_review.md
- [8967] ethrex_levm_review.md
- [8968] ethrex_p2p_review.md
- [8969] ethrex_rpc_review.md
- [8970] ethrex_storage_review.md
- [8971] ethrex_trie_review.md
- [8972] ethrex_vm_review.md
- [8974] _report_template.md
- [8975] analysis_instructions.md
- [8977] daily_hive_report.md
- [8978] daily_snapsync.md
- [8979] installing.md
- [8980] dashboards.md
- [8981] dev-mode.md
- [8982] flatkeyvalue.md
- [8983] importing-blocks.md
- [8984] introduction.md
- [8985] kurtosis-localnet.md
- [8987] profiling.md
- [8988] rocksdb-inspection.md
- [8989] storage_api.md
- [8991] assertoor.md
- [8992] ef-tests.md
- [8993] hive.md
- [8994] load-tests.md
- [8995] rust.md
- [8997] integration-tests.md
- [8999] prover.md
- [9000] state-reconstruction-blobs.md
- [9001] release-process.md
- [9002] repl.md
- [9003] rich-accounts.md
- [9004] eip.md
- [9005] ethrex_replay.md
- [9006] faq.md
- [9008] hardware_requirements.md
- [9010] binary_distribution.md
- [9011] building_from_source.md
- [9012] docker_images.md
- [9013] package_manager.md
- [9014] db_safety.md
- [9015] delete_accounts.md
- [9016] healing.md
- [9017] metrics_coverage_gap_analysis.md
- [9018] snap_sync.md
- [9019] sorted_trie_insert.md
- [9020] syncing_holesky.md
- [9021] transactions_tradeoffs.md
- [9024] block_execution.md
- [9025] crate_map.md
- [9026] overview.md
- [9027] sync_state_machine.md
- [9029] databases.md
- [9030] networking.md
- [9032] snap_sync_concerns.md
- [9033] sync_modes.md
- [9035] configuration.md
- [9036] consensus_client.md
- [9037] monitoring.md
- [9038] startup.md
- [9039] admin.md
- [9041] components.md
- [9044] sequencer.md
- [9045] tdx.md
- [9046] performance_observations.md
- [9047] prover_performance.md
- [9048] zkvm_comparison.md
- [9050] aligned.md
- [9051] aligned_failure_recovery.md
- [9052] based.md
- [9053] fee_token.md
- [9056] multi-prover.md
- [9058] risc0.md
- [9059] sp1.md
- [9060] tee.md
- [9061] shared_bridge.md
- [9062] synchronous_composability_poc.md
- [9063] upgrades.md
- [9064] validium.md
- [9065] vanilla.md
- [9068] block_vs_state_diff_measurements.md
- [9069] contracts.md
- [9070] data_availability.md
- [9071] deposits.md
- [9072] distributed_proving.md
- [9073] ethrex_l2_aligned_integration.md
- [9074] execution_witness.md
- [9075] execution_witness_measurements.md
- [9076] exit_window.md
- [9079] state_diffs.md
- [9080] timelock.md
- [9081] transaction_fees.md
- [9083] withdrawals.md
- [9085] blockscout.md
- [9086] deploy_contracts.md
- [9087] deposit.md
- [9088] l2_hub.md
- [9089] maintain_sequencer.md
- [9091] wallet.md
- [9092] withdraw.md
- [9095] prover-benchmarking.md
- [9097] landing.md
- [9098] lectures.md
- [9099] 2025-04-03.md
- [9101] guest_program.md
- [9103] forks-roadmap.md
- [9104] callframe.md
- [9106] debug.md
- [9108] forks.md
- [9109] validations.md
- [9110] debug_execution_witness_benchmarking.md
- [9111] prover_benchmarking.md
- [9112] regenerate-blobs.md
- [9113] zkvm-integrations.md

Fork inheritance lineage and inherited audits are included when available.
