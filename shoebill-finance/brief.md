# Agentic Audit Brief: Shoebill Finance

## Project Overview

- Project: Shoebill Finance (`shoebill-finance`)
- Website: [https://shoebill.finance](https://shoebill.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.127Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: klaytn, manta, metis, mode, zksync-era
- Contract surface: 65 unique implementations (143 raw deployments)
- DeFi Llama TVL: $464,915.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 19 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 11 common project-authored base contract(s) (cether, ctoken, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 143; live-surface contracts included: 143 (0 live, 143 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/20
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 65
- Raw deployments: 143
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 35.0% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Upgradable | token | manta | n/a | 8 deployments: manta [`0x0399bc...531b2b`](./contracts/manta-169/0x0399bc5cb14d59bbd19c50416178747be3531b2b/); manta `0x5e283a...dc9f6f`; manta `0x7b41c0...826ed8`; manta `0xa87a58...692322`; manta `0xd2eecb...987a49`; manta `0xf0ea5c...ef97a8`; metis `0x8bc324...cf1169`; metis `0x9c45db...c08f41` | ✅ Audited |
| CEtherUpgradeable | unknown | manta | n/a | 2 deployments: manta [`0x037d45...7b60c8`](./contracts/manta-169/0x037d45ca2b024a25a6091212761e0757227b60c8/); metis `0xd13be8...840bb3` | ✅ Audited |
| Comptroller | unknown | manta | n/a | 6 deployments: manta [`0x81a679...197761`](./contracts/manta-169/0x81a679080b3a03c93e802af7594c1eec8f197761/); manta `0xc27f83...e0ac63`; manta `0xd13be8...840bb3`; metis `0xb7ed6c...0fc306`; mode `0x9f53cd...79a3cc`; mode `0xb7ed6c...0fc306` | ✅ Audited |
| JumpRateModelV4 | operational_periphery | metis | n/a | 6 deployments: manta `0xb29b29...405a85`; manta `0xb79dd6...24cd23`; metis [`0x24e4d6...8725f9`](./contracts/metis-1088/0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9/); metis `0xb79dd6...24cd23`; mode [`0x24e4d6...8725f9`](./contracts/mode-34443/0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9/); mode `0xb79dd6...24cd23` | ✅ Audited |
| ProtocolLens | periphery | metis | n/a | 2 deployments: metis [`0x675d67...d7f32e`](./contracts/metis-1088/0x675d672b07effe1a2049080afa9ad23e97d7f32e/); metis `0xb4bfa0...3b3d52` | ✅ Audited |
| RewardDistributor | operational_periphery | manta | n/a | 9 deployments: manta [`0x0c184b...632928`](./contracts/manta-169/0x0c184bf7251634b49ec7531a1d8eabbb3a632928/); manta `0x0e40e1...e52e3a`; manta `0x1e5147...eaaf7d`; manta `0x24e4d6...8725f9`; manta `0x53496f...5ef06c`; manta `0xa98ec6...009343`; manta `0xad0856...c44446`; metis `0x8ba76d...9fa897`; mode `0x8ba76d...9fa897` | ✅ Audited |
| Unitroller | unknown | manta | n/a | 4 deployments: manta [`0x3413dc...cf470a`](./contracts/manta-169/0x3413dc597ae3be40c6f10fc3d706b884eacf470a/); manta `0x4e4b41...0a9216`; manta `0x9f53cd...79a3cc`; metis `0x9f53cd...79a3cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchTransfer | periphery | manta | n/a | [`0x70075f...ebecf4`](./contracts/manta-169/0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4/) | ⚠️ Unaudited |
| CErc20UpgradableMode | unknown | mode | n/a | 3 deployments: mode [`0x81a679...197761`](./contracts/mode-34443/0x81a679080b3a03c93e802af7594c1eec8f197761/); mode `0x85300b...6ca751`; mode `0x91995e...b31716` | ⚠️ Unaudited |
| CEtherUpgradeableMode | unknown | mode | n/a | [`0xb762b8...746dbf`](./contracts/mode-34443/0xb762b8da36b59f7df9aee066a364c08aac746dbf/) | ⚠️ Unaudited |
| MantaOracle | operational_periphery | manta | n/a | 5 deployments: manta [`0x30de1a...1cc982`](./contracts/manta-169/0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982/); manta `0x60bc83...739a14`; manta `0x704e90...48a12b`; manta `0xad9dcc...007d2c`; manta `0xdfc5c7...45e2cf` | ⚠️ Unaudited |
| MetisOracle | operational_periphery | metis | n/a | 4 deployments: metis [`0x571609...58f234`](./contracts/metis-1088/0x5716093e354bb3c1018a6f7143b875efed58f234/); metis `0xa4430f...77c4c1`; metis `0xd5e296...bebed8`; metis `0xe89cb9...671d5a` | ⚠️ Unaudited |
| MiningReferral | unknown | manta | n/a | [`0x91995e...b31716`](./contracts/manta-169/0x91995e005fa932a6e033281cfa7495d940b31716/) | ⚠️ Unaudited |
| ModeOracle | unknown | mode | n/a | 4 deployments: mode [`0x2a9fc6...70cec2`](./contracts/mode-34443/0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2/); mode `0x675d67...d7f32e`; mode `0x9aa41c...5a851e`; mode `0xba2222...18a2d6` | ⚠️ Unaudited |
| ModeOraclePyth | unknown | mode | n/a | 2 deployments: mode [`0x0c5cd5...1d7cb7`](./contracts/mode-34443/0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7/); mode `0x2b6647...8a4308` | ⚠️ Unaudited |
| MultiSigWallet | governance | manta | n/a | 5 deployments: manta [`0x8ef62d...02314c`](./contracts/manta-169/0x8ef62dbc1114ae1995589c3dc71941544902314c/); manta `0xa658b4...47b301`; manta `0xe63055...82a313`; metis `0xd618e3...f65eea`; mode `0xeb4090...89202a` | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | n/a | 3 deployments: manta [`0x266ca0...0cacf7`](./contracts/manta-169/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/); metis [`0x266ca0...0cacf7`](./contracts/metis-1088/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/); mode [`0x266ca0...0cacf7`](./contracts/mode-34443/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/) | ⚠️ Unaudited |
| PythPriceOracleProxy | unknown | mode | n/a | [`0x386adc...2883de`](./contracts/mode-34443/0x386adca3c7d5c90523287933b05919afcc2883de/) | ⚠️ Unaudited |
| SBLPMode | unknown | mode | n/a | [`0x4403b3...b1782d`](./contracts/mode-34443/0x4403b3de1927264eaedebe48f4e9318045b1782d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | n/a | 26 deployments: manta [`0x033f5e...2fc5d4`](./contracts/manta-169/0x033f5e084a627cc420980ed9b1476c84a92fc5d4/); manta `0x2b6647...8a4308`; manta `0x613e08...f2cfee`; manta `0x655529...09db0a`; manta `0x7d02ab...1b3a74`; manta `0x873cb9...6074be`; manta `0x9dd10b...3b16c7`; manta `0xc0ef6d...8a0d7b`; manta `0xcd43a9...4a480d`; manta `0xe103f8...0779e2`; manta `0xee0161...100b88`; manta `0xff2033...1c3a42`; metis `0x0c5cd5...1d7cb7`; metis `0x2b6647...8a4308`; metis `0x386adc...2883de`; metis `0x9dd10b...3b16c7`; metis `0xb0eee8...9b7a2f`; mode `0x4d78c6...f2ffb4`; mode `0x616cff...2e0435`; mode `0x6afb46...9d8a38`; mode `0x80e813...3308df`; mode `0x8eea9e...04d277`; mode `0x9dd10b...3b16c7`; mode `0xd13be8...840bb3`; mode `0xd2604d...f66dab`; mode `0xe89cb9...671d5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x0322cd...3427e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1383f1...5085b4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2060a2...ab475c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2069b3...42b025` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2f4712...aa66d6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5d9363...7d588e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6e9906...585a7e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x722731...fd7eae` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8ba76d...9fa897` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8bc324...cf1169` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9cbc56...c465e1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb4bfa0...3b3d52` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb762b8...746dbf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc2da04...79f714` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcb43df...521164` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3b00f3...e2816c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x433102...495013` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4da697...20ec97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x59d9ce...66eb39` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x89e348...05a12e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf52bb5...d82981` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6a869a...9f5ebb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x80e813...3308df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8dbf84...d20ec2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb42555...f6a811` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdf00f0...7671ea` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 5 deployments: klaytn `0x6ee84c...f2b355`; klaytn `0xac6a45...715bcf`; klaytn `0xba5e3f...fc64de`; klaytn `0xd42ad8...579d83`; klaytn `0xee3db1...a22814` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x033f5e...2fc5d4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x15a4f7...19b7c3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4e4b41...0a9216` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57500f...5f7314` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x655529...09db0a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6ec5a5...6098b5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7d02ab...1b3a74` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9c45db...c08f41` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa3c72e...844c76` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa9b72d...7fe19d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb4bfa0...3b3d52` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xba5e3f...fc64de` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc0ef6d...8a0d7b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc39b31...c722a0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcd43a9...4a480d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd42ad8...579d83` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe103f8...0779e2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xff2033...1c3a42` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Shoebill-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shoebill-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Certik-Shoebill-final-20231121T015445Z.pdf](https://github.com/ShoebillFinance/audit-report/blob/main/Certik-Shoebill-final-20231121T015445Z.pdf) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 7 | n/a |
| [skynet.certik.com/ko/projects/shoebill-finance](https://skynet.certik.com/ko/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/shoebill-finance](https://skynet.certik.com/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x70075f...ebecf4`](./contracts/manta-169/0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x81a679...197761`](./contracts/mode-34443/0x81a679080b3a03c93e802af7594c1eec8f197761/) | CErc20UpgradableMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xb762b8...746dbf`](./contracts/mode-34443/0xb762b8da36b59f7df9aee066a364c08aac746dbf/) | CEtherUpgradeableMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x30de1a...1cc982`](./contracts/manta-169/0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982/) | MantaOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x571609...58f234`](./contracts/metis-1088/0x5716093e354bb3c1018a6f7143b875efed58f234/) | MetisOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x91995e...b31716`](./contracts/manta-169/0x91995e005fa932a6e033281cfa7495d940b31716/) | MiningReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2a9fc6...70cec2`](./contracts/mode-34443/0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2/) | ModeOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0c5cd5...1d7cb7`](./contracts/mode-34443/0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7/) | ModeOraclePyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x8ef62d...02314c`](./contracts/manta-169/0x8ef62dbc1114ae1995589c3dc71941544902314c/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x386adc...2883de`](./contracts/mode-34443/0x386adca3c7d5c90523287933b05919afcc2883de/) | PythPriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4403b3...b1782d`](./contracts/mode-34443/0x4403b3de1927264eaedebe48f4e9318045b1782d/) | SBLPMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Zero-match audit list:

- [13835] PeckShield-Audit-Report-Shoebill-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
