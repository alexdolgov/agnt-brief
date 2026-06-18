# Agentic Audit Brief: Zircuit Staking

⚠️ Lifecycle status: DECLINING - TVL dropped 70.8% over 90 days

## Project Overview

- Project: Zircuit Staking (`zircuit-staking`)
- Website: [https://app.zircuit.com/liquidity-hub](https://app.zircuit.com/liquidity-hub)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T07:37:29.259Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: base, ethereum
- Contract surface: 13 unique implementations (15 raw deployments)
- DeFi Llama TVL: $41,475,058.79
- On-chain TVL (included contracts): $178,402,442.05
- TVL by chain: Ethereum $176,888,678.72 | Base $1,513,763.33

## Project Description

Zircuit Staking is a Zircuit Liquidity Hub and farming/staking rewards program where users deposit supported assets to earn staking or restaking APR, Zircuit points, partner points, and potential airdrop rewards. rsETH may be one supported deposit asset, but the protocol should not be described as issuing rsETH unless supported by primary documentation and contract ownership evidence. Broader Zircuit rollup, bridge, OFT/token, and institutional/compliance lending infrastructure should be separated from the zircuit-staking product scope unless directly proven to be part of its TVL surface.

### Architecture

The Zircuit Staking family issues rsETH, which may be used within the Institutional Contracts for compliant lending strategies. The Ethereum family provides the cross-chain infrastructure that likely supports Zircuit's L2 operations, with governance controlled by the Multisig addresses.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 15 (14 live, 1 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 10/16 live.
- Detected codebases: none
- Unverified dependencies: 6/7.

## Audit Coverage Summary

- Verified implementations audited: 4/12 (33.3%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 15
- Audits discovered: 11
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $140,430,966.05
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 7 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $140,430,966.05 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 4 | 33.3% | 2024-07 |
| Ottersec | Tier 2 | 1 | 8.3% | 2024-02 |
| Unknown | Tier 2 | 1 | 8.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ✅ Audited |
| L1StandardBridge | operational_periphery | ethereum | unit-35873 | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | unit-35879 | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | unit-35869 | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | ethereum | unit-35874 | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | unit-35884 (2 proxies) | 2 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | ethereum | unit-35878 | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-35871 (2 proxies) | 2 deployments: ethereum [`0x2c0b27...2db276`](./contracts/ethereum-1/0x2c0b27f7c8f083b539557a0ba787041bf22db276/); ethereum `0xc463ea...2baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-35870 | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | ⚠️ Unaudited |
| ResolverRegistry | registry | ethereum | unit-35876 | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ⚠️ Unaudited |
| RSETH | token | ethereum | unit-35881 | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | n/a | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0792c4...df3f5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | aging | Direct | contract_name | 3 | high |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://dubiw3zgo51jg.cloudfront.net/zircuit_audit_final.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | $138,917,202.72 | Verified native implementation with $138,917,202.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/) | TokenizedStrategy | core_logic | $1,513,763.33 | Verified native implementation with $1,513,763.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=9

Zero-match audit list:

- [4699] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [4700] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [4701] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [4702] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [4703] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [15051] index.html
- [15061] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
