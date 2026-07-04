# Agentic Audit Brief: Sturdy

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.010Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum, linea, mode, optimism, sei
- Contract surface: 88 unique implementations (155 raw deployments)
- DeFi Llama TVL: $364,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 73 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (basestrategy, sturdyleverage, baseleverage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 288; live-surface contracts included: 155 (44 live, 111 unknown).
- Excluded by liveness: 133 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 10 of 88 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/25
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 88
- Raw deployments: 155
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 20.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 8.0% | 2023-10 |
| Zellic | Tier 2 | 2 | 8.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtManager | unknown | ethereum | n/a | 12 deployments: ethereum [`0x09034a...f249a9`](./contracts/ethereum-1/0x09034a26478908572d279c4bbc7719f07ef249a9/); ethereum `0x125144...ffe2de`; ethereum `0x3f1e01...066063`; ethereum `0x4c789e...8c74c8`; ethereum `0x5528c5...423075`; ethereum `0x6481b1...9a665c`; ethereum `0xa325cb...ef6f1e`; ethereum `0xa496c6...3c5139`; ethereum `0xcc06b0...a8f521`; ethereum `0xf2d6c5...4bdade`; mode `0x31993d...3459f3`; mode `0x96a1a3...8dcca9` | ✅ Audited |
| SiloGateway | unknown | ethereum | n/a | 9 deployments: ethereum [`0x1c0551...2116bd`](./contracts/ethereum-1/0x1c055119dd2c8898332de19cd61ac248c62116bd/); ethereum `0x31e9f9...bddcb8`; ethereum `0x4d07a5...f4bed3`; ethereum `0x53aef4...7d06a2`; ethereum `0x987a70...6b8ae5`; ethereum `0xc7e667...354c1a`; ethereum `0xde9e69...a92aed`; mode `0x2040a9...fd15a0`; mode `0x644b50...f1eb3b` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorAccountant | operational_periphery | mode | n/a | [`0xd57742...794a3b`](./contracts/mode-34443/0xd577429db653cd20effcd4977b2b41a6fd794a3b/) | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | mode | n/a | 2 deployments: mode [`0xf0382a...c120ec`](./contracts/mode-34443/0xf0382a9eca5276d7b4bbcc503e4159c046c120ec/); mode `0xfb6113...6233e7` | ⚠️ Unaudited |
| API3BasedETHEZETHOracle | unknown | mode | n/a | [`0x6f7c66...c76adc`](./contracts/mode-34443/0x6f7c66f09922c04218b54a04261fca2310c76adc/) | ⚠️ Unaudited |
| AprOracle | unknown | mode | n/a | [`0xba4c10...08170f`](./contracts/mode-34443/0xba4c10a7afa6376c47dabb9bedf349ea3a08170f/) | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | ethereum | n/a | [`0x94c120...40d39d`](./contracts/ethereum-1/0x94c1201e12d5773410c35fe509dd0f4bb440d39d/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | ethereum | n/a | [`0x7a8446...c88561`](./contracts/ethereum-1/0x7a84460e6df989c258d31017bdddedd54cc88561/) | ⚠️ Unaudited |
| PythBasedAssetOracle | unknown | mode | n/a | 4 deployments: mode [`0x0ebf14...0bb532`](./contracts/mode-34443/0x0ebf145136acd214997c1ccaa6c686d1880bb532/); mode `0x3b1e4e...e0f2e7`; mode `0x46dd99...ae3bfa`; mode `0xd7d7d7...0851c3` | ⚠️ Unaudited |
| RedstoneBasedAssetOracle | unknown | mode | n/a | 5 deployments: mode [`0x0c2f50...703faa`](./contracts/mode-34443/0x0c2f5023d2e9ec881234ebc167311e596a703faa/); mode `0x1ea0f1...6bc792`; mode `0x83c021...eb4b6c`; mode `0xde9e69...a92aed`; mode `0xeff461...a73d16` | ⚠️ Unaudited |
| RewardConfig | unknown | mode | n/a | 2 deployments: mode [`0xb3d159...b92839`](./contracts/mode-34443/0xb3d159d3c656925738e5733fb3aeb2a9cab92839/); mode `0xd2bc9a...897787` | ⚠️ Unaudited |
| SiloHelper | periphery | mode | n/a | 2 deployments: mode [`0x5fad91...848892`](./contracts/mode-34443/0x5fad91704f52b173a5d9fb8cf83822a1d9848892/); linea `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| STRDYLocker | unknown | ethereum | n/a | [`0xe01c0e...fb3d18`](./contracts/ethereum-1/0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18/) | ⚠️ Unaudited |
| SturdyAllocator | operational_periphery | ethereum | n/a | [`0x17f960...922667`](./contracts/ethereum-1/0x17f960aedb1320358c9458b9fc71e7ac85922667/) | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan | unknown | mode | n/a | 2 deployments: mode [`0x6cb759...7ad6fd`](./contracts/mode-34443/0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd/); mode `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan1 | unknown | mode | n/a | [`0x3d34bc...cd1b87`](./contracts/mode-34443/0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87/) | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | mode | n/a | [`0x61eea4...af1e25`](./contracts/mode-34443/0x61eea4770d7e15e7036f8632f4bcb33af1af1e25/) | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | mode | n/a | [`0x660511...380e1f`](./contracts/mode-34443/0x6605111929527485e418e7714d24fb72f5380e1f/) | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | mode | n/a | [`0x83eb3c...8be768`](./contracts/mode-34443/0x83eb3cf482810e79e9f562d8de87fedf038be768/) | ⚠️ Unaudited |
| SturdySiloStrategy | core_logic | mode | n/a | 10 deployments: mode [`0x168f6c...4519d9`](./contracts/mode-34443/0x168f6c2c46a58f4394924d14b9dc0a2b394519d9/); mode `0x4e72fc...c4d883`; mode `0x56a1e8...db406d`; mode `0x5829d7...6ce690`; mode `0x63e3ca...7f9560`; mode `0x6cef96...674c5a`; mode `0x797b17...2b2d2f`; mode `0x9cf92c...5f414b`; mode `0xcdb88a...b9e1c6`; mode `0xf7be73...f41a4d` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | mode | n/a | 2 deployments: mode [`0xae3585...e4ac8d`](./contracts/mode-34443/0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d/); mode `0xd89054...c343f1` | ⚠️ Unaudited |
| SwapBridgeAndCallFromMain | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x41d503...d05367`](./contracts/ethereum-1/0x41d503c017223b981c4b4794281a732339d05367/); ethereum `0xdbe036...c86aef` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0xaeb360...54309a`](./contracts/ethereum-1/0xaeb3607ec434454ceb308f5cd540875efb54309a/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x066909...288124`](./contracts/ethereum-1/0x0669091f451142b3228171ae6ad794cf98288124/); ethereum `0x076d2b...783cab`; ethereum `0x0dd49c...02fd8f`; ethereum `0x200723...b1a04b`; ethereum `0x26fe40...16ac88`; ethereum `0x4e72fc...c4d883`; ethereum `0x501bbb...229b11`; ethereum `0x613897...75b52c`; ethereum `0x6311ff...8e5227`; ethereum `0x8dde9a...08c84d`; ethereum `0xc8d4a8...3f9695`; ethereum `0xd002dc...b81bd2`; ethereum `0xeef271...432e3f`; ethereum `0xf94b34...72223b`; ethereum `0xfa6870...edee1d` | ⚠️ Unaudited |
| VariableInterestRate | unknown | mode | n/a | 13 deployments: mode [`0x03aef5...b390eb`](./contracts/mode-34443/0x03aef503d5e5be4dfb02b3425b737006a9b390eb/); mode `0x163438...409441`; mode `0x1c278c...69b379`; mode `0x39d9db...35bfef`; mode `0x5adac4...142cfb`; mode `0x69ad35...8cffa2`; mode `0x884b41...d31cec`; mode `0x90832d...08a0c2`; mode `0xae6104...b88daf`; mode `0xb06559...ad4a80`; mode `0xcde573...3a887c`; mode `0xe88c03...1b0b42`; mode `0xfd364c...f49372` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveswapAdapter | unknown | ethereum | n/a | `0xef9e51...ef7d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03cdff...74510b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0acd9d...9a77ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc7ec...e495e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2140fa...9091a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21d1b4...48f696` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22333e...32f889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x248c25...cd7a01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x397573...3347df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4281ad...6003e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599343...24e12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69917c...5d9a00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2d0...b8890d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3e10...d76a61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72d6b1...32958a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777be5...95d558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a9330...450841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85db1a...71c708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9394be...fe36f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c1737...dae537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5317a...1257b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf4c56...637e23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf91fb...a9877d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cf3c...e37683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6ad7b...3202f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6d69c...6b5561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a65e...ad97dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7f362...f33b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7754f...088d2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda4117...a10547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcc12c...c43bb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf04d0...ef1a34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9642b...62f159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9a802...0543a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef4b18...89a8f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb1846...3e79f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc8406...00c4aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09cf3b...ddf855` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x39d9db...35bfef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b1e4e...e0f2e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4534f5...ea1303` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c0801...3d747c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x61eea4...af1e25` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x884b41...d31cec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x942c5b...1f7ecf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xae3585...e4ac8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd67da8...722b52` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd89054...c343f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeb8c48...c25591` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x49b50f...d94903` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x09cf3b...ddf855` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0dbcf6...5218e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1420e3...5d1434` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3044d8...61e150` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3b5da2...05c7ae` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x58f412...616df5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5ad20c...f97dd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5c0801...3d747c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x95ea14...1a89fb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xaa95e1...6cbc56` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b05ce...48fbad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1e946c...9b65e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1f9f25...502466` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/sturdy](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sturdy - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | 21 | high |
| [www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 21 | high |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=42

Zero-match audit list:

- [13925] skynet.certik.com/projects/sturdy
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32

Fork inheritance lineage and inherited audits are included when available.
