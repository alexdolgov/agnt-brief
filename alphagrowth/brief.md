# Agentic Audit Brief: alphagrowth

## Project Overview

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 15.7% below peak)
- Generated: 2026-06-13T00:53:09.604Z
- Pipeline run: v2-pipeline-2026-06-13-546062-e35d
- Chains: base, ethereum, linea, unichain
- Contract surface: 40 unique implementations (166 raw deployments)
- DeFi Llama TVL: $7,380,188.65
- On-chain TVL (included contracts): $7,388,913.73
- TVL by chain: Unichain $3,888,664.56 | Base $2,117,387.18 | Ethereum $1,237,076.58 | Linea $145,785.40

## Project Description

AlphaGrowth is best described as an Euler/DeFiLlama risk curator or consultancy-associated curator whose TVL is tracked through Euler markets. It should not be presented as owning or operating EulerSwap, EulerEarn, or the broader Euler protocol infrastructure unless independent evidence shows those systems are AlphaGrowth-owned.

### Architecture

The Governor family controls the GenericFactory, which deploys EVaults for the alphagrowth lending markets. EulerSwap operates independently but shares the same governance infrastructure, with the Governor able to adjust its protocol fees and registry.

## Audit Coverage Summary

- Verified implementations audited: 4/28 (14.3%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 40
- Raw deployments: 166
- Audits discovered: 16
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $7,388,913.73
- Latest audit: 2025-11 (fresh)
- Staleness: 10 fresh, 6 aging, 0 stale, 0 unknown
- Tier 1 coverage: 10.7% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 3 | 10.7% | 2025-09 |
| Cyfrin | Tier 1 | 2 | 7.1% | 2025-05 |
| ChainSecurity | Tier 1 | 1 | 3.6% | 2025-03 |
| Pashov Audit Group | Tier 2 | 1 | 3.6% | 2025-11 |
| yAudit | Tier 2 | 1 | 3.6% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ✅ Audited |
| EulerSwapFactory | registry | ethereum | 2 deployments: ethereum [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/); ethereum `0xd05213...04df5f` | ✅ Audited |
| EulerSwapPeriphery | adapter | ethereum | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ✅ Audited |
| EulerSwapRegistry | registry | ethereum | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EVault | core_logic | base | 45 deployments: ethereum `0x29a56a...45cc8e`; ethereum `0x2a3564...8246ad`; ethereum `0x2f849b...ec8a6b`; ethereum `0x2ff5f1...19443b`; ethereum `0x3573a8...dd81c6`; ethereum `0x35d4f8...8e88e3`; ethereum `0x412d0e...640229`; ethereum `0x49d9fd...614eb8`; ethereum `0x69a2fa...217705`; ethereum `0x6fe7fa...da0fbc`; ethereum `0x97c726...7ecc21`; ethereum `0xa7a064...ef7ec3`; ethereum `0xbd858d...0246cd`; ethereum `0xbfdc48...7198e9`; ethereum `0xc11d6b...1b0aef`; ethereum `0xf75d18...90b262`; ethereum `0xfbcc21...59512d`; unichain `0x1f3134...0e1ffc`; unichain `0x54ff50...02d06a`; unichain `0x5adade...437e2a`; unichain `0x5d2511...796485`; unichain `0x6eae95...a682ba`; unichain `0x71d725...8e0c8b`; unichain `0x7650d7...24086f`; unichain `0xd49181...64ead3`; unichain `0xe36da4...729f86`; base [`0x085178...9a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b...80ee16`; base `0x24d633...a33933`; base `0x30a9a9...281618`; base `0x358f25...b9ea49`; base `0x3f0d3f...638a7a`; base `0x5fe2de...74ac25`; base `0x7b181d...572609`; base `0x859160...a4b410`; base `0x882018...5d7f8b`; base `0x990d61...df7cf2`; base `0xd4a805...130d14`; base `0xe72ea9...aec7e4`; base `0xfab9af...05ccd3`; linea `0x359e36...21aa18`; linea `0x58270c...32f007`; linea `0x8955d7...b217b4`; linea `0xa8a02e...854968`; linea `0xf4712f...327086` | ⚠️ Unaudited |
| AccountLens | periphery | ethereum | 6 deployments: ethereum [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/); ethereum `0x5187ee...8ff257`; ethereum `0x880620...e60e9f`; ethereum `0x94b9d2...425844`; ethereum `0xa60c42...e34bc7`; ethereum `0xb8507b...27cd94` | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | 2 deployments: ethereum [`0x55f9ba...21a3d3`](./contracts/ethereum-1/0x55f9bace2c864ac0d3392ea9fa654b605f21a3d3/); ethereum `0xb7522c...821795` | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | 2 deployments: ethereum [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/); ethereum `0xfe56ca...e89b95` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | ethereum | 3 deployments: ethereum [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/); ethereum `0xa446a5...3a448b`; ethereum `0xff00fa...cffb84` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | 29 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0x8e8cfc...04cd4e`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd0156a...f62efa`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| EdgeFactory | registry | ethereum | [`0xa969b8...1659bd`](./contracts/ethereum-1/0xa969b8a46166b135fd5ac533adc28c816e1659bd/) | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | ethereum | [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/) | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | ⚠️ Unaudited |
| EthereumVaultConnector | unknown | ethereum | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | 11 deployments: ethereum [`0x3415b1...8136c5`](./contracts/ethereum-1/0x3415b11d4e4fbb6774df9859e03b1a26c48136c5/); ethereum `0x4cfa6e...c3b7c1`; ethereum `0x4e64e5...73cf45`; ethereum `0x53be6a...8eb56e`; ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xd35657...c3d4b8`; ethereum `0xf58f4d...bdd9f0`; ethereum `0xfef13a...0fe357` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | 6 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x35b2fa...bfeac2`; ethereum `0x57b1bb...6c52c1`; ethereum `0x5c5302...7e460b`; ethereum `0xbbc1ca...2109cf`; ethereum `0xc6e506...843626` | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | 5 deployments: ethereum [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/); ethereum `0x0c4773...f3f183`; ethereum `0x30e6df...f7b48a`; ethereum `0x53dcfc...b1858a`; ethereum `0x787449...a9045d` | ⚠️ Unaudited |
| ProtocolConfig | governance | ethereum | [`0x4cd6bf...13351b`](./contracts/ethereum-1/0x4cd6bf1d183264c02be7748cb5cd3a47d013351b/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 6 deployments: ethereum [`0x62962b...02b655`](./contracts/ethereum-1/0x62962b4d506b0065a133f37e19d163e5b002b655/); ethereum `0xb1345e...5fba27`; ethereum `0xb3b84e...b73c53`; ethereum `0xbdaa3f...6a976d`; ethereum `0xd5b7bc...cbd471`; ethereum `0xf8ef49...069b0f` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 3 deployments: ethereum [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/); ethereum `0xbfee2d...b97e59`; ethereum `0xfb034c...07a968` | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | 8 deployments: ethereum [`0x1ad6ed...6ee539`](./contracts/ethereum-1/0x1ad6edf948b037a9364607f9e3c1e640166ee539/); ethereum `0x1b6e0b...af2d95`; ethereum `0x3ebfd2...27fb36`; ethereum `0x6104c0...dec34a`; ethereum `0x7b89cc...e6e0fc`; ethereum `0xb8cac3...5afcc1`; ethereum `0xbef9b6...fcc071`; ethereum `0xcf1801...488727` | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | 11 deployments: ethereum [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/); ethereum `0x72bbdb...f51f15`; ethereum `0x7427e9...0f3177`; ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xa8695d...da8914`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403`; ethereum `0xdb259a...7fc3e2`; ethereum `0xe240c5...55b539`; ethereum `0xf7c8d2...a10ac6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x021f26e8fa57e7b88200da5c57f0c8af54f6557d) | proxy | ethereum | `0x7995dd...c9e866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x021f26...f6557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fac4d...75c084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x479c8f...34792c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74a221...24180f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85d88c...107504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5304eb...ea0448` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pashov Audit Group EulerEarn (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov%5FAudit%5FGroup%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |
| [ChainSecurity EulerSwap (also discovered via alternate URL)](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity%5FEulerSwap%5Faudit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 4 | high |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | medium |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/) | CapRiskStewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa969b8...1659bd`](./contracts/ethereum-1/0xa969b8a46166b135fd5ac533adc28c816e1659bd/) | EdgeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/) | EdgeFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | EulerSwapProtocolFeeConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3415b1...8136c5`](./contracts/ethereum-1/0x3415b11d4e4fbb6774df9859e03b1a26c48136c5/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cd6bf...13351b`](./contracts/ethereum-1/0x4cd6bf1d183264c02be7748cb5cd3a47d013351b/) | ProtocolConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ad6ed...6ee539`](./contracts/ethereum-1/0x1ad6edf948b037a9364607f9e3c1e640166ee539/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=19

Zero-match audit list:

- [11522] Pashov Audit Group EulerEarn
- [11523] Certora EulerEarn
- [11524] Sigma Prime EulerEarn
- [11525] Rendered PDF capture
- [11526] Rendered PDF capture
- [11528] Omniscia Euler Earn Report
- [11529] Certora_EulerEarn_report.pdf
- [11531] Sigma_Prime_EulerEarn_report.pdf
- [11536] Fuzzland EulerSwap

Fork inheritance lineage and inherited audits are included when available.
