# Agentic Audit Brief: Axelar Network

## Project Overview

- Project: Axelar Network (`axelar-network`)
- Website: [https://axelar.network](https://axelar.network)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:32.490Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, mode
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $132,554,859.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 13 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/15 (40.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/15
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 63 (63 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/axelarnetwork/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 22 aging, 37 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 4 | 26.7% | 2025-08 |
| CertiK | Tier 2 | 1 | 6.7% | 2022-04 |
| Chaintroopers | Tier 2 | 1 | 6.7% | 2022-08 |
| Commonprefix | Tier 2 | 1 | 6.7% | 2022-03 |
| NCC | Tier 2 | 1 | 6.7% | 2025-05 |
| Yaar Hahn | Tier 2 | 1 | 6.7% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnableMintableCappedERC20 | unknown | ethereum | n/a | [`0x467719...a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | ✅ Audited |
| ConstAddressDeployer | unknown | ethereum | n/a | [`0x98b292...77919e`](./contracts/ethereum-1/0x98b2920d53612483f91f12ed7754e51b4a77919e/) | ✅ Audited |
| Create3Deployer | unknown | ethereum | n/a | [`0x6513ae...dc90d8`](./contracts/ethereum-1/0x6513aedb4d1593ba12e50644401d976aebdc90d8/) | ✅ Audited |
| Nexus | unknown | ethereum | n/a | [`0xafce80...845eb3`](./contracts/ethereum-1/0xafce80b19a8ce13dec0739a1aab7a028d6845eb3/) | ✅ Audited |
| ReceiverImplementation | unknown | mode | n/a | [`0x66e9cb...01d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ✅ Audited |
| Timelock | unknown | ethereum | n/a | [`0x2e9bdd...887a9f`](./contracts/ethereum-1/0x2e9bdddbad724b1cc3bfe521d8e2c5f52a887a9f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActionQueueUpgradeable | unknown | ethereum | n/a | [`0x10087e...399afe`](./contracts/ethereum-1/0x10087e44d399345b2f959e7c3619d57a73399afe/) | ⚠️ Unaudited |
| BondSaleV1Upgradeable | unknown | ethereum | n/a | [`0x16b6ac...c91b4c`](./contracts/ethereum-1/0x16b6ac8f9af81a01d9ff14191842418ebdc91b4c/) | ⚠️ Unaudited |
| KIP | unknown | ethereum | n/a | [`0x946fb0...6cd374`](./contracts/ethereum-1/0x946fb08103b400d1c79e07acccdef5cfd26cd374/) | ⚠️ Unaudited |
| KIPStakingSimple | unknown | ethereum | n/a | [`0x0611dc...e91ce8`](./contracts/ethereum-1/0x0611dcc913a9e108fd91eb282e00dff45de91ce8/) | ⚠️ Unaudited |
| StakedUSDX | unknown | ethereum | n/a | [`0x7788a3...d87d92`](./contracts/ethereum-1/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| USDX | unknown | ethereum | n/a | [`0xf3527e...a66cef`](./contracts/ethereum-1/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | ethereum | n/a | [`0x0eaf6f...d82f7b`](./contracts/ethereum-1/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | ethereum | n/a | [`0x859834...e3065f`](./contracts/ethereum-1/0x8598348b2cb4f62ec529ad52ab5e57b52ae3065f/) | ⚠️ Unaudited |
| VEKIP | unknown | ethereum | n/a | [`0x2c328a...dca12c`](./contracts/ethereum-1/0x2c328a18675a94775ad28d1aa6f47b755bdca12c/) | ⚠️ Unaudited |

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
| [2021-11 Adrian and Lucas.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Adrian%20and%20Lucas.pdf) | Adrian and Lucas | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [2021-11 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Commonprefix.pdf) | Commonprefix | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [2021-12 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-12%20Cure53.pdf) | Cure53 | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [2022-02 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-02%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [2022-03 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-03%20Commonprefix.pdf) | Commonprefix | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [2022-04 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [2022-04 Certik.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Certik.pdf) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [2022-04 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Cure53.pdf) | Cure53 | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2022-05 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-05%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022-06 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-06%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [2022-07 Ackee blockchain-v2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain-v2.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [2022-07 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [2022-08 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [2022-08 Chaintroopers.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Chaintroopers.pdf) | Chaintroopers | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [2022-09 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-09%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [2022-10 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-10%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [2022-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2023-01 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-01%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [2023-02 Ackee Blockchain-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-2.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2023-02 Ackee Blockchain-3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-3.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [2023-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2023-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2023-04 Informal Systems.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Informal%20Systems.pdf) | Informal Systems | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2023-08 Yaar Hahn Governance.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20Governance.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [2023-08 Yaar Hahn ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20ITS.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2023-10 Least Authority.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-10%20Least%20Authority.pdf) | Least Authority | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [2023-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [2023-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [2024-02 Ackee Blockchain CGP Refactor.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain%20CGP%20Refactor.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [2024-03 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-03%20NCC.pdf) | NCC | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [2024-04 Ackee Blockchain ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain%20ITS.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [2024-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-05 Halborn.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-05%20Halborn.pdf) | Halborn | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [2024-06 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20NCC.pdf) | NCC | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-06 Ottersec.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20Ottersec.pdf) | Ottersec | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-07 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-07%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [2024-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC.pdf) | NCC | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11 NCC_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC_ITS.pdf) | NCC | Audit | 2024-11 | aging | Direct | contract_name | 1 | medium |
| [2024-11 Ottersec - Sui.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec%20-%20Sui.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-11 Ottersec_Sui_Gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec_Sui_Gateway.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2025-01 Ackee_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20Ackee_ITS.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-01 FYEO_Soroban.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_Soroban.pdf) | FYEO | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-01 FYEO_XRPL.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_XRPL.pdf) | FYEO | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-01 NCC_XRPL_v1.3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20NCC_XRPL_v1.3.pdf) | NCC | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf) | NCC | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-03 NCC_XRPL_phase2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-03%20NCC_XRPL_phase2.pdf) | NCC | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20NCC%20_%20XRPL%20_%20Final%20v1.0_phase3.pdf) | NCC | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04 axelar_cgp_soroban_stellar_audit_final.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20axelar_cgp_soroban_stellar_audit_final.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-gas-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gas-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gateway.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-governance-1.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-1.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-governance-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-2.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-interchain-token-factory.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-factory.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-interchain-token-service-proxy.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service-proxy.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-interchain-token-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04-Axelar-mvx-token-manager.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-token-manager.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-05 NCC_XRPL_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-05%20NCC_XRPL_phase3.pdf) | NCC | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf) | Ackee Blockchain | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/axelarnetwork/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Flow](https://github.com/axelarnetwork/amplifier-advisory-committee/blob/main/src/chains/flow-evm/FLOW_EVM_REPORT.md) | Amplifier Advisory Committee | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [here](https://github.com/axelarnetwork/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 48
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: extraction_exact=14

Zero-match audit list:

- [16712] 2021-11 Adrian and Lucas.pdf
- [16714] 2021-12 Cure53.pdf
- [16719] 2022-04 Cure53.pdf
- [16720] 2022-05 Ackee blockchain.pdf
- [16721] 2022-06 Ackee blockchain.pdf
- [16723] 2022-07 Ackee blockchain.pdf
- [16724] 2022-08 Ackee blockchain.pdf
- [16726] 2022-09 Ackee Blockchain.pdf
- [16728] 2022-12 Ackee Blockchain.pdf
- [16729] 2023-01 Ackee Blockchain.pdf
- [16730] 2023-02 Ackee Blockchain-2.pdf
- [16732] 2023-02 Ackee Blockchain.pdf
- [16733] 2023-04 Ackee Blockchain.pdf
- [16734] 2023-04 Informal Systems.pdf
- [16736] 2023-08 Yaar Hahn ITS.pdf
- [16737] 2023-10 Least Authority.pdf
- [16738] 2023-11 Ackee Blockchain.pdf
- [16740] 2024-02 Ackee Blockchain CGP Refactor.pdf
- [16742] 2024-03 NCC.pdf
- [16744] 2024-04 Ackee Blockchain.pdf
- [16745] 2024-05 Halborn.pdf
- [16746] 2024-06 NCC.pdf
- [16747] 2024-06 Ottersec.pdf
- [16748] 2024-07 Ackee Blockchain.pdf
- [16749] 2024-11 Ackee Blockchain.pdf
- [16750] 2024-11 NCC.pdf
- [16752] 2024-11 Ottersec - Sui.pdf
- [16753] 2024-11 Ottersec_Sui_Gateway.pdf
- [16754] 2025-01 Ackee_ITS.pdf
- [16755] 2025-01 FYEO_Soroban.pdf
- [16756] 2025-01 FYEO_XRPL.pdf
- [16757] 2025-01 NCC_XRPL_v1.3.pdf
- [16758] 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf
- [16759] 2025-03 NCC_XRPL_phase2.pdf
- [16760] 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf
- [16761] 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf
- [16762] 2025-04-Axelar-mvx-gas-service.pdf
- [16763] 2025-04-Axelar-mvx-gateway.pdf
- [16764] 2025-04-Axelar-mvx-governance-1.pdf
- [16765] 2025-04-Axelar-mvx-governance-2.pdf
- [16766] 2025-04-Axelar-mvx-interchain-token-factory.pdf
- [16767] 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf
- [16768] 2025-04-Axelar-mvx-interchain-token-service.pdf
- [16769] 2025-04-Axelar-mvx-token-manager.pdf
- [16770] 2025-05 NCC_XRPL_phase3.pdf
- [16771] 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf
- [16773] Flow
- [16774] here

Fork inheritance lineage and inherited audits are included when available.
