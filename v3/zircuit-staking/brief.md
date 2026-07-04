# Agentic Audit Brief: Zircuit Staking

## Project Overview

- Project: Zircuit Staking (`zircuit-staking`)
- Website: [https://app.zircuit.com/liquidity-hub](https://app.zircuit.com/liquidity-hub)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.080Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: base, ethereum
- Contract surface: 21 unique implementations (24 raw deployments)
- DeFi Llama TVL: $38,414,098.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 22 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 24 (23 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/20 (25.0%)
- Deployed-live implementations: 20 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/20
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 21
- Raw deployments: 24
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 4 | 20.0% | 2024-07 |
| Unknown | Tier 2 | 2 | 10.0% | 2024-09 |
| Ottersec | Tier 2 | 1 | 5.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchMigrator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x008f8e...f87f74`](./contracts/ethereum-1/0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74/); ethereum `0xacaa4d...c74252` | ✅ Audited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x386b76...b26dd8`](./contracts/ethereum-1/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x92ef6a...9245a4`](./contracts/ethereum-1/0x92ef6af472b39f1b363da45e35530c24619245a4/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x17bfaf...043fb1`](./contracts/ethereum-1/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1/) | ✅ Audited |
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrisisControlRegistry | registry | ethereum | n/a | [`0x7d43eb...80f35e`](./contracts/ethereum-1/0x7d43eb137185aea81a020563099e940bb380f35e/) | ⚠️ Unaudited |
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | ethereum | n/a | [`0x48ab4e...02717f`](./contracts/ethereum-1/0x48ab4e39ac59f4e88974804b04a991b3a402717f/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x2c0b27...2db276`](./contracts/ethereum-1/0x2c0b27f7c8f083b539557a0ba787041bf22db276/); ethereum `0xc463ea...2baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x2a721c...5ea091`](./contracts/ethereum-1/0x2a721cbe81a128be0f01040e3353c3805a5ea091/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x994eeb...0dd244`](./contracts/ethereum-1/0x994eeb321f9cd79b077a5455fc248c77f30dd244/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xc77ece...90e932`](./contracts/ethereum-1/0xc77ece87c91c44afb5f19638f9a0f75b5d90e932/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x5b1ef6...fc5257`](./contracts/ethereum-1/0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257/) | ⚠️ Unaudited |
| ResolverRegistry | registry | ethereum | n/a | [`0x6c8910...d5cf0e`](./contracts/ethereum-1/0x6c89104690452ad7e209f0ab72287c2561d5cf0e/) | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | ethereum | n/a | [`0xf35a40...e31f67`](./contracts/ethereum-1/0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x745393...6d3da0`](./contracts/ethereum-1/0x745393cc03b5fe668ecd52c0e625f59aad6d3da0/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x30f82a...a428ff`](./contracts/ethereum-1/0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | base | n/a | 2 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0x6bce74...a1447c`](./contracts/ethereum-1/0x6bce7408c0781dce7b71494274302d4b75a1447c/) | ⚠️ Unaudited |
| VerifierV2 | unknown | ethereum | n/a | [`0xc25d09...dc9737`](./contracts/ethereum-1/0xc25d093d3a3f58952252d2e763beaf2559dc9737/) | ⚠️ Unaudited |

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
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | 2 | high |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | contract_name | 3 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [zircuit_audit_final.pdf](https://dubiw3zgo51jg.cloudfront.net/zircuit_audit_final.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=6, extraction_exact=2

Zero-match audit list:

- [4699] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [4700] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [4701] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [4703] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [15051] index.html
- [15061] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
