# Agentic Audit Brief: Inception

## Project Overview

- Project: Inception (`inception`)
- Website: [https://www.inceptionlrt.com/](https://www.inceptionlrt.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.182Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, blast, bsc, ethereum, linea, mode, optimism
- Contract surface: 23 unique implementations (34 raw deployments)
- DeFi Llama TVL: $4,411,204.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 12 project-authored contract(s) across 3 chain(s); 5 ERC4626 vaults, 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 6 common project-authored base contract(s) (erc20permit, eip712, ownable2step). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 34 (29 live, 5 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/19 (78.9%)
- Deployed-live implementations: 19 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/21
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 34
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 9 | 42.9% | 2024-10 |
| Veridise | Tier 2 | 7 | 33.3% | 2025-03 |
| Oxorio | Tier 2 | 3 | 14.3% | 2025-03 |
| unknown | Tier 2 | 3 | 14.3% | 2023-11 |
| VAR | Tier 2 | 2 | 9.5% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmphorSyntheticVault | unknown | ethereum | n/a | [`0xc4a324...f96489`](./contracts/ethereum-1/0xc4a324fdf8a2495776b4d6ca46599b5a52f96489/) | ✅ Audited |
| AmphorSyntheticVaultWithPermit | unknown | ethereum | n/a | [`0x2791eb...701744`](./contracts/ethereum-1/0x2791eb5807d69fe10c02eed6b4dc12bac0701744/) | ✅ Audited |
| InceptionBridge | operational_periphery | optimism | n/a | [`0xc00cd5...83b3ac`](./contracts/optimism-10/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | operational_periphery | bsc | n/a | [`0xc00cd5...83b3ac`](./contracts/bsc-56/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | operational_periphery | base | n/a | [`0xc00cd5...83b3ac`](./contracts/base-8453/0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac/) | ✅ Audited |
| InceptionBridge | unknown | mode | n/a | 2 deployments: mode [`0xb81e55...4d1f1e`](./contracts/mode-34443/0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e/); mode `0xc00cd5...83b3ac` | ✅ Audited |
| InceptionLibrary | unknown | ethereum | n/a | [`0x8a6a8a...d69f66`](./contracts/ethereum-1/0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66/) | ✅ Audited |
| InceptionRestaker | unknown | ethereum | n/a | [`0x02e2fc...3a33f0`](./contracts/ethereum-1/0x02e2fce3efe6619ad882b159e7d897a9c03a33f0/) | ✅ Audited |
| InceptionToken | unknown | ethereum | n/a | [`0x1aee5e...7649e2`](./contracts/ethereum-1/0x1aee5ec60fc79b669f11fe368fde789e267649e2/) | ✅ Audited |
| InVault_S_E2 | unknown | ethereum | n/a | [`0xebc5b1...63ee53`](./contracts/ethereum-1/0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53/) | ✅ Audited |
| RestakingPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d6f76...a725bc`](./contracts/ethereum-1/0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc/); ethereum `0x80c1ef...6bd0fc` | ✅ Audited |
| RestakingPool | unknown | ethereum | n/a | [`0x512d8b...90285b`](./contracts/ethereum-1/0x512d8b575ce2a5bd21721ba05773e420ba90285b/) | ✅ Audited |
| VaultZapper | unknown | ethereum | n/a | [`0xd697d2...5d05fb`](./contracts/ethereum-1/0xd697d2af3ddfe4ed24e92a230c4b93606b5d05fb/) | ✅ Audited |
| XERC20 | token | optimism | n/a | 9 deployments: optimism [`0x5a7a18...b1d76d`](./contracts/optimism-10/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); optimism `0xd08c3f...9a4959`; bsc [`0x5a7a18...b1d76d`](./contracts/bsc-56/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); mode [`0x5a7a18...b1d76d`](./contracts/mode-34443/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); arbitrum [`0x5a7a18...b1d76d`](./contracts/arbitrum-42161/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); arbitrum `0xd08c3f...9a4959`; linea [`0x5a7a18...b1d76d`](./contracts/linea-59144/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/); linea `0xd08c3f...9a4959`; blast [`0x5a7a18...b1d76d`](./contracts/blast-81457/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/) | ✅ Audited |
| XERC20 | token | bsc | n/a | [`0xb2b446...6c5878`](./contracts/bsc-56/0xb2b446386633c6746b0a2735fb57edbb066c5878/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmphorVaultWithPermit | core_logic | ethereum | n/a | [`0x920f17...82c079`](./contracts/ethereum-1/0x920f17e741029d904936c58a545dffc72f82c079/) | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | mode | n/a | [`0xbf19ee...e8ab2e`](./contracts/mode-34443/0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e/) | ⚠️ Unaudited |
| InETHRateProvider | unknown | mode | n/a | [`0x971b35...9efe1a`](./contracts/mode-34443/0x971b35225361535d04828f16442aaa54009efe1a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mode | n/a | [`0x80d69e...8802e2`](./contracts/mode-34443/0x80d69e79258fe9d056c822461c4eb0b4ca8802e2/) | ⚠️ Unaudited |
| Silo | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06ecfa...8a8144`](./contracts/ethereum-1/0x06ecfaade8fcb8c1bc58cb05104604282f8a8144/); ethereum `0x361a02...5880d9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | [`0xfe7153...735d5e`](./contracts/mode-34443/0xfe715358368416e01d3a961d3a037b7359735d5e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | mode | n/a | `0x5d9447...f80a46` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfea428...8b0415` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [InceptionV1_Veridise.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) | Halborn | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [InceptionV2_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Inception_MellowV2_Symbiotic_Oxorio.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) | Oxorio | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [VAR_inception_250210_smart_contracts_V3.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) | Veridise | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [InceptionBridge_Halborn.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 6 | n/a |
| [InceptionBridge_Veridise.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) | Veridise | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Inception_FlashWithdrawal_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_FlashWithdrawal_Halborn.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [VAR_GenesisLRT_231221-V1.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_GenesisLRT_231221-V1.pdf) | VAR | Audit | 2024-01 | stale | Direct | contract_name | 3 | high |
| [Salus_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Salus_final_report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 3 | high |
| [Bailsec_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Bailsec_final_report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: contract_name=10, extraction_exact=17

Zero-match audit list:

- [2400] InceptionV1_Veridise.pdf

Fork inheritance lineage and inherited audits are included when available.
