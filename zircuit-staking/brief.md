# Agentic Audit Brief: Zircuit Staking

⚠️ Lifecycle status: DECLINING - TVL dropped 70.8% over 90 days

## Project Overview

- Project: Zircuit Staking (`zircuit-staking`)
- Website: [https://app.zircuit.com/liquidity-hub](https://app.zircuit.com/liquidity-hub)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:19.535Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, ethereum
- Contract surface: 20 unique implementations (23 raw deployments)
- DeFi Llama TVL: $54,157,008.72
- On-chain TVL (included contracts): $178,402,442.05
- TVL by chain: Ethereum $176,888,678.72 | Base $1,513,763.33

## Project Description

Zircuit Staking is a Zircuit Liquidity Hub and farming/staking rewards program where users deposit supported assets to earn staking or restaking APR, Zircuit points, partner points, and potential airdrop rewards. rsETH may be one supported deposit asset, but the protocol should not be described as issuing rsETH unless supported by primary documentation and contract ownership evidence. Broader Zircuit rollup, bridge, OFT/token, and institutional/compliance lending infrastructure should be separated from the zircuit-staking product scope unless directly proven to be part of its TVL surface.

### Architecture

The Zircuit Staking family issues rsETH, which may be used within the Institutional Contracts for compliant lending strategies. The Ethereum family provides the cross-chain infrastructure that likely supports Zircuit's L2 operations, with governance controlled by the Multisig addresses.

## Audit Coverage Summary

- Verified implementations audited: 4/19 (21.1%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 20
- Raw deployments: 23
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $140,430,966.05
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $140,430,966.05 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 4 | 21.1% | 2024-07 |
| Ottersec | Tier 2 | 1 | 5.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ZtakingPool | core_logic | ethereum | 2 deployments: ethereum [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/); ethereum `0xf047ab...aeafa6` | ✅ Audited |
| L1StandardBridge | operational_periphery | ethereum | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

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
| RSETH | token | ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | ⚠️ Unaudited |
| Verifier | periphery | ethereum | [`0x6bce74...a1447c`](./contracts/ethereum-1/0x6bce7408c0781dce7b71494274302d4b75a1447c/) | ⚠️ Unaudited |
| VerifierV2 | periphery | ethereum | [`0xc25d09...dc9737`](./contracts/ethereum-1/0xc25d093d3a3f58952252d2e763beaf2559dc9737/) | ⚠️ Unaudited |

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
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | aging | Direct | contract_name | 3 | high |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |

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
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=7

Zero-match audit list:

- [4699] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [4700] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [4701] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [4702] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [4703] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
