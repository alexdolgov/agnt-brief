# Agentic Audit Brief: Hourglass

⚠️ Lifecycle status: DEAD - TVL dropped 37.9% over 90 days

## Project Overview

- Project: Hourglass (`hourglass`)
- Website: [https://hourglass.com/](https://hourglass.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T09:56:20.226Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum, mantle
- Contract surface: 34 unique implementations (119 raw deployments)
- DeFi Llama TVL: $139,930.37
- On-chain TVL (included contracts): $270,327,165.18
- TVL by chain: Ethereum $212,452,344.45 | Mantle $54,130,042.69 | Base $3,744,778.03

## Project Description

Hourglass is a yield protocol that enables users to lock liquid staking tokens (LSTs) and stablecoins into time-bound tranches to earn boosted yields. It issues tradable ERC20 tokens representing locked positions and integrates with various DeFi vaults and reward systems.

### Architecture

The Time-Bound Tokenization family creates locked positions that feed into Vault Strategies for yield generation, while Rewards and Incentives distribute additional returns. Shared infrastructure includes factory contracts for deploying lock depositors and tokens, and proxy-based upgradeability across all families.

## Contract Surface Quality

- Indexed contracts: 318; live-surface contracts included: 119 (66 live, 53 unknown).
- Excluded by liveness: 137 inactive, 62 singleton, 0 uninitialized.
- Deployment units: 8/36 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 8/66.

## Audit Coverage Summary

- Verified implementations audited: 1/34 (2.9%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 119
- Audits discovered: 7
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $270,327,165.18
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 1 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $270,327,165.18 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.9% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HourglassERC20TBT | token | ethereum | n/a | 63 deployments: ethereum [`0x004d95...99dd5d`](./contracts/ethereum-1/0x004d956c022bd0791fc34c4b4f06ec65d499dd5d/); ethereum `0x036d9d...08544b`; ethereum `0x0abcbd...3f3ca6`; ethereum `0x2b8e68...0fad28`; ethereum `0x3e9314...73d863`; ethereum `0x418cff...4fa358`; ethereum `0x43efe8...0a060d`; ethereum `0x47a3a3...9058e4`; ethereum `0x484f8d...a77a71`; ethereum `0x4e11cf...9fcbbe`; ethereum `0x4eaf2a...e4842c`; ethereum `0x577512...9311c3`; ethereum `0x602883...3d0585`; ethereum `0x60e3e1...68d86b`; ethereum `0x66e400...a7c37d`; ethereum `0x68f080...2f4ba6`; ethereum `0x7875ea...32870b`; ethereum `0x859ce1...4d788e`; ethereum `0x8bd79f...b92e1e`; ethereum `0x8ed775...495e5c`; ethereum `0x9734a6...9416bf`; ethereum `0x98ca0f...8a69d7`; ethereum `0x9b7f50...f20418`; ethereum `0x9e1c22...0d6bdf`; ethereum `0x9ec533...33d863`; ethereum `0x9eee7e...361857`; ethereum `0xa2962e...44e798`; ethereum `0xa47a1c...9c12c3`; ethereum `0xb00591...484a24`; ethereum `0xb05e8a...5d3fef`; ethereum `0xb204ab...4461a8`; ethereum `0xb3cb22...e6a38c`; ethereum `0xb66835...d88dd0`; ethereum `0xb7a2c7...aa9946`; ethereum `0xb97661...cd1fc8`; ethereum `0xbaf470...e9ffa8`; ethereum `0xbd91c7...97196a`; ethereum `0xc5dbc2...ed6ae0`; ethereum `0xd02b31...ea589c`; ethereum `0xd3b637...d44579`; ethereum `0xd7f10a...43e834`; ethereum `0xdb0ee7...a878d9`; ethereum `0xe6da3b...a669b1`; ethereum `0xe7f0dc...106fb6`; ethereum `0xe86550...8d109a`; ethereum `0xe91838...54e76b`; ethereum `0xf3fe41...d0f275`; ethereum `0xf68c4b...910b5e`; ethereum `0xfd8b20...aa3dc1`; mantle `0x326b11...90ae6c`; mantle `0x4865bb...647560`; mantle `0x62b9fd...0c92d7`; mantle `0x8fc1e4...b5fef3`; mantle `0x979ecd...3d01ed`; mantle `0xbfe0e2...2470c4`; base `0x2c7432...f4e41c`; base `0x37b93e...5d310b`; base `0x4347e8...d291a0`; base `0x5e57e8...32c997`; base `0x60fba8...bfa3a5`; base `0x70b64c...06342e`; base `0x85e2c7...77088e`; base `0xea3ff2...02af74` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConcreteMultiStrategyVault | core_logic | ethereum | n/a | [`0x34bdba...c32da8`](./contracts/ethereum-1/0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8/) | ⚠️ Unaudited |
| METHL2 | token | mantle | unit-42257 | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/); ethereum `0x5401b8...77d57c`; ethereum `0x657e8c...88c642`; ethereum `0x722344...8c4273`; ethereum `0x917cee...909d88`; ethereum `0xf0bb20...73416c` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-42235 | [`0x657d9a...c96dcb`](./contracts/ethereum-1/0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | 3 deployments: base [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4...5eec92`; base `0xefe328...218dad` | ⚠️ Unaudited |
| LendingPool | core_logic | base | n/a | 3 deployments: base [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea6...6b98e2`; base `0xa37e9b...645e3b` | ⚠️ Unaudited |
| HourglassStableVaultKYC | core_logic | ethereum | n/a | [`0xd9b2cb...fcce40`](./contracts/ethereum-1/0xd9b2cb2fbad204fc548787ef56b918c845fcce40/) | ⚠️ Unaudited |
| TrancheWrapper | core_logic | base | n/a | 3 deployments: base [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc1071...2ff398`; base `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| PitchFXSToken | token | ethereum | n/a | [`0x11ebe2...e88f0b`](./contracts/ethereum-1/0x11ebe21e9d7bf541a18e1e3ac94939018ce88f0b/) | ⚠️ Unaudited |
| AccountsGuard | governance | base | n/a | [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ⚠️ Unaudited |
| AccountV3 | core_logic | base | n/a | [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ⚠️ Unaudited |
| AccountV4 | core_logic | base | n/a | [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ⚠️ Unaudited |
| AtomicQueue | unknown | ethereum | n/a | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | ⚠️ Unaudited |
| CellarMigrationAdaptor2 | operational_periphery | ethereum | unit-42251 | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | ⚠️ Unaudited |
| CowSwapper | adapter | base | n/a | 3 deployments: base [`0xb988a3...da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/); base `0xc92801...811854`; base `0xffc742...da2bb6` | ⚠️ Unaudited |
| DefaultOrderHook | unknown | base | n/a | 3 deployments: base [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/); base `0x5f7dfa...20cea6`; base `0xf510ba...09e5bb` | ⚠️ Unaudited |
| Factory | registry | base | n/a | [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ⚠️ Unaudited |
| HourglassEtherFiLiquidLockDepositor | unknown | ethereum | unit-42225 (2 proxies) | 2 deployments: ethereum [`0x035d13...52da4d`](./contracts/ethereum-1/0x035d135bf428460be8e1c19b36e8d4231752da4d/); ethereum `0xd573ce...aa28a2` | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | unit-42250 | [`0xe6829d...59e8fa`](./contracts/ethereum-1/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | unit-42258 | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| MerklOperator | operational_periphery | base | n/a | [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | base | n/a | [`0x4aa34f...575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | ⚠️ Unaudited |
| Puff | unknown | mantle | n/a | [`0x26a6b0...3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | ⚠️ Unaudited |
| RecoveryController | governance | base | n/a | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | ⚠️ Unaudited |
| RouterTrampoline | adapter | base | n/a | [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 2 deployments: base [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf416...527189` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | base | n/a | 3 deployments: base [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3...0fdd4c`; base `0xe0f20b...d8ca7b` | ⚠️ Unaudited |
| WeETH | unknown | ethereum | unit-42248 | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | base | n/a | [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | base | n/a | 5 deployments: base [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/); base `0x2a07d9...93d09f`; base `0x5a8278...4f18ba`; base `0x8c1fbf...291980`; base `0xc8bf4b...22871c` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | unit-42226 | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |

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
| [HourglassAudit3.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/HourglassAudit3.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 63 | high |
| [{% embed url="<>" %}](https://docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit?tab=t.0) | Code4rena | Contest | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Hourglass_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Audit_Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [Hourglass_HFXB_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_HFXB_Audit_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Hourglass_Index_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Index_Audit_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 0 | n/a |
| [Hourglass_TBT_Locking_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_TBT_Locking_Audit_Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 63 | high |
| [Hourglass_v2_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_v2_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x34bdba...c32da8`](./contracts/ethereum-1/0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8/) | ConcreteMultiStrategyVault | core_logic | $174,253,416.43 | Verified native implementation with $174,253,416.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/) | BoringVault | core_logic | $30,482,920.73 | Verified native implementation with $30,482,920.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/) | Tranche | core_logic | $2,203,192.85 | Verified native implementation with $2,203,192.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/) | LendingPool | core_logic | $1,201,497.59 | Verified native implementation with $1,201,497.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9b2cb...fcce40`](./contracts/ethereum-1/0xd9b2cb2fbad204fc548787ef56b918c845fcce40/) | HourglassStableVaultKYC | core_logic | $412,718.64 | Verified native implementation with $412,718.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/) | TrancheWrapper | core_logic | $340,087.59 | Verified native implementation with $340,087.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | AccountsGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | CellarMigrationAdaptor2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/) | DefaultOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | RecoveryController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | RouterTrampoline | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/) | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 4 |
| standard_library | 7 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=210

Zero-match audit list:

- [13257] {% embed url="<>" %}
- [16310] Hourglass_Audit_Report.pdf
- [16311] Hourglass_HFXB_Audit_Report.pdf
- [16312] Hourglass_Index_Audit_Report.pdf
- [16314] Hourglass_v2_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
