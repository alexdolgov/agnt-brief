# Agentic Audit Brief: Zircuit

## Project Overview

- Project: Zircuit (`zircuit`)
- Website: [https://www.zircuit.com/](https://www.zircuit.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.913Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base, ethereum
- Contract surface: 29 unique implementations (39 raw deployments)
- DeFi Llama TVL: $9,256,422.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 30 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 9 common project-authored base contract(s) (oappupgradeable, oappsenderupgradeable, oappcoreupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (37 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/25 (24.0%)
- Deployed-live implementations: 27 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/27
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 29
- Raw deployments: 39
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 4 | 14.8% | 2024-07 |
| Ottersec | Tier 2 | 1 | 3.7% | 2024-02 |
| Quantstamp | Tier 2 | 1 | 3.7% | 2025-05 |
| Secure3 | Tier 2 | 1 | 3.7% | 2024-09 |
| Unknown | Tier 2 | 1 | 3.7% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |
| ZRC | unknown | ethereum | n/a | [`0xfd418e...44d162`](./contracts/ethereum-1/0xfd418e42783382e86ae91e445406600ba144d162/) | ✅ Audited |
| ZrcOFTAdapter | adapter | ethereum | n/a | [`0xb5eb63...57ebc1`](./contracts/ethereum-1/0xb5eb63caad0ca6e068114c42794ada9b7757ebc1/) | ✅ Audited |
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingReceiver | unknown | base | n/a | 2 deployments: base [`0x43c4a9...e66c9c`](./contracts/base-8453/0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c/); base `0x7fceb5...affd68` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | ethereum | n/a | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | ⚠️ Unaudited |
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | ethereum | n/a | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x2c0b27...2db276`](./contracts/ethereum-1/0x2c0b27f7c8f083b539557a0ba787041bf22db276/); ethereum `0xc463ea...2baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x994eeb...0dd244`](./contracts/ethereum-1/0x994eeb321f9cd79b077a5455fc248c77f30dd244/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xc77ece...90e932`](./contracts/ethereum-1/0xc77ece87c91c44afb5f19638f9a0f75b5d90e932/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x5b1ef6...fc5257`](./contracts/ethereum-1/0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257/) | ⚠️ Unaudited |
| ResolverRegistry | registry | ethereum | n/a | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | n/a | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |
| StrategyManager | core_logic | base | n/a | 2 deployments: base [`0x075193...a04d94`](./contracts/base-8453/0x075193d36693da7ba3bb709cf63bef070ba04d94/); base `0xf7e745...cd3374` | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x28966c...332c49`](./contracts/ethereum-1/0x28966ce36d0f25858dc5d10dfc2829f05c332c49/); ethereum `0x6424c7...2b6e38` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | n/a | 3 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xc91e44...e1aca7`; base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| UnderlyingOFT | unknown | base | n/a | 2 deployments: base [`0x264d64...3c5330`](./contracts/base-8453/0x264d6474802ef8bc1bc05f89f7d640d1e93c5330/); base `0xd7abc3...1c1c8b` | ⚠️ Unaudited |
| UnderlyingOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2d342d...835865`](./contracts/ethereum-1/0x2d342de4c58a871b3525740c58a1c112d5835865/); ethereum `0xd58e8c...85d190` | ⚠️ Unaudited |
| Vault | core_logic | base | n/a | 2 deployments: base [`0x03067b...da4cae`](./contracts/base-8453/0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae/); base `0x25d90a...fc832d` | ⚠️ Unaudited |
| VaultComposer | core_logic | base | n/a | 2 deployments: base [`0x16ce6d...7ad96b`](./contracts/base-8453/0x16ce6d9576a411911e62b6073f1cc9d1347ad96b/); base `0xbb801e...030923` | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0x6bce74...a1447c`](./contracts/ethereum-1/0x6bce7408c0781dce7b71494274302d4b75a1447c/) | ⚠️ Unaudited |
| VerifierV2 | unknown | ethereum | n/a | [`0xc25d09...dc9737`](./contracts/ethereum-1/0xc25d093d3a3f58952252d2e763beaf2559dc9737/) | ⚠️ Unaudited |

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
| [index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | contract_name | 3 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x43c4a9...e66c9c`](./contracts/base-8453/0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c/) | AccountingReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994eeb...0dd244`](./contracts/ethereum-1/0x994eeb321f9cd79b077a5455fc248c77f30dd244/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc77ece...90e932`](./contracts/ethereum-1/0xc77ece87c91c44afb5f19638f9a0f75b5d90e932/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | SP1VerifierGateway | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x075193...a04d94`](./contracts/base-8453/0x075193d36693da7ba3bb709cf63bef070ba04d94/) | StrategyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28966c...332c49`](./contracts/ethereum-1/0x28966ce36d0f25858dc5d10dfc2829f05c332c49/) | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x264d64...3c5330`](./contracts/base-8453/0x264d6474802ef8bc1bc05f89f7d640d1e93c5330/) | UnderlyingOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d342d...835865`](./contracts/ethereum-1/0x2d342de4c58a871b3525740c58a1c112d5835865/) | UnderlyingOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03067b...da4cae`](./contracts/base-8453/0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16ce6d...7ad96b`](./contracts/base-8453/0x16ce6d9576a411911e62b6073f1cc9d1347ad96b/) | VaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bce74...a1447c`](./contracts/ethereum-1/0x6bce7408c0781dce7b71494274302d4b75a1447c/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc25d09...dc9737`](./contracts/ethereum-1/0xc25d093d3a3f58952252d2e763beaf2559dc9737/) | VerifierV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8, extraction_exact=2

Zero-match audit list:

- [2012] index.html
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf

Fork inheritance lineage and inherited audits are included when available.
