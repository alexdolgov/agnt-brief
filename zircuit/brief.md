# Agentic Audit Brief: Zircuit

⚠️ Lifecycle status: DECLINING - TVL dropped 10.1% over 90 days

## Project Overview

- Project: Zircuit (`zircuit`)
- Website: [https://www.zircuit.com/](https://www.zircuit.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T06:55:21.910Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: base, ethereum
- Contract surface: 22 unique implementations (32 raw deployments)
- DeFi Llama TVL: $9,641,288.58
- On-chain TVL (included contracts): $176,103,746.78
- TVL by chain: Ethereum $174,592,093.23 | Base $1,511,653.55

## Project Description

Zircuit is a secure onchain finance and zk-rollup platform. Its public product set includes the Zircuit L2 network with bridge and explorer, Zircuit Finance yield vaults, Liquidity Hub for LRTs/LSTs, AI Terminal, grants, and insured or institutional-grade vault offerings. Compliance-focused token infrastructure and institutional lending or strategy contracts should be treated as specific components of the broader Zircuit ecosystem, and tracked Base-deployed lending/strategy products should be distinguished from Zircuit L2 core infrastructure.

### Architecture

The Ethereum family provides the canonical bridge infrastructure that connects to the Zircuit L2, while the Zircuit family includes the native token and lending products that operate on the L2. Governance is managed through the Multisig addresses, which control upgrades and parameters across both families.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 32 (31 live, 1 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 16/22 live.
- Detected codebases: none
- Unverified dependencies: 6/8.

## Audit Coverage Summary

- Verified implementations audited: 6/20 (30.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 32
- Audits discovered: 10
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $144,242,723.68
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $144,242,723.68 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 4 | 20.0% | 2024-07 |
| Ottersec | Tier 2 | 1 | 5.0% | 2024-02 |
| Quantstamp | Tier 2 | 1 | 5.0% | 2025-05 |
| Secure3 | Tier 2 | 1 | 5.0% | 2024-09 |
| Unknown | Tier 2 | 1 | 5.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ✅ Audited |
| L1StandardBridge | operational_periphery | ethereum | unit-35816 | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | unit-35822 | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | unit-35810 | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |
| ZRC | unknown | ethereum | n/a | [`0xfd418e...44d162`](./contracts/ethereum-1/0xfd418e42783382e86ae91e445406600ba144d162/) | ✅ Audited |
| ZrcOFTAdapter | adapter | ethereum | n/a | [`0xb5eb63...57ebc1`](./contracts/ethereum-1/0xb5eb63caad0ca6e068114c42794ada9b7757ebc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | ethereum | unit-35817 | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | unit-35829 (3 proxies) | 3 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xc91e44...e1aca7`; base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| AccountingReceiver | unknown | base | unit-35831 (2 proxies) | 2 deployments: base [`0x43c4a9...e66c9c`](./contracts/base-8453/0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c/); base `0x7fceb5...affd68` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | ethereum | unit-35821 | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-35813 (2 proxies) | 2 deployments: ethereum [`0x2c0b27...2db276`](./contracts/ethereum-1/0x2c0b27f7c8f083b539557a0ba787041bf22db276/); ethereum `0xc463ea...2baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-35812 | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | ⚠️ Unaudited |
| ResolverRegistry | registry | ethereum | unit-35819 | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | n/a | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |
| StrategyManager | unknown | base | unit-35827 (2 proxies) | 2 deployments: base [`0x075193...a04d94`](./contracts/base-8453/0x075193d36693da7ba3bb709cf63bef070ba04d94/); base `0xf7e745...cd3374` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | ethereum | unit-35811 (2 proxies) | 2 deployments: ethereum [`0x28966c...332c49`](./contracts/ethereum-1/0x28966ce36d0f25858dc5d10dfc2829f05c332c49/); ethereum `0x6424c7...2b6e38` | ⚠️ Unaudited |
| UnderlyingOFT | unknown | base | unit-35830 (2 proxies) | 2 deployments: base [`0x264d64...3c5330`](./contracts/base-8453/0x264d6474802ef8bc1bc05f89f7d640d1e93c5330/); base `0xd7abc3...1c1c8b` | ⚠️ Unaudited |
| UnderlyingOFTAdapter | adapter | ethereum | unit-35814 (2 proxies) | 2 deployments: ethereum [`0x2d342d...835865`](./contracts/ethereum-1/0x2d342de4c58a871b3525740c58a1c112d5835865/); ethereum `0xd58e8c...85d190` | ⚠️ Unaudited |
| Vault | core_logic | base | unit-35826 (2 proxies) | 2 deployments: base [`0x03067b...da4cae`](./contracts/base-8453/0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae/); base `0x25d90a...fc832d` | ⚠️ Unaudited |
| VaultComposer | core_logic | base | unit-35828 (2 proxies) | 2 deployments: base [`0x16ce6d...7ad96b`](./contracts/base-8453/0x16ce6d9576a411911e62b6073f1cc9d1347ad96b/); base `0xbb801e...030923` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0792c4...df3f5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0792c4...df3f5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | aging | Direct | contract_name | 3 | high |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | $142,731,070.13 | Verified native implementation with $142,731,070.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | $1,511,653.55 | Verified native implementation with $1,511,653.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=9

Zero-match audit list:

- [2012] index.html
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf

Fork inheritance lineage and inherited audits are included when available.
