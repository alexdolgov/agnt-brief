# Agentic Audit Brief: pyth

## Project Overview

- Project: pyth (`pyth`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:43.721Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: avalanche, base, ethereum, hyperliquid, manta, mode, optimism, polygon
- Contract surface: 15 unique implementations (15 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 13 project-authored contract(s) across 8 chain(s); 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (reentrancyguard, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (6 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 25 (25 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 25 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeToken | unknown | avalanche | n/a | [`0x8a0691...889b42`](./contracts/avalanche-43114/0x8a0691e602b7a5fcc51a27e4a08376de50889b42/) | ⚠️ Unaudited |
| EntropyUpgradable | unknown | optimism | n/a | [`0x040283...540519`](./contracts/optimism-10/0x0402833a00e734821f74fa4bbded2f1759540519/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | optimism | n/a | [`0x05d4ed...50e480`](./contracts/optimism-10/0x05d4ed5f126ac23b6fb8e4ffd4c2c28b6050e480/) | ⚠️ Unaudited |
| ExecutorUpgradable | unknown | optimism | n/a | [`0x5f3c61...b848fb`](./contracts/optimism-10/0x5f3c61944ceb01b3eaef861251fb1e0f14b848fb/) | ⚠️ Unaudited |
| ExpressRelayUpgradable | unknown | mode | n/a | [`0x246540...26f92c`](./contracts/mode-34443/0x24654078a8e043e8985d962a5100cdfa2026f92c/) | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | manta | n/a | [`0x01d275...dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/) | ⚠️ Unaudited |
| MulticallAdapter | unknown | mode | n/a | [`0x9fcdca...f29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | ethereum | n/a | [`0x237b7a...5a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/) | ⚠️ Unaudited |
| OpportunityAdapterFactory | unknown | mode | n/a | [`0x59f78d...05602f`](./contracts/mode-34443/0x59f78de21a0b05d96ae00c547ba951a3b905602f/) | ⚠️ Unaudited |
| OpportunityProvider | unknown | mode | n/a | [`0x621330...c53cca`](./contracts/mode-34443/0x621330d0ecd449a06b72f41c1a93626ccec53cca/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | hyperliquid | n/a | [`0x47a1e9...13b784`](./contracts/hyperliquid-999/0x47a1e9f11b7e2f6554861f450a5764c93913b784/) | ⚠️ Unaudited |
| PythUpgradable | unknown | polygon | n/a | [`0x14715d...da76fc`](./contracts/polygon-137/0x14715d91e31d690a31ecc542eea613ff9dda76fc/) | ⚠️ Unaudited |
| ReceiverImplementation | unknown | mode | n/a | [`0x66e9cb...01d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ⚠️ Unaudited |
| TokenBridge | unknown | mode | n/a | [`0x8250f4...b1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | ⚠️ Unaudited |
| TokenImplementation | unknown | base | n/a | [`0x4c5d8a...705e98`](./contracts/base-8453/0x4c5d8a75f3762c1561d96f177694f67378705e98/) | ⚠️ Unaudited |

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
| [pyth_oracle_client_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_04_08/pyth_oracle_client_zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth2wormhole_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_04_27/pyth2wormhole_zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_governance_zellic.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_05_06/pyth_governance_zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-governance-ottersec.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_07_08/pyth-governance-ottersec.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-oracle-ottersec.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_07_08/pyth-oracle-ottersec.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_aptos.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_10_10/pyth_aptos.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_11_01/pyth.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-oracle-certik.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_11_30/pyth-oracle-certik.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-crosschain-governance.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_12_13/pyth-crosschain-governance.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-crosschain-solana.pdf](https://github.com/pyth-network/audit-reports/blob/main/2022_12_13/pyth-crosschain-solana.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth-crosschain-eth.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_02_23/pyth-crosschain-eth.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pyth Network - Zellic Audit Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_03_14/Pyth%20Network%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EVM Patch Review.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_26/EVM%20Patch%20Review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pyth Network Smart Contract Patch Review.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_26/Pyth%20Network%20Smart%20Contract%20Patch%20Review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_sui_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_27/pyth_sui_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Trail of Bits Pythnet Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2023_07_31/Trail%20of%20Bits%20Pythnet%20Report.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pyth Data Association - Entropy - Comprehensive Report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_01_23/Pyth%20Data%20Association%20-%20Entropy%20-%20Comprehensive%20Report.pdf) | Pyth Data Association | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_solana_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_04_25/pyth_solana_pull_oracle_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_starknet_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_07_12/pyth_starknet_pull_oracle_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_fuel_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_09_03/pyth_fuel_pull_oracle_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_cip_final_report.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_09_11/pyth_cip_final_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_ton_pull_oracle_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2024_11_26/pyth_ton_pull_oracle_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_lazer_solana_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2025_01_17/pyth_lazer_solana_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_lazer_evm_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2025_02_12/pyth_lazer_evm_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pyth_lazer_sui_audit_final.pdf](https://github.com/pyth-network/audit-reports/blob/main/2026_02_16/pyth_lazer_sui_audit_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 25
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24353] pyth_oracle_client_zellic.pdf
- [24354] pyth2wormhole_zellic.pdf
- [24355] pyth_governance_zellic.pdf
- [24356] pyth-governance-ottersec.pdf
- [24357] pyth-oracle-ottersec.pdf
- [24358] pyth_aptos.pdf
- [24359] pyth.pdf
- [24360] pyth-oracle-certik.pdf
- [24361] pyth-crosschain-governance.pdf
- [24362] pyth-crosschain-solana.pdf
- [24363] pyth-crosschain-eth.pdf
- [24364] Pyth Network - Zellic Audit Report.pdf
- [24365] EVM Patch Review.pdf
- [24366] Pyth Network Smart Contract Patch Review.pdf
- [24367] pyth_sui_audit_final.pdf
- [24368] Trail of Bits Pythnet Report.pdf
- [24369] Pyth Data Association - Entropy - Comprehensive Report.pdf
- [24370] pyth_solana_pull_oracle_audit_final.pdf
- [24371] pyth_starknet_pull_oracle_audit_final.pdf
- [24372] pyth_fuel_pull_oracle_audit_final.pdf
- [24373] pyth_cip_final_report.pdf
- [24374] pyth_ton_pull_oracle_audit_final.pdf
- [24375] pyth_lazer_solana_audit_final.pdf
- [24376] pyth_lazer_evm_audit_final.pdf
- [24377] pyth_lazer_sui_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
