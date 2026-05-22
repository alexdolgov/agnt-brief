# Agentic Audit Brief: Zircuit

⚠️ Lifecycle status: DECLINING - TVL dropped 10.1% over 90 days

## Project Overview

- Project: Zircuit (`zircuit`)
- Website: [https://www.zircuit.com/](https://www.zircuit.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T22:14:29.808Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, ethereum
- Contract surface: 17 unique implementations (19 raw deployments)
- DeFi Llama TVL: $13,311,045.79
- On-chain TVL (included contracts): $144,242,723.68
- TVL by chain: Ethereum $142,731,070.13 | Base $1,511,653.55

## Project Description

Zircuit is a Layer 2 scaling solution built on the OP Stack, providing a canonical bridge for transferring assets between Ethereum and the Zircuit network. It also includes compliance-focused token infrastructure and institutional lending products.

### Architecture

The Ethereum family provides the canonical bridge infrastructure that connects to the Zircuit L2, while the Zircuit family includes the native token and lending products that operate on the L2. Governance is managed through the Multisig addresses, which control upgrades and parameters across both families.

## Audit Coverage Summary

- Verified implementations audited: 4/16 (25.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 19
- Audits discovered: 10
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $144,242,723.68
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $144,242,723.68 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 3 | 18.8% | 2024-07 |
| Secure3 | Tier 2 | 1 | 6.3% | 2024-09 |
| Unknown | Tier 2 | 1 | 6.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1StandardBridge | operational_periphery | ethereum | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |
| ZRC | unknown | ethereum | [`0xfd418e...44d162`](./contracts/ethereum-1/0xfd418e42783382e86ae91e445406600ba144d162/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | ethereum | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | 2 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | ethereum | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x2c0b27...2db276`](./contracts/ethereum-1/0x2c0b27f7c8f083b539557a0ba787041bf22db276/); ethereum `0xc463ea...2baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0x994eeb...0dd244`](./contracts/ethereum-1/0x994eeb321f9cd79b077a5455fc248c77f30dd244/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | [`0xc77ece...90e932`](./contracts/ethereum-1/0xc77ece87c91c44afb5f19638f9a0f75b5d90e932/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x5b1ef6...fc5257`](./contracts/ethereum-1/0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257/) | ⚠️ Unaudited |
| ResolverRegistry | registry | ethereum | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0792c4...df3f5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | aging | Direct | contract_name | 3 | high |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | $142,731,070.13 | Verified native implementation with $142,731,070.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | $1,511,653.55 | Verified native implementation with $1,511,653.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994eeb...0dd244`](./contracts/ethereum-1/0x994eeb321f9cd79b077a5455fc248c77f30dd244/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc77ece...90e932`](./contracts/ethereum-1/0xc77ece87c91c44afb5f19638f9a0f75b5d90e932/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=5

Zero-match audit list:

- [2012] index.html
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [2020] dedaub-audit-zkr-staking-ztakingpool.pdf
- [2021] ztakingpool_ottersec.pdf
- [2022] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
