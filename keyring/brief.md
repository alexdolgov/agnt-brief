# Agentic Audit Brief: Keyring

## Project Overview

- Project: Keyring (`keyring`)
- Website: [https://app.euler.finance/governor/keyring?network=avalanche](https://app.euler.finance/governor/keyring?network=avalanche)
- Lifecycle: active (Tier 0, 72.2% below peak)
- Generated: 2026-06-17T07:00:47.532Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, ethereum
- Contract surface: 51 unique implementations (102 raw deployments)
- DeFi Llama TVL: $6,221,961.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Keyring provides enhanced depositor protection for DeFi users with instant zkVerification.

### Architecture

The Governor family controls risk parameters and protocol configurations, which are enforced in the EulerSwap family through fee configs and registries. Multisig wallets serve as the administrative layer, likely holding ownership of governance contracts and executing privileged operations.

## Contract Surface Quality

- Indexed contracts: 174; live-surface contracts included: 102 (92 live, 10 unknown).
- Excluded by liveness: 68 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 2/5 live.
- Detected codebases: none
- Unverified dependencies: 2/26.

## Audit Coverage Summary

- Verified implementations audited: 8/39 (20.5%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 51
- Raw deployments: 102
- Audits discovered: 16
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 10 fresh, 6 aging, 0 stale, 0 unknown
- Tier 1 coverage: 15.4% (Certora, ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 15.4% | 2025-09 |
| Pashov Audit Group | Tier 2 | 4 | 10.3% | 2025-11 |
| Cyfrin | Tier 1 | 3 | 7.7% | 2025-05 |
| Certora | Tier 1 | 2 | 5.1% | 2025-07 |
| ChainSecurity | Tier 1 | 2 | 5.1% | 2025-03 |
| Sigma Prime | Tier 2 | 2 | 5.1% | 2025-07 |
| yAudit | Tier 2 | 2 | 5.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | n/a | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ✅ Audited |
| EulerEarnFactory | registry | ethereum | n/a | [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/) | ✅ Audited |
| EulerSwap | unknown | ethereum | n/a | [`0x8b0e04...74dc97`](./contracts/ethereum-1/0x8b0e044e364f2ce913799d53b300e15a6974dc97/) | ✅ Audited |
| EulerSwapFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/); ethereum `0xd05213...04df5f` | ✅ Audited |
| EulerSwapPeriphery | adapter | ethereum | n/a | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ✅ Audited |
| EulerSwapRegistry | registry | ethereum | n/a | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ✅ Audited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | ✅ Audited |
| SwapVerifier | periphery | ethereum | n/a | [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountLens | periphery | ethereum | n/a | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | ⚠️ Unaudited |
| BeaconProxy | registry | avalanche | n/a | 7 deployments: avalanche [`0x2cbb39...fd04bf`](./contracts/avalanche-43114/0x2cbb39cdc3c0ba22f857a5a8ca54dee6d7fd04bf/); avalanche `0x3050b7...654529`; avalanche `0x5fdb07...b764c6`; avalanche `0x67e0ac...6b4438`; avalanche `0x6de07d...651a1e`; avalanche `0xb03277...bb0592`; avalanche `0xea5341...383d44` | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | n/a | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | n/a | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 27 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | n/a | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | ⚠️ Unaudited |
| EthereumVaultConnector | unknown | avalanche | n/a | [`0xddcbe3...f36fa1`](./contracts/avalanche-43114/0xddcbe30a761edd2e19bba930a977475265f36fa1/) | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | ethereum | n/a | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/); ethereum `0x20954c...5013d9`; ethereum `0xa09144...41a8be`; ethereum `0xf99770...64084a` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | ethereum | n/a | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | ethereum | n/a | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | ⚠️ Unaudited |
| EulerSwapManagement | unknown | ethereum | n/a | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | n/a | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | n/a | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ⚠️ Unaudited |
| FeeFlowControllerUtil | governance | ethereum | n/a | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/); ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xf58f4d...bdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-29078 | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | n/a | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | n/a | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | ethereum | n/a | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | governance | ethereum | n/a | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x57b1bb...6c52c1` | ⚠️ Unaudited |
| KeyringCore | unknown | avalanche | unit-29079 | [`0x3a5dd1...635bc6`](./contracts/avalanche-43114/0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6/) | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | n/a | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | ⚠️ Unaudited |
| Permit2 | unknown | avalanche | n/a | [`0x000000...c78ba3`](./contracts/avalanche-43114/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PythOracle | operational_periphery | ethereum | n/a | [`0xfa9880...19de65`](./contracts/ethereum-1/0xfa9880c197bb245d055ee864653eeecf8619de65/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x69cc42...186364`](./contracts/avalanche-43114/0x69cc425b1e5f302e7db4e5d125ab984ec5186364/); avalanche `0x9506a6...722ee8`; avalanche `0xb80d81...73ee87` | ⚠️ Unaudited |
| Swapper | adapter | ethereum | n/a | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/) | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | n/a | 3 deployments: ethereum [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/); ethereum `0x7b89cc...e6e0fc`; ethereum `0xbef9b6...fcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/); ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x065d7b...e17157` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x743144...5d0802` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x768b74...278174` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80528f...3be696` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf4b4c...f26181` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc96877...a69f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2228...176d34` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pashov Audit Group EulerEarn (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov%5FAudit%5FGroup%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | contract_name | 2 | high |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 5 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 5 | high |
| [ChainSecurity_EulerSwap_audit.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity_EulerSwap_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 2 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | EulerEarnFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/) | EulerEarnVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | EulerFixedCyclicalBinaryIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | EulerKinkyIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | EulerSwapManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | EulerSwapProtocolFeeConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | FeeFlowControllerUtil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | GovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | GovernorAccessControlEmergencyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | HookTargetAccessControlKeyring | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 3 |
| standard_library | 6 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14, medium=1
- Match method counts: extraction_exact=43

Zero-match audit list:

- [11601] Omniscia Euler Earn Report

Fork inheritance lineage and inherited audits are included when available.
