# Agentic Audit Brief: alphagrowth

## Project Overview

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 25.2% below peak)
- Generated: 2026-07-04T14:53:00.590Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, ethereum, linea, unichain
- Contract surface: 46 unique implementations (123 raw deployments)
- DeFi Llama TVL: $7,315,785.21
- On-chain TVL (included contracts): $5,936,051.72
- TVL by chain: Unichain $2,988,703.54 | Base $1,740,580.58 | Ethereum $1,095,577.81 | Linea $111,189.80

## Project Description

Risk Curators. Structurally: 175 project-authored contract(s) across 4 chain(s); 6 ERC4626 vaults, 10 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 63 common project-authored base contract(s) (feemodule, shared, evcutil). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 123; live-surface contracts included: 123 (103 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/16 (18.8%)
- Deployed-live implementations: 26 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/26
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 46
- Raw deployments: 123
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $5,936,051.72
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 3 fresh, 13 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 12.5% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 3 | 11.5% | 2025-09 |
| Cyfrin | Tier 1 | 2 | 7.7% | 2025-05 |
| ChainSecurity | Tier 1 | 1 | 3.8% | 2025-03 |
| Pashov Audit Group | Tier 2 | 1 | 3.8% | 2025-11 |
| yAudit | Tier 2 | 1 | 3.8% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | n/a | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ✅ Audited |
| EulerSwapFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/); ethereum `0xd05213...04df5f` | ✅ Audited |
| EulerSwapPeriphery | adapter | ethereum | n/a | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ✅ Audited |
| EulerSwapRegistry | registry | ethereum | n/a | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EVault | core_logic | unichain | n/a | 7 deployments: unichain [`0x1f3134...0e1ffc`](./contracts/unichain-130/0x1f3134c3f3f8add904b9635acbefc0ea0d0e1ffc/); unichain `0x54ff50...02d06a`; unichain `0x5d2511...796485`; unichain `0x6eae95...a682ba`; unichain `0x7650d7...24086f`; unichain `0xd49181...64ead3`; unichain `0xe36da4...729f86` | ⚠️ Unaudited |
| EVault | core_logic | base | n/a | 12 deployments: base [`0x085178...9a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b...80ee16`; base `0x358f25...b9ea49`; base `0x3f0d3f...638a7a`; base `0x5fe2de...74ac25`; base `0x7b181d...572609`; base `0x859160...a4b410`; base `0x882018...5d7f8b`; base `0x990d61...df7cf2`; base `0xd4a805...130d14`; base `0xe72ea9...aec7e4`; base `0xfab9af...05ccd3` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 17 deployments: ethereum [`0x29a56a...45cc8e`](./contracts/ethereum-1/0x29a56a1b8214d9cf7c5561811750d5cbdb45cc8e/); ethereum `0x2a3564...8246ad`; ethereum `0x2f849b...ec8a6b`; ethereum `0x2ff5f1...19443b`; ethereum `0x3573a8...dd81c6`; ethereum `0x35d4f8...8e88e3`; ethereum `0x412d0e...640229`; ethereum `0x49d9fd...614eb8`; ethereum `0x69a2fa...217705`; ethereum `0x6fe7fa...da0fbc`; ethereum `0x97c726...7ecc21`; ethereum `0xa7a064...ef7ec3`; ethereum `0xbd858d...0246cd`; ethereum `0xbfdc48...7198e9`; ethereum `0xc11d6b...1b0aef`; ethereum `0xf75d18...90b262`; ethereum `0xfbcc21...59512d` | ⚠️ Unaudited |
| EVault | core_logic | linea | n/a | 4 deployments: linea [`0x359e36...21aa18`](./contracts/linea-59144/0x359e363c11fc619be76eec8baaa01e61d521aa18/); linea `0x8955d7...b217b4`; linea `0xa8a02e...854968`; linea `0xf4712f...327086` | ⚠️ Unaudited |
| AccountLens | periphery | ethereum | n/a | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | n/a | 2 deployments: ethereum [`0x55f9ba...21a3d3`](./contracts/ethereum-1/0x55f9bace2c864ac0d3392ea9fa654b605f21a3d3/); ethereum `0xb7522c...821795` | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | n/a | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | n/a | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 27 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | n/a | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | ethereum | n/a | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | n/a | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | n/a | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/); ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xf58f4d...bdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | n/a | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x57b1bb...6c52c1` | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | n/a | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/) | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | n/a | 3 deployments: ethereum [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/); ethereum `0x7b89cc...e6e0fc`; ethereum `0xbef9b6...fcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/); ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d633...a33933` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7594ae...6943a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95058f...d5d6a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x36639e...2d120a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8d9ff3...d352b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a3564...8246ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x441029...d6823a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49d9fd...614eb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5304eb...ea0448` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69a2fa...217705` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c726...7ecc21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7522c...821795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd858d...0246cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc11d6b...1b0aef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf75d18...90b262` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pashov_Audit_Group_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov%5FAudit%5FGroup%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [2025-05-26-cyfrin-eulerswap-v2.0.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [report-cantinacode-uniswap-euler-0422.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [ChainSecurity_EulerSwap_audit.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity%5FEulerSwap%5Faudit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [report-euler-swap-050325.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [eulerswap-audit-report.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [yAudit ERC4626 and Vault Securitize.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [Pashov Group ERC4626 and Vault Securitize.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x29a56a...45cc8e`](./contracts/ethereum-1/0x29a56a1b8214d9cf7c5561811750d5cbdb45cc8e/) | EVault | core_logic | $1,095,577.81 | Verified native implementation with $1,095,577.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 5 |
| standard_library | 6 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [11522] Pashov_Audit_Group_report.pdf
- [11523] Certora_EulerEarn_report.pdf
- [11524] Sigma_Prime_EulerEarn_report.pdf
- [11525] Certora_EulerEarn_report.pdf
- [11526] Sigma_Prime_EulerEarn_report.pdf
- [11528] omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e
- [11529] Certora_EulerEarn_report.pdf
- [11531] Sigma_Prime_EulerEarn_report.pdf
- [11536] eulerswap-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
