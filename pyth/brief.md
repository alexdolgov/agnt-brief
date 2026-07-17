# Agentic Audit Brief: pyth

## Project Overview

- Project: pyth (`pyth`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.291Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: avalanche, base, ethereum, hyperliquid, manta, mode, optimism, polygon
- Contract surface: 15 unique implementations (15 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 13 project-authored contract(s) across 8 chain(s); 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (reentrancyguard, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (7 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/7 (57.1%)
- Deployed-live implementations: 7 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/15
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 25 (25 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 19 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pyth Data Association | Tier 2 | 2 | 13.3% | 2024-01 |
| unknown | Tier 2 | 2 | 13.3% | 2026-02 |
| Zellic | Tier 2 | 1 | 6.7% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EntropyUpgradable | unknown | optimism | n/a | [`0x0402833a00e734821f74fa4bbded2f1759540519`](./contracts/optimism-10/0x0402833a00e734821f74fa4bbded2f1759540519/) | ✅ Audited |
| ExecutorUpgradable | unknown | optimism | n/a | [`0x5f3c61944ceb01b3eaef861251fb1e0f14b848fb`](./contracts/optimism-10/0x5f3c61944ceb01b3eaef861251fb1e0f14b848fb/) | ✅ Audited |
| PythUpgradable | unknown | polygon | n/a | [`0x14715d91e31d690a31ecc542eea613ff9dda76fc`](./contracts/polygon-137/0x14715d91e31d690a31ecc542eea613ff9dda76fc/) | ✅ Audited |
| ReceiverImplementation | unknown | mode | n/a | [`0x66e9cba5529824a03b5bc9931d9c63637101d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeToken | unknown | avalanche | n/a | [`0x8a0691e602b7a5fcc51a27e4a08376de50889b42`](./contracts/avalanche-43114/0x8a0691e602b7a5fcc51a27e4a08376de50889b42/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | optimism | n/a | [`0x05d4ed5f126ac23b6fb8e4ffd4c2c28b6050e480`](./contracts/optimism-10/0x05d4ed5f126ac23b6fb8e4ffd4c2c28b6050e480/) | ⚠️ Unaudited |
| ExpressRelayUpgradable | unknown | mode | n/a | [`0x24654078a8e043e8985d962a5100cdfa2026f92c`](./contracts/mode-34443/0x24654078a8e043e8985d962a5100cdfa2026f92c/) | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | manta | n/a | [`0x01d27580c464d5b3b26f78bee12e684901dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/) | ⚠️ Unaudited |
| MulticallAdapter | unknown | mode | n/a | [`0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | ethereum | n/a | [`0x237b7aff1af5d9f311f830234792d429355a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/) | ⚠️ Unaudited |
| OpportunityAdapterFactory | unknown | mode | n/a | [`0x59f78de21a0b05d96ae00c547ba951a3b905602f`](./contracts/mode-34443/0x59f78de21a0b05d96ae00c547ba951a3b905602f/) | ⚠️ Unaudited |
| OpportunityProvider | unknown | mode | n/a | [`0x621330d0ecd449a06b72f41c1a93626ccec53cca`](./contracts/mode-34443/0x621330d0ecd449a06b72f41c1a93626ccec53cca/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | hyperliquid | n/a | [`0x47a1e9f11b7e2f6554861f450a5764c93913b784`](./contracts/hyperliquid-999/0x47a1e9f11b7e2f6554861f450a5764c93913b784/) | ⚠️ Unaudited |
| TokenBridge | unknown | mode | n/a | [`0x8250f4af4b972684f7b336503e2d6dfedeb1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | ⚠️ Unaudited |
| TokenImplementation | unknown | base | n/a | [`0x4c5d8a75f3762c1561d96f177694f67378705e98`](./contracts/base-8453/0x4c5d8a75f3762c1561d96f177694f67378705e98/) | ⚠️ Unaudited |

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
| [pyth_oracle_client_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_04_08/pyth_oracle_client_zellic.pdf) | Zellic | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [pyth2wormhole_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_04_27/pyth2wormhole_zellic.pdf) | Zellic | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [pyth_governance_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_05_06/pyth_governance_zellic.pdf) | Zellic | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [pyth-governance-ottersec.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_07_08/pyth-governance-ottersec.pdf) | Ottersec | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [pyth-oracle-ottersec.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_07_08/pyth-oracle-ottersec.pdf) | Ottersec | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [pyth_aptos.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_10_10/pyth_aptos.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [pyth.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_11_01/pyth.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [pyth-oracle-certik.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_11_30/pyth-oracle-certik.pdf) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [pyth-crosschain-governance.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_12_13/pyth-crosschain-governance.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [pyth-crosschain-solana.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_12_13/pyth-crosschain-solana.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [pyth-crosschain-eth.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_02_23/pyth-crosschain-eth.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |
| [Pyth Network - Zellic Audit Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_03_14/Pyth%20Network%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [EVM Patch Review.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_26/EVM%20Patch%20Review.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [Pyth Network Smart Contract Patch Review.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_26/Pyth%20Network%20Smart%20Contract%20Patch%20Review.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [pyth_sui_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_27/pyth_sui_audit_final.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [Trail of Bits Pythnet Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_31/Trail%20of%20Bits%20Pythnet%20Report.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Pyth Data Association - Entropy - Comprehensive Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_01_23/Pyth%20Data%20Association%20-%20Entropy%20-%20Comprehensive%20Report.pdf) | Pyth Data Association | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |
| [pyth_solana_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_04_25/pyth_solana_pull_oracle_audit_final.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pyth_starknet_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_07_12/pyth_starknet_pull_oracle_audit_final.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [pyth_fuel_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_09_03/pyth_fuel_pull_oracle_audit_final.pdf) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [pyth_cip_final_report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_09_11/pyth_cip_final_report.pdf) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [pyth_ton_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_11_26/pyth_ton_pull_oracle_audit_final.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [pyth_lazer_solana_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2025_01_17/pyth_lazer_solana_audit_final.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [pyth_lazer_evm_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2025_02_12/pyth_lazer_evm_audit_final.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [pyth_lazer_sui_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2026_02_16/pyth_lazer_sui_audit_final.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x8a0691e602b7a5fcc51a27e4a08376de50889b42`](./contracts/avalanche-43114/0x8a0691e602b7a5fcc51a27e4a08376de50889b42/) | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x24654078a8e043e8985d962a5100cdfa2026f92c`](./contracts/mode-34443/0x24654078a8e043e8985d962a5100cdfa2026f92c/) | ExpressRelayUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x01d27580c464d5b3b26f78bee12e684901dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/) | MantaMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | MulticallAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237b7aff1af5d9f311f830234792d429355a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/) | OpenfortUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x59f78de21a0b05d96ae00c547ba951a3b905602f`](./contracts/mode-34443/0x59f78de21a0b05d96ae00c547ba951a3b905602f/) | OpportunityAdapterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x621330d0ecd449a06b72f41c1a93626ccec53cca`](./contracts/mode-34443/0x621330d0ecd449a06b72f41c1a93626ccec53cca/) | OpportunityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47a1e9f11b7e2f6554861f450a5764c93913b784`](./contracts/hyperliquid-999/0x47a1e9f11b7e2f6554861f450a5764c93913b784/) | PythAggregatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8250f4af4b972684f7b336503e2d6dfedeb1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c5d8a75f3762c1561d96f177694f67378705e98`](./contracts/base-8453/0x4c5d8a75f3762c1561d96f177694f67378705e98/) | TokenImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=12

Zero-match audit list:

- [24353] pyth_oracle_client_zellic.pdf
- [24355] pyth_governance_zellic.pdf
- [24356] pyth-governance-ottersec.pdf
- [24357] pyth-oracle-ottersec.pdf
- [24360] pyth-oracle-certik.pdf
- [24361] pyth-crosschain-governance.pdf
- [24364] Pyth Network - Zellic Audit Report.pdf
- [24368] Trail of Bits Pythnet Report.pdf
- [24370] pyth_solana_pull_oracle_audit_final.pdf
- [24372] pyth_fuel_pull_oracle_audit_final.pdf
- [24373] pyth_cip_final_report.pdf
- [24374] pyth_ton_pull_oracle_audit_final.pdf
- [24375] pyth_lazer_solana_audit_final.pdf
- [24376] pyth_lazer_evm_audit_final.pdf
- [24377] pyth_lazer_sui_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
