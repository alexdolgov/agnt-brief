# Agentic Audit Brief: EigenCloud

## Project Overview

- Project: EigenCloud (`eigencloud`)
- Website: [https://www.eigencloud.xyz](https://www.eigencloud.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.615Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $4,439,614,231.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 15 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/14 (35.7%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/17
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 11 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 5 | 29.4% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayedWithdrawalRouter | unknown | ethereum | n/a | [`0x44bcb0...83e2af`](./contracts/ethereum-1/0x44bcb0e01cd0c5060d4bb1a07b42580ef983e2af/) | ✅ Audited |
| DelegationManager | unknown | ethereum | n/a | [`0x39053d...8ef37a`](./contracts/ethereum-1/0x39053d51b77dc0d36036fc1fcc8cb819df8ef37a/) | ✅ Audited |
| EigenPod | unknown | ethereum | n/a | [`0x5a2a4f...909073`](./contracts/ethereum-1/0x5a2a4f2f3c18f09179b6703e63d9edd165909073/) | ✅ Audited |
| Slasher | unknown | ethereum | n/a | [`0xd92145...c1c3cd`](./contracts/ethereum-1/0xd92145c07f8ed1d392c1b88017934e301cc1c3cd/) | ✅ Audited |
| StrategyManager | unknown | ethereum | n/a | [`0x5d25ee...e342fb`](./contracts/ethereum-1/0x5d25eef8cfedaa47d31fe2346726de1c21e342fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BackingEigen | unknown | ethereum | n/a | [`0x83e911...456e75`](./contracts/ethereum-1/0x83e9115d334d248ce39a6f36144aeab5b3456e75/) | ⚠️ Unaudited |
| Eigen | unknown | ethereum | n/a | [`0x1b716d...aae451`](./contracts/ethereum-1/0x1b716d0ce7c19445152171c6f6e92d10b6aae451/) | ⚠️ Unaudited |
| EigenPodManager | unknown | ethereum | n/a | [`0x91e677...d3a338`](./contracts/ethereum-1/0x91e677b07f7af907ec9a428aafa9fc14a0d3a338/) | ⚠️ Unaudited |
| EigenStrategy | unknown | ethereum | n/a | [`0x27e7a3...c00428`](./contracts/ethereum-1/0x27e7a3a81741b9fcc5ad7edcbf9f8a72a5c00428/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0x179f00...eb55ba`](./contracts/ethereum-1/0x179f0063d87bb7ca4f75ca693566018ca9eb55ba/) | ⚠️ Unaudited |
| PauserRegistry | unknown | ethereum | n/a | [`0x0c431c...977060`](./contracts/ethereum-1/0x0c431c66f4de941d089625e5b423d00707977060/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x8b9566...b72444`](./contracts/ethereum-1/0x8b9566ada63b64d1e1dcf1418b43fd1433b72444/) | ⚠️ Unaudited |
| SignedDistributor | unknown | ethereum | n/a | [`0x035bda...d4ad02`](./contracts/ethereum-1/0x035bdaeab85e47710c27eda7fd754ba80ad4ad02/) | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | ethereum | n/a | [`0x1bee69...25dcd2`](./contracts/ethereum-1/0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xa6db1a...210eaf`](./contracts/ethereum-1/0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x2520c6...9e9ff2`](./contracts/ethereum-1/0x2520c6b2c1fbe1813ab5c7c1018cda39529e9ff2/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0xab2346...f8e0c1`](./contracts/ethereum-1/0xab23463e3f7098488ef1a299dbd377c027f8e0c1/) | ⚠️ Unaudited |

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
| [Certora - Eigenlayer Duration Vaults.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Certora%20-%20Eigenlayer%20Duration%20Vaults.pdf) | Certora | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Certora - Eigenlayer Incentive Council.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Certora%20-%20Eigenlayer%20Incentive%20Council.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EigenLayer Hourglass pt1 - Certora - Security Assessment Final Report - August 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Hourglass%20pt1%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20August%202025.pdf) | Certora | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [EigenLayer Hourglass pt2 - Certora - Security Assessment Final Report - August 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Hourglass%20pt2%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20August%202025.pdf) | Certora | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Merkle%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20July%202025.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [EigenLayer Multichain PT1 - Certora - Security Assessment Final Report2 - July 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Multichain%20PT1%20-%20Certora%20-%20Security%20Assessment%20Final%20Report2%20-%20July%202025.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [EigenLayer Multichain pt2 - Certora - Security Assessment Final Report - July 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Multichain%20pt2%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20July%202025.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Eigenlayer - Slashing UX Improvements Audit.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Eigenlayer%20-%20Slashing%20UX%20Improvements%20Audit.pdf) | Unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [M1 Mainnet - Diligence - Mar 2023.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M1%20Mainnet%20-%20Diligence%20-%20Mar%202023.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [M1 Mainnet - Sigma Prime - May 2023.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M1%20Mainnet%20-%20Sigma%20Prime%20-%20May%202023.pdf) | Sigma Prime | Audit | 2023-05 | stale | Direct | contract_name | 5 | high |
| [M2 Mainnet - Cantina - Apr 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M2%20Mainnet%20-%20Cantina%20-%20Apr%202024.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [M2 Mainnet - Sigma Prime - Feb 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M2%20Mainnet%20-%20Sigma%20Prime%20-%20Feb%202024.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [M4 Mainnet (PEPE) - Certora - Aug 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M4%20Mainnet%20(PEPE)%20-%20Certora%20-%20Aug%202024.pdf) | Certora | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [M4 Mainnet (PEPE) - Sigma Prime - Jul 2024 - Updated Aug 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M4%20Mainnet%20(PEPE)%20-%20Sigma%20Prime%20-%20Jul%202024%20-%20Updated%20Aug%202025.pdf) | Sigma Prime | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Permissionless Strategies - Sigma Prime - Aug 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Permissionless%20Strategies%20-%20Sigma%20Prime%20-%20Aug%202024.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Redistribution Slash Delay (v1.13.0) - Certora - May 2026.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Redistribution%20Slash%20Delay%20(v1.13.0)%20-%20Certora%20-%20May%202026.pdf) | Certora | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Rewards v2 - SigmaPrime - Dec 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Rewards%20v2%20-%20SigmaPrime%20-%20Dec%202024.pdf) | Sigma Prime | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Rewards v2.2 - Sigma Prime - Feb 2026.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Rewards%20v2.2%20-%20Sigma%20Prime%20-%20Feb%202026.pdf) | Sigma Prime | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [RewardsCoordinator - Sigma Prime - May 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/RewardsCoordinator%20-%20Sigma%20Prime%20-%20May%202024.pdf) | Sigma Prime | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Token + Programmatic Incentives - Sigma Prime - Sep 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Token%20%2B%20Programmatic%20Incentives%20-%20Sigma%20Prime%20-%20Sep%202024.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [V1.0.0 (Slashing) - Certora - Feb 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/V1.0.0%20(Slashing)%20-%20Certora%20-%20Feb%202025.pdf) | Certora | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [V1.0.0 (Slashing) - Sigma Prime - Feb 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/V1.0.0%20(Slashing)%20-%20Sigma%20Prime%20-%20Feb%202025.pdf) | Sigma Prime | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [V1.6.0 (MOOCOW) - Certora - June 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/V1.6.0%20(MOOCOW)%20-%20Certora%20-%20June%202025.pdf) | Certora | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [V1.0.0 (Slashing) - Cantina - March 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/V1.0.0%20(Slashing)%20-%20Cantina%20%20-%20March%202025.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x83e911...456e75`](./contracts/ethereum-1/0x83e9115d334d248ce39a6f36144aeab5b3456e75/) | BackingEigen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b716d...aae451`](./contracts/ethereum-1/0x1b716d0ce7c19445152171c6f6e92d10b6aae451/) | Eigen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91e677...d3a338`](./contracts/ethereum-1/0x91e677b07f7af907ec9a428aafa9fc14a0d3a338/) | EigenPodManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27e7a3...c00428`](./contracts/ethereum-1/0x27e7a3a81741b9fcc5ad7edcbf9f8a72a5c00428/) | EigenStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179f00...eb55ba`](./contracts/ethereum-1/0x179f0063d87bb7ca4f75ca693566018ca9eb55ba/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c431c...977060`](./contracts/ethereum-1/0x0c431c66f4de941d089625e5b423d00707977060/) | PauserRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035bda...d4ad02`](./contracts/ethereum-1/0x035bdaeab85e47710c27eda7fd754ba80ad4ad02/) | SignedDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bee69...25dcd2`](./contracts/ethereum-1/0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2/) | StrategyBaseTVLLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6db1a...210eaf`](./contracts/ethereum-1/0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [20687] Certora - Eigenlayer Duration Vaults.pdf
- [20688] Certora - Eigenlayer Incentive Council.pdf
- [20689] EigenLayer Hourglass pt1 - Certora - Security Assessment Final Report - August 2025.pdf
- [20690] EigenLayer Hourglass pt2 - Certora - Security Assessment Final Report - August 2025.pdf
- [20691] EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf
- [20692] EigenLayer Multichain PT1 - Certora - Security Assessment Final Report2 - July 2025.pdf
- [20693] EigenLayer Multichain pt2 - Certora - Security Assessment Final Report - July 2025.pdf
- [20694] Eigenlayer - Slashing UX Improvements Audit.pdf
- [20695] M1 Mainnet - Diligence - Mar 2023.pdf
- [20697] M2 Mainnet - Cantina - Apr 2024.pdf
- [20698] M2 Mainnet - Sigma Prime - Feb 2024.pdf
- [20699] M4 Mainnet (PEPE) - Certora - Aug 2024.pdf
- [20700] M4 Mainnet (PEPE) - Sigma Prime - Jul 2024 - Updated Aug 2025.pdf
- [20701] Permissionless Strategies - Sigma Prime - Aug 2024.pdf
- [20702] Redistribution Slash Delay (v1.13.0) - Certora - May 2026.pdf
- [20703] Rewards v2 - SigmaPrime - Dec 2024.pdf
- [20704] Rewards v2.2 - Sigma Prime - Feb 2026.pdf
- [20705] RewardsCoordinator - Sigma Prime - May 2024.pdf
- [20706] Token + Programmatic Incentives - Sigma Prime - Sep 2024.pdf
- [20707] V1.0.0 (Slashing) - Certora - Feb 2025.pdf
- [20708] V1.0.0 (Slashing) - Sigma Prime - Feb 2025.pdf
- [20709] V1.6.0 (MOOCOW) - Certora - June 2025.pdf
- [20710] V1.0.0 (Slashing) - Cantina - March 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
