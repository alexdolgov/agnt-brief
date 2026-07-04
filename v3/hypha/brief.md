# Agentic Audit Brief: Hypha

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:41.936Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche
- Contract surface: 65 unique implementations (107 raw deployments)
- DeFi Llama TVL: $4,763,040.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 45 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 3 common project-authored base contract(s) (base, baseabstract, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 119; live-surface contracts included: 106 (61 live, 45 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/33 (39.4%)
- Deployed-live implementations: 33 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/40
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 65
- Raw deployments: 107
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 21.2% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 13 | 32.5% | 2023-02 |
| Code4rena | Tier 1 | 7 | 17.5% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ✅ Audited |
| ClaimProtocolDAO | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4169cf...49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a7...bb286c` | ✅ Audited |
| MinipoolManager | unknown | avalanche | n/a | 5 deployments: avalanche [`0x9e6579...b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa0...d1ed08`; avalanche `0xc300bc...268ee7`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ✅ Audited |
| MultisigManager | unknown | avalanche | n/a | [`0x7fff41...1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ✅ Audited |
| Ocyticus | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9189d1...ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b...ad5542` | ✅ Audited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ✅ Audited |
| ProtocolDAO | unknown | avalanche | n/a | 4 deployments: avalanche [`0x41a763...195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0x70fd1a...fd1b65`; avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ✅ Audited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ✅ Audited |
| Staking | unknown | avalanche | n/a | 3 deployments: avalanche [`0x439776...374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/); avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ✅ Audited |
| TokenggAVAX | token | avalanche | n/a | 4 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922`; avalanche `0xd960ce...16e584`; avalanche `0xf80eb4...57843e` | ✅ Audited |
| TokenggAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa25eaf...b703e3`](./contracts/avalanche-43114/0xa25eaf2906fa1a3a13edac9b9657108af7b703e3/); avalanche `0xfad33e...163752` | ✅ Audited |
| TokenGGP | token | avalanche | n/a | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ✅ Audited |
| Vault | unknown | avalanche | n/a | [`0xd45cb6...41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArtifactHardwareProvider | unknown | avalanche | n/a | [`0xc095ec...24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x376862...6b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x456a6e...76e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/); avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7a212f...b9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/); avalanche `0x8a2de3...9ac366` | ⚠️ Unaudited |
| CREATE3Factory | registry | avalanche | n/a | [`0x9fbb3d...cd0abf`](./contracts/avalanche-43114/0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | n/a | [`0x6c104d...29bcf3`](./contracts/avalanche-43114/0x6c104d5b914931ba179168d63739a297dc29bcf3/) | ⚠️ Unaudited |
| GoGoGasStation | unknown | avalanche | n/a | 2 deployments: avalanche [`0x27ce13...f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/); avalanche `0x52950f...8f7bd2` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/); avalanche `0x8c05d7...96115c`; avalanche `0xb5f2ed...90e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 2 deployments: avalanche [`0x746f2c...c1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/); avalanche `0x752ab1...163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | avalanche | n/a | [`0xae1e7b...3ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | ⚠️ Unaudited |
| MOANI | unknown | avalanche | n/a | [`0x42edf5...948215`](./contracts/avalanche-43114/0x42edf547600d7e86be4b44cb7c6d8f8a2c948215/) | ⚠️ Unaudited |
| Multicall3 | periphery | avalanche | n/a | [`0xca11bd...76ca11`](./contracts/avalanche-43114/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NodeAsAService | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ccef5...7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/); avalanche `0xb306c9...b20b04` | ⚠️ Unaudited |
| NodeSale | unknown | avalanche | n/a | 2 deployments: avalanche [`0x50db30...b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/); avalanche `0xa60a66...83cfaa` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | avalanche | n/a | [`0xfe6ca6...e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | ⚠️ Unaudited |
| ParadiseTycoonPowerups | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9fa82e...966cd9`](./contracts/avalanche-43114/0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9/); avalanche `0xd0764d...c1823d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 7 deployments: avalanche [`0x5313c3...b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd3...aed940`; avalanche `0x89cf78...b9b64d`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190`; avalanche `0xc7fef2...d7a6c6`; avalanche `0xf4c562...1620a9` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8b85ca...f33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/); avalanche `0xf04aa1...f8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x697d7c...ba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/); avalanche `0x9bfade...590819` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenpstAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b3775...e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x82e153...79b241` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0146b8...9937af`](./contracts/avalanche-43114/0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af/); avalanche `0x22bafb...a1d073` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/); avalanche `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | avalanche | n/a | 2 deployments: avalanche [`0x61f908...5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/); avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x213a74...8df34a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c2e8c...cc4311` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a4536...f5ec4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae6a7d...607d89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [GoGoPool - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | 28 | high |
| [2023-02-gogopool-mitigation-contest (GitHub directory)](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 18 | medium |
| [643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=46

Zero-match audit list:

- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
